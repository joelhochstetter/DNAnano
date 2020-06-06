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
	<23.948652, 34.526367, 34.966297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.101627, 34.895790, 34.955093>,  <24.193413, 35.117443, 34.948372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.101627, 34.895790, 34.955093>,  <23.948652, 34.526367, 34.966297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.101627, 34.895790, 34.955093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191733, -0.049664, 0.980190,
		0.903870, -0.380230, -0.196070,
		0.382436, 0.923558, -0.028013,
		24.216358, 35.172859, 34.946690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.748091, 34.668243, 35.227409>,  <23.948652, 34.526367, 34.966297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.748091, 34.668243, 35.227409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.490263, 34.966377, 35.295528>,  <24.335567, 35.145260, 35.336399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.490263, 34.966377, 35.295528>,  <24.748091, 34.668243, 35.227409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.490263, 34.966377, 35.295528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028076, -0.199516, 0.979492,
		0.764031, 0.636131, 0.107675,
		-0.644568, 0.745339, 0.170297,
		24.296892, 35.189980, 35.346619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.390312, 34.542866, 35.603836>,  <24.748091, 34.668243, 35.227409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.390312, 34.542866, 35.603836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.247238, 34.522758, 35.976830>,  <25.161394, 34.510693, 36.200626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.247238, 34.522758, 35.976830>,  <25.390312, 34.542866, 35.603836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.247238, 34.522758, 35.976830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625518, -0.754333, 0.199271,
		0.693389, 0.654564, 0.301260,
		-0.357686, -0.050271, 0.932488,
		25.139933, 34.507675, 36.256577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.919352, 34.573456, 36.206573>,  <25.390312, 34.542866, 35.603836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.919352, 34.573456, 36.206573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.590654, 34.366837, 36.302830>,  <25.393436, 34.242863, 36.360584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.590654, 34.366837, 36.302830>,  <25.919352, 34.573456, 36.206573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.590654, 34.366837, 36.302830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518376, -0.852986, -0.060837,
		0.236690, 0.074751, 0.968705,
		-0.821745, -0.516553, 0.240642,
		25.344131, 34.211872, 36.375023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.239380, 33.957977, 36.231285>,  <25.919352, 34.573456, 36.206573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.239380, 33.957977, 36.231285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.846069, 33.887295, 36.248913>,  <25.610083, 33.844883, 36.259487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.846069, 33.887295, 36.248913>,  <26.239380, 33.957977, 36.231285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.846069, 33.887295, 36.248913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157290, -0.945945, -0.283634,
		0.091805, -0.271960, 0.957919,
		-0.983276, -0.176710, 0.044066,
		25.551086, 33.834282, 36.262131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.019838, 33.450100, 36.731617>,  <26.239380, 33.957977, 36.231285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.019838, 33.450100, 36.731617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.754732, 33.441036, 36.432224>,  <25.595669, 33.435596, 36.252586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.754732, 33.441036, 36.432224>,  <26.019838, 33.450100, 36.731617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.754732, 33.441036, 36.432224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135395, -0.986694, -0.090017,
		-0.736485, -0.161001, 0.657015,
		-0.662766, -0.022660, -0.748484,
		25.555902, 33.434238, 36.207680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.885191, 32.862183, 37.091030>,  <26.019838, 33.450100, 36.731617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.885191, 32.862183, 37.091030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.235867, 32.733768, 37.234333>,  <26.446272, 32.656719, 37.320316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.235867, 32.733768, 37.234333>,  <25.885191, 32.862183, 37.091030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.235867, 32.733768, 37.234333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161946, -0.898225, -0.408614,
		0.452976, 0.300210, -0.839456,
		0.876690, -0.321039, 0.358257,
		26.498873, 32.637455, 37.341808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.167482, 32.509193, 36.575291>,  <25.885191, 32.862183, 37.091030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.167482, 32.509193, 36.575291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.390450, 32.389492, 36.885059>,  <26.524231, 32.317673, 37.070919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.390450, 32.389492, 36.885059>,  <26.167482, 32.509193, 36.575291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.390450, 32.389492, 36.885059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026222, -0.925968, -0.376689,
		0.829817, 0.230281, -0.508305,
		0.557419, -0.299254, 0.774423,
		26.557674, 32.299717, 37.117386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.912941, 32.329388, 36.411602>,  <26.167482, 32.509193, 36.575291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.912941, 32.329388, 36.411602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.794991, 32.133377, 36.739731>,  <26.724220, 32.015770, 36.936607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.794991, 32.133377, 36.739731>,  <26.912941, 32.329388, 36.411602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.794991, 32.133377, 36.739731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257846, -0.867451, -0.425493,
		0.920089, 0.086048, 0.382142,
		-0.294877, -0.490025, 0.820319,
		26.706528, 31.986370, 36.985828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.448599, 31.802612, 36.584675>,  <26.912941, 32.329388, 36.411602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.448599, 31.802612, 36.584675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.143064, 31.669056, 36.805611>,  <26.959743, 31.588923, 36.938171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.143064, 31.669056, 36.805611>,  <27.448599, 31.802612, 36.584675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.143064, 31.669056, 36.805611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259189, -0.942436, -0.211274,
		0.591083, -0.018219, 0.806405,
		-0.763834, -0.333891, 0.552336,
		26.913914, 31.568888, 36.971310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.734974, 31.264151, 36.841125>,  <27.448599, 31.802612, 36.584675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.734974, 31.264151, 36.841125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.341816, 31.219667, 36.899845>,  <27.105921, 31.192978, 36.935078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.341816, 31.219667, 36.899845>,  <27.734974, 31.264151, 36.841125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.341816, 31.219667, 36.899845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103073, -0.992743, -0.061943,
		0.152626, -0.045752, 0.987225,
		-0.982894, -0.111210, 0.146802,
		27.046947, 31.186304, 36.943886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.646030, 30.647137, 37.290970>,  <27.734974, 31.264151, 36.841125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.646030, 30.647137, 37.290970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.326778, 30.741379, 37.069168>,  <27.135227, 30.797924, 36.936085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.326778, 30.741379, 37.069168>,  <27.646030, 30.647137, 37.290970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.326778, 30.741379, 37.069168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205835, -0.971620, -0.116560,
		-0.566233, 0.021107, 0.823975,
		-0.798130, 0.235603, -0.554508,
		27.087339, 30.812059, 36.902817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.943066, 30.465263, 37.505344>,  <27.646030, 30.647137, 37.290970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.943066, 30.465263, 37.505344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.991482, 30.460182, 37.108318>,  <27.020533, 30.457134, 36.870102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.991482, 30.460182, 37.108318>,  <26.943066, 30.465263, 37.505344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.991482, 30.460182, 37.108318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219491, -0.975510, -0.014282,
		-0.968077, 0.219588, -0.120865,
		0.121041, -0.012702, -0.992566,
		27.027794, 30.456371, 36.810547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.342539, 30.067770, 37.454433>,  <26.943066, 30.465263, 37.505344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.342539, 30.067770, 37.454433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.577713, 30.050072, 37.131355>,  <26.718819, 30.039452, 36.937508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.577713, 30.050072, 37.131355>,  <26.342539, 30.067770, 37.454433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.577713, 30.050072, 37.131355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222406, -0.968862, -0.108818,
		-0.777731, 0.243614, -0.579472,
		0.587938, -0.044247, -0.807695,
		26.754095, 30.036798, 36.889046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.033501, 29.832256, 36.764576>,  <26.342539, 30.067770, 37.454433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.033501, 29.832256, 36.764576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.396900, 29.676519, 36.703861>,  <26.614941, 29.583078, 36.667431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.396900, 29.676519, 36.703861>,  <26.033501, 29.832256, 36.764576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.396900, 29.676519, 36.703861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416998, -0.821038, -0.389884,
		0.027175, 0.417505, -0.908268,
		0.908501, -0.389341, -0.151787,
		26.669451, 29.559717, 36.658325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.000990, 30.537470, 36.457680>,  <26.033501, 29.832256, 36.764576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.000990, 30.537470, 36.457680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.376129, 30.662426, 36.518150>,  <26.601213, 30.737400, 36.554432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.376129, 30.662426, 36.518150>,  <26.000990, 30.537470, 36.457680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.376129, 30.662426, 36.518150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326026, 0.643757, 0.692303,
		0.118947, -0.698563, 0.705593,
		0.937848, 0.312389, 0.151177,
		26.657484, 30.756144, 36.563503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.793293, 30.991198, 36.952942>,  <26.000990, 30.537470, 36.457680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.793293, 30.991198, 36.952942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.179886, 31.074255, 36.892548>,  <26.411842, 31.124088, 36.856312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.179886, 31.074255, 36.892548>,  <25.793293, 30.991198, 36.952942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.179886, 31.074255, 36.892548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099441, 0.844969, 0.525490,
		0.236693, -0.492862, 0.837295,
		0.966482, 0.207642, -0.150987,
		26.469830, 31.136547, 36.847252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.966351, 31.068680, 37.606831>,  <25.793293, 30.991198, 36.952942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.966351, 31.068680, 37.606831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.237432, 31.256178, 37.380203>,  <26.400082, 31.368677, 37.244228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.237432, 31.256178, 37.380203>,  <25.966351, 31.068680, 37.606831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.237432, 31.256178, 37.380203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144221, 0.840251, 0.522664,
		0.721052, -0.272502, 0.637046,
		0.677706, 0.468744, -0.566564,
		26.440744, 31.396801, 37.210236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.247000, 31.461258, 38.119110>,  <25.966351, 31.068680, 37.606831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.247000, 31.461258, 38.119110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.396317, 31.612694, 37.780331>,  <26.485907, 31.703554, 37.577061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.396317, 31.612694, 37.780331>,  <26.247000, 31.461258, 38.119110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.396317, 31.612694, 37.780331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055168, 0.902269, 0.427630,
		0.926073, -0.206354, 0.315921,
		0.373289, 0.378588, -0.846951,
		26.508305, 31.726271, 37.526245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.955809, 31.770344, 38.290810>,  <26.247000, 31.461258, 38.119110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.955809, 31.770344, 38.290810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.793882, 31.945093, 37.969494>,  <26.696726, 32.049942, 37.776707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.793882, 31.945093, 37.969494>,  <26.955809, 31.770344, 38.290810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.793882, 31.945093, 37.969494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145837, 0.898087, 0.414935,
		0.902694, 0.050823, -0.427272,
		-0.404815, 0.436872, -0.803286,
		26.672438, 32.076153, 37.728508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.527271, 32.193790, 37.855240>,  <26.955809, 31.770344, 38.290810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.527271, 32.193790, 37.855240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.141291, 32.288105, 37.901333>,  <26.909702, 32.344692, 37.928989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.141291, 32.288105, 37.901333>,  <27.527271, 32.193790, 37.855240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.141291, 32.288105, 37.901333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252513, 0.714589, 0.652380,
		0.071479, 0.658611, -0.749081,
		-0.964950, 0.235784, 0.115230,
		26.851807, 32.358841, 37.935902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.490068, 32.933144, 37.801113>,  <27.527271, 32.193790, 37.855240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.490068, 32.933144, 37.801113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.178886, 32.799435, 38.013924>,  <26.992178, 32.719208, 38.141609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.178886, 32.799435, 38.013924>,  <27.490068, 32.933144, 37.801113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.178886, 32.799435, 38.013924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128663, 0.744041, 0.655629,
		-0.615008, 0.578500, -0.535820,
		-0.777953, -0.334277, 0.532023,
		26.945501, 32.699150, 38.173531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.831982, 33.389591, 37.873890>,  <27.490068, 32.933144, 37.801113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.831982, 33.389591, 37.873890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.880762, 33.152565, 38.192383>,  <26.910030, 33.010349, 38.383480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.880762, 33.152565, 38.192383>,  <26.831982, 33.389591, 37.873890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.880762, 33.152565, 38.192383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035297, 0.799127, 0.600126,
		-0.991908, -0.101291, 0.076538,
		0.121951, -0.592568, 0.796236,
		26.917347, 32.974796, 38.431255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.365175, 33.691544, 38.540165>,  <26.831982, 33.389591, 37.873890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.365175, 33.691544, 38.540165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.640778, 33.429672, 38.664536>,  <26.806139, 33.272549, 38.739159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.640778, 33.429672, 38.664536>,  <26.365175, 33.691544, 38.540165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.640778, 33.429672, 38.664536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213951, 0.593615, 0.775788,
		-0.692457, -0.467999, 0.549072,
		0.689005, -0.654674, 0.310924,
		26.847479, 33.233269, 38.757812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.188305, 33.324802, 39.206039>,  <26.365175, 33.691544, 38.540165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.188305, 33.324802, 39.206039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.584499, 33.362392, 39.165825>,  <26.822216, 33.384945, 39.141697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.584499, 33.362392, 39.165825>,  <26.188305, 33.324802, 39.206039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.584499, 33.362392, 39.165825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040549, 0.498841, 0.865744,
		0.131512, -0.861583, 0.490284,
		0.990485, 0.093975, -0.100540,
		26.881645, 33.390587, 39.135662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.568138, 33.006859, 39.753918>,  <26.188305, 33.324802, 39.206039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.568138, 33.006859, 39.753918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.771223, 33.316330, 39.602310>,  <26.893074, 33.502010, 39.511345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.771223, 33.316330, 39.602310>,  <26.568138, 33.006859, 39.753918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.771223, 33.316330, 39.602310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012416, 0.433322, 0.901154,
		0.861437, -0.462233, 0.210397,
		0.507713, 0.773675, -0.379019,
		26.923536, 33.548431, 39.488605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.957663, 33.236633, 40.280457>,  <26.568138, 33.006859, 39.753918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.957663, 33.236633, 40.280457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.867640, 33.563488, 40.068176>,  <26.813625, 33.759602, 39.940807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.867640, 33.563488, 40.068176>,  <26.957663, 33.236633, 40.280457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.867640, 33.563488, 40.068176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298699, 0.460584, 0.835848,
		0.927431, 0.346632, 0.140420,
		-0.225057, 0.817134, -0.530698,
		26.800123, 33.808628, 39.908966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.637857, 32.906769, 40.192116>,  <26.957663, 33.236633, 40.280457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.637857, 32.906769, 40.192116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.969965, 33.128540, 40.169277>,  <28.169230, 33.261604, 40.155575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.969965, 33.128540, 40.169277>,  <27.637857, 32.906769, 40.192116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.969965, 33.128540, 40.169277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551378, -0.802071, 0.229486,
		0.081439, -0.222017, -0.971636,
		0.830271, 0.554428, -0.057095,
		28.219046, 33.294868, 40.152149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.265051, 32.900261, 39.843712>,  <27.637857, 32.906769, 40.192116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.265051, 32.900261, 39.843712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.644438, 32.966721, 39.951641>,  <28.872070, 33.006596, 40.016399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.644438, 32.966721, 39.951641>,  <28.265051, 32.900261, 39.843712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.644438, 32.966721, 39.951641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315598, 0.418927, 0.851410,
		0.028429, -0.892689, 0.449776,
		0.948467, 0.166153, 0.269821,
		28.928978, 33.016567, 40.032589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.348541, 32.549114, 40.484871>,  <28.265051, 32.900261, 39.843712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.348541, 32.549114, 40.484871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.583702, 32.871830, 40.461349>,  <28.724798, 33.065460, 40.447235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.583702, 32.871830, 40.461349>,  <28.348541, 32.549114, 40.484871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.583702, 32.871830, 40.461349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451694, 0.387709, 0.803526,
		0.671077, -0.445833, 0.592358,
		0.587901, 0.806793, -0.058803,
		28.760073, 33.113869, 40.443710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.836613, 32.800522, 41.126991>,  <28.348541, 32.549114, 40.484871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.836613, 32.800522, 41.126991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.704960, 33.109325, 40.909489>,  <28.625969, 33.294609, 40.778988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.704960, 33.109325, 40.909489>,  <28.836613, 32.800522, 41.126991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.704960, 33.109325, 40.909489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466387, 0.367803, 0.804490,
		0.821070, 0.518384, 0.239000,
		-0.329130, 0.772009, -0.543760,
		28.606220, 33.340927, 40.746361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.444181, 33.174736, 41.567211>,  <28.836613, 32.800522, 41.126991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.444181, 33.174736, 41.567211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.447554, 33.429382, 41.258755>,  <28.449577, 33.582169, 41.073681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.447554, 33.429382, 41.258755>,  <28.444181, 33.174736, 41.567211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.447554, 33.429382, 41.258755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462726, 0.686114, 0.561365,
		0.886461, 0.352094, 0.300361,
		0.008429, 0.636614, -0.771137,
		28.450083, 33.620365, 41.027412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.721497, 33.878185, 41.842331>,  <28.444181, 33.174736, 41.567211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.721497, 33.878185, 41.842331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.491198, 33.901516, 41.516113>,  <28.353018, 33.915512, 41.320381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.491198, 33.901516, 41.516113>,  <28.721497, 33.878185, 41.842331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.491198, 33.901516, 41.516113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599850, 0.647671, 0.469789,
		0.555605, 0.759684, -0.337909,
		-0.575745, 0.058322, -0.815546,
		28.318474, 33.919014, 41.271450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.602571, 34.597855, 41.708183>,  <28.721497, 33.878185, 41.842331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.602571, 34.597855, 41.708183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.291855, 34.442486, 41.509903>,  <28.105425, 34.349266, 41.390934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.291855, 34.442486, 41.509903>,  <28.602571, 34.597855, 41.708183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.291855, 34.442486, 41.509903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571609, 0.765223, 0.296136,
		0.264299, 0.513386, -0.816444,
		-0.776794, -0.388419, -0.495704,
		28.058817, 34.325958, 41.361191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.329123, 35.131790, 41.338623>,  <28.602571, 34.597855, 41.708183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.329123, 35.131790, 41.338623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.038767, 34.863281, 41.398598>,  <27.864553, 34.702175, 41.434582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.038767, 34.863281, 41.398598>,  <28.329123, 35.131790, 41.338623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.038767, 34.863281, 41.398598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618933, 0.732575, 0.283295,
		-0.300006, 0.112841, -0.947240,
		-0.725891, -0.671268, 0.149936,
		27.820999, 34.661900, 41.443577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.692440, 35.297001, 40.938515>,  <28.329123, 35.131790, 41.338623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.692440, 35.297001, 40.938515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.591782, 35.076778, 41.256901>,  <27.531387, 34.944645, 41.447933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.591782, 35.076778, 41.256901>,  <27.692440, 35.297001, 40.938515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.591782, 35.076778, 41.256901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557124, 0.754905, 0.346021,
		-0.791384, -0.356378, -0.496696,
		-0.251644, -0.550557, 0.795966,
		27.516289, 34.911610, 41.495689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.026728, 35.554188, 41.257225>,  <27.692440, 35.297001, 40.938515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.026728, 35.554188, 41.257225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.067862, 35.299515, 41.562920>,  <27.092543, 35.146709, 41.746338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.067862, 35.299515, 41.562920>,  <27.026728, 35.554188, 41.257225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.067862, 35.299515, 41.562920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534604, 0.612535, 0.582237,
		-0.838823, -0.468438, -0.277384,
		0.102835, -0.636684, 0.764237,
		27.098713, 35.108509, 41.792191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.369831, 35.422939, 41.596256>,  <27.026728, 35.554188, 41.257225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.369831, 35.422939, 41.596256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.688225, 35.366074, 41.831612>,  <26.879261, 35.331955, 41.972824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.688225, 35.366074, 41.831612>,  <26.369831, 35.422939, 41.596256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.688225, 35.366074, 41.831612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379576, 0.639952, 0.668119,
		-0.471522, -0.755150, 0.455430,
		0.795983, -0.142162, 0.588388,
		26.927019, 35.323425, 42.008129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.127701, 35.457115, 42.254951>,  <26.369831, 35.422939, 41.596256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.127701, 35.457115, 42.254951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.519241, 35.508114, 42.318947>,  <26.754166, 35.538712, 42.357346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.519241, 35.508114, 42.318947>,  <26.127701, 35.457115, 42.254951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.519241, 35.508114, 42.318947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204024, 0.665879, 0.717620,
		-0.015040, -0.735085, 0.677808,
		0.978850, 0.127496, 0.159990,
		26.812897, 35.546364, 42.366943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.369776, 35.253353, 42.962090>,  <26.127701, 35.457115, 42.254951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.369776, 35.253353, 42.962090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.540661, 35.569920, 42.787209>,  <26.643192, 35.759861, 42.682281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.540661, 35.569920, 42.787209>,  <26.369776, 35.253353, 42.962090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.540661, 35.569920, 42.787209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389484, 0.597470, 0.700951,
		0.815960, -0.129173, 0.563492,
		0.427213, 0.791419, -0.437201,
		26.668825, 35.807346, 42.656048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.748562, 35.596149, 43.410591>,  <26.369776, 35.253353, 42.962090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.748562, 35.596149, 43.410591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.592052, 35.824055, 43.121517>,  <26.498148, 35.960800, 42.948074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.592052, 35.824055, 43.121517>,  <26.748562, 35.596149, 43.410591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.592052, 35.824055, 43.121517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394347, 0.605734, 0.691069,
		0.831503, 0.555384, -0.012321,
		-0.391272, 0.569767, -0.722683,
		26.474670, 35.994984, 42.904713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.096354, 34.974186, 43.295788>,  <26.748562, 35.596149, 43.410591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.096354, 34.974186, 43.295788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.000458, 34.998043, 43.683388>,  <26.942921, 35.012356, 43.915947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.000458, 34.998043, 43.683388>,  <27.096354, 34.974186, 43.295788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.000458, 34.998043, 43.683388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081402, -0.993362, 0.081282,
		0.967419, 0.098365, 0.233293,
		-0.239740, 0.059643, 0.969003,
		26.928535, 35.015938, 43.974091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.696671, 34.815739, 42.898754>,  <27.096354, 34.974186, 43.295788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.696671, 34.815739, 42.898754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.393772, 34.929783, 42.663708>,  <27.212034, 34.998211, 42.522678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.393772, 34.929783, 42.663708>,  <27.696671, 34.815739, 42.898754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.393772, 34.929783, 42.663708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309629, -0.635456, -0.707337,
		-0.575077, -0.717569, 0.392915,
		-0.757243, 0.285115, -0.587616,
		27.166599, 35.015316, 42.487423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.220499, 34.210789, 42.712837>,  <27.696671, 34.815739, 42.898754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.220499, 34.210789, 42.712837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.210024, 34.489449, 42.426064>,  <27.203739, 34.656643, 42.253998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.210024, 34.489449, 42.426064>,  <27.220499, 34.210789, 42.712837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.210024, 34.489449, 42.426064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379639, -0.656522, -0.651808,
		-0.924764, -0.289246, -0.247282,
		-0.026186, 0.696646, -0.716937,
		27.202168, 34.698441, 42.210983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.027819, 33.853390, 42.093266>,  <27.220499, 34.210789, 42.712837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.027819, 33.853390, 42.093266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.179045, 34.196728, 41.954521>,  <27.269779, 34.402729, 41.871273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.179045, 34.196728, 41.954521>,  <27.027819, 33.853390, 42.093266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.179045, 34.196728, 41.954521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440571, -0.496338, -0.748027,
		-0.814226, 0.129984, -0.565809,
		0.378064, 0.858343, -0.346864,
		27.292463, 34.454231, 41.850460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.830580, 33.904552, 41.346256>,  <27.027819, 33.853390, 42.093266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.830580, 33.904552, 41.346256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.159397, 34.118443, 41.424545>,  <27.356688, 34.246777, 41.471519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.159397, 34.118443, 41.424545>,  <26.830580, 33.904552, 41.346256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.159397, 34.118443, 41.424545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442206, -0.382942, -0.811055,
		-0.358743, 0.753274, -0.551255,
		0.822045, 0.534728, 0.195724,
		27.406010, 34.278862, 41.483261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.082035, 33.808758, 40.711777>,  <26.830580, 33.904552, 41.346256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.082035, 33.808758, 40.711777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.372946, 33.971172, 40.933117>,  <27.547493, 34.068623, 41.065922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.372946, 33.971172, 40.933117>,  <27.082035, 33.808758, 40.711777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.372946, 33.971172, 40.933117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686339, -0.427512, -0.588365,
		-0.002331, 0.807694, -0.589598,
		0.727278, 0.406035, 0.553355,
		27.591129, 34.092983, 41.099125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.576862, 33.997337, 40.158333>,  <27.082035, 33.808758, 40.711777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.576862, 33.997337, 40.158333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.769119, 33.988491, 40.508987>,  <27.884474, 33.983181, 40.719379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.769119, 33.988491, 40.508987>,  <27.576862, 33.997337, 40.158333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.769119, 33.988491, 40.508987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757165, -0.493821, -0.427600,
		0.442360, 0.869282, -0.220603,
		0.480644, -0.022120, 0.876637,
		27.913313, 33.981853, 40.771980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.304375, 34.430237, 40.037727>,  <27.576862, 33.997337, 40.158333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.304375, 34.430237, 40.037727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.351053, 34.151226, 40.320522>,  <28.379061, 33.983818, 40.490200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.351053, 34.151226, 40.320522>,  <28.304375, 34.430237, 40.037727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.351053, 34.151226, 40.320522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890191, -0.242187, -0.385882,
		0.440388, 0.674388, 0.592672,
		0.116697, -0.697529, 0.706990,
		28.386063, 33.941967, 40.532619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.971996, 34.433544, 40.337196>,  <28.304375, 34.430237, 40.037727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.971996, 34.433544, 40.337196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.868855, 34.068760, 40.464844>,  <28.806971, 33.849888, 40.541431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.868855, 34.068760, 40.464844>,  <28.971996, 34.433544, 40.337196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.868855, 34.068760, 40.464844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852628, -0.370133, -0.368818,
		0.454464, 0.176986, 0.873005,
		-0.257852, -0.911964, 0.319115,
		28.791498, 33.795170, 40.560577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.550091, 34.150944, 40.573978>,  <28.971996, 34.433544, 40.337196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.550091, 34.150944, 40.573978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.315117, 33.838657, 40.488743>,  <29.174131, 33.651287, 40.437599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.315117, 33.838657, 40.488743>,  <29.550091, 34.150944, 40.573978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.315117, 33.838657, 40.488743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775145, -0.467152, -0.425347,
		0.232528, -0.415041, 0.879586,
		-0.587436, -0.780712, -0.213091,
		29.138885, 33.604443, 40.424816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.078539, 33.825871, 40.522129>,  <29.550091, 34.150944, 40.573978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.078539, 33.825871, 40.522129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.781954, 33.586861, 40.400013>,  <29.604002, 33.443455, 40.326744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.781954, 33.586861, 40.400013>,  <30.078539, 33.825871, 40.522129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.781954, 33.586861, 40.400013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669509, -0.628551, -0.395831,
		0.044627, -0.497888, 0.866092,
		-0.741462, -0.597521, -0.305290,
		29.559515, 33.407604, 40.308426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.116449, 33.174664, 40.781101>,  <30.078539, 33.825871, 40.522129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.116449, 33.174664, 40.781101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.924242, 33.132450, 40.432858>,  <29.808918, 33.107124, 40.223911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.924242, 33.132450, 40.432858>,  <30.116449, 33.174664, 40.781101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.924242, 33.132450, 40.432858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756265, -0.552501, -0.350436,
		-0.444033, -0.826804, 0.345296,
		-0.480519, -0.105530, -0.870612,
		29.780087, 33.100792, 40.171673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.367708, 32.522709, 40.502213>,  <30.116449, 33.174664, 40.781101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.367708, 32.522709, 40.502213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.238974, 32.744267, 40.195065>,  <30.161732, 32.877201, 40.010777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.238974, 32.744267, 40.195065>,  <30.367708, 32.522709, 40.502213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.238974, 32.744267, 40.195065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583943, -0.522274, -0.621482,
		-0.745273, -0.648408, -0.155354,
		-0.321837, 0.553892, -0.767871,
		30.142422, 32.910435, 39.964703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.012392, 32.130104, 39.946281>,  <30.367708, 32.522709, 40.502213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.012392, 32.130104, 39.946281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.248631, 32.442345, 39.864452>,  <30.390373, 32.629688, 39.815353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.248631, 32.442345, 39.864452>,  <30.012392, 32.130104, 39.946281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.248631, 32.442345, 39.864452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566931, -0.581774, -0.583206,
		-0.574268, 0.228462, -0.786143,
		0.590598, 0.780605, -0.204572,
		30.425810, 32.676525, 39.803082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.100479, 32.100071, 39.313633>,  <30.012392, 32.130104, 39.946281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.100479, 32.100071, 39.313633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.423353, 32.298058, 39.442295>,  <30.617079, 32.416847, 39.519493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.423353, 32.298058, 39.442295>,  <30.100479, 32.100071, 39.313633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.423353, 32.298058, 39.442295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478166, -0.228746, -0.847958,
		-0.346130, 0.838265, -0.421315,
		0.807188, 0.494962, 0.321654,
		30.665510, 32.446545, 39.538792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.543175, 32.099552, 38.777622>,  <30.100479, 32.100071, 39.313633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.543175, 32.099552, 38.777622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.809368, 32.397743, 38.792568>,  <29.969084, 32.576656, 38.801537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.809368, 32.397743, 38.792568>,  <29.543175, 32.099552, 38.777622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.809368, 32.397743, 38.792568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012184, 0.039200, -0.999157,
		-0.746311, 0.665380, 0.017004,
		0.665486, 0.745475, 0.037362,
		30.009014, 32.621387, 38.803776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.334492, 32.308399, 38.141865>,  <29.543175, 32.099552, 38.777622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.334492, 32.308399, 38.141865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.685675, 32.467983, 38.247715>,  <29.896383, 32.563732, 38.311226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.685675, 32.467983, 38.247715>,  <29.334492, 32.308399, 38.141865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.685675, 32.467983, 38.247715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307422, -0.046099, -0.950456,
		-0.366996, 0.915808, -0.163122,
		0.877955, 0.398961, 0.264621,
		29.949060, 32.587673, 38.327103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.473742, 32.868805, 37.685406>,  <29.334492, 32.308399, 38.141865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.473742, 32.868805, 37.685406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.817850, 32.711430, 37.815109>,  <30.024315, 32.617004, 37.892933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.817850, 32.711430, 37.815109>,  <29.473742, 32.868805, 37.685406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.817850, 32.711430, 37.815109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174080, -0.371118, -0.912123,
		0.479199, 0.841119, -0.250772,
		0.860270, -0.393434, 0.324262,
		30.075932, 32.593399, 37.912388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.488804, 33.255337, 38.355198>,  <29.473742, 32.868805, 37.685406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.488804, 33.255337, 38.355198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.354969, 33.493984, 38.063419>,  <29.274668, 33.637173, 37.888351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.354969, 33.493984, 38.063419>,  <29.488804, 33.255337, 38.355198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.354969, 33.493984, 38.063419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940508, -0.259973, 0.218765,
		-0.059118, 0.759250, 0.648109,
		-0.334588, 0.596619, -0.729450,
		29.254593, 33.672970, 37.844585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.095360, 33.777294, 38.680168>,  <29.488804, 33.255337, 38.355198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.095360, 33.777294, 38.680168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.987127, 33.665466, 38.311684>,  <28.922188, 33.598370, 38.090591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.987127, 33.665466, 38.311684>,  <29.095360, 33.777294, 38.680168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.987127, 33.665466, 38.311684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925655, -0.187336, 0.328738,
		-0.264479, 0.941673, -0.208092,
		-0.270580, -0.279566, -0.921211,
		28.905952, 33.581596, 38.035320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.807476, 34.349651, 38.426033>,  <29.095360, 33.777294, 38.680168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.807476, 34.349651, 38.426033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.501614, 34.604919, 38.461903>,  <28.318096, 34.758080, 38.483425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.501614, 34.604919, 38.461903>,  <28.807476, 34.349651, 38.426033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.501614, 34.604919, 38.461903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557795, 0.585717, 0.588047,
		0.322752, 0.499672, -0.803840,
		-0.764654, 0.638172, 0.089673,
		28.272217, 34.796371, 38.488804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.062294, 34.960361, 38.240250>,  <28.807476, 34.349651, 38.426033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.062294, 34.960361, 38.240250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.739475, 35.010399, 38.471085>,  <28.545784, 35.040421, 38.609585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.739475, 35.010399, 38.471085>,  <29.062294, 34.960361, 38.240250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.739475, 35.010399, 38.471085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500420, 0.663690, 0.555963,
		-0.313455, 0.737473, -0.598230,
		-0.807047, 0.125097, 0.577084,
		28.497360, 35.047928, 38.644211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.232019, 35.676598, 38.002773>,  <29.062294, 34.960361, 38.240250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.232019, 35.676598, 38.002773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.518728, 35.452827, 38.169281>,  <29.690754, 35.318565, 38.269188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.518728, 35.452827, 38.169281>,  <29.232019, 35.676598, 38.002773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.518728, 35.452827, 38.169281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543027, 0.073310, -0.836509,
		0.437448, 0.825632, 0.356330,
		0.716771, -0.559426, 0.416271,
		29.733759, 35.285000, 38.294163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.935146, 36.055859, 38.002399>,  <29.232019, 35.676598, 38.002773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.935146, 36.055859, 38.002399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.926237, 35.665745, 37.914459>,  <29.920893, 35.431679, 37.861694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.926237, 35.665745, 37.914459>,  <29.935146, 36.055859, 38.002399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.926237, 35.665745, 37.914459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496238, 0.180117, -0.849298,
		0.867901, -0.128011, 0.479959,
		-0.022271, -0.975280, -0.219848,
		29.919556, 35.373161, 37.848503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.598667, 35.967026, 37.664677>,  <29.935146, 36.055859, 38.002399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.598667, 35.967026, 37.664677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.337904, 35.682690, 37.559055>,  <30.181446, 35.512089, 37.495682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.337904, 35.682690, 37.559055>,  <30.598667, 35.967026, 37.664677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.337904, 35.682690, 37.559055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263797, 0.113876, -0.957833,
		0.710933, -0.694076, 0.113280,
		-0.651909, -0.710838, -0.264053,
		30.142330, 35.469437, 37.479839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.984682, 35.420296, 37.259117>,  <30.598667, 35.967026, 37.664677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.984682, 35.420296, 37.259117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.595554, 35.456402, 37.173817>,  <30.362078, 35.478065, 37.122635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.595554, 35.456402, 37.173817>,  <30.984682, 35.420296, 37.259117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.595554, 35.456402, 37.173817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222118, 0.103284, -0.969534,
		-0.065488, -0.990548, -0.120526,
		-0.972818, 0.090264, -0.213255,
		30.303709, 35.483482, 37.109840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.700130, 34.893375, 36.717106>,  <30.984682, 35.420296, 37.259117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.700130, 34.893375, 36.717106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.495182, 35.236866, 36.713741>,  <30.372213, 35.442959, 36.711723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.495182, 35.236866, 36.713741>,  <30.700130, 34.893375, 36.717106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.495182, 35.236866, 36.713741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255683, 0.143198, -0.956097,
		-0.819818, -0.492026, -0.292932,
		-0.512372, 0.858723, -0.008407,
		30.341471, 35.494484, 36.711220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.240141, 34.780785, 36.189827>,  <30.700130, 34.893375, 36.717106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.240141, 34.780785, 36.189827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.274593, 35.176529, 36.236717>,  <30.295265, 35.413975, 36.264851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.274593, 35.176529, 36.236717>,  <30.240141, 34.780785, 36.189827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.274593, 35.176529, 36.236717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075220, 0.123787, -0.989454,
		-0.993440, 0.076406, 0.085081,
		0.086132, 0.989363, 0.117227,
		30.300432, 35.473339, 36.271885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.701792, 35.085468, 35.768749>,  <30.240141, 34.780785, 36.189827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.701792, 35.085468, 35.768749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.958477, 35.383415, 35.841824>,  <30.112488, 35.562183, 35.885666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.958477, 35.383415, 35.841824>,  <29.701792, 35.085468, 35.768749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.958477, 35.383415, 35.841824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062310, 0.288045, -0.955588,
		-0.764408, 0.601832, 0.231255,
		0.641715, 0.744868, 0.182684,
		30.150991, 35.606876, 35.896629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.394861, 35.605469, 35.366577>,  <29.701792, 35.085468, 35.768749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.394861, 35.605469, 35.366577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.770042, 35.719498, 35.445549>,  <29.995152, 35.787914, 35.492931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.770042, 35.719498, 35.445549>,  <29.394861, 35.605469, 35.366577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.770042, 35.719498, 35.445549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124340, 0.254989, -0.958916,
		-0.323707, 0.923965, 0.203721,
		0.937952, 0.285077, 0.197427,
		30.051428, 35.805019, 35.504776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.499987, 36.301918, 35.047783>,  <29.394861, 35.605469, 35.366577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.499987, 36.301918, 35.047783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.856733, 36.122997, 35.074589>,  <30.070782, 36.015644, 35.090672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.856733, 36.122997, 35.074589>,  <29.499987, 36.301918, 35.047783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.856733, 36.122997, 35.074589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224367, 0.308886, -0.924256,
		0.392725, 0.839349, 0.375846,
		0.891867, -0.447306, 0.067015,
		30.124294, 35.988804, 35.094692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.961037, 36.911335, 34.947899>,  <29.499987, 36.301918, 35.047783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.961037, 36.911335, 34.947899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.212164, 36.602234, 34.910599>,  <30.362841, 36.416775, 34.888218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.212164, 36.602234, 34.910599>,  <29.961037, 36.911335, 34.947899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.212164, 36.602234, 34.910599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558387, 0.530610, -0.637697,
		0.542261, 0.348289, 0.764623,
		0.627819, -0.772753, -0.093249,
		30.400509, 36.370407, 34.882626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.609230, 37.133919, 35.106628>,  <29.961037, 36.911335, 34.947899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.609230, 37.133919, 35.106628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.666918, 36.817013, 34.869473>,  <30.701530, 36.626869, 34.727180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.666918, 36.817013, 34.869473>,  <30.609230, 37.133919, 35.106628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.666918, 36.817013, 34.869473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549438, 0.562422, -0.617899,
		0.822993, -0.236643, 0.516412,
		0.144220, -0.792263, -0.592891,
		30.710184, 36.579334, 34.691605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.170052, 37.335197, 34.788551>,  <30.609230, 37.133919, 35.106628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.170052, 37.335197, 34.788551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.050890, 37.027149, 34.562927>,  <30.979393, 36.842319, 34.427551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.050890, 37.027149, 34.562927>,  <31.170052, 37.335197, 34.788551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.050890, 37.027149, 34.562927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383745, 0.444431, -0.809457,
		0.874067, -0.457597, 0.163132,
		-0.297904, -0.770121, -0.564063,
		30.961519, 36.796112, 34.393707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.700212, 37.255047, 34.189606>,  <31.170052, 37.335197, 34.788551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.700212, 37.255047, 34.189606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.380133, 37.064365, 34.044037>,  <31.188086, 36.949959, 33.956696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.380133, 37.064365, 34.044037>,  <31.700212, 37.255047, 34.189606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.380133, 37.064365, 34.044037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258474, 0.273436, -0.926511,
		0.541178, -0.835458, -0.095589,
		-0.800199, -0.476700, -0.363922,
		31.140074, 36.921356, 33.934860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.906404, 36.831009, 33.641556>,  <31.700212, 37.255047, 34.189606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.906404, 36.831009, 33.641556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.523815, 36.945778, 33.620247>,  <31.294262, 37.014637, 33.607460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.523815, 36.945778, 33.620247>,  <31.906404, 36.831009, 33.641556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.523815, 36.945778, 33.620247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166629, 0.387095, -0.906858,
		-0.239575, -0.876261, -0.418055,
		-0.956472, 0.286921, -0.053272,
		31.236874, 37.031853, 33.604267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.693983, 36.818932, 32.901035>,  <31.906404, 36.831009, 33.641556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.693983, 36.818932, 32.901035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.386808, 37.017685, 33.062717>,  <31.202503, 37.136936, 33.159725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.386808, 37.017685, 33.062717>,  <31.693983, 36.818932, 32.901035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.386808, 37.017685, 33.062717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033226, 0.661104, -0.749558,
		-0.639666, -0.562181, -0.524194,
		-0.767935, 0.496884, 0.404207,
		31.156427, 37.166752, 33.183979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.266733, 36.834240, 32.304165>,  <31.693983, 36.818932, 32.901035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.266733, 36.834240, 32.304165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.126244, 37.092419, 32.575470>,  <31.041950, 37.247326, 32.738251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.126244, 37.092419, 32.575470>,  <31.266733, 36.834240, 32.304165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.126244, 37.092419, 32.575470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120355, 0.687278, -0.716354,
		-0.928524, -0.333232, -0.163704,
		-0.351222, 0.645450, 0.678261,
		31.020876, 37.286053, 32.778950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.574623, 36.909939, 32.151142>,  <31.266733, 36.834240, 32.304165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.574623, 36.909939, 32.151142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.724424, 37.232410, 32.334370>,  <30.814306, 37.425892, 32.444305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.724424, 37.232410, 32.334370>,  <30.574623, 36.909939, 32.151142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.724424, 37.232410, 32.334370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201294, 0.552926, -0.808551,
		-0.905112, 0.210600, 0.369352,
		0.374505, 0.806177, 0.458067,
		30.836777, 37.474262, 32.471790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.096466, 37.324295, 32.067913>,  <30.574623, 36.909939, 32.151142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.096466, 37.324295, 32.067913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.412060, 37.555264, 32.151901>,  <30.601416, 37.693844, 32.202293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.412060, 37.555264, 32.151901>,  <30.096466, 37.324295, 32.067913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.412060, 37.555264, 32.151901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268620, 0.631524, -0.727338,
		-0.552582, 0.517456, 0.653370,
		0.788984, 0.577422, 0.209970,
		30.648756, 37.728489, 32.214893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.814146, 37.852772, 31.842476>,  <30.096466, 37.324295, 32.067913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.814146, 37.852772, 31.842476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.187542, 37.984638, 31.898924>,  <30.411579, 38.063759, 31.932793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.187542, 37.984638, 31.898924>,  <29.814146, 37.852772, 31.842476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.187542, 37.984638, 31.898924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102685, 0.622791, -0.775620,
		-0.343585, 0.709544, 0.615221,
		0.933491, 0.329665, 0.141122,
		30.467588, 38.083538, 31.941261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.731741, 38.531158, 31.922539>,  <29.814146, 37.852772, 31.842476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.731741, 38.531158, 31.922539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.111137, 38.457924, 31.819118>,  <30.338776, 38.413982, 31.757067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.111137, 38.457924, 31.819118>,  <29.731741, 38.531158, 31.922539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.111137, 38.457924, 31.819118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143572, 0.479096, -0.865941,
		0.282411, 0.858456, 0.428131,
		0.948489, -0.183084, -0.258552,
		30.395683, 38.403000, 31.741552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.004871, 39.208557, 31.749435>,  <29.731741, 38.531158, 31.922539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.004871, 39.208557, 31.749435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.234669, 38.934189, 31.570789>,  <30.372547, 38.769566, 31.463602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.234669, 38.934189, 31.570789>,  <30.004871, 39.208557, 31.749435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.234669, 38.934189, 31.570789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150114, 0.448096, -0.881292,
		0.804626, 0.573340, 0.154462,
		0.574494, -0.685923, -0.446616,
		30.407017, 38.728413, 31.436804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.331446, 39.553730, 31.202864>,  <30.004871, 39.208557, 31.749435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.331446, 39.553730, 31.202864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.386497, 39.173882, 31.090244>,  <30.419529, 38.945972, 31.022673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.386497, 39.173882, 31.090244>,  <30.331446, 39.553730, 31.202864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.386497, 39.173882, 31.090244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069102, 0.274355, -0.959142,
		0.988070, 0.151463, -0.027861,
		0.137631, -0.949625, -0.281548,
		30.427786, 38.888992, 31.005779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.793642, 39.578747, 30.594530>,  <30.331446, 39.553730, 31.202864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.793642, 39.578747, 30.594530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.592997, 39.232716, 30.596375>,  <30.472609, 39.025097, 30.597481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.592997, 39.232716, 30.596375>,  <30.793642, 39.578747, 30.594530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.592997, 39.232716, 30.596375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329733, 0.186260, -0.925518,
		0.799787, -0.465775, -0.378675,
		-0.501615, -0.865079, 0.004613,
		30.442513, 38.973190, 30.597759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.114330, 39.177074, 30.071306>,  <30.793642, 39.578747, 30.594530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.114330, 39.177074, 30.071306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.738016, 39.058395, 30.136908>,  <30.512228, 38.987186, 30.176268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.738016, 39.058395, 30.136908>,  <31.114330, 39.177074, 30.071306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.738016, 39.058395, 30.136908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198246, 0.089067, -0.976097,
		0.275001, -0.950808, -0.142612,
		-0.940783, -0.296700, 0.164001,
		30.455782, 38.969387, 30.186108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012960, 38.564007, 29.645714>,  <31.114330, 39.177074, 30.071306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.012960, 38.564007, 29.645714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.658966, 38.729763, 29.730637>,  <30.446569, 38.829216, 29.781591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.658966, 38.729763, 29.730637>,  <31.012960, 38.564007, 29.645714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.658966, 38.729763, 29.730637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123706, 0.230324, -0.965219,
		-0.448881, -0.880470, -0.152570,
		-0.884987, 0.414395, 0.212308,
		30.393471, 38.854080, 29.794329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.645386, 38.441147, 29.044052>,  <31.012960, 38.564007, 29.645714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.645386, 38.441147, 29.044052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.372379, 38.674129, 29.220648>,  <30.208576, 38.813919, 29.326605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.372379, 38.674129, 29.220648>,  <30.645386, 38.441147, 29.044052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.372379, 38.674129, 29.220648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415318, 0.187970, -0.890044,
		-0.601401, -0.790828, 0.113613,
		-0.682516, 0.582459, 0.441491,
		30.167625, 38.848866, 29.353094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.089579, 38.285912, 28.724253>,  <30.645386, 38.441147, 29.044052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.089579, 38.285912, 28.724253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.036839, 38.656380, 28.865576>,  <30.005194, 38.878658, 28.950371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.036839, 38.656380, 28.865576>,  <30.089579, 38.285912, 28.724253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.036839, 38.656380, 28.865576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288665, 0.305099, -0.907517,
		-0.948308, -0.221646, 0.227125,
		-0.131852, 0.926169, 0.353309,
		29.997282, 38.934231, 28.971569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.519196, 38.469299, 28.376205>,  <30.089579, 38.285912, 28.724253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.519196, 38.469299, 28.376205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.646387, 38.828304, 28.498421>,  <29.722702, 39.043709, 28.571751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.646387, 38.828304, 28.498421>,  <29.519196, 38.469299, 28.376205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.646387, 38.828304, 28.498421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274435, 0.395601, -0.876462,
		-0.907510, 0.194846, 0.372102,
		0.317979, 0.897516, 0.305540,
		29.741781, 39.097561, 28.590082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.949556, 38.899643, 28.285280>,  <29.519196, 38.469299, 28.376205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.949556, 38.899643, 28.285280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.274544, 39.132320, 28.300943>,  <29.469536, 39.271927, 28.310341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.274544, 39.132320, 28.300943>,  <28.949556, 38.899643, 28.285280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.274544, 39.132320, 28.300943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205202, 0.348184, -0.914691,
		-0.545700, 0.735122, 0.402252,
		0.812468, 0.581690, 0.039156,
		29.518284, 39.306828, 28.312691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.683764, 39.541302, 27.995110>,  <28.949556, 38.899643, 28.285280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.683764, 39.541302, 27.995110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.083094, 39.563797, 27.989676>,  <29.322691, 39.577293, 27.986416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.083094, 39.563797, 27.989676>,  <28.683764, 39.541302, 27.995110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.083094, 39.563797, 27.989676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039260, 0.485980, -0.873088,
		-0.042502, 0.872159, 0.487374,
		0.998325, 0.056243, -0.013586,
		29.382591, 39.580669, 27.985600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.839449, 40.216656, 27.758841>,  <28.683764, 39.541302, 27.995110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.839449, 40.216656, 27.758841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.164284, 39.997108, 27.679585>,  <29.359184, 39.865379, 27.632030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.164284, 39.997108, 27.679585>,  <28.839449, 40.216656, 27.758841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.164284, 39.997108, 27.679585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012384, 0.323263, -0.946228,
		0.583406, 0.770872, 0.255720,
		0.812086, -0.548869, -0.198140,
		29.407909, 39.832447, 27.620142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.340799, 40.635502, 27.500074>,  <28.839449, 40.216656, 27.758841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.340799, 40.635502, 27.500074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.513374, 40.299740, 27.367855>,  <29.616919, 40.098282, 27.288523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.513374, 40.299740, 27.367855>,  <29.340799, 40.635502, 27.500074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.513374, 40.299740, 27.367855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183093, 0.440251, -0.879009,
		0.883368, 0.318715, 0.343630,
		0.431436, -0.839405, -0.330549,
		29.642805, 40.047920, 27.268690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.092838, 40.728207, 27.315777>,  <29.340799, 40.635502, 27.500074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.092838, 40.728207, 27.315777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.944130, 40.423615, 27.103388>,  <29.854904, 40.240860, 26.975954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.944130, 40.423615, 27.103388>,  <30.092838, 40.728207, 27.315777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.944130, 40.423615, 27.103388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296639, 0.444537, -0.845217,
		0.879654, -0.471735, 0.060619,
		-0.371771, -0.761481, -0.530974,
		29.832598, 40.195171, 26.944096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.627098, 40.652565, 26.875595>,  <30.092838, 40.728207, 27.315777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.627098, 40.652565, 26.875595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.336260, 40.458160, 26.681639>,  <30.161757, 40.341518, 26.565264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.336260, 40.458160, 26.681639>,  <30.627098, 40.652565, 26.875595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.336260, 40.458160, 26.681639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378335, 0.305709, -0.873730,
		0.572882, -0.818737, -0.038403,
		-0.727096, -0.486015, -0.484892,
		30.118132, 40.312355, 26.536171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.017143, 40.229660, 26.421621>,  <30.627098, 40.652565, 26.875595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.017143, 40.229660, 26.421621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.642561, 40.268520, 26.286798>,  <30.417810, 40.291836, 26.205904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.642561, 40.268520, 26.286798>,  <31.017143, 40.229660, 26.421621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.642561, 40.268520, 26.286798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350295, 0.208456, -0.913148,
		-0.018453, -0.973195, -0.229243,
		-0.936458, 0.097153, -0.337059,
		30.361624, 40.297665, 26.185680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012129, 39.799683, 25.720551>,  <31.017143, 40.229660, 26.421621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.012129, 39.799683, 25.720551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.716009, 40.067909, 25.739756>,  <30.538338, 40.228844, 25.751278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.716009, 40.067909, 25.739756>,  <31.012129, 39.799683, 25.720551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.716009, 40.067909, 25.739756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186585, 0.273547, -0.943588,
		-0.645869, -0.689577, -0.327623,
		-0.740297, 0.670564, 0.048011,
		30.493919, 40.269077, 25.754158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.524542, 39.682014, 25.116022>,  <31.012129, 39.799683, 25.720551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.524542, 39.682014, 25.116022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.462746, 40.059216, 25.233919>,  <30.425669, 40.285538, 25.304657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.462746, 40.059216, 25.233919>,  <30.524542, 39.682014, 25.116022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.462746, 40.059216, 25.233919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051343, 0.305583, -0.950780,
		-0.986659, -0.131753, -0.095627,
		-0.154490, 0.943006, 0.294741,
		30.416399, 40.342117, 25.322342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.176359, 39.942490, 24.581272>,  <30.524542, 39.682014, 25.116022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.176359, 39.942490, 24.581272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.224600, 40.296955, 24.760229>,  <30.253544, 40.509636, 24.867603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.224600, 40.296955, 24.760229>,  <30.176359, 39.942490, 24.581272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.224600, 40.296955, 24.760229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160662, 0.462166, -0.872118,
		-0.979614, 0.033301, 0.198112,
		0.120602, 0.886168, 0.447394,
		30.260780, 40.562805, 24.894447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.581425, 40.413258, 24.436832>,  <30.176359, 39.942490, 24.581272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.581425, 40.413258, 24.436832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.878927, 40.662533, 24.533554>,  <30.057428, 40.812096, 24.591587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.878927, 40.662533, 24.533554>,  <29.581425, 40.413258, 24.436832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.878927, 40.662533, 24.533554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095903, 0.457478, -0.884034,
		-0.661536, 0.634316, 0.400017,
		0.743756, 0.623184, 0.241805,
		30.102055, 40.849487, 24.606096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.329979, 41.109070, 24.466469>,  <29.581425, 40.413258, 24.436832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.329979, 41.109070, 24.466469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.721834, 41.154747, 24.400414>,  <29.956947, 41.182152, 24.360781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.721834, 41.154747, 24.400414>,  <29.329979, 41.109070, 24.466469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.721834, 41.154747, 24.400414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196824, 0.383845, -0.902177,
		-0.039633, 0.916309, 0.398505,
		0.979638, 0.114191, -0.165138,
		30.015726, 41.189003, 24.350872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.329838, 41.782146, 24.212259>,  <29.329979, 41.109070, 24.466469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.329838, 41.782146, 24.212259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.694086, 41.650982, 24.111662>,  <29.912636, 41.572285, 24.051304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.694086, 41.650982, 24.111662>,  <29.329838, 41.782146, 24.212259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.694086, 41.650982, 24.111662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036536, 0.670078, -0.741391,
		0.411627, 0.665937, 0.622166,
		0.910620, -0.327908, -0.251491,
		29.967272, 41.552608, 24.036215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.851814, 42.398243, 24.233427>,  <29.329838, 41.782146, 24.212259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.851814, 42.398243, 24.233427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.016571, 42.114792, 24.004274>,  <30.115425, 41.944721, 23.866783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.016571, 42.114792, 24.004274>,  <29.851814, 42.398243, 24.233427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.016571, 42.114792, 24.004274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142709, 0.671097, -0.727504,
		0.899988, 0.217898, 0.377548,
		0.411893, -0.708625, -0.572883,
		30.140139, 41.902203, 23.832409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.443268, 42.686375, 24.020739>,  <29.851814, 42.398243, 24.233427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.443268, 42.686375, 24.020739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.328659, 42.406021, 23.759462>,  <30.259893, 42.237808, 23.602695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.328659, 42.406021, 23.759462>,  <30.443268, 42.686375, 24.020739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.328659, 42.406021, 23.759462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083628, 0.660878, -0.745819,
		0.954416, -0.268320, -0.130743,
		-0.286523, -0.700888, -0.653192,
		30.242702, 42.195755, 23.563505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.709593, 42.922398, 23.323618>,  <30.443268, 42.686375, 24.020739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.709593, 42.922398, 23.323618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.435255, 42.641224, 23.248255>,  <30.270653, 42.472519, 23.203037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.435255, 42.641224, 23.248255>,  <30.709593, 42.922398, 23.323618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.435255, 42.641224, 23.248255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328227, 0.529850, -0.782001,
		0.649526, -0.474490, -0.594117,
		-0.685845, -0.702936, -0.188411,
		30.229502, 42.430344, 23.191732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.804413, 42.675777, 22.681063>,  <30.709593, 42.922398, 23.323618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.804413, 42.675777, 22.681063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.419840, 42.602478, 22.763100>,  <30.189096, 42.558498, 22.812323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.419840, 42.602478, 22.763100>,  <30.804413, 42.675777, 22.681063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.419840, 42.602478, 22.763100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270542, 0.495869, -0.825180,
		0.049517, -0.848842, -0.526322,
		-0.961434, -0.183252, 0.205094,
		30.131411, 42.547501, 22.824627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.527527, 42.512444, 22.023876>,  <30.804413, 42.675777, 22.681063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.527527, 42.512444, 22.023876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.197338, 42.559464, 22.244703>,  <29.999226, 42.587677, 22.377199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.197338, 42.559464, 22.244703>,  <30.527527, 42.512444, 22.023876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.197338, 42.559464, 22.244703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444176, 0.468237, -0.763847,
		-0.348290, -0.875749, -0.334303,
		-0.825471, 0.117551, 0.552068,
		29.949697, 42.594730, 22.410324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.917038, 42.272198, 21.726103>,  <30.527527, 42.512444, 22.023876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.917038, 42.272198, 21.726103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.839046, 42.573620, 21.977226>,  <29.792252, 42.754471, 22.127899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.839046, 42.573620, 21.977226>,  <29.917038, 42.272198, 21.726103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.839046, 42.573620, 21.977226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355238, 0.542376, -0.761337,
		-0.914215, -0.371466, 0.161938,
		-0.194979, 0.753552, 0.627808,
		29.780552, 42.799686, 22.165569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.210184, 42.566174, 21.533443>,  <29.917038, 42.272198, 21.726103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.210184, 42.566174, 21.533443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.427912, 42.857483, 21.699978>,  <29.558548, 43.032269, 21.799898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.427912, 42.857483, 21.699978>,  <29.210184, 42.566174, 21.533443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.427912, 42.857483, 21.699978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374801, 0.655141, -0.655984,
		-0.750495, 0.201019, 0.629562,
		0.544317, 0.728273, 0.416338,
		29.591208, 43.075966, 21.824879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.852310, 43.148827, 21.838072>,  <29.210184, 42.566174, 21.533443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.852310, 43.148827, 21.838072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.210669, 43.267773, 21.706045>,  <29.425684, 43.339138, 21.626829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.210669, 43.267773, 21.706045>,  <28.852310, 43.148827, 21.838072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.210669, 43.267773, 21.706045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439630, 0.486421, -0.755063,
		-0.063975, 0.821566, 0.566513,
		0.895897, 0.297361, -0.330067,
		29.479439, 43.356979, 21.607025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.793686, 43.847458, 21.733912>,  <28.852310, 43.148827, 21.838072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.793686, 43.847458, 21.733912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.142208, 43.767265, 21.554743>,  <29.351322, 43.719151, 21.447241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.142208, 43.767265, 21.554743>,  <28.793686, 43.847458, 21.733912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.142208, 43.767265, 21.554743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235071, 0.630711, -0.739557,
		0.430777, 0.749674, 0.502415,
		0.871306, -0.200481, -0.447922,
		29.403599, 43.707123, 21.420366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.679661, 44.333427, 21.273735>,  <28.793686, 43.847458, 21.733912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.679661, 44.333427, 21.273735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.998507, 44.110367, 21.181103>,  <29.189814, 43.976532, 21.125523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.998507, 44.110367, 21.181103>,  <28.679661, 44.333427, 21.273735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.998507, 44.110367, 21.181103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070166, 0.466471, -0.881749,
		0.599735, 0.686607, 0.410960,
		0.797116, -0.557651, -0.231582,
		29.237642, 43.943073, 21.111628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.383320, 44.464497, 21.274546>,  <28.679661, 44.333427, 21.273735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.383320, 44.464497, 21.274546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.409512, 44.830376, 21.434063>,  <29.425226, 45.049904, 21.529774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.409512, 44.830376, 21.434063>,  <29.383320, 44.464497, 21.274546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.409512, 44.830376, 21.434063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518350, -0.310320, 0.796878,
		0.852658, -0.258893, 0.453815,
		0.065478, 0.914700, 0.398794,
		29.429155, 45.104786, 21.553701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.664410, 44.457150, 21.858244>,  <29.383320, 44.464497, 21.274546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.664410, 44.457150, 21.858244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.428505, 44.780098, 21.865513>,  <29.286963, 44.973869, 21.869875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.428505, 44.780098, 21.865513>,  <29.664410, 44.457150, 21.858244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.428505, 44.780098, 21.865513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498504, -0.381659, 0.778351,
		0.635356, 0.449982, 0.627566,
		-0.589760, 0.807374, 0.018172,
		29.251577, 45.022308, 21.870964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.682432, 44.860432, 22.463369>,  <29.664410, 44.457150, 21.858244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.682432, 44.860432, 22.463369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.317228, 44.902210, 22.305634>,  <29.098106, 44.927277, 22.210993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.317228, 44.902210, 22.305634>,  <29.682432, 44.860432, 22.463369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.317228, 44.902210, 22.305634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395235, -0.465822, 0.791706,
		-0.101002, 0.878693, 0.466581,
		-0.913010, 0.104445, -0.394339,
		29.043325, 44.933544, 22.187332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.155737, 45.103466, 22.907595>,  <29.682432, 44.860432, 22.463369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.155737, 45.103466, 22.907595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.976950, 44.871227, 22.635380>,  <28.869678, 44.731884, 22.472052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.976950, 44.871227, 22.635380>,  <29.155737, 45.103466, 22.907595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.976950, 44.871227, 22.635380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427729, -0.529447, 0.732622,
		-0.785665, 0.618542, -0.011693,
		-0.446966, -0.580597, -0.680535,
		28.842859, 44.697048, 22.431219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.423923, 45.187969, 22.830215>,  <29.155737, 45.103466, 22.907595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.423923, 45.187969, 22.830215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.520405, 44.813721, 22.727121>,  <28.578293, 44.589172, 22.665266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.520405, 44.813721, 22.727121>,  <28.423923, 45.187969, 22.830215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.520405, 44.813721, 22.727121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625935, -0.352937, 0.695443,
		-0.741638, -0.006418, -0.670770,
		0.241203, -0.935625, -0.257734,
		28.592766, 44.533031, 22.649801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.785730, 44.927662, 22.682125>,  <28.423923, 45.187969, 22.830215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.785730, 44.927662, 22.682125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.043390, 44.634727, 22.770443>,  <28.197987, 44.458965, 22.823435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.043390, 44.634727, 22.770443>,  <27.785730, 44.927662, 22.682125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.043390, 44.634727, 22.770443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722180, -0.487171, 0.491040,
		-0.252041, -0.475760, -0.842691,
		0.644152, -0.732337, 0.220797,
		28.236635, 44.415028, 22.836681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.426342, 44.373402, 23.049831>,  <27.785730, 44.927662, 22.682125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.426342, 44.373402, 23.049831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.789961, 44.208687, 23.075333>,  <28.008133, 44.109859, 23.090633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.789961, 44.208687, 23.075333>,  <27.426342, 44.373402, 23.049831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.789961, 44.208687, 23.075333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317373, -0.585089, 0.746288,
		-0.270008, -0.698645, -0.662564,
		0.909049, -0.411783, 0.063753,
		28.062675, 44.085152, 23.094458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.314320, 43.684887, 23.063473>,  <27.426342, 44.373402, 23.049831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.314320, 43.684887, 23.063473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.676018, 43.733185, 23.227306>,  <27.893036, 43.762165, 23.325607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.676018, 43.733185, 23.227306>,  <27.314320, 43.684887, 23.063473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.676018, 43.733185, 23.227306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194814, -0.736896, 0.647326,
		0.379983, -0.665135, -0.642813,
		0.904246, 0.120744, 0.409585,
		27.947292, 43.769409, 23.350182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.532248, 42.969894, 23.154333>,  <27.314320, 43.684887, 23.063473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.532248, 42.969894, 23.154333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.764238, 43.173405, 23.408821>,  <27.903433, 43.295509, 23.561514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.764238, 43.173405, 23.408821>,  <27.532248, 42.969894, 23.154333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.764238, 43.173405, 23.408821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186263, -0.677480, 0.711566,
		0.793053, -0.531197, -0.298157,
		0.579977, 0.508774, 0.636220,
		27.938232, 43.326038, 23.599688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.899799, 42.447067, 23.551847>,  <27.532248, 42.969894, 23.154333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.899799, 42.447067, 23.551847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.885155, 42.789162, 23.758625>,  <27.876368, 42.994419, 23.882692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.885155, 42.789162, 23.758625>,  <27.899799, 42.447067, 23.551847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.885155, 42.789162, 23.758625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129372, -0.516995, 0.846155,
		0.990920, -0.035899, 0.129571,
		-0.036612, 0.855235, 0.516946,
		27.874170, 43.045731, 23.913708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.159748, 42.348736, 24.200977>,  <27.899799, 42.447067, 23.551847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.159748, 42.348736, 24.200977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.999853, 42.673012, 24.372084>,  <27.903915, 42.867577, 24.474747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.999853, 42.673012, 24.372084>,  <28.159748, 42.348736, 24.200977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.999853, 42.673012, 24.372084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086870, -0.498078, 0.862770,
		0.912504, 0.307722, 0.269526,
		-0.399738, 0.810694, 0.427766,
		27.879932, 42.916222, 24.500414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.483553, 42.462337, 24.747704>,  <28.159748, 42.348736, 24.200977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.483553, 42.462337, 24.747704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.141752, 42.656437, 24.821852>,  <27.936672, 42.772896, 24.866341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.141752, 42.656437, 24.821852>,  <28.483553, 42.462337, 24.747704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.141752, 42.656437, 24.821852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047506, -0.428368, 0.902355,
		0.517273, 0.762257, 0.389093,
		-0.854501, 0.485248, 0.185371,
		27.885403, 42.802010, 24.877462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.563913, 42.733948, 25.379770>,  <28.483553, 42.462337, 24.747704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.563913, 42.733948, 25.379770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.167828, 42.783192, 25.353470>,  <27.930176, 42.812737, 25.337688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.167828, 42.783192, 25.353470>,  <28.563913, 42.733948, 25.379770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.167828, 42.783192, 25.353470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085078, -0.158966, 0.983612,
		0.110638, 0.979579, 0.167884,
		-0.990213, 0.123108, -0.065753,
		27.870764, 42.820126, 25.333744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.374720, 43.390820, 25.827003>,  <28.563913, 42.733948, 25.379770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.374720, 43.390820, 25.827003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.059748, 43.149193, 25.777912>,  <27.870764, 43.004219, 25.748457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.059748, 43.149193, 25.777912>,  <28.374720, 43.390820, 25.827003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.059748, 43.149193, 25.777912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040333, -0.249168, 0.967620,
		-0.615084, 0.756982, 0.220566,
		-0.787429, -0.604064, -0.122728,
		27.823519, 42.967972, 25.741095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.881483, 43.571293, 26.321281>,  <28.374720, 43.390820, 25.827003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.881483, 43.571293, 26.321281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.772417, 43.200184, 26.219387>,  <27.706978, 42.977520, 26.158251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.772417, 43.200184, 26.219387>,  <27.881483, 43.571293, 26.321281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.772417, 43.200184, 26.219387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020568, -0.259087, 0.965635,
		-0.961890, 0.268533, 0.051561,
		-0.272663, -0.927774, -0.254736,
		27.690619, 42.921852, 26.142965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.488565, 43.395748, 26.919907>,  <27.881483, 43.571293, 26.321281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.488565, 43.395748, 26.919907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.531536, 43.045891, 26.730820>,  <27.557320, 42.835976, 26.617367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.531536, 43.045891, 26.730820>,  <27.488565, 43.395748, 26.919907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.531536, 43.045891, 26.730820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104699, -0.482778, 0.869461,
		-0.988685, -0.043912, -0.143438,
		0.107429, -0.874641, -0.472718,
		27.563765, 42.783497, 26.589005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.925068, 42.897259, 27.072247>,  <27.488565, 43.395748, 26.919907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.925068, 42.897259, 27.072247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.246246, 42.677837, 26.978977>,  <27.438953, 42.546185, 26.923016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.246246, 42.677837, 26.978977>,  <26.925068, 42.897259, 27.072247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.246246, 42.677837, 26.978977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002942, -0.394838, 0.918746,
		-0.596043, -0.737018, -0.318648,
		0.802947, -0.548550, -0.233172,
		27.487131, 42.513271, 26.909025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.654737, 42.202282, 27.130604>,  <26.925068, 42.897259, 27.072247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.654737, 42.202282, 27.130604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.052761, 42.169956, 27.153687>,  <27.291574, 42.150562, 27.167536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.052761, 42.169956, 27.153687>,  <26.654737, 42.202282, 27.130604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.052761, 42.169956, 27.153687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093967, -0.578426, 0.810304,
		-0.032101, -0.811722, -0.583161,
		0.995058, -0.080809, 0.057707,
		27.351278, 42.145714, 27.170998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.712894, 41.558079, 27.370646>,  <26.654737, 42.202282, 27.130604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.712894, 41.558079, 27.370646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.073555, 41.714291, 27.444950>,  <27.289951, 41.808018, 27.489532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.073555, 41.714291, 27.444950>,  <26.712894, 41.558079, 27.370646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.073555, 41.714291, 27.444950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062502, -0.542710, 0.837592,
		0.427921, -0.743606, -0.513745,
		0.901652, 0.390533, 0.185760,
		27.344051, 41.831451, 27.500679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.014036, 40.999035, 27.633141>,  <26.712894, 41.558079, 27.370646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.014036, 40.999035, 27.633141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.207781, 41.327854, 27.752890>,  <27.324028, 41.525146, 27.824739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.207781, 41.327854, 27.752890>,  <27.014036, 40.999035, 27.633141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.207781, 41.327854, 27.752890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105593, -0.394623, 0.912755,
		0.868473, -0.410491, -0.277943,
		0.484360, 0.822052, 0.299375,
		27.353088, 41.574471, 27.842703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.509617, 40.721699, 28.112968>,  <27.014036, 40.999035, 27.633141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.509617, 40.721699, 28.112968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.546982, 41.108120, 28.209307>,  <27.569401, 41.339973, 28.267111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.546982, 41.108120, 28.209307>,  <27.509617, 40.721699, 28.112968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.546982, 41.108120, 28.209307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356066, -0.258321, 0.898046,
		0.929780, 0.001870, -0.368111,
		0.093412, 0.966057, 0.240847,
		27.575005, 41.397938, 28.281561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.206156, 40.834446, 28.253017>,  <27.509617, 40.721699, 28.112968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.206156, 40.834446, 28.253017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.958220, 41.092438, 28.431816>,  <27.809458, 41.247231, 28.539095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.958220, 41.092438, 28.431816>,  <28.206156, 40.834446, 28.253017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.958220, 41.092438, 28.431816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205998, -0.415905, 0.885770,
		0.757207, 0.641116, 0.124932,
		-0.619841, 0.644975, 0.446995,
		27.772266, 41.285931, 28.565914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.489288, 40.973957, 28.931501>,  <28.206156, 40.834446, 28.253017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.489288, 40.973957, 28.931501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.136290, 41.148537, 29.001598>,  <27.924490, 41.253284, 29.043655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.136290, 41.148537, 29.001598>,  <28.489288, 40.973957, 28.931501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.136290, 41.148537, 29.001598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036404, -0.308094, 0.950659,
		0.468907, 0.845333, 0.256003,
		-0.882497, 0.436451, 0.175241,
		27.871540, 41.279472, 29.054171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.557699, 41.424911, 29.566854>,  <28.489288, 40.973957, 28.931501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.557699, 41.424911, 29.566854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.166040, 41.351406, 29.532213>,  <27.931046, 41.307301, 29.511429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.166040, 41.351406, 29.532213>,  <28.557699, 41.424911, 29.566854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.166040, 41.351406, 29.532213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030865, -0.286779, 0.957499,
		-0.200791, 0.940206, 0.275127,
		-0.979148, -0.183765, -0.086602,
		27.872295, 41.296276, 29.506233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.141573, 41.840214, 30.074532>,  <28.557699, 41.424911, 29.566854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.141573, 41.840214, 30.074532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.925938, 41.519138, 29.972486>,  <27.796556, 41.326492, 29.911261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.925938, 41.519138, 29.972486>,  <28.141573, 41.840214, 30.074532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.925938, 41.519138, 29.972486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172165, -0.191477, 0.966279,
		-0.824466, 0.564830, -0.034971,
		-0.539087, -0.802685, -0.255110,
		27.764212, 41.278332, 29.895954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.552483, 41.861637, 30.641262>,  <28.141573, 41.840214, 30.074532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.552483, 41.861637, 30.641262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.572311, 41.506046, 30.459162>,  <27.584209, 41.292690, 30.349901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.572311, 41.506046, 30.459162>,  <27.552483, 41.861637, 30.641262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.572311, 41.506046, 30.459162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082835, -0.457902, 0.885135,
		-0.995329, -0.006167, -0.096338,
		0.049572, -0.888981, -0.455253,
		27.587183, 41.239353, 30.322586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.014421, 41.456455, 30.989035>,  <27.552483, 41.861637, 30.641262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.014421, 41.456455, 30.989035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.273201, 41.201267, 30.821962>,  <27.428469, 41.048157, 30.721720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.273201, 41.201267, 30.821962>,  <27.014421, 41.456455, 30.989035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.273201, 41.201267, 30.821962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082608, -0.603166, 0.793326,
		-0.758046, -0.478737, -0.442918,
		0.646948, -0.637967, -0.417680,
		27.467285, 41.009876, 30.696659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.597252, 40.789146, 31.196503>,  <27.014421, 41.456455, 30.989035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.597252, 40.789146, 31.196503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.969799, 40.701393, 31.080280>,  <27.193327, 40.648739, 31.010546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.969799, 40.701393, 31.080280>,  <26.597252, 40.789146, 31.196503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.969799, 40.701393, 31.080280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089588, -0.635421, 0.766951,
		-0.352885, -0.740344, -0.572156,
		0.931367, -0.219387, -0.290557,
		27.249208, 40.635578, 30.993113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.714531, 39.979877, 31.242073>,  <26.597252, 40.789146, 31.196503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.714531, 39.979877, 31.242073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.076359, 40.149635, 31.258280>,  <27.293455, 40.251492, 31.268003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.076359, 40.149635, 31.258280>,  <26.714531, 39.979877, 31.242073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.076359, 40.149635, 31.258280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252241, -0.609396, 0.751673,
		0.343695, -0.669721, -0.658291,
		0.904571, 0.424394, 0.040515,
		27.347731, 40.276955, 31.270433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.162939, 39.418720, 31.309069>,  <26.714531, 39.979877, 31.242073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.162939, 39.418720, 31.309069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.357698, 39.740463, 31.445265>,  <27.474554, 39.933510, 31.526983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.357698, 39.740463, 31.445265>,  <27.162939, 39.418720, 31.309069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.357698, 39.740463, 31.445265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169551, -0.469441, 0.866532,
		0.856846, -0.364181, -0.364949,
		0.486896, 0.804362, 0.340491,
		27.503767, 39.981773, 31.547413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.631870, 39.096046, 31.685787>,  <27.162939, 39.418720, 31.309069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.631870, 39.096046, 31.685787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.633305, 39.462189, 31.846838>,  <27.634165, 39.681873, 31.943468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.633305, 39.462189, 31.846838>,  <27.631870, 39.096046, 31.685787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.633305, 39.462189, 31.846838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140563, -0.399092, 0.906073,
		0.990065, 0.053344, -0.130097,
		0.003587, 0.915358, 0.402625,
		27.634380, 39.736797, 31.967625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.198195, 39.147102, 32.170071>,  <27.631870, 39.096046, 31.685787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.198195, 39.147102, 32.170071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.938263, 39.430241, 32.280834>,  <27.782305, 39.600124, 32.347294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.938263, 39.430241, 32.280834>,  <28.198195, 39.147102, 32.170071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.938263, 39.430241, 32.280834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045045, -0.327813, 0.943668,
		0.758746, 0.625695, 0.181137,
		-0.649828, 0.707845, 0.276911,
		27.743315, 39.642593, 32.363907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.480337, 39.452812, 32.803501>,  <28.198195, 39.147102, 32.170071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.480337, 39.452812, 32.803501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.095663, 39.559780, 32.827663>,  <27.864859, 39.623959, 32.842159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.095663, 39.559780, 32.827663>,  <28.480337, 39.452812, 32.803501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.095663, 39.559780, 32.827663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018455, -0.282985, 0.958947,
		0.273532, 0.921091, 0.277077,
		-0.961686, 0.267417, 0.060407,
		27.807158, 39.640003, 32.845787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.449974, 39.775116, 33.432888>,  <28.480337, 39.452812, 32.803501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.449974, 39.775116, 33.432888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.075115, 39.673862, 33.336826>,  <27.850199, 39.613110, 33.279190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.075115, 39.673862, 33.336826>,  <28.449974, 39.775116, 33.432888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.075115, 39.673862, 33.336826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102616, -0.457874, 0.883075,
		-0.333498, 0.852216, 0.403121,
		-0.937150, -0.253137, -0.240151,
		27.793970, 39.597923, 33.264782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.021988, 39.985779, 34.039497>,  <28.449974, 39.775116, 33.432888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.021988, 39.985779, 34.039497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.820150, 39.712940, 33.827789>,  <27.699047, 39.549236, 33.700764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.820150, 39.712940, 33.827789>,  <28.021988, 39.985779, 34.039497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.820150, 39.712940, 33.827789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043340, -0.592254, 0.804585,
		-0.862268, 0.428928, 0.269286,
		-0.504595, -0.682097, -0.529271,
		27.668772, 39.508312, 33.669006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.457388, 39.844288, 34.377361>,  <28.021988, 39.985779, 34.039497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.457388, 39.844288, 34.377361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.467407, 39.503319, 34.168461>,  <27.473419, 39.298737, 34.043121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.467407, 39.503319, 34.168461>,  <27.457388, 39.844288, 34.377361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.467407, 39.503319, 34.168461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055394, -0.520424, 0.852109,
		-0.998150, -0.050272, 0.034184,
		0.025047, -0.852427, -0.522247,
		27.474922, 39.247589, 34.011787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.979500, 39.293938, 34.604603>,  <27.457388, 39.844288, 34.377361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.979500, 39.293938, 34.604603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.257059, 39.070808, 34.422466>,  <27.423595, 38.936932, 34.313183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.257059, 39.070808, 34.422466>,  <26.979500, 39.293938, 34.604603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.257059, 39.070808, 34.422466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107954, -0.544619, 0.831707,
		-0.711933, -0.626277, -0.317692,
		0.693900, -0.557824, -0.455342,
		27.465229, 38.903461, 34.285862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.677650, 38.655399, 34.710152>,  <26.979500, 39.293938, 34.604603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.677650, 38.655399, 34.710152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.062626, 38.591724, 34.622177>,  <27.293612, 38.553520, 34.569393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.062626, 38.591724, 34.622177>,  <26.677650, 38.655399, 34.710152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.062626, 38.591724, 34.622177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049759, -0.692931, 0.719285,
		-0.266897, -0.703212, -0.658984,
		0.962439, -0.159185, -0.219932,
		27.351358, 38.543968, 34.556198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.680538, 37.959908, 34.830975>,  <26.677650, 38.655399, 34.710152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.680538, 37.959908, 34.830975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.066664, 38.063942, 34.840172>,  <27.298338, 38.126362, 34.845688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.066664, 38.063942, 34.840172>,  <26.680538, 37.959908, 34.830975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.066664, 38.063942, 34.840172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151725, -0.630417, 0.761285,
		0.212492, -0.731389, -0.648010,
		0.965312, 0.260086, 0.022989,
		27.356256, 38.141968, 34.847069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.017799, 37.320473, 34.806255>,  <26.680538, 37.959908, 34.830975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.017799, 37.320473, 34.806255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.269035, 37.589256, 34.963215>,  <27.419777, 37.750526, 35.057388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.269035, 37.589256, 34.963215>,  <27.017799, 37.320473, 34.806255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.269035, 37.589256, 34.963215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258847, -0.655978, 0.709007,
		0.733826, -0.343750, -0.585948,
		0.628091, 0.671959, 0.392395,
		27.457462, 37.790844, 35.080933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.689678, 36.986202, 34.949413>,  <27.017799, 37.320473, 34.806255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.689678, 36.986202, 34.949413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.710724, 37.323982, 35.162632>,  <27.723351, 37.526649, 35.290565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.710724, 37.323982, 35.162632>,  <27.689678, 36.986202, 34.949413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.710724, 37.323982, 35.162632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429942, -0.500939, 0.751139,
		0.901322, 0.189661, -0.389419,
		0.052613, 0.844446, 0.533051,
		27.726507, 37.577316, 35.322548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.281504, 36.894917, 35.254341>,  <27.689678, 36.986202, 34.949413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.281504, 36.894917, 35.254341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.097065, 37.169071, 35.479778>,  <27.986403, 37.333565, 35.615040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.097065, 37.169071, 35.479778>,  <28.281504, 36.894917, 35.254341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.097065, 37.169071, 35.479778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429740, -0.383210, 0.817602,
		0.776347, 0.619192, -0.117841,
		-0.461095, 0.685384, 0.563595,
		27.958736, 37.374687, 35.648857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.779331, 37.178421, 35.701847>,  <28.281504, 36.894917, 35.254341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.779331, 37.178421, 35.701847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.427992, 37.270443, 35.869453>,  <28.217188, 37.325657, 35.970016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.427992, 37.270443, 35.869453>,  <28.779331, 37.178421, 35.701847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.427992, 37.270443, 35.869453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373892, -0.215527, 0.902082,
		0.297834, 0.949013, 0.103294,
		-0.878350, 0.230050, 0.419020,
		28.164486, 37.339458, 35.995159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.907621, 37.730522, 36.128864>,  <28.779331, 37.178421, 35.701847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.907621, 37.730522, 36.128864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.585897, 37.558605, 36.292992>,  <28.392862, 37.455452, 36.391468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.585897, 37.558605, 36.292992>,  <28.907621, 37.730522, 36.128864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.585897, 37.558605, 36.292992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525244, -0.191356, 0.829157,
		-0.277853, 0.882415, 0.379658,
		-0.804311, -0.429797, 0.410315,
		28.344604, 37.429665, 36.416084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.748083, 37.982006, 36.844387>,  <28.907621, 37.730522, 36.128864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.748083, 37.982006, 36.844387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.761271, 37.588413, 36.774315>,  <28.769182, 37.352257, 36.732269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.761271, 37.588413, 36.774315>,  <28.748083, 37.982006, 36.844387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.761271, 37.588413, 36.774315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569008, -0.125623, 0.812680,
		-0.821671, -0.126472, 0.555753,
		0.032966, -0.983983, -0.175184,
		28.771160, 37.293217, 36.721760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.019665, 38.563412, 37.207623>,  <28.748083, 37.982006, 36.844387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.019665, 38.563412, 37.207623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.111885, 38.925690, 37.349922>,  <29.167217, 39.143059, 37.435303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.111885, 38.925690, 37.349922>,  <29.019665, 38.563412, 37.207623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.111885, 38.925690, 37.349922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291296, 0.413072, -0.862855,
		-0.928435, 0.095306, 0.359061,
		0.230553, 0.905698, 0.355749,
		29.181051, 39.197399, 37.456646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.467268, 38.964176, 36.925770>,  <29.019665, 38.563412, 37.207623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.467268, 38.964176, 36.925770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.747404, 39.229080, 37.032303>,  <28.915485, 39.388023, 37.096222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.747404, 39.229080, 37.032303>,  <28.467268, 38.964176, 36.925770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.747404, 39.229080, 37.032303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169309, 0.516589, -0.839327,
		-0.693439, 0.542722, 0.473915,
		0.700341, 0.662260, 0.266335,
		28.957506, 39.427757, 37.112202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.190247, 39.675407, 36.936821>,  <28.467268, 38.964176, 36.925770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.190247, 39.675407, 36.936821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.585520, 39.730549, 36.910000>,  <28.822683, 39.763634, 36.893909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.585520, 39.730549, 36.910000>,  <28.190247, 39.675407, 36.936821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.585520, 39.730549, 36.910000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143492, 0.677939, -0.720977,
		-0.053930, 0.722077, 0.689707,
		0.988181, 0.137850, -0.067051,
		28.881973, 39.771904, 36.889885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.205696, 40.384682, 36.901939>,  <28.190247, 39.675407, 36.936821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.205696, 40.384682, 36.901939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.576534, 40.284565, 36.790329>,  <28.799036, 40.224495, 36.723362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.576534, 40.284565, 36.790329>,  <28.205696, 40.384682, 36.901939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.576534, 40.284565, 36.790329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073516, 0.608522, -0.790124,
		0.367551, 0.753031, 0.545756,
		0.927093, -0.250289, -0.279022,
		28.854662, 40.209476, 36.706623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.496574, 40.956673, 36.703625>,  <28.205696, 40.384682, 36.901939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.496574, 40.956673, 36.703625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.726130, 40.691124, 36.511822>,  <28.863863, 40.531796, 36.396740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.726130, 40.691124, 36.511822>,  <28.496574, 40.956673, 36.703625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.726130, 40.691124, 36.511822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043433, 0.560025, -0.827337,
		0.817780, 0.495626, 0.292558,
		0.573889, -0.663873, -0.479504,
		28.898296, 40.491962, 36.367970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.006071, 41.367126, 36.278690>,  <28.496574, 40.956673, 36.703625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.006071, 41.367126, 36.278690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.985825, 41.012016, 36.095695>,  <28.973677, 40.798950, 35.985897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.985825, 41.012016, 36.095695>,  <29.006071, 41.367126, 36.278690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.985825, 41.012016, 36.095695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084625, 0.452614, -0.887682,
		0.995127, -0.083644, 0.052219,
		-0.050614, -0.887775, -0.457486,
		28.970640, 40.745686, 35.958450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.569983, 41.351707, 35.835957>,  <29.006071, 41.367126, 36.278690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.569983, 41.351707, 35.835957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.292416, 41.102516, 35.691525>,  <29.125875, 40.953003, 35.604866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.292416, 41.102516, 35.691525>,  <29.569983, 41.351707, 35.835957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.292416, 41.102516, 35.691525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099275, 0.579448, -0.808941,
		0.713181, -0.525489, -0.463934,
		-0.693915, -0.622978, -0.361083,
		29.084242, 40.915623, 35.583199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.792053, 41.176746, 35.154087>,  <29.569983, 41.351707, 35.835957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.792053, 41.176746, 35.154087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.398912, 41.103573, 35.163372>,  <29.163029, 41.059669, 35.168941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.398912, 41.103573, 35.163372>,  <29.792053, 41.176746, 35.154087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.398912, 41.103573, 35.163372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122740, 0.555066, -0.822701,
		0.137615, -0.811441, -0.568001,
		-0.982851, -0.182932, 0.023211,
		29.104057, 41.048695, 35.170334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.627504, 40.874809, 34.457951>,  <29.792053, 41.176746, 35.154087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.627504, 40.874809, 34.457951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.287422, 41.002640, 34.625290>,  <29.083372, 41.079338, 34.725693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.287422, 41.002640, 34.625290>,  <29.627504, 40.874809, 34.457951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.287422, 41.002640, 34.625290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261841, 0.432703, -0.862675,
		-0.456714, -0.842993, -0.284208,
		-0.850207, 0.319579, 0.418352,
		29.032360, 41.098515, 34.750797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.006767, 40.777580, 34.017242>,  <29.627504, 40.874809, 34.457951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.006767, 40.777580, 34.017242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.904089, 41.093452, 34.240139>,  <28.842482, 41.282974, 34.373875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.904089, 41.093452, 34.240139>,  <29.006767, 40.777580, 34.017242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.904089, 41.093452, 34.240139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338238, 0.466698, -0.817183,
		-0.905375, -0.398244, 0.147301,
		-0.256693, 0.789680, 0.557238,
		28.827082, 41.330357, 34.407310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.482025, 41.033264, 33.606308>,  <29.006767, 40.777580, 34.017242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.482025, 41.033264, 33.606308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.537628, 41.318783, 33.880875>,  <28.570990, 41.490093, 34.045616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.537628, 41.318783, 33.880875>,  <28.482025, 41.033264, 33.606308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.537628, 41.318783, 33.880875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374481, 0.679566, -0.630836,
		-0.916755, -0.169358, 0.361770,
		0.139010, 0.713799, 0.686417,
		28.579330, 41.532921, 34.086800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.849937, 41.423946, 33.659607>,  <28.482025, 41.033264, 33.606308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.849937, 41.423946, 33.659607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140863, 41.674934, 33.770813>,  <28.315418, 41.825527, 33.837536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140863, 41.674934, 33.770813>,  <27.849937, 41.423946, 33.659607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.140863, 41.674934, 33.770813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317038, 0.666463, -0.674769,
		-0.608687, 0.402627, 0.683661,
		0.727315, 0.627469, 0.278019,
		28.359058, 41.863174, 33.854218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.580896, 42.137775, 33.690960>,  <27.849937, 41.423946, 33.659607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.580896, 42.137775, 33.690960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.970041, 42.229729, 33.680401>,  <28.203527, 42.284901, 33.674065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.970041, 42.229729, 33.680401>,  <27.580896, 42.137775, 33.690960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.970041, 42.229729, 33.680401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197416, 0.765083, -0.612923,
		-0.120699, 0.601501, 0.789702,
		0.972861, 0.229879, -0.026401,
		28.261900, 42.298691, 33.672482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.645468, 42.885788, 33.564240>,  <27.580896, 42.137775, 33.690960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.645468, 42.885788, 33.564240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.033258, 42.814781, 33.496586>,  <28.265932, 42.772175, 33.455994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.033258, 42.814781, 33.496586>,  <27.645468, 42.885788, 33.564240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.033258, 42.814781, 33.496586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013835, 0.728308, -0.685110,
		0.244802, 0.661857, 0.708532,
		0.969474, -0.177519, -0.169134,
		28.324100, 42.761524, 33.445847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.078375, 43.564606, 33.596180>,  <27.645468, 42.885788, 33.564240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.078375, 43.564606, 33.596180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.265272, 43.289837, 33.373535>,  <28.377411, 43.124973, 33.239948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.265272, 43.289837, 33.373535>,  <28.078375, 43.564606, 33.596180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.265272, 43.289837, 33.373535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072377, 0.657166, -0.750263,
		0.881162, 0.310268, 0.356773,
		0.467241, -0.686926, -0.556614,
		28.405445, 43.083759, 33.206551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.674124, 43.863655, 33.258724>,  <28.078375, 43.564606, 33.596180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.674124, 43.863655, 33.258724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.564886, 43.542213, 33.047199>,  <28.499344, 43.349350, 32.920284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.564886, 43.542213, 33.047199>,  <28.674124, 43.863655, 33.258724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.564886, 43.542213, 33.047199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182197, 0.496553, -0.848669,
		0.944576, -0.328115, 0.010809,
		-0.273094, -0.803602, -0.528814,
		28.482958, 43.301132, 32.888554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.157558, 43.743118, 32.754452>,  <28.674124, 43.863655, 33.258724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.157558, 43.743118, 32.754452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.846041, 43.541672, 32.604866>,  <28.659130, 43.420803, 32.515114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.846041, 43.541672, 32.604866>,  <29.157558, 43.743118, 32.754452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.846041, 43.541672, 32.604866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126403, 0.457940, -0.879951,
		0.614409, -0.732572, -0.292983,
		-0.778796, -0.503616, -0.373962,
		28.612402, 43.390587, 32.492676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.477556, 43.684906, 32.124550>,  <29.157558, 43.743118, 32.754452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.477556, 43.684906, 32.124550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.095264, 43.581711, 32.067944>,  <28.865891, 43.519794, 32.033978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.095264, 43.581711, 32.067944>,  <29.477556, 43.684906, 32.124550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.095264, 43.581711, 32.067944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096296, 0.180235, -0.978899,
		0.278053, -0.949187, -0.147412,
		-0.955727, -0.257990, -0.141518,
		28.808546, 43.504314, 32.025490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.378319, 43.211670, 31.608389>,  <29.477556, 43.684906, 32.124550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.378319, 43.211670, 31.608389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.014391, 43.377495, 31.616055>,  <28.796034, 43.476990, 31.620655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.014391, 43.377495, 31.616055>,  <29.378319, 43.211670, 31.608389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.014391, 43.377495, 31.616055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047833, -0.058879, -0.997118,
		-0.412238, -0.908115, 0.073399,
		-0.909820, 0.414561, 0.019166,
		28.741446, 43.501862, 31.621805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.083982, 42.826454, 31.070410>,  <29.378319, 43.211670, 31.608389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.083982, 42.826454, 31.070410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.848280, 43.145283, 31.123257>,  <28.706858, 43.336578, 31.154964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.848280, 43.145283, 31.123257>,  <29.083982, 42.826454, 31.070410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.848280, 43.145283, 31.123257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247745, -0.022611, -0.968561,
		-0.769025, -0.603462, 0.210795,
		-0.589256, 0.797071, 0.132116,
		28.671503, 43.384403, 31.162891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.433470, 42.769951, 30.687408>,  <29.083982, 42.826454, 31.070410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.433470, 42.769951, 30.687408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.448786, 43.165024, 30.748093>,  <28.457975, 43.402069, 30.784502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.448786, 43.165024, 30.748093>,  <28.433470, 42.769951, 30.687408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.448786, 43.165024, 30.748093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085361, 0.154498, -0.984299,
		-0.995614, 0.024738, 0.090226,
		0.038289, 0.987684, 0.151708,
		28.460272, 43.461330, 30.793606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.922134, 43.143200, 30.228430>,  <28.433470, 42.769951, 30.687408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.922134, 43.143200, 30.228430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.187000, 43.427029, 30.324800>,  <28.345921, 43.597324, 30.382624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.187000, 43.427029, 30.324800>,  <27.922134, 43.143200, 30.228430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.187000, 43.427029, 30.324800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020885, 0.303911, -0.952472,
		-0.749066, 0.635726, 0.186420,
		0.662166, 0.709571, 0.240926,
		28.385651, 43.639900, 30.397078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.598013, 43.785084, 29.972094>,  <27.922134, 43.143200, 30.228430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.598013, 43.785084, 29.972094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.993738, 43.843002, 29.978939>,  <28.231173, 43.877754, 29.983046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.993738, 43.843002, 29.978939>,  <27.598013, 43.785084, 29.972094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.993738, 43.843002, 29.978939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017322, 0.233245, -0.972264,
		-0.144775, 0.961577, 0.233260,
		0.989313, 0.144800, 0.017112,
		28.290531, 43.886444, 29.984072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.844534, 44.275131, 29.367182>,  <27.598013, 43.785084, 29.972094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.844534, 44.275131, 29.367182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.188236, 44.096382, 29.466770>,  <28.394457, 43.989132, 29.526524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.188236, 44.096382, 29.466770>,  <27.844534, 44.275131, 29.367182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.188236, 44.096382, 29.466770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270133, -0.016929, -0.962674,
		0.434405, 0.894439, 0.106168,
		0.859256, -0.446870, 0.248972,
		28.446012, 43.962322, 29.541462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.360291, 44.730854, 29.107025>,  <27.844534, 44.275131, 29.367182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.360291, 44.730854, 29.107025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.515314, 44.364162, 29.145807>,  <28.608328, 44.144146, 29.169077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.515314, 44.364162, 29.145807>,  <28.360291, 44.730854, 29.107025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.515314, 44.364162, 29.145807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241685, -0.000451, -0.970355,
		0.889600, 0.399501, 0.221386,
		0.387557, -0.916733, 0.096955,
		28.631580, 44.089142, 29.174894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.134470, 44.823193, 29.025177>,  <28.360291, 44.730854, 29.107025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.134470, 44.823193, 29.025177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.064054, 44.448803, 28.903219>,  <29.021805, 44.224171, 28.830044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.064054, 44.448803, 28.903219>,  <29.134470, 44.823193, 29.025177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.064054, 44.448803, 28.903219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539562, 0.167314, -0.825154,
		0.823337, -0.309768, 0.475563,
		-0.176038, -0.935975, -0.304895,
		29.011244, 44.168011, 28.811750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.758640, 44.552704, 28.743805>,  <29.134470, 44.823193, 29.025177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.758640, 44.552704, 28.743805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.477888, 44.314602, 28.587324>,  <29.309437, 44.171741, 28.493435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.477888, 44.314602, 28.587324>,  <29.758640, 44.552704, 28.743805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.477888, 44.314602, 28.587324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448296, 0.057645, -0.892024,
		0.553529, -0.801470, 0.226389,
		-0.701880, -0.595251, -0.391204,
		29.267324, 44.136028, 28.469963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.112267, 43.968987, 28.310814>,  <29.758640, 44.552704, 28.743805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.112267, 43.968987, 28.310814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.742504, 43.942608, 28.160547>,  <29.520647, 43.926781, 28.070387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.742504, 43.942608, 28.160547>,  <30.112267, 43.968987, 28.310814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.742504, 43.942608, 28.160547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376800, -0.310634, -0.872656,
		-0.059146, -0.948239, 0.312001,
		-0.924405, -0.065948, -0.375669,
		29.465183, 43.922825, 28.047846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.126499, 43.380154, 27.908175>,  <30.112267, 43.968987, 28.310814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.126499, 43.380154, 27.908175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.821653, 43.603622, 27.777287>,  <29.638746, 43.737701, 27.698753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.821653, 43.603622, 27.777287>,  <30.126499, 43.380154, 27.908175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.821653, 43.603622, 27.777287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360445, -0.053730, -0.931231,
		-0.537831, -0.827649, -0.160421,
		-0.762113, 0.558668, -0.327220,
		29.593019, 43.771221, 27.679121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.923576, 43.084148, 27.312187>,  <30.126499, 43.380154, 27.908175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.923576, 43.084148, 27.312187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.759106, 43.446808, 27.274387>,  <29.660423, 43.664402, 27.251707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.759106, 43.446808, 27.274387>,  <29.923576, 43.084148, 27.312187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.759106, 43.446808, 27.274387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247095, 0.011071, -0.968928,
		-0.877427, -0.421750, -0.228579,
		-0.411176, 0.906644, -0.094499,
		29.635754, 43.718800, 27.246038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.531462, 43.008530, 26.688148>,  <29.923576, 43.084148, 27.312187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.531462, 43.008530, 26.688148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.600147, 43.395332, 26.763420>,  <29.641359, 43.627415, 26.808584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.600147, 43.395332, 26.763420>,  <29.531462, 43.008530, 26.688148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.600147, 43.395332, 26.763420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442987, 0.094824, -0.891499,
		-0.879930, 0.236445, -0.412088,
		0.171715, 0.967007, 0.188181,
		29.651661, 43.685436, 26.819874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.291159, 43.340572, 26.133083>,  <29.531462, 43.008530, 26.688148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.291159, 43.340572, 26.133083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.544403, 43.604034, 26.295738>,  <29.696350, 43.762112, 26.393332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.544403, 43.604034, 26.295738>,  <29.291159, 43.340572, 26.133083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.544403, 43.604034, 26.295738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516104, 0.032332, -0.855915,
		-0.576896, 0.751754, -0.319463,
		0.633109, 0.658650, 0.406636,
		29.734335, 43.801628, 26.417728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.430984, 43.735088, 25.586418>,  <29.291159, 43.340572, 26.133083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.430984, 43.735088, 25.586418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.697134, 43.890339, 25.841490>,  <29.856823, 43.983490, 25.994534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.697134, 43.890339, 25.841490>,  <29.430984, 43.735088, 25.586418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.697134, 43.890339, 25.841490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490326, 0.416894, -0.765362,
		-0.562903, 0.821923, 0.087082,
		0.665373, 0.388126, 0.637681,
		29.896746, 44.006775, 26.032795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.417833, 44.456207, 25.479650>,  <29.430984, 43.735088, 25.586418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.417833, 44.456207, 25.479650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.771662, 44.318802, 25.605843>,  <29.983959, 44.236359, 25.681559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.771662, 44.318802, 25.605843>,  <29.417833, 44.456207, 25.479650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.771662, 44.318802, 25.605843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409178, 0.246932, -0.878407,
		0.223845, 0.906102, 0.358988,
		0.884572, -0.343516, 0.315482,
		30.037033, 44.215748, 25.700487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.973803, 44.923100, 25.223591>,  <29.417833, 44.456207, 25.479650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.973803, 44.923100, 25.223591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.147413, 44.570705, 25.298943>,  <30.251579, 44.359268, 25.344152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.147413, 44.570705, 25.298943>,  <29.973803, 44.923100, 25.223591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.147413, 44.570705, 25.298943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594426, 0.122924, -0.794699,
		0.676961, 0.456899, 0.577033,
		0.434028, -0.880984, 0.188378,
		30.277622, 44.306412, 25.355455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.752819, 44.945503, 24.945545>,  <29.973803, 44.923100, 25.223591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.752819, 44.945503, 24.945545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.696953, 44.551605, 24.987049>,  <30.663433, 44.315266, 25.011951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.696953, 44.551605, 24.987049>,  <30.752819, 44.945503, 24.945545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.696953, 44.551605, 24.987049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511889, -0.161502, -0.843733,
		0.847622, -0.064727, 0.526638,
		-0.139665, -0.984747, 0.103760,
		30.655054, 44.256180, 25.018177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.371679, 44.582211, 24.797974>,  <30.752819, 44.945503, 24.945545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.371679, 44.582211, 24.797974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.100496, 44.294064, 24.739393>,  <30.937786, 44.121178, 24.704245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.100496, 44.294064, 24.739393>,  <31.371679, 44.582211, 24.797974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.100496, 44.294064, 24.739393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455329, -0.255111, -0.852991,
		0.577103, -0.644976, 0.500957,
		-0.677959, -0.720364, -0.146451,
		30.897108, 44.077953, 24.695457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.681393, 43.935364, 24.639215>,  <31.371679, 44.582211, 24.797974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.681393, 43.935364, 24.639215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.317455, 43.940639, 24.473318>,  <31.099092, 43.943806, 24.373779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.317455, 43.940639, 24.473318>,  <31.681393, 43.935364, 24.639215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.317455, 43.940639, 24.473318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391791, -0.301961, -0.869091,
		-0.136701, -0.953229, 0.269569,
		-0.909842, 0.013191, -0.414745,
		31.044502, 43.944595, 24.348894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.333725, 43.794125, 24.365292>,  <31.681393, 43.935364, 24.639215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.333725, 43.794125, 24.365292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554462, 44.126087, 24.398098>,  <32.686905, 44.325264, 24.417782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554462, 44.126087, 24.398098>,  <32.333725, 43.794125, 24.365292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554462, 44.126087, 24.398098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175899, 0.019700, 0.984211,
		0.815188, -0.557554, 0.156851,
		0.551841, 0.829907, 0.082014,
		32.720016, 44.375061, 24.422703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883785, 43.611633, 24.848885>,  <32.333725, 43.794125, 24.365292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883785, 43.611633, 24.848885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.865166, 44.011181, 24.845196>,  <32.853992, 44.250912, 24.842983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.865166, 44.011181, 24.845196>,  <32.883785, 43.611633, 24.848885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.865166, 44.011181, 24.845196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096471, 0.004694, 0.995325,
		0.994247, 0.047223, 0.096144,
		-0.046551, 0.998873, -0.009222,
		32.851200, 44.310844, 24.842428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375217, 43.797596, 25.395067>,  <32.883785, 43.611633, 24.848885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375217, 43.797596, 25.395067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158218, 44.129955, 25.345575>,  <33.028019, 44.329369, 25.315880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158218, 44.129955, 25.345575>,  <33.375217, 43.797596, 25.395067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158218, 44.129955, 25.345575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018207, 0.158880, 0.987130,
		0.839859, 0.533264, -0.101321,
		-0.542498, 0.830895, -0.123728,
		32.995468, 44.379223, 25.308456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.622345, 44.338055, 25.886866>,  <33.375217, 43.797596, 25.395067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.622345, 44.338055, 25.886866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247730, 44.442368, 25.793154>,  <33.022961, 44.504955, 25.736927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247730, 44.442368, 25.793154>,  <33.622345, 44.338055, 25.886866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.247730, 44.442368, 25.793154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163299, 0.266834, 0.949807,
		0.310205, 0.927790, -0.207315,
		-0.936539, 0.260781, -0.234281,
		32.966770, 44.520603, 25.722870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504158, 44.904087, 26.265512>,  <33.622345, 44.338055, 25.886866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504158, 44.904087, 26.265512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132717, 44.817707, 26.144810>,  <32.909851, 44.765881, 26.072388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132717, 44.817707, 26.144810>,  <33.504158, 44.904087, 26.265512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132717, 44.817707, 26.144810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342157, 0.183609, 0.921529,
		-0.143600, 0.958985, -0.244389,
		-0.928605, -0.215951, -0.301757,
		32.854134, 44.752922, 26.054283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139603, 45.491375, 26.553740>,  <33.504158, 44.904087, 26.265512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139603, 45.491375, 26.553740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.891685, 45.188808, 26.470133>,  <32.742935, 45.007267, 26.419970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.891685, 45.188808, 26.470133>,  <33.139603, 45.491375, 26.553740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.891685, 45.188808, 26.470133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320510, 0.000873, 0.947245,
		-0.716330, 0.654089, -0.242981,
		-0.619794, -0.756418, -0.209017,
		32.705746, 44.961884, 26.407429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.286068, 45.749481, 26.536148>,  <33.139603, 45.491375, 26.553740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.286068, 45.749481, 26.536148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.330864, 45.357414, 26.601540>,  <32.357742, 45.122173, 26.640774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.330864, 45.357414, 26.601540>,  <32.286068, 45.749481, 26.536148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330864, 45.357414, 26.601540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331209, 0.118287, 0.936114,
		-0.936888, -0.158976, -0.311395,
		0.111986, -0.980171, 0.163476,
		32.364460, 45.063362, 26.650583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715029, 45.579494, 27.057957>,  <32.286068, 45.749481, 26.536148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715029, 45.579494, 27.057957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.993240, 45.292561, 27.074276>,  <32.160168, 45.120399, 27.084068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.993240, 45.292561, 27.074276>,  <31.715029, 45.579494, 27.057957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.993240, 45.292561, 27.074276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098689, -0.039135, 0.994348,
		-0.711689, -0.695624, -0.098014,
		0.695529, -0.717340, 0.040799,
		32.201900, 45.077358, 27.086515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.500561, 45.045025, 27.439093>,  <31.715029, 45.579494, 27.057957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.500561, 45.045025, 27.439093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.879383, 44.916599, 27.439169>,  <32.106678, 44.839542, 27.439215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.879383, 44.916599, 27.439169>,  <31.500561, 45.045025, 27.439093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.879383, 44.916599, 27.439169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044690, -0.131234, 0.990344,
		-0.317938, -0.937921, -0.138635,
		0.947057, -0.321064, 0.000192,
		32.163502, 44.820282, 27.439226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.547045, 44.431702, 27.743275>,  <31.500561, 45.045025, 27.439093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.547045, 44.431702, 27.743275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921885, 44.561848, 27.793839>,  <32.146790, 44.639935, 27.824177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921885, 44.561848, 27.793839>,  <31.547045, 44.431702, 27.743275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921885, 44.561848, 27.793839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051332, -0.229749, 0.971895,
		0.345262, -0.917254, -0.198597,
		0.937102, 0.325364, 0.126408,
		32.203014, 44.659458, 27.831760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.711008, 44.016159, 28.148531>,  <31.547045, 44.431702, 27.743275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.711008, 44.016159, 28.148531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.025463, 44.261417, 28.179621>,  <32.214134, 44.408573, 28.198275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.025463, 44.261417, 28.179621>,  <31.711008, 44.016159, 28.148531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025463, 44.261417, 28.179621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109236, -0.261616, 0.958970,
		0.608324, -0.745391, -0.272644,
		0.786136, 0.613147, 0.077723,
		32.261303, 44.445362, 28.202938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293312, 43.596493, 28.555170>,  <31.711008, 44.016159, 28.148531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293312, 43.596493, 28.555170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.305408, 43.995079, 28.586506>,  <32.312668, 44.234230, 28.605309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.305408, 43.995079, 28.586506>,  <32.293312, 43.596493, 28.555170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.305408, 43.995079, 28.586506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055317, -0.076588, 0.995527,
		0.998011, -0.034442, 0.052805,
		0.030244, 0.996468, 0.078341,
		32.314484, 44.294018, 28.610008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.641605, 43.691570, 29.234354>,  <32.293312, 43.596493, 28.555170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.641605, 43.691570, 29.234354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459248, 44.035564, 29.142626>,  <32.349834, 44.241962, 29.087589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459248, 44.035564, 29.142626>,  <32.641605, 43.691570, 29.234354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459248, 44.035564, 29.142626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275424, 0.108693, 0.955158,
		0.846347, 0.498611, 0.187308,
		-0.455893, 0.859984, -0.229322,
		32.322479, 44.293560, 29.073830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904823, 44.136086, 29.798372>,  <32.641605, 43.691570, 29.234354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904823, 44.136086, 29.798372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.572495, 44.303608, 29.651760>,  <32.373096, 44.404121, 29.563793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.572495, 44.303608, 29.651760>,  <32.904823, 44.136086, 29.798372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.572495, 44.303608, 29.651760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400207, 0.008084, 0.916389,
		0.386750, 0.908041, 0.160891,
		-0.830818, 0.418804, -0.366531,
		32.323250, 44.429249, 29.541801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770382, 44.744576, 30.188801>,  <32.904823, 44.136086, 29.798372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770382, 44.744576, 30.188801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.416000, 44.627014, 30.045296>,  <32.203373, 44.556477, 29.959192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.416000, 44.627014, 30.045296>,  <32.770382, 44.744576, 30.188801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.416000, 44.627014, 30.045296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365908, -0.032335, 0.930089,
		-0.284953, 0.955289, -0.078893,
		-0.885953, -0.293899, -0.358762,
		32.150215, 44.538845, 29.937668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324123, 44.955307, 30.622690>,  <32.770382, 44.744576, 30.188801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324123, 44.955307, 30.622690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086132, 44.691013, 30.439632>,  <31.943338, 44.532436, 30.329798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086132, 44.691013, 30.439632>,  <32.324123, 44.955307, 30.622690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.086132, 44.691013, 30.439632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474858, -0.170424, 0.863403,
		-0.648472, 0.731019, -0.212356,
		-0.594974, -0.660732, -0.457646,
		31.907640, 44.492794, 30.302338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766087, 45.087574, 30.823502>,  <32.324123, 44.955307, 30.622690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766087, 45.087574, 30.823502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.711531, 44.703835, 30.724674>,  <31.678797, 44.473591, 30.665379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.711531, 44.703835, 30.724674>,  <31.766087, 45.087574, 30.823502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711531, 44.703835, 30.724674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494549, -0.150162, 0.856080,
		-0.858382, 0.238949, -0.453965,
		-0.136391, -0.959351, -0.247068,
		31.670614, 44.416031, 30.650555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.061071, 44.991367, 31.039537>,  <31.766087, 45.087574, 30.823502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.061071, 44.991367, 31.039537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.204033, 44.625984, 30.961714>,  <31.289810, 44.406754, 30.915020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.204033, 44.625984, 30.961714>,  <31.061071, 44.991367, 31.039537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.204033, 44.625984, 30.961714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338569, -0.320868, 0.884542,
		-0.870422, -0.250267, -0.423949,
		0.357403, -0.913461, -0.194558,
		31.311255, 44.351948, 30.903347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.502401, 44.576267, 31.268253>,  <31.061071, 44.991367, 31.039537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.502401, 44.576267, 31.268253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.819796, 44.333126, 31.280249>,  <31.010233, 44.187241, 31.287445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.819796, 44.333126, 31.280249>,  <30.502401, 44.576267, 31.268253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.819796, 44.333126, 31.280249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375854, -0.450691, 0.809699,
		-0.478664, -0.653752, -0.586080,
		0.793483, -0.607854, 0.029986,
		31.057842, 44.150772, 31.289246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.216469, 43.858242, 31.323633>,  <30.502401, 44.576267, 31.268253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.216469, 43.858242, 31.323633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.602619, 43.850990, 31.427729>,  <30.834309, 43.846642, 31.490187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.602619, 43.850990, 31.427729>,  <30.216469, 43.858242, 31.323633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.602619, 43.850990, 31.427729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242666, -0.428526, 0.870332,
		0.095744, -0.903347, -0.418087,
		0.965374, -0.018126, 0.260240,
		30.892231, 43.845551, 31.505800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.340998, 43.199947, 31.623701>,  <30.216469, 43.858242, 31.323633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.340998, 43.199947, 31.623701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.640913, 43.414616, 31.778519>,  <30.820862, 43.543415, 31.871408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.640913, 43.414616, 31.778519>,  <30.340998, 43.199947, 31.623701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.640913, 43.414616, 31.778519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198111, -0.376029, 0.905182,
		0.631323, -0.755373, -0.175623,
		0.749789, 0.536669, 0.387043,
		30.865850, 43.575615, 31.894632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.513281, 42.811600, 32.130978>,  <30.340998, 43.199947, 31.623701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.513281, 42.811600, 32.130978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.716703, 43.144360, 32.219799>,  <30.838757, 43.344017, 32.273090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.716703, 43.144360, 32.219799>,  <30.513281, 42.811600, 32.130978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.716703, 43.144360, 32.219799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108661, -0.193825, 0.975000,
		0.854144, -0.519972, -0.008176,
		0.508557, 0.831902, 0.222055,
		30.869270, 43.393929, 32.286415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.996935, 42.652927, 32.637680>,  <30.513281, 42.811600, 32.130978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.996935, 42.652927, 32.637680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.943111, 43.046864, 32.681477>,  <30.910818, 43.283226, 32.707752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.943111, 43.046864, 32.681477>,  <30.996935, 42.652927, 32.637680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.943111, 43.046864, 32.681477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061449, -0.118574, 0.991042,
		0.988998, 0.126626, 0.076472,
		-0.134559, 0.984838, 0.109489,
		30.902744, 43.342316, 32.714325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.369238, 42.783108, 33.194969>,  <30.996935, 42.652927, 32.637680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.369238, 42.783108, 33.194969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.133032, 43.105869, 33.189201>,  <30.991308, 43.299526, 33.185741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.133032, 43.105869, 33.189201>,  <31.369238, 42.783108, 33.194969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.133032, 43.105869, 33.189201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017977, 0.031012, 0.999357,
		0.806828, 0.589875, -0.032819,
		-0.590513, 0.806899, -0.014417,
		30.955877, 43.347939, 33.184875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603697, 43.213379, 33.689594>,  <31.369238, 42.783108, 33.194969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.603697, 43.213379, 33.689594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.235760, 43.363361, 33.643463>,  <31.014997, 43.453350, 33.615784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.235760, 43.363361, 33.643463>,  <31.603697, 43.213379, 33.689594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.235760, 43.363361, 33.643463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096353, 0.069042, 0.992950,
		0.380272, 0.924470, -0.027379,
		-0.919842, 0.374952, -0.115330,
		30.959806, 43.475845, 33.608864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.623426, 43.800377, 34.147911>,  <31.603697, 43.213379, 33.689594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.623426, 43.800377, 34.147911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.242071, 43.713177, 34.064457>,  <31.013258, 43.660858, 34.014385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.242071, 43.713177, 34.064457>,  <31.623426, 43.800377, 34.147911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.242071, 43.713177, 34.064457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239652, 0.126907, 0.962529,
		-0.183352, 0.967663, -0.173235,
		-0.953388, -0.217997, -0.208634,
		30.956055, 43.647778, 34.001865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.219246, 44.274971, 34.648197>,  <31.623426, 43.800377, 34.147911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.219246, 44.274971, 34.648197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.008312, 43.945343, 34.565426>,  <30.881752, 43.747566, 34.515762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.008312, 43.945343, 34.565426>,  <31.219246, 44.274971, 34.648197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.008312, 43.945343, 34.565426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343714, -0.015829, 0.938941,
		-0.777033, 0.566260, -0.274899,
		-0.527334, -0.824075, -0.206932,
		30.850113, 43.698120, 34.503345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.708729, 44.422585, 35.100983>,  <31.219246, 44.274971, 34.648197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.708729, 44.422585, 35.100983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.687943, 44.031940, 35.017525>,  <30.675470, 43.797554, 34.967449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.687943, 44.031940, 35.017525>,  <30.708729, 44.422585, 35.100983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.687943, 44.031940, 35.017525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385872, -0.173061, 0.906175,
		-0.921088, 0.127597, -0.367854,
		-0.051964, -0.976611, -0.208641,
		30.672354, 43.738956, 34.954933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.138992, 44.205269, 35.347549>,  <30.708729, 44.422585, 35.100983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.138992, 44.205269, 35.347549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.324539, 43.851330, 35.330242>,  <30.435867, 43.638966, 35.319859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.324539, 43.851330, 35.330242>,  <30.138992, 44.205269, 35.347549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.324539, 43.851330, 35.330242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284743, -0.195167, 0.938526,
		-0.838897, -0.423032, -0.342486,
		0.463868, -0.884847, -0.043269,
		30.463699, 43.585876, 35.317261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.695312, 43.773769, 35.739517>,  <30.138992, 44.205269, 35.347549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.695312, 43.773769, 35.739517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.065655, 43.623276, 35.725471>,  <30.287861, 43.532978, 35.717045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.065655, 43.623276, 35.725471>,  <29.695312, 43.773769, 35.739517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.065655, 43.623276, 35.725471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132291, -0.409782, 0.902539,
		-0.353956, -0.830979, -0.429173,
		0.925859, -0.376235, -0.035114,
		30.343412, 43.510403, 35.714935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.671810, 43.165489, 36.072636>,  <29.695312, 43.773769, 35.739517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.671810, 43.165489, 36.072636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.068270, 43.218365, 36.067673>,  <30.306145, 43.250088, 36.064693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.068270, 43.218365, 36.067673>,  <29.671810, 43.165489, 36.072636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.068270, 43.218365, 36.067673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064791, -0.399965, 0.914238,
		0.115886, -0.906948, -0.404988,
		0.991147, 0.132187, -0.012411,
		30.365614, 43.258022, 36.063950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.980286, 42.801838, 36.561481>,  <29.671810, 43.165489, 36.072636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.980286, 42.801838, 36.561481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.321306, 42.999382, 36.493065>,  <30.525919, 43.117908, 36.452015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.321306, 42.999382, 36.493065>,  <29.980286, 42.801838, 36.561481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.321306, 42.999382, 36.493065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394266, -0.392888, 0.830778,
		0.343090, -0.775718, -0.529671,
		0.852551, 0.493863, -0.171044,
		30.577072, 43.147541, 36.441753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.554644, 42.342522, 36.669510>,  <29.980286, 42.801838, 36.561481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.554644, 42.342522, 36.669510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.697195, 42.713707, 36.713093>,  <30.782726, 42.936420, 36.739243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.697195, 42.713707, 36.713093>,  <30.554644, 42.342522, 36.669510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.697195, 42.713707, 36.713093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374995, -0.248864, 0.892998,
		0.855788, -0.277388, -0.436673,
		0.356379, 0.927967, 0.108956,
		30.804110, 42.992096, 36.745781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331638, 42.263847, 36.838005>,  <30.554644, 42.342522, 36.669510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.331638, 42.263847, 36.838005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.180731, 42.603405, 36.986084>,  <31.090187, 42.807140, 37.074932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.180731, 42.603405, 36.986084>,  <31.331638, 42.263847, 36.838005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.180731, 42.603405, 36.986084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443440, -0.185353, 0.876930,
		0.813038, 0.494999, -0.306506,
		-0.377268, 0.848894, 0.370201,
		31.067551, 42.858074, 37.097145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.849468, 42.566704, 37.197895>,  <31.331638, 42.263847, 36.838005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.849468, 42.566704, 37.197895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.544558, 42.748619, 37.382114>,  <31.361612, 42.857769, 37.492645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.544558, 42.748619, 37.382114>,  <31.849468, 42.566704, 37.197895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.544558, 42.748619, 37.382114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493953, -0.051055, 0.867988,
		0.418267, 0.889133, -0.185728,
		-0.762275, 0.454792, 0.460545,
		31.315876, 42.885056, 37.520279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.124187, 42.893570, 37.625549>,  <31.849468, 42.566704, 37.197895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.124187, 42.893570, 37.625549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.761364, 42.935863, 37.788559>,  <31.543671, 42.961239, 37.886364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.761364, 42.935863, 37.788559>,  <32.124187, 42.893570, 37.625549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.761364, 42.935863, 37.788559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412764, 0.032656, 0.910252,
		0.082936, 0.993858, -0.073264,
		-0.907054, 0.105733, 0.407520,
		31.489248, 42.967583, 37.910816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262245, 43.274315, 38.213520>,  <32.124187, 42.893570, 37.625549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262245, 43.274315, 38.213520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905771, 43.104847, 38.278381>,  <31.691887, 43.003166, 38.317299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905771, 43.104847, 38.278381>,  <32.262245, 43.274315, 38.213520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.905771, 43.104847, 38.278381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286549, -0.248635, 0.925241,
		-0.351682, 0.871024, 0.342982,
		-0.891184, -0.423672, 0.162151,
		31.638416, 42.977745, 38.327026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.190907, 43.518616, 38.864574>,  <32.262245, 43.274315, 38.213520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.190907, 43.518616, 38.864574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967253, 43.190254, 38.818134>,  <31.833059, 42.993237, 38.790272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967253, 43.190254, 38.818134>,  <32.190907, 43.518616, 38.864574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967253, 43.190254, 38.818134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253673, -0.302714, 0.918702,
		-0.789314, 0.484228, 0.377500,
		-0.559137, -0.820906, -0.116101,
		31.799511, 42.943981, 38.783302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805813, 43.610683, 39.455490>,  <32.190907, 43.518616, 38.864574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805813, 43.610683, 39.455490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795710, 43.230511, 39.331528>,  <31.789648, 43.002407, 39.257149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795710, 43.230511, 39.331528>,  <31.805813, 43.610683, 39.455490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.795710, 43.230511, 39.331528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249197, -0.306204, 0.918771,
		-0.968123, -0.054020, 0.244579,
		-0.025259, -0.950432, -0.309905,
		31.788132, 42.945381, 39.238556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.450985, 43.245823, 39.957195>,  <31.805813, 43.610683, 39.455490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.450985, 43.245823, 39.957195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.696119, 42.975246, 39.793800>,  <31.843201, 42.812901, 39.695763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.696119, 42.975246, 39.793800>,  <31.450985, 43.245823, 39.957195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.696119, 42.975246, 39.793800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375423, -0.205635, 0.903754,
		-0.695333, -0.707210, 0.127930,
		0.612837, -0.676438, -0.408488,
		31.879971, 42.772316, 39.671253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.361277, 42.662479, 40.341103>,  <31.450985, 43.245823, 39.957195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.361277, 42.662479, 40.341103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708509, 42.610737, 40.149395>,  <31.916849, 42.579693, 40.034370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708509, 42.610737, 40.149395>,  <31.361277, 42.662479, 40.341103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.708509, 42.610737, 40.149395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465934, -0.120823, 0.876532,
		-0.171291, -0.984210, -0.044613,
		0.868081, -0.129355, -0.479272,
		31.968933, 42.571930, 40.005615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820017, 42.041641, 40.613728>,  <31.361277, 42.662479, 40.341103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820017, 42.041641, 40.613728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.091095, 42.293053, 40.461056>,  <32.253742, 42.443901, 40.369453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.091095, 42.293053, 40.461056>,  <31.820017, 42.041641, 40.613728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.091095, 42.293053, 40.461056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546397, -0.083046, 0.833399,
		0.492118, -0.773340, -0.399706,
		0.677695, 0.628529, -0.381682,
		32.294403, 42.481613, 40.346550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536556, 41.832558, 40.689087>,  <31.820017, 42.041641, 40.613728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536556, 41.832558, 40.689087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.503288, 42.230488, 40.665741>,  <32.483326, 42.469246, 40.651733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.503288, 42.230488, 40.665741>,  <32.536556, 41.832558, 40.689087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.503288, 42.230488, 40.665741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553374, 0.094812, 0.827519,
		0.828770, 0.036532, -0.558396,
		-0.083173, 0.994825, -0.058361,
		32.478336, 42.528934, 40.648232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207523, 42.116253, 40.619678>,  <32.536556, 41.832558, 40.689087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207523, 42.116253, 40.619678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946396, 42.363461, 40.794891>,  <32.789719, 42.511787, 40.900021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946396, 42.363461, 40.794891>,  <33.207523, 42.116253, 40.619678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946396, 42.363461, 40.794891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580299, 0.036324, 0.813593,
		0.486908, 0.785321, -0.382351,
		-0.652820, 0.618023, 0.438034,
		32.750549, 42.548866, 40.926300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.511322, 42.693863, 40.866440>,  <33.207523, 42.116253, 40.619678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.511322, 42.693863, 40.866440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198315, 42.589836, 41.092724>,  <33.010509, 42.527420, 41.228493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198315, 42.589836, 41.092724>,  <33.511322, 42.693863, 40.866440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198315, 42.589836, 41.092724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587118, -0.005761, 0.809481,
		-0.207263, 0.965573, 0.157200,
		-0.782518, -0.260070, 0.565711,
		32.963558, 42.511814, 41.262436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312946, 43.182491, 41.438072>,  <33.511322, 42.693863, 40.866440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312946, 43.182491, 41.438072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232174, 42.803959, 41.539013>,  <33.183712, 42.576839, 41.599575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232174, 42.803959, 41.539013>,  <33.312946, 43.182491, 41.438072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232174, 42.803959, 41.539013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316017, 0.180921, 0.931344,
		-0.927015, 0.267814, 0.262523,
		-0.201931, -0.946332, 0.252350,
		33.171597, 42.520058, 41.614719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739586, 43.143623, 41.902458>,  <33.312946, 43.182491, 41.438072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739586, 43.143623, 41.902458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.994522, 42.839180, 41.950653>,  <33.147484, 42.656513, 41.979568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.994522, 42.839180, 41.950653>,  <32.739586, 43.143623, 41.902458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994522, 42.839180, 41.950653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025786, 0.177332, 0.983813,
		-0.770151, -0.623916, 0.132647,
		0.637340, -0.761106, 0.120484,
		33.185722, 42.610847, 41.986797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.485027, 42.699375, 42.407448>,  <32.739586, 43.143623, 41.902458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.485027, 42.699375, 42.407448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882732, 42.725014, 42.373184>,  <33.121357, 42.740395, 42.352627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882732, 42.725014, 42.373184>,  <32.485027, 42.699375, 42.407448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882732, 42.725014, 42.373184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058862, 0.340824, 0.938283,
		0.089330, -0.937940, 0.335095,
		0.994261, 0.064092, -0.085655,
		33.181011, 42.744240, 42.347488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769325, 42.422581, 43.006546>,  <32.485027, 42.699375, 42.407448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769325, 42.422581, 43.006546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028954, 42.692841, 42.866718>,  <33.184731, 42.854996, 42.782822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028954, 42.692841, 42.866718>,  <32.769325, 42.422581, 43.006546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.028954, 42.692841, 42.866718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129217, 0.354922, 0.925923,
		0.749673, -0.646160, 0.143064,
		0.649071, 0.675654, -0.349570,
		33.223675, 42.895538, 42.761848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560135, 42.413410, 43.192837>,  <32.769325, 42.422581, 43.006546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560135, 42.413410, 43.192837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457836, 42.787724, 43.095749>,  <33.396458, 43.012310, 43.037498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457836, 42.787724, 43.095749>,  <33.560135, 42.413410, 43.192837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457836, 42.787724, 43.095749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004108, 0.252114, 0.967689,
		0.966736, 0.246484, -0.068321,
		-0.255744, 0.935780, -0.242715,
		33.381111, 43.068459, 43.022934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093029, 42.777718, 43.428612>,  <33.560135, 42.413410, 43.192837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093029, 42.777718, 43.428612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733498, 42.952312, 43.444561>,  <33.517780, 43.057068, 43.454132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733498, 42.952312, 43.444561>,  <34.093029, 42.777718, 43.428612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733498, 42.952312, 43.444561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194067, 0.314755, 0.929122,
		0.392999, 0.842858, -0.367618,
		-0.898827, 0.436486, 0.039872,
		33.463848, 43.083260, 43.456524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306728, 42.165966, 43.370937>,  <34.093029, 42.777718, 43.428612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306728, 42.165966, 43.370937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602520, 42.065968, 43.120922>,  <34.779995, 42.005970, 42.970913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602520, 42.065968, 43.120922>,  <34.306728, 42.165966, 43.370937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602520, 42.065968, 43.120922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657709, 0.466221, 0.591656,
		0.143498, -0.848612, 0.509183,
		0.739477, -0.249993, -0.625042,
		34.824364, 41.990971, 42.933411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828972, 41.751034, 43.691502>,  <34.306728, 42.165966, 43.370937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828972, 41.751034, 43.691502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.002522, 41.983955, 43.416496>,  <35.106651, 42.123711, 43.251492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.002522, 41.983955, 43.416496>,  <34.828972, 41.751034, 43.691502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002522, 41.983955, 43.416496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676413, 0.293550, 0.675496,
		0.595166, -0.758119, -0.266518,
		0.433870, 0.582309, -0.687513,
		35.132683, 42.158649, 43.210243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580990, 41.711040, 43.750889>,  <34.828972, 41.751034, 43.691502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580990, 41.711040, 43.750889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491882, 42.069241, 43.596767>,  <35.438419, 42.284161, 43.504295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491882, 42.069241, 43.596767>,  <35.580990, 41.711040, 43.750889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491882, 42.069241, 43.596767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709870, 0.419901, 0.565480,
		0.668176, -0.147547, -0.729226,
		-0.222768, 0.895496, -0.385307,
		35.425053, 42.337891, 43.481174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704174, 42.420795, 44.021336>,  <35.580990, 41.711040, 43.750889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704174, 42.420795, 44.021336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996635, 42.557060, 43.784908>,  <36.172112, 42.638821, 43.643051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996635, 42.557060, 43.784908>,  <35.704174, 42.420795, 44.021336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996635, 42.557060, 43.784908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562702, -0.188714, -0.804831,
		-0.385719, 0.921051, 0.053713,
		0.731155, 0.340663, -0.591068,
		36.215981, 42.659260, 43.607590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594059, 43.153252, 43.767166>,  <35.704174, 42.420795, 44.021336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594059, 43.153252, 43.767166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784836, 42.870670, 43.557995>,  <35.899300, 42.701122, 43.432491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784836, 42.870670, 43.557995>,  <35.594059, 43.153252, 43.767166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784836, 42.870670, 43.557995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656548, 0.109201, -0.746337,
		0.584358, 0.699282, -0.411740,
		0.476938, -0.706456, -0.522925,
		35.927917, 42.658733, 43.401119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633102, 43.290916, 43.046818>,  <35.594059, 43.153252, 43.767166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633102, 43.290916, 43.046818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653484, 42.891617, 43.058865>,  <35.665714, 42.652039, 43.066093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653484, 42.891617, 43.058865>,  <35.633102, 43.290916, 43.046818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653484, 42.891617, 43.058865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816490, -0.059008, -0.574336,
		0.575106, 0.004674, -0.818065,
		0.050957, -0.998246, 0.030120,
		35.668770, 42.592144, 43.067902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542343, 43.032242, 42.374706>,  <35.633102, 43.290916, 43.046818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542343, 43.032242, 42.374706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.415623, 42.746769, 42.624603>,  <35.339592, 42.575485, 42.774540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.415623, 42.746769, 42.624603>,  <35.542343, 43.032242, 42.374706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415623, 42.746769, 42.624603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805715, -0.145050, -0.574268,
		0.500461, -0.685290, -0.529070,
		-0.316799, -0.713679, 0.624740,
		35.320583, 42.532665, 42.812027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473263, 42.419441, 42.018459>,  <35.542343, 43.032242, 42.374706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473263, 42.419441, 42.018459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.222977, 42.399899, 42.329865>,  <35.072803, 42.388172, 42.516708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.222977, 42.399899, 42.329865>,  <35.473263, 42.419441, 42.018459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222977, 42.399899, 42.329865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732716, -0.305553, -0.608083,
		0.267585, -0.950921, 0.155395,
		-0.625720, -0.048853, 0.778516,
		35.035259, 42.385242, 42.563419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972107, 41.938007, 41.933167>,  <35.473263, 42.419441, 42.018459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972107, 41.938007, 41.933167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774567, 42.127426, 42.224880>,  <34.656044, 42.241077, 42.399910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774567, 42.127426, 42.224880>,  <34.972107, 41.938007, 41.933167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774567, 42.127426, 42.224880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868712, -0.231967, -0.437642,
		-0.038074, -0.849671, 0.525936,
		-0.493852, 0.473550, 0.729288,
		34.626411, 42.269493, 42.443665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575462, 41.255127, 42.044994>,  <34.972107, 41.938007, 41.933167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575462, 41.255127, 42.044994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957039, 41.248207, 42.164791>,  <35.185986, 41.244053, 42.236668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957039, 41.248207, 42.164791>,  <34.575462, 41.255127, 42.044994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957039, 41.248207, 42.164791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296248, -0.211575, 0.931383,
		0.047251, -0.977209, -0.206955,
		0.953942, -0.017301, 0.299493,
		35.243221, 41.243015, 42.254639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725060, 40.560009, 42.479977>,  <34.575462, 41.255127, 42.044994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725060, 40.560009, 42.479977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991024, 40.836414, 42.593395>,  <35.150604, 41.002258, 42.661446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991024, 40.836414, 42.593395>,  <34.725060, 40.560009, 42.479977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991024, 40.836414, 42.593395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051991, -0.335880, 0.940469,
		0.745111, -0.640070, -0.187404,
		0.664911, 0.691010, 0.283546,
		35.190498, 41.043716, 42.678459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425514, 40.290520, 42.932907>,  <34.725060, 40.560009, 42.479977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425514, 40.290520, 42.932907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248268, 40.639977, 43.013298>,  <35.141922, 40.849651, 43.061531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248268, 40.639977, 43.013298>,  <35.425514, 40.290520, 42.932907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248268, 40.639977, 43.013298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079510, -0.261608, 0.961894,
		0.892931, 0.410251, 0.185386,
		-0.443116, 0.873645, 0.200979,
		35.115334, 40.902069, 43.073593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983383, 40.369858, 42.441063>,  <35.425514, 40.290520, 42.932907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983383, 40.369858, 42.441063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.289581, 40.592705, 42.312294>,  <36.473301, 40.726414, 42.235031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.289581, 40.592705, 42.312294>,  <35.983383, 40.369858, 42.441063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289581, 40.592705, 42.312294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325201, 0.096730, 0.940685,
		0.555213, -0.824780, -0.107129,
		0.765496, 0.557118, -0.321925,
		36.519230, 40.759842, 42.215717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608311, 40.108223, 42.829903>,  <35.983383, 40.369858, 42.441063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608311, 40.108223, 42.829903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.647625, 40.481674, 42.692101>,  <36.671211, 40.705746, 42.609421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.647625, 40.481674, 42.692101>,  <36.608311, 40.108223, 42.829903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647625, 40.481674, 42.692101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468505, 0.262006, 0.843716,
		0.877977, -0.244323, -0.411658,
		0.098283, 0.933627, -0.344502,
		36.677109, 40.761761, 42.588749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327835, 40.307823, 42.700687>,  <36.608311, 40.108223, 42.829903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327835, 40.307823, 42.700687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.064945, 40.577538, 42.835388>,  <36.907211, 40.739365, 42.916206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.064945, 40.577538, 42.835388>,  <37.327835, 40.307823, 42.700687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064945, 40.577538, 42.835388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479086, 0.028828, 0.877295,
		0.581836, 0.737911, -0.341986,
		-0.657224, 0.674282, 0.336749,
		36.867779, 40.779823, 42.936413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810436, 39.780437, 43.141399>,  <37.327835, 40.307823, 42.700687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810436, 39.780437, 43.141399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.502148, 39.776066, 42.886566>,  <37.317177, 39.773441, 42.733665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.502148, 39.776066, 42.886566>,  <37.810436, 39.780437, 43.141399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502148, 39.776066, 42.886566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636450, 0.034546, -0.770544,
		0.030403, -0.999344, -0.019692,
		-0.770719, -0.010894, -0.637082,
		37.270931, 39.772785, 42.695442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822063, 39.193623, 42.712852>,  <37.810436, 39.780437, 43.141399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.822063, 39.193623, 42.712852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.652622, 39.489567, 42.503792>,  <37.550957, 39.667133, 42.378357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.652622, 39.489567, 42.503792>,  <37.822063, 39.193623, 42.712852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.652622, 39.489567, 42.503792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775329, -0.002232, -0.631554,
		-0.468430, -0.672753, -0.572692,
		-0.423601, 0.739864, -0.522651,
		37.525543, 39.711525, 42.346996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911701, 39.044819, 41.994022>,  <37.822063, 39.193623, 42.712852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911701, 39.044819, 41.994022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.872417, 39.441849, 42.022751>,  <37.848846, 39.680065, 42.039989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.872417, 39.441849, 42.022751>,  <37.911701, 39.044819, 41.994022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872417, 39.441849, 42.022751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788396, 0.121640, -0.603022,
		-0.607278, -0.002596, -0.794485,
		-0.098206, 0.992571, 0.071823,
		37.842957, 39.739620, 42.044296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704533, 39.324413, 41.412308>,  <37.911701, 39.044819, 41.994022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704533, 39.324413, 41.412308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.912189, 39.600315, 41.614189>,  <38.036785, 39.765858, 41.735317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.912189, 39.600315, 41.614189>,  <37.704533, 39.324413, 41.412308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912189, 39.600315, 41.614189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773234, -0.127445, -0.621182,
		-0.364143, 0.712735, -0.599507,
		0.519143, 0.689758, 0.504703,
		38.067932, 39.807243, 41.765598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854576, 39.832790, 40.953888>,  <37.704533, 39.324413, 41.412308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854576, 39.832790, 40.953888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.134167, 39.840881, 41.239830>,  <38.301922, 39.845734, 41.411396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.134167, 39.840881, 41.239830>,  <37.854576, 39.832790, 40.953888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134167, 39.840881, 41.239830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715144, -0.019289, -0.698711,
		-0.000342, 0.999609, -0.027946,
		0.698978, 0.020224, 0.714858,
		38.343861, 39.846951, 41.454288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387222, 40.186489, 40.639736>,  <37.854576, 39.832790, 40.953888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387222, 40.186489, 40.639736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545666, 39.951878, 40.922321>,  <38.640732, 39.811111, 41.091873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545666, 39.951878, 40.922321>,  <38.387222, 40.186489, 40.639736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545666, 39.951878, 40.922321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785509, -0.181960, -0.591495,
		0.475475, 0.789226, 0.388647,
		0.396105, -0.586527, 0.706461,
		38.664497, 39.775921, 41.134258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165997, 40.255051, 40.874962>,  <38.387222, 40.186489, 40.639736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165997, 40.255051, 40.874962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.055126, 39.871346, 40.896847>,  <38.988605, 39.641125, 40.909977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.055126, 39.871346, 40.896847>,  <39.165997, 40.255051, 40.874962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055126, 39.871346, 40.896847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804249, -0.262789, -0.533034,
		0.525697, -0.103739, 0.844323,
		-0.277175, -0.959260, 0.054716,
		38.971973, 39.583569, 40.913261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431274, 40.777596, 40.344830>,  <39.165997, 40.255051, 40.874962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.431274, 40.777596, 40.344830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.481152, 41.153271, 40.216843>,  <39.511078, 41.378674, 40.140049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.481152, 41.153271, 40.216843>,  <39.431274, 40.777596, 40.344830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481152, 41.153271, 40.216843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901478, -0.027473, -0.431952,
		-0.414473, 0.342307, 0.843230,
		0.124694, 0.939186, -0.319970,
		39.518559, 41.435028, 40.120853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107903, 40.786133, 40.730602>,  <39.431274, 40.777596, 40.344830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.107903, 40.786133, 40.730602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.354691, 41.093945, 40.664661>,  <40.502762, 41.278633, 40.625099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.354691, 41.093945, 40.664661>,  <40.107903, 40.786133, 40.730602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.354691, 41.093945, 40.664661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772338, -0.632281, -0.060956,
		-0.151137, -0.089711, -0.984434,
		0.616970, 0.769528, -0.164848,
		40.539780, 41.324802, 40.615208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.590870, 40.516514, 40.329826>,  <40.107903, 40.786133, 40.730602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.590870, 40.516514, 40.329826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.753220, 40.816990, 40.538052>,  <40.850628, 40.997276, 40.662987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.753220, 40.816990, 40.538052>,  <40.590870, 40.516514, 40.329826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.753220, 40.816990, 40.538052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797513, -0.569289, 0.199705,
		0.446366, 0.334100, -0.830142,
		0.405869, 0.751190, 0.520560,
		40.874981, 41.042347, 40.694221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.126270, 41.078762, 39.960876>,  <40.590870, 40.516514, 40.329826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.126270, 41.078762, 39.960876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.201927, 40.970249, 40.338367>,  <41.247322, 40.905140, 40.564861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.201927, 40.970249, 40.338367>,  <41.126270, 41.078762, 39.960876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.201927, 40.970249, 40.338367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673033, -0.664004, -0.325768,
		0.715018, 0.696780, 0.056991,
		0.189147, -0.271287, 0.943730,
		41.258671, 40.888863, 40.621487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.789539, 41.087955, 39.924698>,  <41.126270, 41.078762, 39.960876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.789539, 41.087955, 39.924698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.627098, 40.820183, 40.173515>,  <41.529633, 40.659519, 40.322803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.627098, 40.820183, 40.173515>,  <41.789539, 41.087955, 39.924698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.627098, 40.820183, 40.173515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571753, -0.717142, -0.398506,
		0.712865, 0.193818, 0.673986,
		-0.406106, -0.669434, 0.622042,
		41.505268, 40.619354, 40.360126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.299656, 40.532486, 40.270111>,  <41.789539, 41.087955, 39.924698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.299656, 40.532486, 40.270111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.942066, 40.363140, 40.211349>,  <41.727512, 40.261532, 40.176090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.942066, 40.363140, 40.211349>,  <42.299656, 40.532486, 40.270111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.942066, 40.363140, 40.211349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427441, -0.707137, -0.563251,
		0.134576, -0.566323, 0.813121,
		-0.893970, -0.423362, -0.146906,
		41.673874, 40.236130, 40.167278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.287258, 39.914696, 40.441017>,  <42.299656, 40.532486, 40.270111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.287258, 39.914696, 40.441017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.013538, 39.917885, 40.149353>,  <41.849308, 39.919800, 39.974354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.013538, 39.917885, 40.149353>,  <42.287258, 39.914696, 40.441017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.013538, 39.917885, 40.149353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474346, -0.754595, -0.453412,
		-0.553837, -0.656142, 0.512583,
		-0.684295, 0.007975, -0.729161,
		41.808250, 39.920277, 39.930603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.005157, 40.306824, 40.411987>,  <42.287258, 39.914696, 40.441017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.005157, 40.306824, 40.411987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.213852, 40.078304, 40.665413>,  <43.339069, 39.941193, 40.817467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.213852, 40.078304, 40.665413>,  <43.005157, 40.306824, 40.411987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.213852, 40.078304, 40.665413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018634, 0.750111, 0.661050,
		-0.852903, -0.333088, 0.402006,
		0.521737, -0.571302, 0.633565,
		43.370373, 39.906914, 40.855484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.988247, 40.036289, 41.145363>,  <43.005157, 40.306824, 40.411987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.988247, 40.036289, 41.145363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.121441, 40.134583, 41.509502>,  <43.201359, 40.193558, 41.727985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.121441, 40.134583, 41.509502>,  <42.988247, 40.036289, 41.145363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.121441, 40.134583, 41.509502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840263, 0.360762, -0.404733,
		-0.427875, 0.899704, -0.086351,
		0.332988, 0.245732, 0.910349,
		43.221336, 40.208302, 41.782608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.149883, 40.789436, 41.257000>,  <42.988247, 40.036289, 41.145363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.149883, 40.789436, 41.257000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.392097, 40.488449, 41.360630>,  <43.537426, 40.307858, 41.422806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.392097, 40.488449, 41.360630>,  <43.149883, 40.789436, 41.257000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.392097, 40.488449, 41.360630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776621, 0.487658, -0.398809,
		0.173755, 0.442691, 0.879678,
		0.605532, -0.752472, 0.259070,
		43.573757, 40.262707, 41.438351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.700172, 41.064842, 41.643948>,  <43.149883, 40.789436, 41.257000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.700172, 41.064842, 41.643948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.833580, 40.728561, 41.473312>,  <43.913624, 40.526791, 41.370930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.833580, 40.728561, 41.473312>,  <43.700172, 41.064842, 41.643948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.833580, 40.728561, 41.473312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675054, 0.528837, -0.514426,
		0.658077, -0.116399, 0.743899,
		0.333523, -0.840704, -0.426591,
		43.933636, 40.476349, 41.345337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.462849, 41.047935, 41.760490>,  <43.700172, 41.064842, 41.643948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.462849, 41.047935, 41.760490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.397453, 40.848618, 41.419907>,  <44.358215, 40.729027, 41.215557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.397453, 40.848618, 41.419907>,  <44.462849, 41.047935, 41.760490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.397453, 40.848618, 41.419907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756920, 0.490177, -0.432201,
		0.632727, -0.715144, 0.297028,
		-0.163490, -0.498292, -0.851455,
		44.348408, 40.699131, 41.164471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.234871, 40.855122, 41.567196>,  <44.462849, 41.047935, 41.760490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.234871, 40.855122, 41.567196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.967278, 40.810501, 41.273254>,  <44.806721, 40.783730, 41.096889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.967278, 40.810501, 41.273254>,  <45.234871, 40.855122, 41.567196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.967278, 40.810501, 41.273254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706064, 0.213528, -0.675189,
		0.232228, -0.970548, -0.064088,
		-0.668988, -0.111547, -0.734856,
		44.766582, 40.777039, 41.052799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.564220, 40.471325, 40.978565>,  <45.234871, 40.855122, 41.567196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.564220, 40.471325, 40.978565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.248791, 40.676392, 40.842731>,  <45.059532, 40.799431, 40.761230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.248791, 40.676392, 40.842731>,  <45.564220, 40.471325, 40.978565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.248791, 40.676392, 40.842731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471158, 0.148847, -0.869399,
		-0.395164, -0.845588, -0.358924,
		-0.788578, 0.512665, -0.339587,
		45.012218, 40.830193, 40.740856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.562244, 40.451492, 40.342300>,  <45.564220, 40.471325, 40.978565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.562244, 40.451492, 40.342300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.277573, 40.721943, 40.266029>,  <45.106770, 40.884212, 40.220264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.277573, 40.721943, 40.266029>,  <45.562244, 40.451492, 40.342300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.277573, 40.721943, 40.266029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331144, 0.083496, -0.939879,
		-0.619558, -0.732037, -0.283319,
		-0.711682, 0.676129, -0.190679,
		45.064068, 40.924782, 40.208824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.207214, 40.275135, 39.752796>,  <45.562244, 40.451492, 40.342300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.207214, 40.275135, 39.752796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.170105, 40.670631, 39.799763>,  <45.147839, 40.907928, 39.827942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.170105, 40.670631, 39.799763>,  <45.207214, 40.275135, 39.752796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.170105, 40.670631, 39.799763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446128, 0.146709, -0.882862,
		-0.890147, -0.029525, -0.454715,
		-0.092778, 0.988739, 0.117421,
		45.142273, 40.967255, 39.834988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.288120, 39.535889, 39.706638>,  <45.207214, 40.275135, 39.752796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.288120, 39.535889, 39.706638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.566463, 39.263794, 39.798775>,  <45.733471, 39.100536, 39.854057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.566463, 39.263794, 39.798775>,  <45.288120, 39.535889, 39.706638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.566463, 39.263794, 39.798775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601008, -0.727147, -0.331733,
		0.393149, 0.092403, -0.914820,
		0.695862, -0.680234, 0.230342,
		45.775223, 39.059723, 39.867878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.561317, 39.039368, 39.007370>,  <45.288120, 39.535889, 39.706638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.561317, 39.039368, 39.007370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.546013, 38.908676, 39.385105>,  <45.536831, 38.830261, 39.611748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.546013, 38.908676, 39.385105>,  <45.561317, 39.039368, 39.007370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.546013, 38.908676, 39.385105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625750, -0.728966, -0.277569,
		0.779084, -0.601544, -0.176559,
		-0.038264, -0.326732, 0.944342,
		45.534534, 38.810658, 39.668407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.073437, 39.605835, 39.124413>,  <45.561317, 39.039368, 39.007370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.073437, 39.605835, 39.124413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.870449, 39.811443, 39.401035>,  <45.748657, 39.934811, 39.567009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.870449, 39.811443, 39.401035>,  <46.073437, 39.605835, 39.124413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.870449, 39.811443, 39.401035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661905, 0.746398, -0.069072,
		-0.551681, 0.422692, -0.719013,
		-0.507474, 0.514024, 0.691556,
		45.718208, 39.965652, 39.608501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.959980, 39.672447, 38.382915>,  <46.073437, 39.605835, 39.124413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.959980, 39.672447, 38.382915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.678051, 39.887127, 38.197365>,  <45.508896, 40.015934, 38.086033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.678051, 39.887127, 38.197365>,  <45.959980, 39.672447, 38.382915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.678051, 39.887127, 38.197365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370541, -0.279086, -0.885895,
		-0.604920, -0.796283, -0.002163,
		-0.704820, 0.536697, -0.463881,
		45.466606, 40.048138, 38.058201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.597473, 39.280304, 38.213470>,  <45.959980, 39.672447, 38.382915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.597473, 39.280304, 38.213470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.451748, 39.047112, 38.503963>,  <46.364311, 38.907196, 38.678257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.451748, 39.047112, 38.503963>,  <46.597473, 39.280304, 38.213470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.451748, 39.047112, 38.503963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215744, -0.811441, -0.543155,
		0.905942, -0.041198, 0.421392,
		-0.364312, -0.582980, 0.726231,
		46.342453, 38.872219, 38.721832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.089283, 38.705822, 38.312634>,  <46.597473, 39.280304, 38.213470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.089283, 38.705822, 38.312634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.758446, 38.540646, 38.465157>,  <46.559944, 38.441540, 38.556671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.758446, 38.540646, 38.465157>,  <47.089283, 38.705822, 38.312634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.758446, 38.540646, 38.465157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178477, -0.836252, -0.518487,
		0.532972, -0.360784, 0.765360,
		-0.827095, -0.412938, 0.381308,
		46.510319, 38.416763, 38.579548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.149887, 37.996468, 38.523083>,  <47.089283, 38.705822, 38.312634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.149887, 37.996468, 38.523083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.764984, 38.037548, 38.422272>,  <46.534042, 38.062195, 38.361786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.764984, 38.037548, 38.422272>,  <47.149887, 37.996468, 38.523083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.764984, 38.037548, 38.422272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086441, -0.762774, -0.640861,
		-0.258054, -0.638458, 0.725107,
		-0.962256, 0.102697, -0.252026,
		46.476307, 38.068356, 38.346664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.814365, 37.209404, 38.610954>,  <47.149887, 37.996468, 38.523083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.814365, 37.209404, 38.610954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.633717, 37.440243, 38.338779>,  <46.525326, 37.578747, 38.175472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.633717, 37.440243, 38.338779>,  <46.814365, 37.209404, 38.610954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.633717, 37.440243, 38.338779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162113, -0.696874, -0.698631,
		-0.877356, -0.425827, 0.221171,
		-0.451625, 0.577094, -0.680439,
		46.498230, 37.613369, 38.134647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.115990, 36.869308, 38.111984>,  <46.814365, 37.209404, 38.610954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.115990, 36.869308, 38.111984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.296947, 37.173092, 37.924980>,  <46.405521, 37.355362, 37.812778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.296947, 37.173092, 37.924980>,  <46.115990, 36.869308, 38.111984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.296947, 37.173092, 37.924980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028931, -0.511445, -0.858829,
		-0.891348, 0.402056, -0.209403,
		0.452395, 0.759457, -0.467508,
		46.432667, 37.400928, 37.784729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.764061, 37.006668, 37.494770>,  <46.115990, 36.869308, 38.111984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.764061, 37.006668, 37.494770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.157585, 37.076065, 37.512695>,  <46.393700, 37.117702, 37.523449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.157585, 37.076065, 37.512695>,  <45.764061, 37.006668, 37.494770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.157585, 37.076065, 37.512695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158131, -0.722992, -0.672516,
		-0.084279, 0.668718, -0.738725,
		0.983815, 0.173494, 0.044811,
		46.452728, 37.128113, 37.526138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.043629, 36.867577, 36.818699>,  <45.764061, 37.006668, 37.494770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.043629, 36.867577, 36.818699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.368263, 36.873421, 37.052322>,  <46.563042, 36.876926, 37.192497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.368263, 36.873421, 37.052322>,  <46.043629, 36.867577, 36.818699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.368263, 36.873421, 37.052322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415315, -0.717539, -0.559152,
		0.410910, 0.696365, -0.588412,
		0.811582, 0.014615, 0.584055,
		46.611736, 36.877804, 37.227539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.648258, 37.005123, 36.472134>,  <46.043629, 36.867577, 36.818699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.648258, 37.005123, 36.472134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.716328, 36.757187, 36.778553>,  <46.757172, 36.608425, 36.962406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.716328, 36.757187, 36.778553>,  <46.648258, 37.005123, 36.472134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.716328, 36.757187, 36.778553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397851, -0.667995, -0.628885,
		0.901529, 0.411796, 0.132928,
		0.170177, -0.619844, 0.766050,
		46.767380, 36.571232, 37.008369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.339882, 36.813011, 36.490448>,  <46.648258, 37.005123, 36.472134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.339882, 36.813011, 36.490448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.104202, 36.506371, 36.592556>,  <46.962795, 36.322388, 36.653820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.104202, 36.506371, 36.592556>,  <47.339882, 36.813011, 36.490448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.104202, 36.506371, 36.592556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557685, -0.614455, -0.558061,
		0.584661, -0.186453, 0.789561,
		-0.589202, -0.766603, 0.255266,
		46.927441, 36.276390, 36.669136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.689548, 36.198235, 36.854679>,  <47.339882, 36.813011, 36.490448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.689548, 36.198235, 36.854679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.389000, 36.090412, 36.613754>,  <47.208672, 36.025719, 36.469200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.389000, 36.090412, 36.613754>,  <47.689548, 36.198235, 36.854679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.389000, 36.090412, 36.613754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631667, -0.557843, -0.538338,
		-0.190884, -0.784953, 0.589417,
		-0.751372, -0.269556, -0.602312,
		47.163589, 36.009544, 36.433060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.768280, 35.513481, 36.686859>,  <47.689548, 36.198235, 36.854679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.768280, 35.513481, 36.686859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.554668, 35.672123, 36.388187>,  <47.426502, 35.767307, 36.208984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.554668, 35.672123, 36.388187>,  <47.768280, 35.513481, 36.686859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.554668, 35.672123, 36.388187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518060, -0.544435, -0.659700,
		-0.668155, -0.739119, 0.085279,
		-0.534026, 0.396602, -0.746675,
		47.394459, 35.791103, 36.164185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.529678, 34.939301, 36.233562>,  <47.768280, 35.513481, 36.686859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.529678, 34.939301, 36.233562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.548550, 35.293152, 36.048000>,  <47.559872, 35.505463, 35.936665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.548550, 35.293152, 36.048000>,  <47.529678, 34.939301, 36.233562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.548550, 35.293152, 36.048000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614219, -0.391935, -0.684925,
		-0.787724, -0.252623, -0.561848,
		0.047180, 0.884629, -0.463902,
		47.562702, 35.558540, 35.908829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.228569, 34.898548, 35.559284>,  <47.529678, 34.939301, 36.233562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.228569, 34.898548, 35.559284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.525661, 35.163216, 35.600361>,  <47.703918, 35.322014, 35.625008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.525661, 35.163216, 35.600361>,  <47.228569, 34.898548, 35.559284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.525661, 35.163216, 35.600361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424649, -0.346891, -0.836266,
		-0.517705, 0.664731, -0.538623,
		0.742735, 0.661665, 0.102690,
		47.748482, 35.361713, 35.631168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.232540, 35.158340, 34.818699>,  <47.228569, 34.898548, 35.559284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.232540, 35.158340, 34.818699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.570728, 35.178345, 35.031372>,  <47.773640, 35.190346, 35.158974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.570728, 35.178345, 35.031372>,  <47.232540, 35.158340, 34.818699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.570728, 35.178345, 35.031372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445772, -0.614320, -0.651074,
		0.294062, 0.787470, -0.541681,
		0.845467, 0.050010, 0.531681,
		47.824368, 35.193348, 35.190876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.870350, 40.911179, 29.457611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.545307, 40.735073, 29.304855>,  <33.350281, 40.629410, 29.213202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.545307, 40.735073, 29.304855>,  <33.870350, 40.911179, 29.457611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545307, 40.735073, 29.304855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362629, -0.131025, 0.922677,
		-0.456261, 0.888256, -0.053182,
		-0.812605, -0.440266, -0.381889,
		33.301525, 40.602993, 29.190289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216656, 41.252151, 29.630276>,  <33.870350, 40.911179, 29.457611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216656, 41.252151, 29.630276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.135506, 40.871239, 29.539066>,  <33.086815, 40.642689, 29.484341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.135506, 40.871239, 29.539066>,  <33.216656, 41.252151, 29.630276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135506, 40.871239, 29.539066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282103, -0.166151, 0.944887,
		-0.937687, 0.256024, -0.234934,
		-0.202879, -0.952284, -0.228023,
		33.074642, 40.585552, 29.470659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.484089, 40.955898, 29.888027>,  <33.216656, 41.252151, 29.630276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.484089, 40.955898, 29.888027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.698338, 40.621387, 29.841139>,  <32.826889, 40.420681, 29.813005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.698338, 40.621387, 29.841139>,  <32.484089, 40.955898, 29.888027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698338, 40.621387, 29.841139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162502, -0.238292, 0.957502,
		-0.828673, -0.493813, -0.263532,
		0.535625, -0.836280, -0.117221,
		32.859024, 40.370502, 29.805973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.071648, 40.406841, 30.152521>,  <32.484089, 40.955898, 29.888027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.071648, 40.406841, 30.152521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.457027, 40.299698, 30.154570>,  <32.688255, 40.235413, 30.155798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.457027, 40.299698, 30.154570>,  <32.071648, 40.406841, 30.152521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.457027, 40.299698, 30.154570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081215, -0.273799, 0.958352,
		-0.255283, -0.923740, -0.285544,
		0.963450, -0.267841, 0.005125,
		32.746059, 40.219341, 30.156105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.165665, 39.641785, 30.397711>,  <32.071648, 40.406841, 30.152521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.165665, 39.641785, 30.397711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.539131, 39.766308, 30.468533>,  <32.763210, 39.841022, 30.511026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.539131, 39.766308, 30.468533>,  <32.165665, 39.641785, 30.397711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539131, 39.766308, 30.468533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014761, -0.527412, 0.849481,
		0.357830, -0.790522, -0.497024,
		0.933670, 0.311306, 0.177055,
		32.819233, 39.859699, 30.521648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600761, 39.054775, 30.661158>,  <32.165665, 39.641785, 30.397711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600761, 39.054775, 30.661158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.786930, 39.388557, 30.779184>,  <32.898632, 39.588825, 30.850000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.786930, 39.388557, 30.779184>,  <32.600761, 39.054775, 30.661158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.786930, 39.388557, 30.779184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056879, -0.360887, 0.930873,
		0.883258, -0.416469, -0.215429,
		0.465426, 0.834454, 0.295068,
		32.926559, 39.638893, 30.867704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244446, 38.905235, 31.049494>,  <32.600761, 39.054775, 30.661158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244446, 38.905235, 31.049494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.117561, 39.263451, 31.174328>,  <33.041431, 39.478378, 31.249228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.117561, 39.263451, 31.174328>,  <33.244446, 38.905235, 31.049494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117561, 39.263451, 31.174328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118432, -0.289096, 0.949946,
		0.940931, 0.338293, -0.014355,
		-0.317210, 0.895534, 0.312084,
		33.022400, 39.532112, 31.267954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350540, 38.934902, 31.773983>,  <33.244446, 38.905235, 31.049494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350540, 38.934902, 31.773983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.198383, 39.303009, 31.737303>,  <33.107090, 39.523872, 31.715294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.198383, 39.303009, 31.737303>,  <33.350540, 38.934902, 31.773983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198383, 39.303009, 31.737303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201638, 0.014243, 0.979357,
		0.902577, 0.391028, 0.180143,
		-0.380390, 0.920268, -0.091702,
		33.084267, 39.579090, 31.709793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667282, 39.398849, 32.210762>,  <33.350540, 38.934902, 31.773983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667282, 39.398849, 32.210762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.301956, 39.545540, 32.139919>,  <33.082760, 39.633556, 32.097416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.301956, 39.545540, 32.139919>,  <33.667282, 39.398849, 32.210762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301956, 39.545540, 32.139919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186319, 0.010426, 0.982434,
		0.362135, 0.930269, 0.058806,
		-0.913315, 0.366730, -0.177102,
		33.027962, 39.655560, 32.086788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597580, 40.017300, 32.647194>,  <33.667282, 39.398849, 32.210762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597580, 40.017300, 32.647194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.229336, 39.883137, 32.567223>,  <33.008389, 39.802639, 32.519241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.229336, 39.883137, 32.567223>,  <33.597580, 40.017300, 32.647194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229336, 39.883137, 32.567223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207042, -0.014800, 0.978220,
		-0.331065, 0.941956, -0.055819,
		-0.920614, -0.335411, -0.199924,
		32.953152, 39.782513, 32.507244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084858, 40.485958, 33.037949>,  <33.597580, 40.017300, 32.647194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084858, 40.485958, 33.037949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.875011, 40.148525, 32.992069>,  <32.749104, 39.946068, 32.964542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.875011, 40.148525, 32.992069>,  <33.084858, 40.485958, 33.037949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875011, 40.148525, 32.992069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237701, 0.015773, 0.971210,
		-0.817483, 0.536774, -0.208794,
		-0.524614, -0.843578, -0.114698,
		32.717628, 39.895451, 32.957661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415142, 40.572502, 33.349842>,  <33.084858, 40.485958, 33.037949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415142, 40.572502, 33.349842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.448620, 40.174278, 33.332603>,  <32.468708, 39.935345, 33.322258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.448620, 40.174278, 33.332603>,  <32.415142, 40.572502, 33.349842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.448620, 40.174278, 33.332603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277759, -0.064845, 0.958460,
		-0.956998, -0.068249, -0.281953,
		0.083697, -0.995559, -0.043100,
		32.473728, 39.875610, 33.319672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.804026, 40.308319, 33.698891>,  <32.415142, 40.572502, 33.349842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.804026, 40.308319, 33.698891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.067379, 40.007271, 33.694942>,  <32.225391, 39.826641, 33.692574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.067379, 40.007271, 33.694942>,  <31.804026, 40.308319, 33.698891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.067379, 40.007271, 33.694942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214480, -0.200160, 0.955999,
		-0.721479, -0.627295, -0.293204,
		0.658381, -0.752620, -0.009869,
		32.264893, 39.781487, 33.691982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.554007, 39.963226, 34.261528>,  <31.804026, 40.308319, 33.698891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.554007, 39.963226, 34.261528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.903862, 39.783966, 34.187588>,  <32.113773, 39.676411, 34.143223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.903862, 39.783966, 34.187588>,  <31.554007, 39.963226, 34.261528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.903862, 39.783966, 34.187588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003413, -0.387002, 0.922072,
		-0.484767, -0.805847, -0.340016,
		0.874636, -0.448151, -0.184855,
		32.166252, 39.649521, 34.132130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.476873, 39.330235, 34.501461>,  <31.554007, 39.963226, 34.261528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.476873, 39.330235, 34.501461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.875000, 39.368851, 34.503628>,  <32.113876, 39.392021, 34.504929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.875000, 39.368851, 34.503628>,  <31.476873, 39.330235, 34.501461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875000, 39.368851, 34.503628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035968, -0.421620, 0.906059,
		0.089755, -0.901619, -0.423117,
		0.995314, 0.096542, 0.005413,
		32.173595, 39.397812, 34.505253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650976, 38.728752, 34.904705>,  <31.476873, 39.330235, 34.501461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650976, 38.728752, 34.904705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.970367, 38.969540, 34.907925>,  <32.162003, 39.114014, 34.909855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.970367, 38.969540, 34.907925>,  <31.650976, 38.728752, 34.904705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.970367, 38.969540, 34.907925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142255, -0.201650, 0.969072,
		0.584974, -0.772639, -0.246647,
		0.798479, 0.601969, 0.008049,
		32.209911, 39.150131, 34.910339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.273922, 38.396282, 35.250702>,  <31.650976, 38.728752, 34.904705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.273922, 38.396282, 35.250702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.316013, 38.793140, 35.277752>,  <32.341267, 39.031254, 35.293983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.316013, 38.793140, 35.277752>,  <32.273922, 38.396282, 35.250702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.316013, 38.793140, 35.277752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095376, -0.077762, 0.992399,
		0.989864, -0.097975, -0.102809,
		0.105225, 0.992146, 0.067629,
		32.347580, 39.090786, 35.298042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964531, 38.493847, 35.583878>,  <32.273922, 38.396282, 35.250702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964531, 38.493847, 35.583878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.786892, 38.847099, 35.644344>,  <32.680309, 39.059052, 35.680626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.786892, 38.847099, 35.644344>,  <32.964531, 38.493847, 35.583878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.786892, 38.847099, 35.644344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262737, -0.032938, 0.964305,
		0.856590, 0.467963, -0.217405,
		-0.444098, 0.883134, 0.151166,
		32.653664, 39.112038, 35.689693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420650, 38.864185, 35.961472>,  <32.964531, 38.493847, 35.583878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420650, 38.864185, 35.961472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.077202, 39.053185, 36.040974>,  <32.871132, 39.166584, 36.088676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.077202, 39.053185, 36.040974>,  <33.420650, 38.864185, 35.961472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077202, 39.053185, 36.040974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137512, -0.161214, 0.977293,
		0.493814, 0.866460, 0.073448,
		-0.858626, 0.472501, 0.198758,
		32.819614, 39.194935, 36.100601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663097, 39.290684, 36.539501>,  <33.420650, 38.864185, 35.961472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663097, 39.290684, 36.539501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.263336, 39.303276, 36.545113>,  <33.023479, 39.310833, 36.548481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.263336, 39.303276, 36.545113>,  <33.663097, 39.290684, 36.539501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263336, 39.303276, 36.545113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013008, -0.032432, 0.999389,
		0.031921, 0.998978, 0.032003,
		-0.999406, 0.031485, 0.014030,
		32.963516, 39.312721, 36.549320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523319, 39.952286, 36.842503>,  <33.663097, 39.290684, 36.539501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523319, 39.952286, 36.842503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.222351, 39.691452, 36.879704>,  <33.041771, 39.534954, 36.902023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.222351, 39.691452, 36.879704>,  <33.523319, 39.952286, 36.842503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222351, 39.691452, 36.879704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088575, 0.039750, 0.995276,
		-0.652698, 0.757106, 0.027849,
		-0.752423, -0.652082, 0.093005,
		32.996624, 39.495827, 36.907604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128819, 40.247608, 37.307011>,  <33.523319, 39.952286, 36.842503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128819, 40.247608, 37.307011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.017899, 39.864532, 37.337833>,  <32.951347, 39.634686, 37.356327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.017899, 39.864532, 37.337833>,  <33.128819, 40.247608, 37.307011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017899, 39.864532, 37.337833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142302, 0.038378, 0.989079,
		-0.950188, 0.285233, 0.125639,
		-0.277297, -0.957689, 0.077056,
		32.934711, 39.577225, 37.360950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724102, 40.531555, 37.829178>,  <33.128819, 40.247608, 37.307011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724102, 40.531555, 37.829178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.785625, 40.909294, 37.945484>,  <33.822540, 41.135937, 38.015266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.785625, 40.909294, 37.945484>,  <33.724102, 40.531555, 37.829178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785625, 40.909294, 37.945484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163527, 0.265881, -0.950035,
		-0.974476, 0.193668, -0.113533,
		0.153806, 0.944352, 0.290765,
		33.831768, 41.192600, 38.032715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466080, 40.901218, 37.344040>,  <33.724102, 40.531555, 37.829178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.466080, 40.901218, 37.344040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.734962, 41.150204, 37.504379>,  <33.896294, 41.299595, 37.600582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.734962, 41.150204, 37.504379>,  <33.466080, 40.901218, 37.344040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734962, 41.150204, 37.504379> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158600, 0.407782, -0.899200,
		-0.723176, 0.668022, 0.175392,
		0.672207, 0.622463, 0.400846,
		33.936626, 41.336941, 37.624634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237988, 41.476440, 37.098110>,  <33.466080, 40.901218, 37.344040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237988, 41.476440, 37.098110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.627327, 41.522728, 37.177303>,  <33.860931, 41.550499, 37.224819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.627327, 41.522728, 37.177303>,  <33.237988, 41.476440, 37.098110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627327, 41.522728, 37.177303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124174, 0.459849, -0.879272,
		-0.192786, 0.880425, 0.433226,
		0.973352, 0.115715, 0.197978,
		33.919334, 41.557442, 37.236698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426395, 42.203278, 36.910976>,  <33.237988, 41.476440, 37.098110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426395, 42.203278, 36.910976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.750034, 41.968250, 36.906414>,  <33.944218, 41.827236, 36.903675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.750034, 41.968250, 36.906414>,  <33.426395, 42.203278, 36.910976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750034, 41.968250, 36.906414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276224, 0.397358, -0.875104,
		0.518712, 0.704894, 0.483801,
		0.809097, -0.587564, -0.011406,
		33.992764, 41.791981, 36.902992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028130, 42.683636, 36.688637>,  <33.426395, 42.203278, 36.910976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028130, 42.683636, 36.688637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.161133, 42.308235, 36.651405>,  <34.240932, 42.082996, 36.629066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.161133, 42.308235, 36.651405>,  <34.028130, 42.683636, 36.688637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161133, 42.308235, 36.651405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314956, 0.203527, -0.927027,
		0.888956, 0.278927, 0.363259,
		0.332506, -0.938497, -0.093077,
		34.260883, 42.026688, 36.623482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753597, 42.684113, 36.400299>,  <34.028130, 42.683636, 36.688637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753597, 42.684113, 36.400299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.600368, 42.324711, 36.314564>,  <34.508430, 42.109070, 36.263123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.600368, 42.324711, 36.314564>,  <34.753597, 42.684113, 36.400299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600368, 42.324711, 36.314564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178557, 0.155631, -0.971543,
		0.906296, -0.410444, 0.100816,
		-0.383074, -0.898507, -0.214335,
		34.485447, 42.055161, 36.250263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248558, 42.344425, 36.009693>,  <34.753597, 42.684113, 36.400299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248558, 42.344425, 36.009693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.897545, 42.169258, 35.931538>,  <34.686939, 42.064159, 35.884644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.897545, 42.169258, 35.931538>,  <35.248558, 42.344425, 36.009693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897545, 42.169258, 35.931538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249684, -0.069401, -0.965837,
		0.409393, -0.896334, 0.170241,
		-0.877528, -0.437914, -0.195388,
		34.634285, 42.037884, 35.872921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382103, 41.757259, 35.527729>,  <35.248558, 42.344425, 36.009693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382103, 41.757259, 35.527729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.990402, 41.830635, 35.493305>,  <34.755383, 41.874660, 35.472649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.990402, 41.830635, 35.493305>,  <35.382103, 41.757259, 35.527729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990402, 41.830635, 35.493305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070422, -0.090152, -0.993435,
		-0.190001, -0.978887, 0.075363,
		-0.979255, 0.183446, -0.086064,
		34.696625, 41.885670, 35.467487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108608, 41.197704, 35.062229>,  <35.382103, 41.757259, 35.527729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108608, 41.197704, 35.062229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.830166, 41.478821, 35.003559>,  <34.663101, 41.647491, 34.968357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.830166, 41.478821, 35.003559>,  <35.108608, 41.197704, 35.062229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830166, 41.478821, 35.003559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109158, -0.098317, -0.989150,
		-0.709590, -0.704566, -0.008277,
		-0.696108, 0.702795, -0.146674,
		34.621334, 41.689659, 34.959557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553650, 40.877502, 34.648869>,  <35.108608, 41.197704, 35.062229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553650, 40.877502, 34.648869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.485340, 41.268646, 34.600498>,  <34.444355, 41.503334, 34.571476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.485340, 41.268646, 34.600498>,  <34.553650, 40.877502, 34.648869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485340, 41.268646, 34.600498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036938, -0.128993, -0.990957,
		-0.984618, -0.164761, 0.058149,
		-0.170772, 0.977862, -0.120922,
		34.434109, 41.562004, 34.564220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073780, 40.955650, 34.185162>,  <34.553650, 40.877502, 34.648869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073780, 40.955650, 34.185162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.237961, 41.319118, 34.154556>,  <34.336468, 41.537197, 34.136192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.237961, 41.319118, 34.154556>,  <34.073780, 40.955650, 34.185162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237961, 41.319118, 34.154556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103861, -0.036781, -0.993912,
		-0.905948, 0.415900, 0.079278,
		0.410452, 0.908666, -0.076518,
		34.361095, 41.591717, 34.131599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.689766, 41.205132, 33.646183>,  <34.073780, 40.955650, 34.185162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.689766, 41.205132, 33.646183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.993198, 41.465214, 33.663116>,  <34.175259, 41.621262, 33.673279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.993198, 41.465214, 33.663116>,  <33.689766, 41.205132, 33.646183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993198, 41.465214, 33.663116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101138, 0.181685, -0.978142,
		-0.643682, 0.737718, 0.203582,
		0.758581, 0.650202, 0.042336,
		34.220772, 41.660275, 33.675816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498562, 41.871078, 33.336090>,  <33.689766, 41.205132, 33.646183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498562, 41.871078, 33.336090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.897003, 41.846287, 33.310978>,  <34.136066, 41.831413, 33.295910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.897003, 41.846287, 33.310978>,  <33.498562, 41.871078, 33.336090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.897003, 41.846287, 33.310978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042190, 0.290344, -0.955992,
		0.077481, 0.954913, 0.286597,
		0.996101, -0.061980, -0.062784,
		34.195835, 41.827694, 33.292141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630634, 42.419754, 32.902676>,  <33.498562, 41.871078, 33.336090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.630634, 42.419754, 32.902676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.979885, 42.224895, 32.910049>,  <34.189434, 42.107979, 32.914474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.979885, 42.224895, 32.910049>,  <33.630634, 42.419754, 32.902676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979885, 42.224895, 32.910049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304789, 0.515980, -0.800542,
		0.380470, 0.704592, 0.598993,
		0.873124, -0.487149, 0.018437,
		34.241821, 42.078751, 32.915581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185734, 42.917896, 32.903698>,  <33.630634, 42.419754, 32.902676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185734, 42.917896, 32.903698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.311314, 42.568577, 32.754688>,  <34.386662, 42.358986, 32.665283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.311314, 42.568577, 32.754688>,  <34.185734, 42.917896, 32.903698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311314, 42.568577, 32.754688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330185, 0.468301, -0.819555,
		0.890175, 0.134297, 0.435376,
		0.313951, -0.873303, -0.372527,
		34.405499, 42.306587, 32.642929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591633, 43.111835, 32.316040>,  <34.185734, 42.917896, 32.903698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591633, 43.111835, 32.316040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.614315, 42.719162, 32.243294>,  <34.627922, 42.483559, 32.199646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.614315, 42.719162, 32.243294>,  <34.591633, 43.111835, 32.316040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614315, 42.719162, 32.243294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230431, 0.190107, -0.954338,
		0.971435, 0.012206, 0.236991,
		0.056702, -0.981688, -0.181864,
		34.631325, 42.424656, 32.188736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.162281, 43.038494, 31.865158>,  <34.591633, 43.111835, 32.316040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.162281, 43.038494, 31.865158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.903549, 42.736225, 31.824032>,  <34.748310, 42.554863, 31.799356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.903549, 42.736225, 31.824032>,  <35.162281, 43.038494, 31.865158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903549, 42.736225, 31.824032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048799, 0.093529, -0.994420,
		0.761069, -0.648240, -0.023622,
		-0.646832, -0.755670, -0.102816,
		34.709499, 42.509525, 31.793188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429440, 42.606339, 31.377560>,  <35.162281, 43.038494, 31.865158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429440, 42.606339, 31.377560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.047840, 42.487816, 31.359295>,  <34.818882, 42.416702, 31.348335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.047840, 42.487816, 31.359295>,  <35.429440, 42.606339, 31.377560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047840, 42.487816, 31.359295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028499, 0.241245, -0.970046,
		0.298452, -0.924121, -0.238592,
		-0.953999, -0.296311, -0.045664,
		34.761639, 42.398922, 31.345596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.387733, 42.051426, 30.828119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.036198, 42.230133, 30.895096>,  <34.825275, 42.337357, 30.935282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.036198, 42.230133, 30.895096>,  <35.387733, 42.051426, 30.828119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036198, 42.230133, 30.895096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181827, 0.010841, -0.983271,
		-0.441113, -0.894582, 0.071708,
		-0.878839, 0.446772, 0.167441,
		34.772545, 42.364166, 30.945328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937641, 41.605061, 30.512861>,  <35.387733, 42.051426, 30.828119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937641, 41.605061, 30.512861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.735397, 41.949245, 30.538069>,  <34.614052, 42.155754, 30.553192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.735397, 41.949245, 30.538069>,  <34.937641, 41.605061, 30.512861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735397, 41.949245, 30.538069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106339, 0.010333, -0.994276,
		-0.856184, -0.509416, 0.086276,
		-0.505609, 0.860458, 0.063018,
		34.583714, 42.207382, 30.556974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548180, 41.521492, 29.939161>,  <34.937641, 41.605061, 30.512861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548180, 41.521492, 29.939161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.483219, 41.898827, 30.054914>,  <34.444244, 42.125229, 30.124367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.483219, 41.898827, 30.054914>,  <34.548180, 41.521492, 29.939161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483219, 41.898827, 30.054914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125006, 0.271243, -0.954359,
		-0.978775, -0.191160, 0.073874,
		-0.162398, 0.943337, 0.289382,
		34.434502, 42.181828, 30.141729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.912933, 41.720833, 29.606052>,  <34.548180, 41.521492, 29.939161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.912933, 41.720833, 29.606052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.132179, 42.044304, 29.691473>,  <34.263729, 42.238388, 29.742725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.132179, 42.044304, 29.691473>,  <33.912933, 41.720833, 29.606052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132179, 42.044304, 29.691473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150133, 0.346301, -0.926032,
		-0.822816, 0.475514, 0.311223,
		0.548119, 0.808679, 0.213552,
		34.296616, 42.286907, 29.755539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.443947, 42.285881, 29.263094>,  <33.912933, 41.720833, 29.606052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.443947, 42.285881, 29.263094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.813488, 42.420078, 29.336790>,  <34.035213, 42.500595, 29.381008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.813488, 42.420078, 29.336790>,  <33.443947, 42.285881, 29.263094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813488, 42.420078, 29.336790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032865, 0.410048, -0.911472,
		-0.381335, 0.848120, 0.367798,
		0.923853, 0.335488, 0.184239,
		34.090645, 42.520725, 29.392061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504665, 42.953514, 28.986000>,  <33.443947, 42.285881, 29.263094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504665, 42.953514, 28.986000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.886890, 42.837112, 29.004822>,  <34.116226, 42.767269, 29.016115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.886890, 42.837112, 29.004822>,  <33.504665, 42.953514, 28.986000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886890, 42.837112, 29.004822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137339, 0.298237, -0.944560,
		0.260840, 0.909048, 0.324951,
		0.955563, -0.291008, 0.047056,
		34.173561, 42.749809, 29.018938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982475, 43.489910, 28.800795>,  <33.504665, 42.953514, 28.986000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.982475, 43.489910, 28.800795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.196899, 43.159100, 28.733074>,  <34.325554, 42.960613, 28.692442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.196899, 43.159100, 28.733074>,  <33.982475, 43.489910, 28.800795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196899, 43.159100, 28.733074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261337, 0.353276, -0.898275,
		0.802710, 0.437285, 0.405511,
		0.536060, -0.827029, -0.169299,
		34.357716, 42.910992, 28.682285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653019, 43.710670, 28.669460>,  <33.982475, 43.489910, 28.800795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653019, 43.710670, 28.669460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.640434, 43.337532, 28.525896>,  <34.632881, 43.113651, 28.439758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.640434, 43.337532, 28.525896>,  <34.653019, 43.710670, 28.669460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640434, 43.337532, 28.525896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365252, 0.323521, -0.872883,
		0.930377, -0.158558, 0.330543,
		-0.031465, -0.932842, -0.358910,
		34.630997, 43.057678, 28.418222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252808, 43.687222, 28.345808>,  <34.653019, 43.710670, 28.669460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252808, 43.687222, 28.345808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.052986, 43.374004, 28.197598>,  <34.933094, 43.186073, 28.108671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.052986, 43.374004, 28.197598>,  <35.252808, 43.687222, 28.345808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052986, 43.374004, 28.197598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391922, 0.177151, -0.902782,
		0.772557, -0.596203, 0.218397,
		-0.499552, -0.783045, -0.370524,
		34.903122, 43.139091, 28.086441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730999, 43.443138, 27.969135>,  <35.252808, 43.687222, 28.345808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730999, 43.443138, 27.969135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.382122, 43.313446, 27.822622>,  <35.172798, 43.235630, 27.734715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.382122, 43.313446, 27.822622>,  <35.730999, 43.443138, 27.969135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382122, 43.313446, 27.822622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339961, 0.136638, -0.930460,
		0.351728, -0.936060, -0.008950,
		-0.872189, -0.324226, -0.366284,
		35.120464, 43.216179, 27.712738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917229, 43.032673, 27.338619>,  <35.730999, 43.443138, 27.969135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917229, 43.032673, 27.338619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.535595, 43.151440, 27.322773>,  <35.306614, 43.222698, 27.313265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.535595, 43.151440, 27.322773>,  <35.917229, 43.032673, 27.338619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535595, 43.151440, 27.322773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120236, 0.258467, -0.958508,
		-0.274357, -0.919258, -0.282299,
		-0.954081, 0.296916, -0.039616,
		35.249371, 43.240513, 27.310888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511631, 42.609386, 26.741716>,  <35.917229, 43.032673, 27.338619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.511631, 42.609386, 26.741716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.317387, 42.951557, 26.813734>,  <35.200840, 43.156860, 26.856945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.317387, 42.951557, 26.813734>,  <35.511631, 42.609386, 26.741716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317387, 42.951557, 26.813734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148105, 0.122473, -0.981359,
		-0.861535, -0.503228, 0.067219,
		-0.485615, 0.855431, 0.180045,
		35.171703, 43.208187, 26.867748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095802, 42.681129, 26.206509>,  <35.511631, 42.609386, 26.741716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095802, 42.681129, 26.206509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.075798, 43.057468, 26.340557>,  <35.063793, 43.283272, 26.420986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.075798, 43.057468, 26.340557>,  <35.095802, 42.681129, 26.206509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075798, 43.057468, 26.340557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137789, 0.325831, -0.935333,
		-0.989198, -0.092956, 0.113342,
		-0.050015, 0.940847, 0.335120,
		35.060795, 43.339722, 26.441093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503647, 43.004234, 25.900311>,  <35.095802, 42.681129, 26.206509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503647, 43.004234, 25.900311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.756577, 43.299854, 25.993240>,  <34.908333, 43.477226, 26.048998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.756577, 43.299854, 25.993240>,  <34.503647, 43.004234, 25.900311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756577, 43.299854, 25.993240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084815, 0.364128, -0.927479,
		-0.770049, 0.566760, 0.292928,
		0.632321, 0.739049, 0.232327,
		34.946274, 43.521568, 26.062939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.205105, 43.631329, 25.580154>,  <34.503647, 43.004234, 25.900311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.205105, 43.631329, 25.580154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.578644, 43.755836, 25.650629>,  <34.802769, 43.830540, 25.692913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.578644, 43.755836, 25.650629>,  <34.205105, 43.631329, 25.580154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578644, 43.755836, 25.650629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015527, 0.456848, -0.889409,
		-0.357336, 0.833308, 0.421793,
		0.933847, 0.311268, 0.176187,
		34.858799, 43.849216, 25.703485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179348, 44.283638, 25.274858>,  <34.205105, 43.631329, 25.580154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179348, 44.283638, 25.274858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.570366, 44.199371, 25.276999>,  <34.804977, 44.148811, 25.278282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.570366, 44.199371, 25.276999>,  <34.179348, 44.283638, 25.274858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570366, 44.199371, 25.276999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086882, 0.379760, -0.920996,
		0.191993, 0.900778, 0.389535,
		0.977543, -0.210668, 0.005350,
		34.863628, 44.136169, 25.278603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471859, 44.859539, 25.015373>,  <34.179348, 44.283638, 25.274858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471859, 44.859539, 25.015373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.738941, 44.564713, 24.973598>,  <34.899189, 44.387817, 24.948534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.738941, 44.564713, 24.973598>,  <34.471859, 44.859539, 25.015373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738941, 44.564713, 24.973598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083009, 0.213133, -0.973491,
		0.739786, 0.641332, 0.203493,
		0.667702, -0.737067, -0.104437,
		34.939251, 44.343594, 24.942268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848549, 45.169338, 24.483534>,  <34.471859, 44.859539, 25.015373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848549, 45.169338, 24.483534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.915619, 44.775707, 24.459957>,  <34.955860, 44.539528, 24.445812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.915619, 44.775707, 24.459957>,  <34.848549, 45.169338, 24.483534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915619, 44.775707, 24.459957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080037, 0.073178, -0.994102,
		0.982588, 0.161966, 0.091033,
		0.167673, -0.984079, -0.058940,
		34.965919, 44.480484, 24.442274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381477, 45.175755, 23.929216>,  <34.848549, 45.169338, 24.483534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381477, 45.175755, 23.929216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.260700, 44.796589, 23.969809>,  <35.188232, 44.569092, 23.994164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.260700, 44.796589, 23.969809>,  <35.381477, 45.175755, 23.929216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.260700, 44.796589, 23.969809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144010, -0.059875, -0.987763,
		0.942387, -0.312861, -0.118430,
		-0.301942, -0.947910, 0.101480,
		35.170116, 44.512215, 24.000252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720940, 44.800121, 23.364372>,  <35.381477, 45.175755, 23.929216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.720940, 44.800121, 23.364372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.384380, 44.611401, 23.469790>,  <35.182446, 44.498169, 23.533039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.384380, 44.611401, 23.469790>,  <35.720940, 44.800121, 23.364372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384380, 44.611401, 23.469790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217889, -0.150103, -0.964362,
		0.494543, -0.868835, 0.023496,
		-0.841398, -0.471799, 0.263543,
		35.131962, 44.469860, 23.548853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796055, 44.222591, 23.051155>,  <35.720940, 44.800121, 23.364372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796055, 44.222591, 23.051155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.403057, 44.234425, 23.124722>,  <35.167259, 44.241524, 23.168861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.403057, 44.234425, 23.124722>,  <35.796055, 44.222591, 23.051155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403057, 44.234425, 23.124722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186257, -0.140611, -0.972387,
		-0.002903, -0.989623, 0.143659,
		-0.982497, 0.029581, 0.183916,
		35.108307, 44.243298, 23.179895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398598, 43.609627, 22.916830>,  <35.796055, 44.222591, 23.051155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398598, 43.609627, 22.916830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.165249, 43.931858, 22.875410>,  <35.025242, 44.125198, 22.850557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.165249, 43.931858, 22.875410>,  <35.398598, 43.609627, 22.916830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165249, 43.931858, 22.875410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039477, -0.155464, -0.987052,
		-0.811248, -0.571727, 0.122494,
		-0.583368, 0.805580, -0.103550,
		34.990238, 44.173531, 22.844345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920956, 43.397243, 22.403151>,  <35.398598, 43.609627, 22.916830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920956, 43.397243, 22.403151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.911766, 43.797134, 22.404295>,  <34.906250, 44.037071, 22.404982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.911766, 43.797134, 22.404295>,  <34.920956, 43.397243, 22.403151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911766, 43.797134, 22.404295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158845, -0.000825, -0.987303,
		-0.987036, -0.023139, 0.158822,
		-0.022976, 0.999732, 0.002861,
		34.904873, 44.097054, 22.405153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161602, 43.468086, 22.256702>,  <34.920956, 43.397243, 22.403151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161602, 43.468086, 22.256702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.925842, 43.791199, 22.252838>,  <33.784386, 43.985065, 22.250519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.925842, 43.791199, 22.252838>,  <34.161602, 43.468086, 22.256702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925842, 43.791199, 22.252838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168701, -0.111376, 0.979355,
		0.790032, 0.578859, 0.201919,
		-0.589397, 0.807786, -0.009663,
		33.749023, 44.033535, 22.249939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179470, 42.993469, 21.587955>,  <34.161602, 43.468086, 22.256702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179470, 42.993469, 21.587955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.887234, 42.741611, 21.482288>,  <33.711891, 42.590496, 21.418888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.887234, 42.741611, 21.482288>,  <34.179470, 42.993469, 21.587955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887234, 42.741611, 21.482288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280885, -0.075495, 0.956768,
		-0.622364, 0.773209, -0.121700,
		-0.730593, -0.629642, -0.264168,
		33.668056, 42.552719, 21.403038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531620, 43.236248, 21.942772>,  <34.179470, 42.993469, 21.587955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531620, 43.236248, 21.942772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.446503, 42.861351, 21.832279>,  <33.395432, 42.636414, 21.765984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.446503, 42.861351, 21.832279>,  <33.531620, 43.236248, 21.942772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446503, 42.861351, 21.832279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362600, -0.186775, 0.913037,
		-0.907326, 0.294449, -0.300098,
		-0.212792, -0.937238, -0.276233,
		33.382664, 42.580181, 21.749409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754025, 43.071781, 22.085476>,  <33.531620, 43.236248, 21.942772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754025, 43.071781, 22.085476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.935730, 42.718422, 22.039431>,  <33.044754, 42.506405, 22.011803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.935730, 42.718422, 22.039431>,  <32.754025, 43.071781, 22.085476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935730, 42.718422, 22.039431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353546, -0.297370, 0.886891,
		-0.817709, -0.362187, -0.447407,
		0.454266, -0.883398, -0.115113,
		33.072010, 42.453403, 22.004896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.201511, 42.537605, 22.175400>,  <32.754025, 43.071781, 22.085476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.201511, 42.537605, 22.175400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.551857, 42.361717, 22.254915>,  <32.762062, 42.256184, 22.302624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.551857, 42.361717, 22.254915>,  <32.201511, 42.537605, 22.175400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551857, 42.361717, 22.254915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394491, -0.415174, 0.819760,
		-0.277932, -0.796416, -0.537099,
		0.875860, -0.439719, 0.198789,
		32.814613, 42.229801, 22.314552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014187, 41.827854, 22.418640>,  <32.201511, 42.537605, 22.175400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014187, 41.827854, 22.418640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.383793, 41.888538, 22.559023>,  <32.605556, 41.924950, 22.643253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.383793, 41.888538, 22.559023>,  <32.014187, 41.827854, 22.418640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.383793, 41.888538, 22.559023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251567, -0.450002, 0.856862,
		0.287928, -0.880047, -0.377644,
		0.924019, 0.151712, 0.350959,
		32.660999, 41.934052, 22.664310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.112480, 41.274864, 22.883366>,  <32.014187, 41.827854, 22.418640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.112480, 41.274864, 22.883366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.416885, 41.521526, 22.963951>,  <32.599529, 41.669525, 23.012302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.416885, 41.521526, 22.963951>,  <32.112480, 41.274864, 22.883366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.416885, 41.521526, 22.963951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080581, -0.397999, 0.913840,
		0.643708, -0.679214, -0.352576,
		0.761017, 0.616657, 0.201463,
		32.645191, 41.706524, 23.024389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553226, 40.870331, 23.267353>,  <32.112480, 41.274864, 22.883366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553226, 40.870331, 23.267353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.625786, 41.257893, 23.334675>,  <32.669319, 41.490429, 23.375069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.625786, 41.257893, 23.334675>,  <32.553226, 40.870331, 23.267353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.625786, 41.257893, 23.334675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066729, -0.182876, 0.980869,
		0.981143, -0.166695, -0.097827,
		0.181396, 0.968901, 0.168304,
		32.680206, 41.548561, 23.385166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217979, 40.967793, 23.697796>,  <32.553226, 40.870331, 23.267353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217979, 40.967793, 23.697796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.988358, 41.290611, 23.753120>,  <32.850582, 41.484303, 23.786316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.988358, 41.290611, 23.753120>,  <33.217979, 40.967793, 23.697796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988358, 41.290611, 23.753120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050495, -0.133705, 0.989734,
		0.817256, 0.575149, 0.036002,
		-0.574058, 0.807048, 0.138314,
		32.816139, 41.532726, 23.794615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559185, 41.306175, 24.145164>,  <33.217979, 40.967793, 23.697796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559185, 41.306175, 24.145164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.193481, 41.465492, 24.174788>,  <32.974060, 41.561085, 24.192562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.193481, 41.465492, 24.174788>,  <33.559185, 41.306175, 24.145164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.193481, 41.465492, 24.174788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106660, 0.060294, 0.992466,
		0.390831, 0.915273, -0.097608,
		-0.914262, 0.398297, 0.074058,
		32.919205, 41.584980, 24.197004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.731171, 41.890278, 24.515024>,  <33.559185, 41.306175, 24.145164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.731171, 41.890278, 24.515024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.346935, 41.782429, 24.542093>,  <33.116394, 41.717720, 24.558334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.346935, 41.782429, 24.542093>,  <33.731171, 41.890278, 24.515024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.346935, 41.782429, 24.542093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078610, -0.029968, 0.996455,
		-0.266641, 0.962499, 0.049982,
		-0.960585, -0.269625, 0.067671,
		33.058762, 41.701542, 24.562395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544186, 42.214569, 25.126553>,  <33.731171, 41.890278, 24.515024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544186, 42.214569, 25.126553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.202690, 42.010998, 25.082495>,  <32.997795, 41.888855, 25.056061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.202690, 42.010998, 25.082495>,  <33.544186, 42.214569, 25.126553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202690, 42.010998, 25.082495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059717, -0.305824, 0.950213,
		-0.517271, 0.804654, 0.291484,
		-0.853736, -0.508925, -0.110142,
		32.946571, 41.858322, 25.049452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032078, 42.452324, 25.712700>,  <33.544186, 42.214569, 25.126553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032078, 42.452324, 25.712700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.942165, 42.070576, 25.634066>,  <32.888218, 41.841526, 25.586885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.942165, 42.070576, 25.634066>,  <33.032078, 42.452324, 25.712700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942165, 42.070576, 25.634066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051673, -0.189788, 0.980464,
		-0.973037, 0.230552, -0.006654,
		-0.224786, -0.954372, -0.196584,
		32.874729, 41.784264, 25.575090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572796, 42.307083, 26.225458>,  <33.032078, 42.452324, 25.712700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572796, 42.307083, 26.225458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.693272, 41.946884, 26.099991>,  <32.765556, 41.730762, 26.024710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.693272, 41.946884, 26.099991>,  <32.572796, 42.307083, 26.225458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.693272, 41.946884, 26.099991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109630, -0.359462, 0.926698,
		-0.947242, -0.244720, -0.206987,
		0.301186, -0.900499, -0.313669,
		32.783627, 41.676735, 26.005890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322636, 41.869759, 26.746994>,  <32.572796, 42.307083, 26.225458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322636, 41.869759, 26.746994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.601234, 41.652588, 26.559322>,  <32.768394, 41.522285, 26.446720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.601234, 41.652588, 26.559322>,  <32.322636, 41.869759, 26.746994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.601234, 41.652588, 26.559322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249276, -0.430057, 0.867705,
		-0.672871, -0.721307, -0.164195,
		0.696495, -0.542924, -0.469178,
		32.810184, 41.489712, 26.418570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144653, 41.196342, 26.933805>,  <32.322636, 41.869759, 26.746994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144653, 41.196342, 26.933805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.527596, 41.230572, 26.823429>,  <32.757362, 41.251110, 26.757204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.527596, 41.230572, 26.823429>,  <32.144653, 41.196342, 26.933805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527596, 41.230572, 26.823429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280357, -0.505771, 0.815840,
		-0.069751, -0.858413, -0.508195,
		0.957358, 0.085571, -0.275940,
		32.814804, 41.256245, 26.740646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.394733, 40.520393, 26.911030>,  <32.144653, 41.196342, 26.933805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.394733, 40.520393, 26.911030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.729698, 40.734486, 26.955328>,  <32.930679, 40.862942, 26.981907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.729698, 40.734486, 26.955328>,  <32.394733, 40.520393, 26.911030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729698, 40.734486, 26.955328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276686, -0.589867, 0.758619,
		0.471362, -0.604636, -0.642053,
		0.837414, 0.535231, 0.110746,
		32.980923, 40.895054, 26.988552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919922, 39.993622, 26.962566>,  <32.394733, 40.520393, 26.911030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919922, 39.993622, 26.962566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.026291, 40.333313, 27.145033>,  <33.090111, 40.537128, 27.254513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.026291, 40.333313, 27.145033>,  <32.919922, 39.993622, 26.962566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026291, 40.333313, 27.145033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151802, -0.504193, 0.850145,
		0.951967, -0.156826, -0.262992,
		0.265924, 0.849232, 0.456168,
		33.106068, 40.588081, 27.281883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479050, 39.770611, 27.368120>,  <32.919922, 39.993622, 26.962566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479050, 39.770611, 27.368120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.412003, 40.128120, 27.534531>,  <33.371773, 40.342625, 27.634377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.412003, 40.128120, 27.534531>,  <33.479050, 39.770611, 27.368120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.412003, 40.128120, 27.534531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160031, -0.391734, 0.906055,
		0.972777, 0.218447, -0.077370,
		-0.167617, 0.893771, 0.416028,
		33.361717, 40.396252, 27.659340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058094, 40.046600, 27.751867>,  <33.479050, 39.770611, 27.368120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058094, 40.046600, 27.751867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.787994, 40.259735, 27.955879>,  <33.625935, 40.387615, 28.078285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.787994, 40.259735, 27.955879>,  <34.058094, 40.046600, 27.751867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787994, 40.259735, 27.955879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368533, -0.355254, 0.859056,
		0.638927, 0.768036, 0.043515,
		-0.675245, 0.532838, 0.510028,
		33.585423, 40.419586, 28.108887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276402, 40.421085, 28.415165>,  <34.058094, 40.046600, 27.751867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276402, 40.421085, 28.415165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.886017, 40.354492, 28.471420>,  <33.651787, 40.314537, 28.505175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.886017, 40.354492, 28.471420>,  <34.276402, 40.421085, 28.415165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886017, 40.354492, 28.471420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183156, -0.276815, 0.943307,
		-0.118117, 0.946391, 0.300654,
		-0.975962, -0.166488, 0.140641,
		33.593227, 40.304546, 28.513613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<35.278938, 42.422684, 33.787663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.962204, 42.179562, 33.763790>,  <34.772163, 42.033688, 33.749466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.962204, 42.179562, 33.763790>,  <35.278938, 42.422684, 33.787663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962204, 42.179562, 33.763790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143017, 0.089532, 0.985662,
		-0.593749, 0.789021, -0.157821,
		-0.791839, -0.607807, -0.059684,
		34.724651, 41.997219, 33.745884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749008, 42.806160, 34.199234>,  <35.278938, 42.422684, 33.787663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749008, 42.806160, 34.199234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.644554, 42.422131, 34.159115>,  <34.581882, 42.191711, 34.135044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.644554, 42.422131, 34.159115>,  <34.749008, 42.806160, 34.199234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644554, 42.422131, 34.159115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265686, -0.028406, 0.963641,
		-0.928019, 0.278288, -0.247661,
		-0.261135, -0.960078, -0.100298,
		34.566216, 42.134106, 34.129025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074249, 42.812969, 34.480900>,  <34.749008, 42.806160, 34.199234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074249, 42.812969, 34.480900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.201714, 42.434361, 34.501080>,  <34.278194, 42.207195, 34.513187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.201714, 42.434361, 34.501080>,  <34.074249, 42.812969, 34.480900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201714, 42.434361, 34.501080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301732, -0.050835, 0.952037,
		-0.898561, -0.318602, -0.301796,
		0.318662, -0.946525, 0.050454,
		34.297314, 42.150402, 34.516216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617302, 42.512001, 34.903866>,  <34.074249, 42.812969, 34.480900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617302, 42.512001, 34.903866> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.932735, 42.266338, 34.916138>,  <34.121994, 42.118938, 34.923500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.932735, 42.266338, 34.916138>,  <33.617302, 42.512001, 34.903866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932735, 42.266338, 34.916138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105177, -0.085559, 0.990766,
		-0.605865, -0.784530, -0.132066,
		0.788585, -0.614161, 0.030678,
		34.169312, 42.082088, 34.925343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376423, 41.944649, 35.233780>,  <33.617302, 42.512001, 34.903866>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376423, 41.944649, 35.233780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.770908, 41.960632, 35.298008>,  <34.007599, 41.970222, 35.336544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.770908, 41.960632, 35.298008>,  <33.376423, 41.944649, 35.233780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770908, 41.960632, 35.298008> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156816, -0.083956, 0.984053,
		0.052801, -0.995668, -0.076533,
		0.986215, 0.039958, 0.160570,
		34.066772, 41.972618, 35.346180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594776, 41.302643, 35.631969>,  <33.376423, 41.944649, 35.233780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594776, 41.302643, 35.631969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.911083, 41.539360, 35.694542>,  <34.100868, 41.681389, 35.732086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.911083, 41.539360, 35.694542>,  <33.594776, 41.302643, 35.631969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911083, 41.539360, 35.694542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051325, -0.190552, 0.980334,
		0.609964, -0.783243, -0.120308,
		0.790765, 0.591794, 0.156430,
		34.148312, 41.716900, 35.741470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052158, 40.899792, 35.915546>,  <33.594776, 41.302643, 35.631969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052158, 40.899792, 35.915546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.173687, 41.264233, 36.026966>,  <34.246605, 41.482899, 36.093819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.173687, 41.264233, 36.026966>,  <34.052158, 40.899792, 35.915546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173687, 41.264233, 36.026966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132101, -0.329828, 0.934753,
		0.943526, -0.247202, -0.220566,
		0.303821, 0.911101, 0.278545,
		34.264832, 41.537563, 36.110531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698563, 40.805359, 36.407604>,  <34.052158, 40.899792, 35.915546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698563, 40.805359, 36.407604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.532139, 41.164085, 36.467758>,  <34.432285, 41.379322, 36.503853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.532139, 41.164085, 36.467758>,  <34.698563, 40.805359, 36.407604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532139, 41.164085, 36.467758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095206, -0.121511, 0.988014,
		0.904340, 0.425389, -0.034827,
		-0.416058, 0.896816, 0.150387,
		34.407322, 41.433128, 36.512875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142052, 41.178696, 36.850250>,  <34.698563, 40.805359, 36.407604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142052, 41.178696, 36.850250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.795742, 41.377892, 36.870003>,  <34.587955, 41.497410, 36.881855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.795742, 41.377892, 36.870003>,  <35.142052, 41.178696, 36.850250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795742, 41.377892, 36.870003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029878, -0.047065, 0.998445,
		0.499539, 0.865905, 0.025869,
		-0.865776, 0.497989, 0.049382,
		34.536011, 41.527287, 36.884819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168949, 41.739483, 37.455399>,  <35.142052, 41.178696, 36.850250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168949, 41.739483, 37.455399> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.772800, 41.711311, 37.407734>,  <34.535110, 41.694408, 37.379135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.772800, 41.711311, 37.407734>,  <35.168949, 41.739483, 37.455399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772800, 41.711311, 37.407734> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108380, -0.140961, 0.984065,
		-0.086102, 0.987507, 0.131971,
		-0.990374, -0.070427, -0.119163,
		34.475689, 41.690182, 37.371986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859818, 42.062099, 38.174896>,  <35.168949, 41.739483, 37.455399>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859818, 42.062099, 38.174896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.578815, 41.841938, 37.994434>,  <34.410213, 41.709843, 37.886158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.578815, 41.841938, 37.994434>,  <34.859818, 42.062099, 38.174896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578815, 41.841938, 37.994434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511233, -0.050722, 0.857944,
		-0.495098, 0.833357, -0.245751,
		-0.702509, -0.550403, -0.451152,
		34.368061, 41.676819, 37.859089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309147, 42.434650, 38.121227>,  <34.859818, 42.062099, 38.174896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.309147, 42.434650, 38.121227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.206097, 42.048153, 38.122166>,  <34.144264, 41.816254, 38.122730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.206097, 42.048153, 38.122166>,  <34.309147, 42.434650, 38.121227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206097, 42.048153, 38.122166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392935, 0.106989, 0.913321,
		-0.882740, 0.234374, -0.407234,
		-0.257628, -0.966242, 0.002350,
		34.128807, 41.758282, 38.122871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534588, 42.388107, 38.407169>,  <34.309147, 42.434650, 38.121227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534588, 42.388107, 38.407169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.714645, 42.031803, 38.432182>,  <33.822681, 41.818020, 38.447189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.714645, 42.031803, 38.432182>,  <33.534588, 42.388107, 38.407169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714645, 42.031803, 38.432182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411504, -0.144786, 0.899834,
		-0.792485, -0.430788, -0.431728,
		0.450146, -0.890763, 0.062530,
		33.849689, 41.764576, 38.450943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.086449, 41.729958, 38.482849>,  <33.534588, 42.388107, 38.407169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.086449, 41.729958, 38.482849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.433887, 41.711254, 38.680176>,  <33.642349, 41.700031, 38.798573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.433887, 41.711254, 38.680176>,  <33.086449, 41.729958, 38.482849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433887, 41.711254, 38.680176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493430, -0.173045, 0.852398,
		0.045513, -0.983804, -0.173376,
		0.868594, -0.046754, 0.493314,
		33.694466, 41.697227, 38.828171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565166, 41.955540, 38.993355>,  <33.086449, 41.729958, 38.482849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565166, 41.955540, 38.993355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.343746, 42.196510, 39.223370>,  <32.210892, 42.341091, 39.361378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.343746, 42.196510, 39.223370>,  <32.565166, 41.955540, 38.993355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.343746, 42.196510, 39.223370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578287, 0.218829, -0.785937,
		-0.599302, -0.767593, 0.227241,
		-0.553553, 0.602424, 0.575034,
		32.177681, 42.377239, 39.395882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.881584, 41.739521, 38.782627>,  <32.565166, 41.955540, 38.993355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.881584, 41.739521, 38.782627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.836069, 42.111198, 38.923283>,  <31.808760, 42.334206, 39.007675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.836069, 42.111198, 38.923283>,  <31.881584, 41.739521, 38.782627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836069, 42.111198, 38.923283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464702, 0.263057, -0.845490,
		-0.878126, -0.259614, 0.401865,
		-0.113788, 0.929194, 0.351640,
		31.801933, 42.389957, 39.028774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.162832, 41.868038, 38.697247>,  <31.881584, 41.739521, 38.782627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.162832, 41.868038, 38.697247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.350376, 42.221272, 38.704498>,  <31.462902, 42.433212, 38.708851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.350376, 42.221272, 38.704498>,  <31.162832, 41.868038, 38.697247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.350376, 42.221272, 38.704498> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571190, 0.318789, -0.756383,
		-0.673732, 0.344281, 0.653878,
		0.468857, 0.883088, 0.018129,
		31.491034, 42.486198, 38.709938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.571871, 42.306072, 38.596306>,  <31.162832, 41.868038, 38.697247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.571871, 42.306072, 38.596306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.883451, 42.540825, 38.507938>,  <31.070400, 42.681675, 38.454918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.883451, 42.540825, 38.507938>,  <30.571871, 42.306072, 38.596306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.883451, 42.540825, 38.507938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484738, 0.340035, -0.805856,
		-0.397822, 0.734811, 0.549355,
		0.778952, 0.586881, -0.220918,
		31.117138, 42.716888, 38.441662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.304571, 42.877666, 38.386890>,  <30.571871, 42.306072, 38.596306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.304571, 42.877666, 38.386890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.675150, 42.907108, 38.239227>,  <30.897497, 42.924774, 38.150631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.675150, 42.907108, 38.239227>,  <30.304571, 42.877666, 38.386890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.675150, 42.907108, 38.239227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366605, 0.398962, -0.840494,
		0.085419, 0.914009, 0.396600,
		0.926447, 0.073602, -0.369159,
		30.953085, 42.929188, 38.128479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303192, 43.537453, 38.006344>,  <30.304571, 42.877666, 38.386890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.303192, 43.537453, 38.006344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.621744, 43.339909, 37.866699>,  <30.812876, 43.221382, 37.782913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.621744, 43.339909, 37.866699>,  <30.303192, 43.537453, 38.006344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.621744, 43.339909, 37.866699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202692, 0.325917, -0.923414,
		0.569821, 0.806150, 0.159452,
		0.796379, -0.493862, -0.349115,
		30.860659, 43.191750, 37.761963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.657700, 43.981445, 37.565750>,  <30.303192, 43.537453, 38.006344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.657700, 43.981445, 37.565750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.799849, 43.636005, 37.422691>,  <30.885138, 43.428741, 37.336857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.799849, 43.636005, 37.422691>,  <30.657700, 43.981445, 37.565750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.799849, 43.636005, 37.422691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149960, 0.324989, -0.933753,
		0.922616, 0.385464, -0.014012,
		0.355374, -0.863597, -0.357644,
		30.906462, 43.376926, 37.315399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.180822, 44.152012, 37.037807>,  <30.657700, 43.981445, 37.565750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.180822, 44.152012, 37.037807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.069912, 43.778145, 36.948807>,  <31.003365, 43.553825, 36.895405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.069912, 43.778145, 36.948807>,  <31.180822, 44.152012, 37.037807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.069912, 43.778145, 36.948807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128184, 0.265501, -0.955551,
		0.952201, -0.236431, -0.193428,
		-0.277277, -0.934671, -0.222503,
		30.986729, 43.497742, 36.882057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.541788, 44.006165, 36.378696>,  <31.180822, 44.152012, 37.037807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.541788, 44.006165, 36.378696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.254314, 43.728653, 36.397327>,  <31.081831, 43.562145, 36.408508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.254314, 43.728653, 36.397327>,  <31.541788, 44.006165, 36.378696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.254314, 43.728653, 36.397327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126500, 0.064580, -0.989862,
		0.683735, -0.717289, -0.134175,
		-0.718682, -0.693777, 0.046582,
		31.038710, 43.520519, 36.411301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.654716, 43.512218, 35.850933>,  <31.541788, 44.006165, 36.378696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.654716, 43.512218, 35.850933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.271767, 43.432396, 35.934467>,  <31.041996, 43.384502, 35.984589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.271767, 43.432396, 35.934467>,  <31.654716, 43.512218, 35.850933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.271767, 43.432396, 35.934467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188227, -0.117404, -0.975083,
		0.219102, -0.972828, 0.074838,
		-0.957374, -0.199556, 0.208836,
		30.984554, 43.372528, 35.997120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.499126, 42.840141, 35.572746>,  <31.654716, 43.512218, 35.850933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.499126, 42.840141, 35.572746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.154690, 43.040466, 35.607864>,  <30.948029, 43.160664, 35.628937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.154690, 43.040466, 35.607864>,  <31.499126, 42.840141, 35.572746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.154690, 43.040466, 35.607864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167955, -0.117191, -0.978804,
		-0.479911, -0.857584, 0.185026,
		-0.861090, 0.500815, 0.087794,
		30.896362, 43.190712, 35.634201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.108133, 42.463898, 35.126392>,  <31.499126, 42.840141, 35.572746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.108133, 42.463898, 35.126392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.918139, 42.808460, 35.198357>,  <30.804142, 43.015198, 35.241535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.918139, 42.808460, 35.198357>,  <31.108133, 42.463898, 35.126392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.918139, 42.808460, 35.198357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192913, 0.097550, -0.976355,
		-0.858588, -0.498463, 0.119841,
		-0.474986, 0.861405, 0.179915,
		30.775642, 43.066883, 35.252331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.518015, 42.493977, 34.714138>,  <31.108133, 42.463898, 35.126392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.518015, 42.493977, 34.714138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.563742, 42.885670, 34.781105>,  <30.591179, 43.120686, 34.821285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.563742, 42.885670, 34.781105>,  <30.518015, 42.493977, 34.714138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.563742, 42.885670, 34.781105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187903, 0.186798, -0.964261,
		-0.975512, 0.078773, 0.205355,
		0.114318, 0.979235, 0.167422,
		30.598038, 43.179440, 34.831333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.027418, 42.752457, 34.247280>,  <30.518015, 42.493977, 34.714138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.027418, 42.752457, 34.247280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.288616, 43.046520, 34.320099>,  <30.445335, 43.222958, 34.363792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.288616, 43.046520, 34.320099>,  <30.027418, 42.752457, 34.247280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.288616, 43.046520, 34.320099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024493, 0.219749, -0.975249,
		-0.756965, 0.641292, 0.125489,
		0.652996, 0.735156, 0.182050,
		30.484514, 43.267067, 34.374714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.292231, 42.560638, 34.418228>,  <30.027418, 42.752457, 34.247280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.292231, 42.560638, 34.418228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.004093, 42.349098, 34.238708>,  <28.831211, 42.222172, 34.130997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.004093, 42.349098, 34.238708>,  <29.292231, 42.560638, 34.418228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.004093, 42.349098, 34.238708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058613, -0.691136, 0.720344,
		-0.691136, 0.492590, 0.528853,
		-0.720344, -0.528853, -0.448797,
		28.787991, 42.190441, 34.104069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.722935, 42.513096, 34.866833>,  <29.292231, 42.560638, 34.418228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.722935, 42.513096, 34.866833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.695646, 42.200542, 34.618710>,  <28.679274, 42.013012, 34.469833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.695646, 42.200542, 34.618710>,  <28.722935, 42.513096, 34.866833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.695646, 42.200542, 34.618710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101364, -0.623971, 0.774846,
		-0.992508, -0.010016, 0.121772,
		-0.068222, -0.781383, -0.620311,
		28.675180, 41.966129, 34.432617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.232058, 42.164612, 35.188908>,  <28.722935, 42.513096, 34.866833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.232058, 42.164612, 35.188908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.435873, 41.917450, 34.949387>,  <28.558163, 41.769154, 34.805676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.435873, 41.917450, 34.949387>,  <28.232058, 42.164612, 35.188908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.435873, 41.917450, 34.949387> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059721, -0.719638, 0.691777,
		-0.858373, -0.316726, -0.403585,
		0.509538, -0.617905, -0.598803,
		28.588734, 41.732079, 34.769745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.858116, 41.555614, 35.235844>,  <28.232058, 42.164612, 35.188908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.858116, 41.555614, 35.235844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.212696, 41.436855, 35.093822>,  <28.425444, 41.365601, 35.008610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.212696, 41.436855, 35.093822>,  <27.858116, 41.555614, 35.235844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.212696, 41.436855, 35.093822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039061, -0.812393, 0.581801,
		-0.461177, -0.501868, -0.731741,
		0.886448, -0.296895, -0.355053,
		28.478630, 41.347786, 34.987305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.862488, 40.711349, 35.336586>,  <27.858116, 41.555614, 35.235844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.862488, 40.711349, 35.336586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.245573, 40.789661, 35.252251>,  <28.475426, 40.836647, 35.201649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.245573, 40.789661, 35.252251>,  <27.862488, 40.711349, 35.336586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.245573, 40.789661, 35.252251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287706, -0.645181, 0.707790,
		0.002540, -0.738521, -0.674226,
		0.957715, 0.195777, -0.210838,
		28.532888, 40.848392, 35.188999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.226942, 40.029350, 35.226616>,  <27.862488, 40.711349, 35.336586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.226942, 40.029350, 35.226616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.507990, 40.301167, 35.311047>,  <28.676619, 40.464256, 35.361706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.507990, 40.301167, 35.311047>,  <28.226942, 40.029350, 35.226616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.507990, 40.301167, 35.311047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300952, -0.552594, 0.777218,
		0.644790, -0.482564, -0.592772,
		0.702619, 0.679538, 0.211078,
		28.718775, 40.505028, 35.374371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.829147, 39.663975, 35.282139>,  <28.226942, 40.029350, 35.226616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.829147, 39.663975, 35.282139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.851484, 39.990387, 35.512260>,  <28.864887, 40.186234, 35.650333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.851484, 39.990387, 35.512260>,  <28.829147, 39.663975, 35.282139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.851484, 39.990387, 35.512260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358451, -0.554176, 0.751267,
		0.931877, 0.164264, -0.323454,
		0.055844, 0.816031, 0.575304,
		28.868238, 40.235195, 35.684853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.525539, 39.639580, 35.642609>,  <28.829147, 39.663975, 35.282139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.525539, 39.639580, 35.642609> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.345970, 39.905884, 35.881012>,  <29.238228, 40.065666, 36.024055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.345970, 39.905884, 35.881012>,  <29.525539, 39.639580, 35.642609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.345970, 39.905884, 35.881012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324784, -0.499808, 0.802937,
		0.832455, 0.554032, 0.008147,
		-0.448925, 0.665763, 0.596009,
		29.211292, 40.105614, 36.059814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.035269, 39.792957, 36.209724>,  <29.525539, 39.639580, 35.642609>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.035269, 39.792957, 36.209724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.682806, 39.903893, 36.362904>,  <29.471329, 39.970455, 36.454811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.682806, 39.903893, 36.362904>,  <30.035269, 39.792957, 36.209724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.682806, 39.903893, 36.362904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225163, -0.466055, 0.855625,
		0.415771, 0.840164, 0.348221,
		-0.881156, 0.277338, 0.382946,
		29.418459, 39.987095, 36.477787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.186050, 40.006535, 36.802666>,  <30.035269, 39.792957, 36.209724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.186050, 40.006535, 36.802666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.795200, 39.934372, 36.847702>,  <29.560690, 39.891075, 36.874725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.795200, 39.934372, 36.847702>,  <30.186050, 40.006535, 36.802666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.795200, 39.934372, 36.847702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179020, -0.412018, 0.893416,
		-0.114788, 0.893137, 0.434891,
		-0.977126, -0.180408, 0.112595,
		29.502062, 39.880249, 36.881481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.001064, 40.191475, 37.477409>,  <30.186050, 40.006535, 36.802666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.001064, 40.191475, 37.477409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.698503, 39.957600, 37.360111>,  <29.516968, 39.817272, 37.289734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.698503, 39.957600, 37.360111>,  <30.001064, 40.191475, 37.477409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.698503, 39.957600, 37.360111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026733, -0.420300, 0.906991,
		-0.653560, 0.693890, 0.302285,
		-0.756402, -0.584692, -0.293242,
		29.471582, 39.782192, 37.272141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.537292, 40.286182, 38.042759>,  <30.001064, 40.191475, 37.477409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.537292, 40.286182, 38.042759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.415741, 39.953686, 37.856556>,  <29.342810, 39.754189, 37.744835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.415741, 39.953686, 37.856556>,  <29.537292, 40.286182, 38.042759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.415741, 39.953686, 37.856556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079311, -0.464847, 0.881832,
		-0.949403, 0.304892, 0.075332,
		-0.303881, -0.831239, -0.465509,
		29.324577, 39.704315, 37.716904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<28.472759, 44.753166, 31.005402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.462925, 44.360188, 30.931437>,  <28.457024, 44.124401, 30.887058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.462925, 44.360188, 30.931437>,  <28.472759, 44.753166, 31.005402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.462925, 44.360188, 30.931437> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341320, -0.165604, 0.925244,
		-0.939625, 0.085865, -0.331257,
		-0.024588, -0.982447, -0.184913,
		28.455549, 44.065453, 30.875963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.012638, 44.493076, 31.430929>,  <28.472759, 44.753166, 31.005402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.012638, 44.493076, 31.430929> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.215174, 44.161430, 31.336111>,  <28.336695, 43.962444, 31.279221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.215174, 44.161430, 31.336111>,  <28.012638, 44.493076, 31.430929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.215174, 44.161430, 31.336111> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148059, -0.354395, 0.923300,
		-0.849530, -0.432404, -0.302201,
		0.506337, -0.829115, -0.237048,
		28.367075, 43.912697, 31.264997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.576542, 43.972435, 31.733459>,  <28.012638, 44.493076, 31.430929>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.576542, 43.972435, 31.733459> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.949291, 43.836899, 31.681618>,  <28.172941, 43.755577, 31.650513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.949291, 43.836899, 31.681618>,  <27.576542, 43.972435, 31.733459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.949291, 43.836899, 31.681618> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045372, -0.463307, 0.885035,
		-0.359932, -0.818861, -0.447118,
		0.931875, -0.338839, -0.129605,
		28.228853, 43.735249, 31.642736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.494930, 43.385479, 32.084446>,  <27.576542, 43.972435, 31.733459>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.494930, 43.385479, 32.084446> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.891880, 43.414436, 32.044544>,  <28.130051, 43.431812, 32.020603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.891880, 43.414436, 32.044544>,  <27.494930, 43.385479, 32.084446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.891880, 43.414436, 32.044544> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122213, -0.472897, 0.872601,
		0.016002, -0.878138, -0.478139,
		0.992375, 0.072398, -0.099753,
		28.189592, 43.436157, 32.014618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.567114, 42.763294, 32.223103>,  <27.494930, 43.385479, 32.084446>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.567114, 42.763294, 32.223103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.910507, 42.964180, 32.264656>,  <28.116543, 43.084709, 32.289589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.910507, 42.964180, 32.264656>,  <27.567114, 42.763294, 32.223103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.910507, 42.964180, 32.264656> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256809, -0.596320, 0.760560,
		0.443911, -0.626249, -0.640902,
		0.858483, 0.502211, 0.103887,
		28.168053, 43.114841, 32.295822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.076080, 42.293476, 32.207020>,  <27.567114, 42.763294, 32.223103>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.076080, 42.293476, 32.207020> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.226959, 42.611919, 32.396309>,  <28.317486, 42.802986, 32.509884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.226959, 42.611919, 32.396309>,  <28.076080, 42.293476, 32.207020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.226959, 42.611919, 32.396309> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160380, -0.559396, 0.813237,
		0.912141, -0.230853, -0.338681,
		0.377195, 0.796105, 0.473224,
		28.340118, 42.850750, 32.538277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.693043, 41.947510, 32.556889>,  <28.076080, 42.293476, 32.207020>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.693043, 41.947510, 32.556889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.627756, 42.294468, 32.744926>,  <28.588585, 42.502644, 32.857750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.627756, 42.294468, 32.744926>,  <28.693043, 41.947510, 32.556889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.627756, 42.294468, 32.744926> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164711, -0.445838, 0.879829,
		0.972744, 0.221032, -0.070102,
		-0.163216, 0.867395, 0.470092,
		28.578791, 42.554688, 32.885956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.339003, 42.027149, 32.994869>,  <28.693043, 41.947510, 32.556889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.339003, 42.027149, 32.994869> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.027252, 42.243328, 33.121670>,  <28.840202, 42.373035, 33.197750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.027252, 42.243328, 33.121670>,  <29.339003, 42.027149, 32.994869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.027252, 42.243328, 33.121670> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191999, -0.275599, 0.941903,
		0.596413, 0.794962, 0.111031,
		-0.779377, 0.540445, 0.317003,
		28.793440, 42.405460, 33.216770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.530064, 42.391464, 33.634075>,  <29.339003, 42.027149, 32.994869>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.530064, 42.391464, 33.634075> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.130220, 42.380516, 33.636578>,  <28.890314, 42.373947, 33.638081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.130220, 42.380516, 33.636578>,  <29.530064, 42.391464, 33.634075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.130220, 42.380516, 33.636578> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016733, -0.401781, 0.915583,
		-0.022545, 0.915327, 0.402080,
		-0.999606, -0.027370, 0.006258,
		28.830339, 42.372307, 33.638454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.666056, 43.205494, 33.766441>,  <29.530064, 42.391464, 33.634075>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.666056, 43.205494, 33.766441> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.020926, 43.375980, 33.837162>,  <30.233849, 43.478271, 33.879597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.020926, 43.375980, 33.837162>,  <29.666056, 43.205494, 33.766441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.020926, 43.375980, 33.837162> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076865, 0.241305, -0.967401,
		-0.454984, 0.871845, 0.181319,
		0.887176, 0.426215, 0.176804,
		30.287079, 43.503845, 33.890202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.765005, 43.951012, 33.460079>,  <29.666056, 43.205494, 33.766441>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.765005, 43.951012, 33.460079> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.127897, 43.789803, 33.508263>,  <30.345633, 43.693077, 33.537170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.127897, 43.789803, 33.508263>,  <29.765005, 43.951012, 33.460079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.127897, 43.789803, 33.508263> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233364, 0.243985, -0.941283,
		0.349967, 0.882069, 0.315400,
		0.907229, -0.403021, 0.120456,
		30.400066, 43.668896, 33.544399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.174540, 44.405766, 33.148663>,  <29.765005, 43.951012, 33.460079>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.174540, 44.405766, 33.148663> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.404816, 44.079716, 33.174435>,  <30.542982, 43.884087, 33.189899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.404816, 44.079716, 33.174435>,  <30.174540, 44.405766, 33.148663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.404816, 44.079716, 33.174435> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422393, 0.228999, -0.877008,
		0.700118, 0.532099, 0.476136,
		0.575690, -0.815126, 0.064429,
		30.577522, 43.835178, 33.193764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.733463, 44.625637, 32.787163>,  <30.174540, 44.405766, 33.148663>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.733463, 44.625637, 32.787163> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.812323, 44.234043, 32.766304>,  <30.859638, 43.999088, 32.753788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.812323, 44.234043, 32.766304>,  <30.733463, 44.625637, 32.787163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.812323, 44.234043, 32.766304> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398050, 0.128543, -0.908313,
		0.895929, 0.158315, 0.415028,
		0.197149, -0.978986, -0.052148,
		30.871468, 43.940346, 32.750660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.443668, 44.541729, 32.547405>,  <30.733463, 44.625637, 32.787163>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.443668, 44.541729, 32.547405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.284704, 44.181606, 32.476402>,  <31.189325, 43.965530, 32.433800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.284704, 44.181606, 32.476402>,  <31.443668, 44.541729, 32.547405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.284704, 44.181606, 32.476402> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430045, -0.011848, -0.902730,
		0.810632, -0.435091, 0.391882,
		-0.397413, -0.900309, -0.177504,
		31.165480, 43.911514, 32.423153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.944897, 44.179314, 32.231331>,  <31.443668, 44.541729, 32.547405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.944897, 44.179314, 32.231331> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.595808, 44.000320, 32.153236>,  <31.386354, 43.892925, 32.106380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.595808, 44.000320, 32.153236>,  <31.944897, 44.179314, 32.231331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.595808, 44.000320, 32.153236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213699, 0.009420, -0.976854,
		0.438966, -0.894242, 0.087406,
		-0.872721, -0.447485, -0.195233,
		31.333992, 43.866074, 32.094666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154461, 43.695591, 31.902905>,  <31.944897, 44.179314, 32.231331>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154461, 43.695591, 31.902905> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.778179, 43.750134, 31.778662>,  <31.552410, 43.782860, 31.704115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.778179, 43.750134, 31.778662>,  <32.154461, 43.695591, 31.902905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.778179, 43.750134, 31.778662> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336219, 0.253241, -0.907098,
		-0.045031, -0.957745, -0.284071,
		-0.940707, 0.136357, -0.310609,
		31.495968, 43.791042, 31.685478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118023, 43.365345, 31.211309>,  <32.154461, 43.695591, 31.902905>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118023, 43.365345, 31.211309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.776468, 43.572018, 31.236361>,  <31.571537, 43.696022, 31.251390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.776468, 43.572018, 31.236361>,  <32.118023, 43.365345, 31.211309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.776468, 43.572018, 31.236361> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062431, 0.221139, -0.973242,
		-0.516707, -0.827125, -0.221084,
		-0.853883, 0.516684, 0.062626,
		31.520304, 43.727024, 31.255148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672489, 43.141178, 30.718204>,  <32.118023, 43.365345, 31.211309>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672489, 43.141178, 30.718204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.564255, 43.522938, 30.768646>,  <31.499313, 43.751995, 30.798912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.564255, 43.522938, 30.768646>,  <31.672489, 43.141178, 30.718204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.564255, 43.522938, 30.768646> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076182, 0.151810, -0.985469,
		-0.959676, -0.257049, -0.113786,
		-0.270588, 0.954400, 0.126105,
		31.483078, 43.809258, 30.806479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302280, 43.277615, 30.128010>,  <31.672489, 43.141178, 30.718204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302280, 43.277615, 30.128010> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.414557, 43.625786, 30.289782>,  <31.481922, 43.834690, 30.386845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.414557, 43.625786, 30.289782>,  <31.302280, 43.277615, 30.128010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.414557, 43.625786, 30.289782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169888, 0.369661, -0.913504,
		-0.944644, 0.325119, -0.044115,
		0.280689, 0.870430, 0.404432,
		31.498764, 43.886913, 30.411112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.083950, 43.747425, 29.645107>,  <31.302280, 43.277615, 30.128010>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.083950, 43.747425, 29.645107> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.330618, 43.984398, 29.852470>,  <31.478619, 44.126579, 29.976889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.330618, 43.984398, 29.852470>,  <31.083950, 43.747425, 29.645107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.330618, 43.984398, 29.852470> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281109, 0.449395, -0.847951,
		-0.735321, 0.668635, 0.110591,
		0.616669, 0.592429, 0.518409,
		31.515619, 44.162125, 30.007994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.034792, 44.333237, 29.362608>,  <31.083950, 43.747425, 29.645107>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.034792, 44.333237, 29.362608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380371, 44.390793, 29.555643>,  <31.587719, 44.425327, 29.671465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380371, 44.390793, 29.555643>,  <31.034792, 44.333237, 29.362608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.380371, 44.390793, 29.555643> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461988, 0.154914, -0.873252,
		-0.200408, 0.977394, 0.067364,
		0.863946, 0.143886, 0.482590,
		31.639555, 44.433960, 29.700420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.250559, 44.956379, 29.068516>,  <31.034792, 44.333237, 29.362608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.250559, 44.956379, 29.068516> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575493, 44.773045, 29.212759>,  <31.770454, 44.663044, 29.299305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575493, 44.773045, 29.212759>,  <31.250559, 44.956379, 29.068516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.575493, 44.773045, 29.212759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414598, 0.019000, -0.909806,
		0.410145, 0.888576, 0.205459,
		0.812336, -0.458335, 0.360609,
		31.819193, 44.635544, 29.320942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.785267, 45.458771, 28.940147>,  <31.250559, 44.956379, 29.068516>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.785267, 45.458771, 28.940147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945606, 45.093063, 28.963591>,  <32.041809, 44.873638, 28.977655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945606, 45.093063, 28.963591>,  <31.785267, 45.458771, 28.940147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.945606, 45.093063, 28.963591> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447250, 0.139458, -0.883470,
		0.799555, 0.380349, 0.464808,
		0.400848, -0.914268, 0.058607,
		32.065861, 44.818783, 28.981173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.085606, 38.900223, 26.810001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.937468, 39.247314, 26.942602>,  <29.848585, 39.455570, 27.022163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.937468, 39.247314, 26.942602>,  <30.085606, 38.900223, 26.810001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.937468, 39.247314, 26.942602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064382, -0.380000, 0.922743,
		0.926661, 0.320390, 0.196597,
		-0.370344, 0.867727, 0.331504,
		29.826365, 39.507633, 27.042053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.452505, 39.042912, 27.394621>,  <30.085606, 38.900223, 26.810001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.452505, 39.042912, 27.394621> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.127140, 39.267750, 27.454500>,  <29.931921, 39.402653, 27.490427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.127140, 39.267750, 27.454500>,  <30.452505, 39.042912, 27.394621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.127140, 39.267750, 27.454500> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060714, -0.173905, 0.982889,
		0.578511, 0.808583, 0.107329,
		-0.813412, 0.562095, 0.149698,
		29.883116, 39.436378, 27.499409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.722187, 39.538921, 27.837421>,  <30.452505, 39.042912, 27.394621>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.722187, 39.538921, 27.837421> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.324389, 39.560349, 27.873449>,  <30.085711, 39.573204, 27.895065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.324389, 39.560349, 27.873449>,  <30.722187, 39.538921, 27.837421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.324389, 39.560349, 27.873449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077782, -0.198673, 0.976974,
		0.070225, 0.978601, 0.193412,
		-0.994494, 0.053564, 0.090070,
		30.026041, 39.576416, 27.900471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616428, 40.057594, 28.403948>,  <30.722187, 39.538921, 27.837421>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616428, 40.057594, 28.403948> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.305927, 39.808178, 28.366800>,  <30.119627, 39.658527, 28.344513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.305927, 39.808178, 28.366800>,  <30.616428, 40.057594, 28.403948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.305927, 39.808178, 28.366800> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122811, -0.294059, 0.947864,
		-0.618343, 0.724377, 0.304843,
		-0.776253, -0.623544, -0.092868,
		30.073051, 39.621117, 28.338940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.257496, 40.167130, 28.999763>,  <30.616428, 40.057594, 28.403948>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.257496, 40.167130, 28.999763> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.105396, 39.817734, 28.878153>,  <30.014137, 39.608097, 28.805187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.105396, 39.817734, 28.878153>,  <30.257496, 40.167130, 28.999763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.105396, 39.817734, 28.878153> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100200, -0.287876, 0.952411,
		-0.919440, 0.392618, 0.021941,
		-0.380250, -0.873486, -0.304025,
		29.991322, 39.555687, 28.786945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.684458, 40.090485, 29.413803>,  <30.257496, 40.167130, 28.999763>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.684458, 40.090485, 29.413803> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.805992, 39.725780, 29.303261>,  <29.878912, 39.506958, 29.236937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.805992, 39.725780, 29.303261>,  <29.684458, 40.090485, 29.413803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.805992, 39.725780, 29.303261> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043022, -0.302901, 0.952050,
		-0.951753, -0.277376, -0.131258,
		0.303834, -0.911764, -0.276354,
		29.897142, 39.452251, 29.220354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.375673, 39.678429, 29.872969>,  <29.684458, 40.090485, 29.413803>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.375673, 39.678429, 29.872969> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.597786, 39.392040, 29.703712>,  <29.731054, 39.220207, 29.602160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.597786, 39.392040, 29.703712>,  <29.375673, 39.678429, 29.872969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.597786, 39.392040, 29.703712> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123424, -0.432210, 0.893287,
		-0.822453, -0.548251, -0.151629,
		0.555281, -0.715972, -0.423140,
		29.764370, 39.177250, 29.576771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.157980, 39.015793, 30.125336>,  <29.375673, 39.678429, 29.872969>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.157980, 39.015793, 30.125336> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.540794, 38.980488, 30.014849>,  <29.770483, 38.959305, 29.948557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.540794, 38.980488, 30.014849>,  <29.157980, 39.015793, 30.125336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.540794, 38.980488, 30.014849> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244814, -0.264594, 0.932768,
		-0.155408, -0.960313, -0.231619,
		0.957034, -0.088256, -0.276219,
		29.827904, 38.954010, 29.931984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.304251, 38.384838, 30.394175>,  <29.157980, 39.015793, 30.125336>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.304251, 38.384838, 30.394175> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.647869, 38.576748, 30.322779>,  <29.854040, 38.691895, 30.279942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.647869, 38.576748, 30.322779>,  <29.304251, 38.384838, 30.394175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.647869, 38.576748, 30.322779> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382921, -0.370871, 0.846065,
		0.339722, -0.795157, -0.502310,
		0.859046, 0.479771, -0.178489,
		29.905582, 38.720680, 30.269232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.729679, 37.883274, 30.518709>,  <29.304251, 38.384838, 30.394175>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.729679, 37.883274, 30.518709> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.961126, 38.209511, 30.519865>,  <30.099995, 38.405254, 30.520559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.961126, 38.209511, 30.519865>,  <29.729679, 37.883274, 30.518709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.961126, 38.209511, 30.519865> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552249, -0.394393, 0.734490,
		0.600186, -0.423392, -0.678614,
		0.578617, 0.815594, 0.002891,
		30.134712, 38.454189, 30.520733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.532116, 37.708618, 30.496796>,  <29.729679, 37.883274, 30.518709>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.532116, 37.708618, 30.496796> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.489012, 38.063934, 30.675381>,  <30.463150, 38.277122, 30.782532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.489012, 38.063934, 30.675381>,  <30.532116, 37.708618, 30.496796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.489012, 38.063934, 30.675381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523835, -0.330949, 0.784901,
		0.844976, 0.318453, -0.429654,
		-0.107761, 0.888291, 0.446461,
		30.456684, 38.330421, 30.809319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.040184, 37.778751, 30.877731>,  <30.532116, 37.708618, 30.496796>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.040184, 37.778751, 30.877731> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.856556, 38.088326, 31.052217>,  <30.746380, 38.274071, 31.156910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.856556, 38.088326, 31.052217>,  <31.040184, 37.778751, 30.877731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.856556, 38.088326, 31.052217> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425498, -0.239492, 0.872694,
		0.779876, 0.586236, -0.219363,
		-0.459069, 0.773932, 0.436216,
		30.718836, 38.320507, 31.183083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.579777, 38.175838, 31.202703>,  <31.040184, 37.778751, 30.877731>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.579777, 38.175838, 31.202703> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.220388, 38.243011, 31.364960>,  <31.004755, 38.283318, 31.462315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.220388, 38.243011, 31.364960>,  <31.579777, 38.175838, 31.202703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.220388, 38.243011, 31.364960> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371170, -0.202912, 0.906123,
		0.234480, 0.964689, 0.119978,
		-0.898472, 0.167936, 0.405642,
		30.950848, 38.293392, 31.486652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.686832, 38.513306, 31.917393>,  <31.579777, 38.175838, 31.202703>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.686832, 38.513306, 31.917393> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.317579, 38.364323, 31.955549>,  <31.096027, 38.274933, 31.978443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.317579, 38.364323, 31.955549>,  <31.686832, 38.513306, 31.917393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.317579, 38.364323, 31.955549> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173913, -0.183241, 0.967562,
		-0.342896, 0.909779, 0.233931,
		-0.923134, -0.372457, 0.095390,
		31.040640, 38.252586, 31.984167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882662, 39.296604, 32.107521>,  <31.686832, 38.513306, 31.917393>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882662, 39.296604, 32.107521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.207054, 39.477974, 32.255424>,  <32.401691, 39.586796, 32.344166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.207054, 39.477974, 32.255424>,  <31.882662, 39.296604, 32.107521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.207054, 39.477974, 32.255424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300014, 0.220286, -0.928152,
		-0.502294, 0.863646, 0.042615,
		0.810982, 0.453420, 0.369754,
		32.450348, 39.613998, 32.366352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844889, 39.992161, 31.890064>,  <31.882662, 39.296604, 32.107521>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.844889, 39.992161, 31.890064> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.229664, 39.901520, 31.951155>,  <32.460529, 39.847137, 31.987808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.229664, 39.901520, 31.951155>,  <31.844889, 39.992161, 31.890064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.229664, 39.901520, 31.951155> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207773, 0.243492, -0.947387,
		0.177490, 0.943061, 0.281306,
		0.961940, -0.226600, 0.152725,
		32.518246, 39.833538, 31.996973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.249886, 40.640388, 31.634802>,  <31.844889, 39.992161, 31.890064>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.249886, 40.640388, 31.634802> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.458755, 40.299454, 31.646458>,  <32.584080, 40.094894, 31.653450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.458755, 40.299454, 31.646458>,  <32.249886, 40.640388, 31.634802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458755, 40.299454, 31.646458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228692, 0.107029, -0.967597,
		0.821601, 0.511923, 0.250811,
		0.522179, -0.852338, 0.029138,
		32.615410, 40.043751, 31.655199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.861435, 40.850121, 31.406010>,  <32.249886, 40.640388, 31.634802>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.861435, 40.850121, 31.406010> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.902771, 40.452976, 31.382198>,  <32.927570, 40.214687, 31.367912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.902771, 40.452976, 31.382198>,  <32.861435, 40.850121, 31.406010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902771, 40.452976, 31.382198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240111, 0.082979, -0.967192,
		0.965230, 0.085653, 0.246972,
		0.103337, -0.992863, -0.059528,
		32.933773, 40.155117, 31.364340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542442, 40.704876, 31.223621>,  <32.861435, 40.850121, 31.406010>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542442, 40.704876, 31.223621> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.339626, 40.375786, 31.120832>,  <33.217937, 40.178333, 31.059158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.339626, 40.375786, 31.120832>,  <33.542442, 40.704876, 31.223621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.339626, 40.375786, 31.120832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339834, 0.083168, -0.936801,
		0.792101, -0.562324, 0.237420,
		-0.507040, -0.822724, -0.256974,
		33.187515, 40.128967, 31.043741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016174, 40.193535, 30.848869>,  <33.542442, 40.704876, 31.223621>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016174, 40.193535, 30.848869> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.641525, 40.116615, 30.731726>,  <33.416737, 40.070465, 30.661440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.641525, 40.116615, 30.731726>,  <34.016174, 40.193535, 30.848869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.641525, 40.116615, 30.731726> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255485, 0.197107, -0.946507,
		0.239737, -0.961338, -0.135485,
		-0.936618, -0.192299, -0.292861,
		33.360538, 40.058926, 30.643867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029060, 39.859104, 30.142157>,  <34.016174, 40.193535, 30.848869>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029060, 39.859104, 30.142157> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.640423, 39.953758, 30.143421>,  <33.407242, 40.010551, 30.144180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.640423, 39.953758, 30.143421>,  <34.029060, 39.859104, 30.142157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640423, 39.953758, 30.143421> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011008, -0.031849, -0.999432,
		-0.236397, -0.971077, 0.033549,
		-0.971594, 0.236632, 0.003160,
		33.348946, 40.024746, 30.144369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623680, 39.340408, 29.655497>,  <34.029060, 39.859104, 30.142157>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623680, 39.340408, 29.655497> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.381958, 39.655766, 29.701548>,  <33.236923, 39.844978, 29.729177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.381958, 39.655766, 29.701548>,  <33.623680, 39.340408, 29.655497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381958, 39.655766, 29.701548> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065192, 0.095084, -0.993332,
		-0.794079, -0.607785, -0.006063,
		-0.604309, 0.788389, 0.115127,
		33.200665, 39.892281, 29.736086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973240, 39.326595, 29.226665>,  <33.623680, 39.340408, 29.655497>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973240, 39.326595, 29.226665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.032047, 39.713657, 29.308678>,  <33.067329, 39.945892, 29.357885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.032047, 39.713657, 29.308678>,  <32.973240, 39.326595, 29.226665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032047, 39.713657, 29.308678> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104958, 0.221375, -0.969524,
		-0.983550, 0.121014, 0.134108,
		0.147014, 0.967651, 0.205032,
		33.076153, 40.003952, 29.370188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496090, 39.712166, 28.753658>,  <32.973240, 39.326595, 29.226665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496090, 39.712166, 28.753658> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.776539, 39.972187, 28.870867>,  <32.944809, 40.128201, 28.941191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.776539, 39.972187, 28.870867>,  <32.496090, 39.712166, 28.753658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776539, 39.972187, 28.870867> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020134, 0.392732, -0.919433,
		-0.712757, 0.650533, 0.262265,
		0.701121, 0.650052, 0.293020,
		32.986874, 40.167202, 28.958773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.307377, 40.393482, 28.651018>,  <32.496090, 39.712166, 28.753658>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.307377, 40.393482, 28.651018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.706661, 40.404015, 28.629564>,  <32.946232, 40.410332, 28.616692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.706661, 40.404015, 28.629564>,  <32.307377, 40.393482, 28.651018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706661, 40.404015, 28.629564> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059726, 0.464389, -0.883615,
		0.001644, 0.885239, 0.465132,
		0.998213, 0.026328, -0.053636,
		33.006126, 40.411911, 28.613474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.480190, 40.990070, 28.494308>,  <32.307377, 40.393482, 28.651018>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.480190, 40.990070, 28.494308> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.819397, 40.808876, 28.384272>,  <33.022923, 40.700161, 28.318249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.819397, 40.808876, 28.384272>,  <32.480190, 40.990070, 28.494308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.819397, 40.808876, 28.384272> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050345, 0.447870, -0.892680,
		0.527574, 0.770857, 0.356996,
		0.848016, -0.452982, -0.275093,
		33.073803, 40.672981, 28.301744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011253, 41.526745, 28.245382>,  <32.480190, 40.990070, 28.494308>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011253, 41.526745, 28.245382> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.082512, 41.175728, 28.067312>,  <33.125267, 40.965118, 27.960470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.082512, 41.175728, 28.067312>,  <33.011253, 41.526745, 28.245382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.082512, 41.175728, 28.067312> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046997, 0.444309, -0.894640,
		0.982881, 0.180298, 0.037910,
		0.178146, -0.877543, -0.445177,
		33.135956, 40.912464, 27.933760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616417, 41.652367, 27.862064>,  <33.011253, 41.526745, 28.245382>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616417, 41.652367, 27.862064> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.428722, 41.345364, 27.687363>,  <33.316105, 41.161163, 27.582542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.428722, 41.345364, 27.687363>,  <33.616417, 41.652367, 27.862064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.428722, 41.345364, 27.687363> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068010, 0.461706, -0.884422,
		0.880449, -0.444708, -0.164452,
		-0.469237, -0.767504, -0.436753,
		33.287952, 41.115112, 27.556337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419811, 41.778316, 28.133251>,  <33.616417, 41.652367, 27.862064>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419811, 41.778316, 28.133251> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.509850, 42.166576, 28.167126>,  <34.563873, 42.399532, 28.187450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.509850, 42.166576, 28.167126>,  <34.419811, 41.778316, 28.133251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509850, 42.166576, 28.167126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162285, -0.123052, 0.979041,
		0.960726, -0.206635, -0.185221,
		0.225096, 0.970650, 0.084685,
		34.577377, 42.457771, 28.192532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051479, 41.854900, 28.567131>,  <34.419811, 41.778316, 28.133251>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051479, 41.854900, 28.567131> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.841793, 42.194794, 28.589622>,  <34.715981, 42.398727, 28.603117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.841793, 42.194794, 28.589622>,  <35.051479, 41.854900, 28.567131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841793, 42.194794, 28.589622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024101, -0.051197, 0.998398,
		0.851246, 0.524728, 0.006359,
		-0.524213, 0.849729, 0.056228,
		34.684528, 42.449711, 28.606491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390259, 42.308575, 29.112759>,  <35.051479, 41.854900, 28.567131>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390259, 42.308575, 29.112759> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.011734, 42.432987, 29.077553>,  <34.784618, 42.507637, 29.056429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.011734, 42.432987, 29.077553>,  <35.390259, 42.308575, 29.112759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011734, 42.432987, 29.077553> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045294, 0.142008, 0.988829,
		0.320060, 0.939729, -0.120296,
		-0.946314, 0.311036, -0.088015,
		34.727840, 42.526299, 29.051147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311668, 43.036045, 29.384506>,  <35.390259, 42.308575, 29.112759>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311668, 43.036045, 29.384506> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.961006, 42.843822, 29.393852>,  <34.750610, 42.728489, 29.399460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.961006, 42.843822, 29.393852>,  <35.311668, 43.036045, 29.384506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961006, 42.843822, 29.393852> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055071, 0.148469, 0.987383,
		-0.477964, 0.864303, -0.156620,
		-0.876651, -0.480559, 0.023365,
		34.698009, 42.699654, 29.400862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159771, 43.258083, 29.946712>,  <35.311668, 43.036045, 29.384506>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159771, 43.258083, 29.946712> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.877132, 42.984440, 29.874365>,  <34.707550, 42.820255, 29.830956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.877132, 42.984440, 29.874365>,  <35.159771, 43.258083, 29.946712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877132, 42.984440, 29.874365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119777, -0.136286, 0.983402,
		-0.697402, 0.716536, 0.014359,
		-0.706600, -0.684107, -0.180871,
		34.665154, 42.779209, 29.820103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613693, 43.462284, 30.409683>,  <35.159771, 43.258083, 29.946712>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613693, 43.462284, 30.409683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.531528, 43.083202, 30.311985>,  <34.482231, 42.855751, 30.253366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.531528, 43.083202, 30.311985>,  <34.613693, 43.462284, 30.409683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531528, 43.083202, 30.311985> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031193, -0.243103, 0.969499,
		-0.978179, 0.206763, 0.020374,
		-0.205409, -0.947708, -0.244248,
		34.469906, 42.798889, 30.238710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893940, 43.301079, 30.620113>,  <34.613693, 43.462284, 30.409683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893940, 43.301079, 30.620113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.113930, 42.967693, 30.598692>,  <34.245922, 42.767662, 30.585840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.113930, 42.967693, 30.598692>,  <33.893940, 43.301079, 30.620113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113930, 42.967693, 30.598692> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271959, -0.239345, 0.932069,
		-0.789662, -0.498050, -0.358301,
		0.549975, -0.833462, -0.053552,
		34.278923, 42.717655, 30.582626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.512749, 42.885792, 31.048616>,  <33.893940, 43.301079, 30.620113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.512749, 42.885792, 31.048616> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.871426, 42.711277, 31.018688>,  <34.086632, 42.606567, 31.000732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.871426, 42.711277, 31.018688>,  <33.512749, 42.885792, 31.048616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871426, 42.711277, 31.018688> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156710, -0.470957, 0.868125,
		-0.413986, -0.766717, -0.490674,
		0.896693, -0.436285, -0.074818,
		34.140434, 42.580391, 30.996243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540504, 42.158421, 31.316545>,  <33.512749, 42.885792, 31.048616>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540504, 42.158421, 31.316545> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.927338, 42.260178, 31.319126>,  <34.159435, 42.321232, 31.320675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.927338, 42.260178, 31.319126>,  <33.540504, 42.158421, 31.316545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927338, 42.260178, 31.319126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107599, -0.431752, 0.895552,
		0.230612, -0.865374, -0.444911,
		0.967079, 0.254397, 0.006454,
		34.217461, 42.336498, 31.321062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859550, 41.565502, 31.619471>,  <33.540504, 42.158421, 31.316545>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859550, 41.565502, 31.619471> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.137287, 41.847546, 31.677031>,  <34.303928, 42.016773, 31.711567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.137287, 41.847546, 31.677031>,  <33.859550, 41.565502, 31.619471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137287, 41.847546, 31.677031> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244963, -0.419598, 0.874031,
		0.676668, -0.571628, -0.464071,
		0.694344, 0.705110, 0.143901,
		34.345589, 42.059078, 31.720201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407288, 41.208508, 31.849989>,  <33.859550, 41.565502, 31.619471>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407288, 41.208508, 31.849989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.471157, 41.585052, 31.968878>,  <34.509480, 41.810978, 32.040211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.471157, 41.585052, 31.968878>,  <34.407288, 41.208508, 31.849989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471157, 41.585052, 31.968878> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305426, -0.333420, 0.891934,
		0.938733, -0.051639, -0.340755,
		0.159673, 0.941363, 0.297221,
		34.519058, 41.867462, 32.058044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949978, 41.168583, 32.299469>,  <34.407288, 41.208508, 31.849989>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949978, 41.168583, 32.299469> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.798809, 41.524036, 32.403397>,  <34.708107, 41.737309, 32.465752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.798809, 41.524036, 32.403397>,  <34.949978, 41.168583, 32.299469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798809, 41.524036, 32.403397> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117926, -0.232139, 0.965508,
		0.918296, 0.395528, -0.017061,
		-0.377924, 0.888633, 0.259815,
		34.685432, 41.790627, 32.481342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.310482, 41.287117, 32.867989>,  <34.949978, 41.168583, 32.299469>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.310482, 41.287117, 32.867989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.016941, 41.558136, 32.887550>,  <34.840816, 41.720749, 32.899288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.016941, 41.558136, 32.887550>,  <35.310482, 41.287117, 32.867989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016941, 41.558136, 32.887550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035090, -0.109702, 0.993345,
		0.678405, 0.727250, 0.104281,
		-0.733849, 0.677550, 0.048903,
		34.796787, 41.761402, 32.902222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498619, 41.921978, 33.314667>,  <35.310482, 41.287117, 32.867989>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498619, 41.921978, 33.314667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.099758, 41.891964, 33.311901>,  <34.860439, 41.873955, 33.310242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.099758, 41.891964, 33.311901>,  <35.498619, 41.921978, 33.314667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099758, 41.891964, 33.311901> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007503, 0.007556, 0.999943,
		-0.074978, 0.997152, -0.008098,
		-0.997157, -0.075034, -0.006915,
		34.800610, 41.869453, 33.309826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.495781, 45.548023, 28.727037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.399086, 45.164967, 28.664446>,  <32.341068, 44.935131, 28.626890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.399086, 45.164967, 28.664446>,  <32.495781, 45.548023, 28.727037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.399086, 45.164967, 28.664446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499967, 0.015285, -0.865909,
		0.831623, -0.287556, 0.475095,
		-0.241736, -0.957642, -0.156480,
		32.326565, 44.877674, 28.617502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149963, 45.327892, 28.603857>,  <32.495781, 45.548023, 28.727037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149963, 45.327892, 28.603857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.882046, 45.071468, 28.453968>,  <32.721294, 44.917614, 28.364035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.882046, 45.071468, 28.453968>,  <33.149963, 45.327892, 28.603857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882046, 45.071468, 28.453968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468120, 0.027184, -0.883246,
		0.576397, -0.767012, 0.281883,
		-0.669798, -0.641056, -0.374723,
		32.681107, 44.879150, 28.341551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474560, 44.897446, 28.048906>,  <33.149963, 45.327892, 28.603857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474560, 44.897446, 28.048906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.089310, 44.827301, 27.967281>,  <32.858162, 44.785213, 27.918306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.089310, 44.827301, 27.967281>,  <33.474560, 44.897446, 28.048906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089310, 44.827301, 27.967281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190976, 0.088685, -0.977580,
		0.189531, -0.980501, -0.051924,
		-0.963123, -0.175365, -0.204060,
		32.800373, 44.774693, 27.906063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410191, 44.605850, 27.398211>,  <33.474560, 44.897446, 28.048906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410191, 44.605850, 27.398211> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.015995, 44.670486, 27.419006>,  <32.779476, 44.709267, 27.431484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.015995, 44.670486, 27.419006>,  <33.410191, 44.605850, 27.398211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015995, 44.670486, 27.419006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067710, -0.093354, -0.993328,
		-0.155662, -0.982432, 0.102941,
		-0.985487, 0.161594, 0.051989,
		32.720348, 44.718964, 27.434603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934631, 44.025066, 27.053164>,  <33.410191, 44.605850, 27.398211>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934631, 44.025066, 27.053164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.712551, 44.357735, 27.056522>,  <32.579304, 44.557335, 27.058538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.712551, 44.357735, 27.056522>,  <32.934631, 44.025066, 27.053164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712551, 44.357735, 27.056522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079249, -0.042848, -0.995934,
		-0.827932, -0.553609, 0.089699,
		-0.555201, 0.831674, 0.008398,
		32.545990, 44.607235, 27.059042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294132, 43.817505, 26.728786>,  <32.934631, 44.025066, 27.053164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294132, 43.817505, 26.728786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.351467, 44.212757, 26.706671>,  <32.385868, 44.449909, 26.693401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.351467, 44.212757, 26.706671>,  <32.294132, 43.817505, 26.728786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.351467, 44.212757, 26.706671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166498, -0.030992, -0.985555,
		-0.975568, 0.150473, 0.160079,
		0.143338, 0.988128, -0.055288,
		32.394470, 44.509197, 26.690084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.896341, 43.902531, 26.227724>,  <32.294132, 43.817505, 26.728786>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.896341, 43.902531, 26.227724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.150158, 44.209965, 26.260286>,  <32.302448, 44.394424, 26.279823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.150158, 44.209965, 26.260286>,  <31.896341, 43.902531, 26.227724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.150158, 44.209965, 26.260286> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132215, -0.004171, -0.991212,
		-0.761495, 0.639729, -0.104266,
		0.634542, 0.768589, 0.081406,
		32.340519, 44.440540, 26.284708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712954, 44.372913, 25.705492>,  <31.896341, 43.902531, 26.227724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712954, 44.372913, 25.705492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.087971, 44.466862, 25.808136>,  <32.312981, 44.523232, 25.869722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.087971, 44.466862, 25.808136>,  <31.712954, 44.372913, 25.705492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.087971, 44.466862, 25.808136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206599, 0.217545, -0.953934,
		-0.279875, 0.947370, 0.155434,
		0.937543, 0.234870, 0.256611,
		32.369232, 44.537323, 25.885118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.742065, 44.972507, 25.414099>,  <31.712954, 44.372913, 25.705492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.742065, 44.972507, 25.414099> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.111595, 44.841366, 25.493153>,  <32.333313, 44.762680, 25.540585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.111595, 44.841366, 25.493153>,  <31.742065, 44.972507, 25.414099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.111595, 44.841366, 25.493153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296070, 0.284634, -0.911771,
		0.242677, 0.900829, 0.360020,
		0.923824, -0.327857, 0.197634,
		32.388741, 44.743008, 25.552443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.268028, 45.488476, 25.150946>,  <31.742065, 44.972507, 25.414099>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.268028, 45.488476, 25.150946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.464432, 45.142685, 25.194014>,  <32.582275, 44.935211, 25.219854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.464432, 45.142685, 25.194014>,  <32.268028, 45.488476, 25.150946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.464432, 45.142685, 25.194014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433390, 0.135185, -0.891010,
		0.755702, 0.484155, 0.441032,
		0.491007, -0.864476, 0.107669,
		32.611732, 44.883343, 25.226315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.913357, 45.614815, 24.927031>,  <32.268028, 45.488476, 25.150946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.913357, 45.614815, 24.927031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.909534, 45.215168, 24.910692>,  <32.907242, 44.975380, 24.900888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.909534, 45.215168, 24.910692>,  <32.913357, 45.614815, 24.927031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909534, 45.215168, 24.910692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326803, 0.035486, -0.944426,
		0.945044, -0.022375, 0.326177,
		-0.009557, -0.999120, -0.040848,
		32.906666, 44.915432, 24.898438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541428, 45.390362, 24.657026>,  <32.913357, 45.614815, 24.927031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.541428, 45.390362, 24.657026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.279480, 45.101185, 24.568935>,  <33.122311, 44.927681, 24.516081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.279480, 45.101185, 24.568935>,  <33.541428, 45.390362, 24.657026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279480, 45.101185, 24.568935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315768, 0.003004, -0.948831,
		0.686610, -0.690904, 0.226314,
		-0.654872, -0.722940, -0.220228,
		33.083019, 44.884304, 24.502867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850819, 44.841236, 24.226616>,  <33.541428, 45.390362, 24.657026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850819, 44.841236, 24.226616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.454548, 44.846573, 24.172392>,  <33.216785, 44.849777, 24.139856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.454548, 44.846573, 24.172392>,  <33.850819, 44.841236, 24.226616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454548, 44.846573, 24.172392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135045, -0.034032, -0.990255,
		-0.017811, -0.999332, 0.031915,
		-0.990679, 0.013327, -0.135561,
		33.157345, 44.850574, 24.131723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.773548, 45.347317, 23.711367>,  <33.850819, 44.841236, 24.226616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.773548, 45.347317, 23.711367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.409698, 45.376293, 23.874996>,  <33.191391, 45.393681, 23.973175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.409698, 45.376293, 23.874996>,  <33.773548, 45.347317, 23.711367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.409698, 45.376293, 23.874996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001764, 0.985344, -0.170569,
		-0.415437, -0.154431, -0.896417,
		-0.909620, 0.072442, 0.409076,
		33.136814, 45.398026, 23.997719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090721, 44.940994, 23.104012>,  <33.773548, 45.347317, 23.711367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.090721, 44.940994, 23.104012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.246281, 44.581047, 23.025021>,  <34.339615, 44.365078, 22.977627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.246281, 44.581047, 23.025021>,  <34.090721, 44.940994, 23.104012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246281, 44.581047, 23.025021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308883, -0.074586, 0.948171,
		-0.867959, -0.429735, 0.248948,
		0.388894, -0.899869, -0.197476,
		34.362949, 44.311085, 22.965778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878124, 44.334499, 23.553188>,  <34.090721, 44.940994, 23.104012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878124, 44.334499, 23.553188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.256397, 44.296455, 23.428837>,  <34.483360, 44.273628, 23.354225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.256397, 44.296455, 23.428837>,  <33.878124, 44.334499, 23.553188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256397, 44.296455, 23.428837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299806, -0.114695, 0.947080,
		-0.125749, -0.988836, -0.079945,
		0.945676, -0.095126, -0.310882,
		34.540100, 44.267921, 23.335573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172466, 43.674988, 23.939672>,  <33.878124, 44.334499, 23.553188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172466, 43.674988, 23.939672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.480106, 43.891041, 23.802996>,  <34.664688, 44.020672, 23.720989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.480106, 43.891041, 23.802996>,  <34.172466, 43.674988, 23.939672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480106, 43.891041, 23.802996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499679, -0.174800, 0.848390,
		0.398512, -0.823229, -0.404329,
		0.769096, 0.540128, -0.341690,
		34.710835, 44.053078, 23.700489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693501, 43.289108, 23.945816>,  <34.172466, 43.674988, 23.939672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693501, 43.289108, 23.945816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.832378, 43.663296, 23.972212>,  <34.915707, 43.887810, 23.988049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.832378, 43.663296, 23.972212>,  <34.693501, 43.289108, 23.945816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832378, 43.663296, 23.972212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281177, -0.170970, 0.944303,
		0.894649, -0.309301, -0.322392,
		0.347194, 0.935469, 0.065989,
		34.936535, 43.943935, 23.992008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323627, 43.228653, 24.343281>,  <34.693501, 43.289108, 23.945816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323627, 43.228653, 24.343281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.223969, 43.614925, 24.372656>,  <35.164173, 43.846687, 24.390282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.223969, 43.614925, 24.372656>,  <35.323627, 43.228653, 24.343281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223969, 43.614925, 24.372656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283046, 0.000088, 0.959106,
		0.926181, 0.259743, -0.273353,
		-0.249145, 0.965678, 0.073437,
		35.149223, 43.904629, 24.394688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861511, 43.474483, 24.680813>,  <35.323627, 43.228653, 24.343281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861511, 43.474483, 24.680813> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.535683, 43.693230, 24.758190>,  <35.340187, 43.824478, 24.804617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.535683, 43.693230, 24.758190>,  <35.861511, 43.474483, 24.680813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535683, 43.693230, 24.758190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212854, -0.028430, 0.976670,
		0.539605, 0.836739, -0.093245,
		-0.814567, 0.546864, 0.193444,
		35.291313, 43.857288, 24.816223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132923, 43.864693, 25.222197>,  <35.861511, 43.474483, 24.680813>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132923, 43.864693, 25.222197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.736057, 43.912273, 25.237444>,  <35.497936, 43.940823, 25.246592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.736057, 43.912273, 25.237444>,  <36.132923, 43.864693, 25.222197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736057, 43.912273, 25.237444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029198, -0.075838, 0.996693,
		0.121448, 0.989999, 0.071771,
		-0.992168, 0.118951, 0.038116,
		35.438408, 43.947960, 25.248878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126183, 44.105747, 25.917631>,  <36.132923, 43.864693, 25.222197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126183, 44.105747, 25.917631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.736805, 44.041943, 25.851938>,  <35.503178, 44.003658, 25.812523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.736805, 44.041943, 25.851938>,  <36.126183, 44.105747, 25.917631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736805, 44.041943, 25.851938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138151, -0.162767, 0.976945,
		-0.182566, 0.973685, 0.136407,
		-0.973439, -0.159512, -0.164231,
		35.444775, 43.994087, 25.802670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643536, 44.541233, 26.331606>,  <36.126183, 44.105747, 25.917631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643536, 44.541233, 26.331606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.463871, 44.192741, 26.252390>,  <35.356071, 43.983646, 26.204861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.463871, 44.192741, 26.252390>,  <35.643536, 44.541233, 26.331606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463871, 44.192741, 26.252390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087736, -0.177576, 0.980188,
		-0.889132, 0.457638, 0.003323,
		-0.449162, -0.871226, -0.198039,
		35.329121, 43.931374, 26.192978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097290, 44.562935, 26.867813>,  <35.643536, 44.541233, 26.331606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097290, 44.562935, 26.867813> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.095455, 44.185665, 26.734903>,  <35.094353, 43.959305, 26.655157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.095455, 44.185665, 26.734903>,  <35.097290, 44.562935, 26.867813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095455, 44.185665, 26.734903> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263350, -0.319410, 0.910288,
		-0.964689, 0.091680, -0.246919,
		-0.004586, -0.943172, -0.332275,
		35.094078, 43.902714, 26.635221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445259, 44.231106, 27.063557>,  <35.097290, 44.562935, 26.867813>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445259, 44.231106, 27.063557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.660522, 43.902657, 26.987505>,  <34.789680, 43.705589, 26.941874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.660522, 43.902657, 26.987505>,  <34.445259, 44.231106, 27.063557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660522, 43.902657, 26.987505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330028, -0.412862, 0.848897,
		-0.775543, -0.394092, -0.493177,
		0.538158, -0.821119, -0.190131,
		34.821968, 43.656322, 26.930466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021927, 43.609344, 27.189186>,  <34.445259, 44.231106, 27.063557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021927, 43.609344, 27.189186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.403442, 43.493134, 27.219875>,  <34.632351, 43.423409, 27.238289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.403442, 43.493134, 27.219875>,  <34.021927, 43.609344, 27.189186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403442, 43.493134, 27.219875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231243, -0.546633, 0.804810,
		-0.191877, -0.785358, -0.588553,
		0.953787, -0.290523, 0.076722,
		34.689579, 43.405975, 27.242891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990559, 42.868946, 27.206532>,  <34.021927, 43.609344, 27.189186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990559, 42.868946, 27.206532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.337997, 42.975689, 27.373545>,  <34.546459, 43.039734, 27.473753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.337997, 42.975689, 27.373545>,  <33.990559, 42.868946, 27.206532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337997, 42.975689, 27.373545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238399, -0.513642, 0.824220,
		0.434408, -0.815452, -0.382529,
		0.868594, 0.266853, 0.417533,
		34.598576, 43.055744, 27.498804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157547, 42.263260, 27.496569>,  <33.990559, 42.868946, 27.206532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157547, 42.263260, 27.496569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.384510, 42.539455, 27.676023>,  <34.520687, 42.705173, 27.783697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.384510, 42.539455, 27.676023>,  <34.157547, 42.263260, 27.496569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384510, 42.539455, 27.676023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142791, -0.454076, 0.879446,
		0.810961, -0.563067, -0.159052,
		0.567409, 0.690486, 0.448639,
		34.554733, 42.746601, 27.810616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977657, 41.652317, 27.087318>,  <34.157547, 42.263260, 27.496569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977657, 41.652317, 27.087318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.676537, 41.389671, 27.068781>,  <33.495865, 41.232082, 27.057659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.676537, 41.389671, 27.068781>,  <33.977657, 41.652317, 27.087318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.676537, 41.389671, 27.068781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041385, 0.117475, -0.992213,
		0.656948, -0.745019, -0.115609,
		-0.752799, -0.656617, -0.046343,
		33.450695, 41.192688, 27.054878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074688, 41.163776, 26.497597>,  <33.977657, 41.652317, 27.087318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074688, 41.163776, 26.497597> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.685467, 41.220242, 26.570522>,  <33.451935, 41.254120, 26.614279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.685467, 41.220242, 26.570522>,  <34.074688, 41.163776, 26.497597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685467, 41.220242, 26.570522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170491, 0.091856, -0.981068,
		-0.155236, -0.985716, -0.065314,
		-0.973054, 0.141162, 0.182315,
		33.393551, 41.262589, 26.625217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.735027, 40.870178, 25.835295>,  <34.074688, 41.163776, 26.497597>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.735027, 40.870178, 25.835295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.444950, 41.074192, 26.020323>,  <33.270905, 41.196598, 26.131340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.444950, 41.074192, 26.020323>,  <33.735027, 40.870178, 25.835295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444950, 41.074192, 26.020323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467955, 0.127733, -0.874473,
		-0.505093, -0.850619, 0.146040,
		-0.725189, 0.510030, 0.462569,
		33.227394, 41.227200, 26.159094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242863, 40.523678, 25.583118>,  <33.735027, 40.870178, 25.835295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242863, 40.523678, 25.583118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.107433, 40.880634, 25.702457>,  <33.026176, 41.094807, 25.774061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.107433, 40.880634, 25.702457>,  <33.242863, 40.523678, 25.583118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.107433, 40.880634, 25.702457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434348, 0.133045, -0.890865,
		-0.834693, -0.431205, 0.342563,
		-0.338569, 0.892390, 0.298345,
		33.005863, 41.148350, 25.791962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644726, 40.553299, 25.282478>,  <33.242863, 40.523678, 25.583118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644726, 40.553299, 25.282478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.739582, 40.932018, 25.369513>,  <32.796494, 41.159248, 25.421734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.739582, 40.932018, 25.369513>,  <32.644726, 40.553299, 25.282478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.739582, 40.932018, 25.369513> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433876, 0.303616, -0.848274,
		-0.869205, 0.106752, 0.482790,
		0.237138, 0.946795, 0.217588,
		32.810722, 41.216057, 25.434790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108170, 40.878876, 25.000677>,  <32.644726, 40.553299, 25.282478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.108170, 40.878876, 25.000677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.368271, 41.181297, 25.030470>,  <32.524330, 41.362751, 25.048346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.368271, 41.181297, 25.030470>,  <32.108170, 40.878876, 25.000677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.368271, 41.181297, 25.030470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184615, 0.252355, -0.949860,
		-0.736946, 0.603898, 0.303674,
		0.650252, 0.756058, 0.074484,
		32.563347, 41.408115, 25.052814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.782484, 41.497650, 24.728662>,  <32.108170, 40.878876, 25.000677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.782484, 41.497650, 24.728662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.176205, 41.547920, 24.679094>,  <32.412437, 41.578083, 24.649353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.176205, 41.547920, 24.679094>,  <31.782484, 41.497650, 24.728662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.176205, 41.547920, 24.679094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149809, 0.223671, -0.963083,
		-0.093320, 0.966528, 0.238987,
		0.984301, 0.125677, -0.123921,
		32.471497, 41.585625, 24.641918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.123957, 41.556416, 24.901131>,  <31.782484, 41.497650, 24.728662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.123957, 41.556416, 24.901131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.819811, 41.325272, 24.782522>,  <30.637323, 41.186584, 24.711357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.819811, 41.325272, 24.782522>,  <31.123957, 41.556416, 24.901131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.819811, 41.325272, 24.782522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049013, -0.506290, 0.860969,
		-0.647645, 0.640117, 0.413288,
		-0.760364, -0.577859, -0.296523,
		30.591702, 41.151913, 24.693565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.745613, 41.588806, 25.407579>,  <31.123957, 41.556416, 24.901131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.745613, 41.588806, 25.407579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.599390, 41.255630, 25.241409>,  <30.511656, 41.055725, 25.141706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.599390, 41.255630, 25.241409>,  <30.745613, 41.588806, 25.407579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.599390, 41.255630, 25.241409> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354868, -0.287885, 0.889489,
		-0.860487, 0.472579, -0.190346,
		-0.365556, -0.832941, -0.415425,
		30.489723, 41.005749, 25.116781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.054029, 41.533043, 25.698528>,  <30.745613, 41.588806, 25.407579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.054029, 41.533043, 25.698528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.167160, 41.169453, 25.576040>,  <30.235039, 40.951298, 25.502548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.167160, 41.169453, 25.576040>,  <30.054029, 41.533043, 25.698528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.167160, 41.169453, 25.576040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386559, -0.400196, 0.830912,
		-0.877829, -0.116630, -0.464558,
		0.282824, -0.908978, -0.306219,
		30.252007, 40.896759, 25.484175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.461634, 41.126938, 25.794430>,  <30.054029, 41.533043, 25.698528>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.461634, 41.126938, 25.794430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.766994, 40.868992, 25.779665>,  <29.950211, 40.714222, 25.770807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.766994, 40.868992, 25.779665>,  <29.461634, 41.126938, 25.794430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.766994, 40.868992, 25.779665> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346700, -0.457302, 0.818947,
		-0.544994, -0.612388, -0.572681,
		0.763401, -0.644869, -0.036912,
		29.996016, 40.675533, 25.768591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.092545, 40.530037, 25.813456>,  <29.461634, 41.126938, 25.794430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.092545, 40.530037, 25.813456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.470478, 40.453201, 25.919580>,  <29.697239, 40.407101, 25.983255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.470478, 40.453201, 25.919580>,  <29.092545, 40.530037, 25.813456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.470478, 40.453201, 25.919580> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326933, -0.503407, 0.799810,
		-0.020072, -0.842428, -0.538435,
		0.944834, -0.192087, 0.265313,
		29.753929, 40.395576, 25.999174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.046539, 39.893745, 25.908415>,  <29.092545, 40.530037, 25.813456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.046539, 39.893745, 25.908415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.369543, 40.026760, 26.103291>,  <29.563345, 40.106567, 26.220215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.369543, 40.026760, 26.103291>,  <29.046539, 39.893745, 25.908415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.369543, 40.026760, 26.103291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181278, -0.646066, 0.741442,
		0.561310, -0.687037, -0.461423,
		0.807508, 0.332533, 0.487188,
		29.611795, 40.126518, 26.249447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.262350, 39.249504, 26.267618>,  <29.046539, 39.893745, 25.908415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.262350, 39.249504, 26.267618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.465115, 39.538998, 26.454912>,  <29.586773, 39.712696, 26.567287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.465115, 39.538998, 26.454912>,  <29.262350, 39.249504, 26.267618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.465115, 39.538998, 26.454912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028140, -0.529012, 0.848148,
		0.861538, -0.443113, -0.247797,
		0.506913, 0.723738, 0.468233,
		29.617189, 39.756119, 26.595383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.903999, 43.534626, 23.912706> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.253738, 43.674824, 24.046972>,  <30.463581, 43.758942, 24.127531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.253738, 43.674824, 24.046972>,  <29.903999, 43.534626, 23.912706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.253738, 43.674824, 24.046972> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246947, -0.274092, 0.929457,
		0.417773, -0.895559, -0.153097,
		0.874347, 0.350495, 0.335664,
		30.516043, 43.779972, 24.147671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.025694, 43.144478, 24.566372>,  <29.903999, 43.534626, 23.912706>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.025694, 43.144478, 24.566372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.275518, 43.456020, 24.589373>,  <30.425413, 43.642944, 24.603172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.275518, 43.456020, 24.589373>,  <30.025694, 43.144478, 24.566372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.275518, 43.456020, 24.589373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106443, 0.011955, 0.994247,
		0.773689, -0.627087, 0.090371,
		0.624560, 0.778857, 0.057500,
		30.462887, 43.689678, 24.606623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.470779, 42.977684, 25.037617>,  <30.025694, 43.144478, 24.566372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.470779, 42.977684, 25.037617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.482195, 43.377361, 25.026302>,  <30.489044, 43.617168, 25.019514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.482195, 43.377361, 25.026302>,  <30.470779, 42.977684, 25.037617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.482195, 43.377361, 25.026302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189336, 0.033190, 0.981351,
		0.981498, -0.022653, 0.190131,
		0.028541, 0.999193, -0.028287,
		30.490757, 43.677120, 25.017817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.795300, 43.169262, 25.664707>,  <30.470779, 42.977684, 25.037617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.795300, 43.169262, 25.664707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.627863, 43.520786, 25.573086>,  <30.527401, 43.731701, 25.518112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.627863, 43.520786, 25.573086>,  <30.795300, 43.169262, 25.664707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.627863, 43.520786, 25.573086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124501, 0.194303, 0.973008,
		0.899599, 0.435812, 0.028080,
		-0.418593, 0.878814, -0.229054,
		30.502285, 43.784431, 25.504370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.193954, 43.723545, 26.049574>,  <30.795300, 43.169262, 25.664707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.193954, 43.723545, 26.049574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.828758, 43.858273, 25.957483>,  <30.609640, 43.939110, 25.902229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.828758, 43.858273, 25.957483>,  <31.193954, 43.723545, 26.049574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.828758, 43.858273, 25.957483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159769, 0.224065, 0.961389,
		0.375396, 0.914522, -0.150757,
		-0.912990, 0.336816, -0.230226,
		30.554861, 43.959316, 25.888416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.003151, 44.181538, 26.643290>,  <31.193954, 43.723545, 26.049574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.003151, 44.181538, 26.643290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.643787, 44.140091, 26.472584>,  <30.428169, 44.115223, 26.370161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.643787, 44.140091, 26.472584>,  <31.003151, 44.181538, 26.643290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.643787, 44.140091, 26.472584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438915, 0.244446, 0.864639,
		0.014728, 0.964111, -0.265092,
		-0.898408, -0.103618, -0.426763,
		30.374266, 44.109005, 26.344555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.626232, 44.593369, 27.027887>,  <31.003151, 44.181538, 26.643290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.626232, 44.593369, 27.027887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.361454, 44.356750, 26.843754>,  <30.202587, 44.214779, 26.733274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.361454, 44.356750, 26.843754>,  <30.626232, 44.593369, 27.027887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.361454, 44.356750, 26.843754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629796, 0.105930, 0.769504,
		-0.406430, 0.799286, -0.442670,
		-0.661946, -0.591541, -0.460334,
		30.162870, 44.179287, 26.705654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.005419, 44.932812, 27.018574>,  <30.626232, 44.593369, 27.027887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.005419, 44.932812, 27.018574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.904800, 44.549683, 26.962996>,  <29.844429, 44.319805, 26.929647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.904800, 44.549683, 26.962996>,  <30.005419, 44.932812, 27.018574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.904800, 44.549683, 26.962996> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672524, 0.069738, 0.736782,
		-0.696014, 0.278779, -0.661700,
		-0.251545, -0.957820, -0.138947,
		29.829336, 44.262337, 26.921312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.161846, 44.910587, 27.067245>,  <30.005419, 44.932812, 27.018574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.161846, 44.910587, 27.067245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.317648, 44.548313, 27.134203>,  <29.411129, 44.330948, 27.174377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.317648, 44.548313, 27.134203>,  <29.161846, 44.910587, 27.067245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.317648, 44.548313, 27.134203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461662, -0.034720, 0.886376,
		-0.796965, -0.422529, -0.431644,
		0.389506, -0.905684, 0.167395,
		29.434500, 44.276608, 27.184422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.603760, 44.545784, 27.305771>,  <29.161846, 44.910587, 27.067245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.603760, 44.545784, 27.305771> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.893759, 44.291695, 27.412258>,  <29.067759, 44.139244, 27.476151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.893759, 44.291695, 27.412258>,  <28.603760, 44.545784, 27.305771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.893759, 44.291695, 27.412258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455891, -0.152854, 0.876812,
		-0.516274, -0.757055, -0.400410,
		0.724999, -0.635219, 0.266220,
		29.111259, 44.101128, 27.492125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.329025, 43.846218, 27.519730>,  <28.603760, 44.545784, 27.305771>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.329025, 43.846218, 27.519730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.685892, 43.903183, 27.691198>,  <28.900011, 43.937363, 27.794079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.685892, 43.903183, 27.691198>,  <28.329025, 43.846218, 27.519730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.685892, 43.903183, 27.691198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378293, -0.283049, 0.881350,
		0.246851, -0.948473, -0.198653,
		0.892165, 0.142413, 0.428672,
		28.953541, 43.945908, 27.819799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.429554, 43.194859, 27.918497>,  <28.329025, 43.846218, 27.519730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.429554, 43.194859, 27.918497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.661703, 43.481785, 28.072704>,  <28.800993, 43.653942, 28.165228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.661703, 43.481785, 28.072704>,  <28.429554, 43.194859, 27.918497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.661703, 43.481785, 28.072704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398155, -0.163017, 0.902717,
		0.710378, -0.677410, 0.190992,
		0.580375, 0.717315, 0.385518,
		28.835815, 43.696980, 28.188360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.405087, 42.546055, 27.561565>,  <28.429554, 43.194859, 27.918497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.405087, 42.546055, 27.561565> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.093758, 42.294914, 27.563473>,  <27.906961, 42.144230, 27.564617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.093758, 42.294914, 27.563473>,  <28.405087, 42.546055, 27.561565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.093758, 42.294914, 27.563473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091374, 0.105753, -0.990185,
		0.621184, -0.771117, -0.139678,
		-0.778320, -0.627850, 0.004768,
		27.860262, 42.106560, 27.564903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.614233, 42.016979, 27.079996>,  <28.405087, 42.546055, 27.561565>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.614233, 42.016979, 27.079996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.217186, 42.041256, 27.121992>,  <27.978958, 42.055820, 27.147190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.217186, 42.041256, 27.121992>,  <28.614233, 42.016979, 27.079996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.217186, 42.041256, 27.121992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092308, 0.183350, -0.978704,
		-0.078648, -0.981172, -0.176395,
		-0.992620, 0.060690, 0.104990,
		27.919399, 42.059464, 27.153488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.441113, 41.942154, 26.431971>,  <28.614233, 42.016979, 27.079996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.441113, 41.942154, 26.431971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.096525, 42.066891, 26.592283>,  <27.889772, 42.141735, 26.688471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.096525, 42.066891, 26.592283>,  <28.441113, 41.942154, 26.431971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.096525, 42.066891, 26.592283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265556, 0.396070, -0.878982,
		-0.432843, -0.863645, -0.258389,
		-0.861468, 0.311844, 0.400782,
		27.838085, 42.160442, 26.712519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.908188, 41.665634, 26.087795>,  <28.441113, 41.942154, 26.431971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.908188, 41.665634, 26.087795> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.778049, 42.013180, 26.237049>,  <27.699966, 42.221706, 26.326601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.778049, 42.013180, 26.237049>,  <27.908188, 41.665634, 26.087795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.778049, 42.013180, 26.237049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040725, 0.381360, -0.923529,
		-0.944717, -0.315663, -0.088689,
		-0.325346, 0.868863, 0.373133,
		27.680445, 42.273838, 26.348989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.147787, 41.769699, 25.816414>,  <27.908188, 41.665634, 26.087795>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.147787, 41.769699, 25.816414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.318186, 42.116184, 25.920876>,  <27.420425, 42.324074, 25.983553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.318186, 42.116184, 25.920876>,  <27.147787, 41.769699, 25.816414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.318186, 42.116184, 25.920876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268078, 0.396547, -0.878000,
		-0.864094, 0.304018, 0.401141,
		0.425999, 0.866212, 0.261154,
		27.445986, 42.376049, 25.999222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.780928, 42.193073, 25.457884>,  <27.147787, 41.769699, 25.816414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.780928, 42.193073, 25.457884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.101820, 42.412281, 25.552626>,  <27.294355, 42.543808, 25.609470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.101820, 42.412281, 25.552626>,  <26.780928, 42.193073, 25.457884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.101820, 42.412281, 25.552626> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026763, 0.363317, -0.931281,
		-0.596416, 0.753440, 0.276796,
		0.802229, 0.548023, 0.236852,
		27.342489, 42.576687, 25.623682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.587326, 42.851780, 25.243027>,  <26.780928, 42.193073, 25.457884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.587326, 42.851780, 25.243027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.986113, 42.829502, 25.264776>,  <27.225384, 42.816135, 25.277826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.986113, 42.829502, 25.264776>,  <26.587326, 42.851780, 25.243027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.986113, 42.829502, 25.264776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075405, 0.517952, -0.852080,
		0.019295, 0.853595, 0.520581,
		0.996966, -0.055695, 0.054372,
		27.285202, 42.812794, 25.281088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.853662, 43.534985, 25.098196>,  <26.587326, 42.851780, 25.243027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.853662, 43.534985, 25.098196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.164549, 43.297825, 25.013903>,  <27.351080, 43.155529, 24.963327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.164549, 43.297825, 25.013903>,  <26.853662, 43.534985, 25.098196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.164549, 43.297825, 25.013903> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245650, 0.594225, -0.765867,
		0.579305, 0.543476, 0.607486,
		0.777214, -0.592900, -0.210732,
		27.397713, 43.119953, 24.950684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.402483, 44.004623, 24.915808>,  <26.853662, 43.534985, 25.098196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.402483, 44.004623, 24.915808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.522522, 43.650120, 24.774675>,  <27.594545, 43.437420, 24.689995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.522522, 43.650120, 24.774675>,  <27.402483, 44.004623, 24.915808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.522522, 43.650120, 24.774675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423589, 0.455222, -0.783164,
		0.854701, 0.085569, 0.512020,
		0.300097, -0.886257, -0.352833,
		27.612551, 43.384243, 24.668825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.114252, 44.129082, 24.660984>,  <27.402483, 44.004623, 24.915808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.114252, 44.129082, 24.660984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.043135, 43.804157, 24.438799>,  <28.000465, 43.609203, 24.305489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.043135, 43.804157, 24.438799>,  <28.114252, 44.129082, 24.660984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.043135, 43.804157, 24.438799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421506, 0.447193, -0.788893,
		0.889226, -0.374390, 0.262886,
		-0.177793, -0.812312, -0.555463,
		27.989798, 43.560463, 24.272160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.650864, 44.172688, 24.230623>,  <28.114252, 44.129082, 24.660984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.650864, 44.172688, 24.230623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.425053, 43.903343, 24.039669>,  <28.289566, 43.741737, 23.925097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.425053, 43.903343, 24.039669>,  <28.650864, 44.172688, 24.230623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.425053, 43.903343, 24.039669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401866, 0.280968, -0.871528,
		0.720981, -0.683846, 0.111986,
		-0.564526, -0.673359, -0.477387,
		28.255695, 43.701336, 23.896454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.124598, 43.942230, 23.863914>,  <28.650864, 44.172688, 24.230623>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.124598, 43.942230, 23.863914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.768414, 43.865562, 23.698824>,  <28.554703, 43.819561, 23.599770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.768414, 43.865562, 23.698824>,  <29.124598, 43.942230, 23.863914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.768414, 43.865562, 23.698824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265422, 0.517953, -0.813189,
		0.369638, -0.833659, -0.410343,
		-0.890460, -0.191672, -0.412727,
		28.501276, 43.808060, 23.575006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.256683, 43.571644, 23.258451>,  <29.124598, 43.942230, 23.863914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.256683, 43.571644, 23.258451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.882627, 43.697357, 23.193045>,  <28.658194, 43.772785, 23.153801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.882627, 43.697357, 23.193045>,  <29.256683, 43.571644, 23.258451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.882627, 43.697357, 23.193045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308059, 0.493417, -0.813412,
		-0.174958, -0.811028, -0.558231,
		-0.935141, 0.314281, -0.163518,
		28.602085, 43.791641, 23.143990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.081041, 43.376545, 22.537075>,  <29.256683, 43.571644, 23.258451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.081041, 43.376545, 22.537075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.845913, 43.679085, 22.651896>,  <28.704836, 43.860611, 22.720789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.845913, 43.679085, 22.651896>,  <29.081041, 43.376545, 22.537075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.845913, 43.679085, 22.651896> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395547, 0.578229, -0.713578,
		-0.705698, -0.305912, -0.639068,
		-0.587820, 0.756352, 0.287053,
		28.669567, 43.905991, 22.738010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.934416, 42.929482, 23.113304>,  <29.081041, 43.376545, 22.537075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.934416, 42.929482, 23.113304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.252047, 42.822666, 22.894897>,  <29.442625, 42.758575, 22.763853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.252047, 42.822666, 22.894897>,  <28.934416, 42.929482, 23.113304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.252047, 42.822666, 22.894897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138446, -0.795242, 0.590274,
		-0.591841, -0.544316, -0.594512,
		0.794076, -0.267041, -0.546015,
		29.490269, 42.742554, 22.731092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.880138, 42.137352, 22.940851>,  <28.934416, 42.929482, 23.113304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.880138, 42.137352, 22.940851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.258074, 42.264664, 22.909941>,  <29.484837, 42.341053, 22.891394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.258074, 42.264664, 22.909941>,  <28.880138, 42.137352, 22.940851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.258074, 42.264664, 22.909941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276613, -0.649092, 0.708636,
		0.175388, -0.690924, -0.701330,
		0.944841, 0.318284, -0.077276,
		29.541527, 42.360149, 22.886759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.294374, 41.495388, 22.950171>,  <28.880138, 42.137352, 22.940851>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.294374, 41.495388, 22.950171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.575310, 41.776684, 22.994314>,  <29.743870, 41.945461, 23.020800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.575310, 41.776684, 22.994314>,  <29.294374, 41.495388, 22.950171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.575310, 41.776684, 22.994314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514656, -0.608747, 0.603786,
		0.491786, -0.367264, -0.789471,
		0.702336, 0.703239, 0.110359,
		29.786011, 41.987656, 23.027422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.903282, 41.218201, 22.771481>,  <29.294374, 41.495388, 22.950171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.903282, 41.218201, 22.771481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.007799, 41.517769, 23.015070>,  <30.070509, 41.697510, 23.161224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.007799, 41.517769, 23.015070>,  <29.903282, 41.218201, 22.771481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.007799, 41.517769, 23.015070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498120, -0.645014, 0.579511,
		0.826803, 0.151921, -0.541588,
		0.261292, 0.748917, 0.608974,
		30.086187, 41.742443, 23.197762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.493399, 40.914944, 23.047680>,  <29.903282, 41.218201, 22.771481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.493399, 40.914944, 23.047680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.371710, 41.211815, 23.286552>,  <30.298697, 41.389938, 23.429876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.371710, 41.211815, 23.286552>,  <30.493399, 40.914944, 23.047680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.371710, 41.211815, 23.286552> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315017, -0.513247, 0.798337,
		0.899007, 0.430994, -0.077657,
		-0.304221, 0.742174, 0.597183,
		30.280443, 41.434467, 23.465708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.039808, 41.072697, 23.538857>,  <30.493399, 40.914944, 23.047680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.039808, 41.072697, 23.538857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.689392, 41.203213, 23.680895>,  <30.479143, 41.281521, 23.766117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.689392, 41.203213, 23.680895>,  <31.039808, 41.072697, 23.538857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.689392, 41.203213, 23.680895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238163, -0.347544, 0.906913,
		0.419324, 0.879062, 0.226753,
		-0.876040, 0.326287, 0.355094,
		30.426580, 41.301098, 23.787422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.218969, 41.479076, 24.192631>,  <31.039808, 41.072697, 23.538857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.218969, 41.479076, 24.192631> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.836300, 41.374107, 24.243082>,  <30.606697, 41.311127, 24.273352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.836300, 41.374107, 24.243082>,  <31.218969, 41.479076, 24.192631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.836300, 41.374107, 24.243082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177010, -0.180268, 0.967559,
		-0.231174, 0.947965, 0.218909,
		-0.956674, -0.262424, 0.126126,
		30.549297, 41.295380, 24.280920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.727463, 41.985958, 24.186239>,  <31.218969, 41.479076, 24.192631>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.727463, 41.985958, 24.186239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.119633, 41.914459, 24.219271>,  <32.354935, 41.871559, 24.239090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.119633, 41.914459, 24.219271>,  <31.727463, 41.985958, 24.186239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119633, 41.914459, 24.219271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119455, 0.206559, -0.971115,
		0.156528, 0.961968, 0.223868,
		0.980423, -0.178749, 0.082580,
		32.413761, 41.860836, 24.244045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.115974, 42.608406, 23.976046>,  <31.727463, 41.985958, 24.186239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.115974, 42.608406, 23.976046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.332745, 42.279228, 23.907837>,  <32.462807, 42.081722, 23.866911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.332745, 42.279228, 23.907837>,  <32.115974, 42.608406, 23.976046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.332745, 42.279228, 23.907837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211031, 0.329645, -0.920217,
		0.813500, 0.462704, 0.352310,
		0.541926, -0.822945, -0.170522,
		32.495323, 42.032345, 23.856680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830872, 42.807911, 23.836981>,  <32.115974, 42.608406, 23.976046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830872, 42.807911, 23.836981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.792797, 42.441414, 23.681320>,  <32.769951, 42.221516, 23.587923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.792797, 42.441414, 23.681320>,  <32.830872, 42.807911, 23.836981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.792797, 42.441414, 23.681320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345012, 0.336332, -0.876269,
		0.933759, -0.217671, 0.284101,
		-0.095186, -0.916242, -0.389152,
		32.764240, 42.166542, 23.564575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.526814, 42.585308, 23.465832>,  <32.830872, 42.807911, 23.836981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.526814, 42.585308, 23.465832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.258785, 42.329052, 23.315851>,  <33.097969, 42.175297, 23.225863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.258785, 42.329052, 23.315851>,  <33.526814, 42.585308, 23.465832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258785, 42.329052, 23.315851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414524, 0.096081, -0.904952,
		0.615776, -0.761805, 0.201181,
		-0.670068, -0.640642, -0.374951,
		33.057766, 42.136860, 23.203365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882324, 42.141872, 22.946140>,  <33.526814, 42.585308, 23.465832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882324, 42.141872, 22.946140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.498653, 42.055614, 22.872961>,  <33.268452, 42.003860, 22.829054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.498653, 42.055614, 22.872961>,  <33.882324, 42.141872, 22.946140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.498653, 42.055614, 22.872961> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183502, 0.017614, -0.982861,
		0.215176, -0.976312, 0.022677,
		-0.959180, -0.215650, -0.182946,
		33.210899, 41.990921, 22.818077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959541, 41.738644, 22.458708>,  <33.882324, 42.141872, 22.946140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959541, 41.738644, 22.458708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.582497, 41.861984, 22.407463>,  <33.356270, 41.935989, 22.376717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.582497, 41.861984, 22.407463>,  <33.959541, 41.738644, 22.458708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582497, 41.861984, 22.407463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181956, 0.152634, -0.971388,
		-0.279972, -0.938948, -0.199979,
		-0.942607, 0.308349, -0.128114,
		33.299713, 41.954491, 22.369028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694237, 41.300884, 21.884596>,  <33.959541, 41.738644, 22.458708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694237, 41.300884, 21.884596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.529419, 41.662495, 21.930138>,  <33.430531, 41.879459, 21.957462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.529419, 41.662495, 21.930138>,  <33.694237, 41.300884, 21.884596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.529419, 41.662495, 21.930138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081948, 0.161218, -0.983511,
		-0.907472, -0.395918, -0.140512,
		-0.412042, 0.904023, 0.113856,
		33.405807, 41.933701, 21.964294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.056877, 41.325512, 21.488083>,  <33.694237, 41.300884, 21.884596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.056877, 41.325512, 21.488083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.164391, 41.705597, 21.551136>,  <33.228901, 41.933647, 21.588968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.164391, 41.705597, 21.551136>,  <33.056877, 41.325512, 21.488083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164391, 41.705597, 21.551136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108182, 0.192402, -0.975335,
		-0.957105, 0.245105, 0.154511,
		0.268788, 0.950213, 0.157633,
		33.245026, 41.990662, 21.598427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.715736, 41.738007, 20.968700>,  <33.056877, 41.325512, 21.488083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.715736, 41.738007, 20.968700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.020836, 41.957623, 21.105387>,  <33.203896, 42.089394, 21.187399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.020836, 41.957623, 21.105387>,  <32.715736, 41.738007, 20.968700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020836, 41.957623, 21.105387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311916, 0.150539, -0.938108,
		-0.566502, 0.822125, -0.056432,
		0.762747, 0.549043, 0.341715,
		33.249660, 42.122334, 21.207901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<32.446903, 38.383305, 37.360287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.580429, 38.760357, 37.361324>,  <32.660545, 38.986588, 37.361946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.580429, 38.760357, 37.361324>,  <32.446903, 38.383305, 37.360287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580429, 38.760357, 37.361324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153194, 0.056962, -0.986553,
		-0.930107, 0.328929, 0.163421,
		0.333815, 0.942635, 0.002591,
		32.680573, 39.043148, 37.362103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.921131, 38.705944, 37.073299>,  <32.446903, 38.383305, 37.360287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.921131, 38.705944, 37.073299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.233154, 38.951290, 37.023830>,  <32.420368, 39.098495, 36.994148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.233154, 38.951290, 37.023830>,  <31.921131, 38.705944, 37.073299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.233154, 38.951290, 37.023830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266607, 0.147009, -0.952528,
		-0.566063, 0.776000, 0.278202,
		0.780060, 0.613361, -0.123671,
		32.467171, 39.135300, 36.986729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658995, 39.185776, 36.707134>,  <31.921131, 38.705944, 37.073299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658995, 39.185776, 36.707134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.050106, 39.233532, 36.638203>,  <32.284771, 39.262188, 36.596844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.050106, 39.233532, 36.638203>,  <31.658995, 39.185776, 36.707134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050106, 39.233532, 36.638203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187509, 0.130428, -0.973565,
		-0.093763, 0.984243, 0.149917,
		0.977778, 0.119395, -0.172325,
		32.343441, 39.269352, 36.586506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.662460, 39.741932, 36.247910>,  <31.658995, 39.185776, 36.707134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.662460, 39.741932, 36.247910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.035404, 39.598255, 36.231461>,  <32.259171, 39.512051, 36.221592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.035404, 39.598255, 36.231461>,  <31.662460, 39.741932, 36.247910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035404, 39.598255, 36.231461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104195, 0.375884, -0.920790,
		0.346195, 0.854222, 0.387884,
		0.932359, -0.359188, -0.041124,
		32.315113, 39.490498, 36.219124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096035, 40.264248, 35.919884>,  <31.662460, 39.741932, 36.247910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096035, 40.264248, 35.919884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.267410, 39.910847, 35.844128>,  <32.370235, 39.698807, 35.798676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.267410, 39.910847, 35.844128>,  <32.096035, 40.264248, 35.919884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267410, 39.910847, 35.844128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078895, 0.172222, -0.981894,
		0.900119, 0.435626, 0.004083,
		0.428442, -0.883499, -0.189389,
		32.395943, 39.645798, 35.787312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.470806, 40.381943, 35.332447>,  <32.096035, 40.264248, 35.919884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.470806, 40.381943, 35.332447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.455456, 39.982265, 35.337284>,  <32.446243, 39.742458, 35.340187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.455456, 39.982265, 35.337284>,  <32.470806, 40.381943, 35.332447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.455456, 39.982265, 35.337284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234236, -0.020758, -0.971958,
		0.971422, -0.034471, 0.234843,
		-0.038379, -0.999190, 0.012091,
		32.443943, 39.682507, 35.340912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041153, 40.162758, 35.009075>,  <32.470806, 40.381943, 35.332447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041153, 40.162758, 35.009075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.786823, 39.855354, 34.980473>,  <32.634224, 39.670910, 34.963310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.786823, 39.855354, 34.980473>,  <33.041153, 40.162758, 35.009075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.786823, 39.855354, 34.980473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053267, 0.048732, -0.997391,
		0.769992, -0.637977, 0.009952,
		-0.635827, -0.768512, -0.071506,
		32.596077, 39.624802, 34.959023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427586, 39.771927, 34.548653>,  <33.041153, 40.162758, 35.009075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427586, 39.771927, 34.548653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.049145, 39.643757, 34.529819>,  <32.822079, 39.566856, 34.518520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.049145, 39.643757, 34.529819>,  <33.427586, 39.771927, 34.548653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.049145, 39.643757, 34.529819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061372, -0.034642, -0.997514,
		0.317998, -0.946640, 0.052440,
		-0.946103, -0.320426, -0.047081,
		32.765312, 39.547630, 34.515694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426529, 39.320255, 34.055588>,  <33.427586, 39.771927, 34.548653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426529, 39.320255, 34.055588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.035648, 39.404118, 34.069004>,  <32.801121, 39.454433, 34.077053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.035648, 39.404118, 34.069004>,  <33.426529, 39.320255, 34.055588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.035648, 39.404118, 34.069004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036062, -0.008235, -0.999316,
		-0.209237, -0.977740, 0.015608,
		-0.977200, 0.209656, 0.033536,
		32.742489, 39.467014, 34.079063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129906, 38.827873, 33.630844>,  <33.426529, 39.320255, 34.055588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129906, 38.827873, 33.630844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.860683, 39.122749, 33.654678>,  <32.699150, 39.299675, 33.668980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.860683, 39.122749, 33.654678>,  <33.129906, 38.827873, 33.630844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.860683, 39.122749, 33.654678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081284, 0.006344, -0.996671,
		-0.735114, -0.675656, 0.055651,
		-0.673053, 0.737190, 0.059584,
		32.658768, 39.343906, 33.672554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599491, 38.598763, 33.126026>,  <33.129906, 38.827873, 33.630844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599491, 38.598763, 33.126026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.562359, 38.993465, 33.179222>,  <32.540081, 39.230289, 33.211140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.562359, 38.993465, 33.179222>,  <32.599491, 38.598763, 33.126026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.562359, 38.993465, 33.179222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009828, 0.132656, -0.991113,
		-0.995633, -0.093313, -0.002617,
		-0.092831, 0.986760, 0.132994,
		32.534508, 39.289494, 33.219120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324120, 38.787716, 32.503414>,  <32.599491, 38.598763, 33.126026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324120, 38.787716, 32.503414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.420395, 39.131771, 32.683296>,  <32.478161, 39.338203, 32.791225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.420395, 39.131771, 32.683296>,  <32.324120, 38.787716, 32.503414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.420395, 39.131771, 32.683296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161377, 0.421417, -0.892393,
		-0.957092, 0.287362, -0.037375,
		0.240690, 0.860134, 0.449708,
		32.492603, 39.389812, 32.818207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.667980, 38.356949, 32.633366>,  <32.324120, 38.787716, 32.503414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.667980, 38.356949, 32.633366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.324215, 38.194511, 32.509109>,  <31.117956, 38.097050, 32.434555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.324215, 38.194511, 32.509109>,  <31.667980, 38.356949, 32.633366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.324215, 38.194511, 32.509109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208585, -0.276234, 0.938183,
		-0.466800, 0.871081, 0.152694,
		-0.859413, -0.406094, -0.310640,
		31.066391, 38.072681, 32.415916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.150980, 38.542110, 33.111496>,  <31.667980, 38.356949, 32.633366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.150980, 38.542110, 33.111496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.040192, 38.209408, 32.919048>,  <30.973719, 38.009789, 32.803581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.040192, 38.209408, 32.919048>,  <31.150980, 38.542110, 33.111496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.040192, 38.209408, 32.919048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008975, -0.498445, 0.866875,
		-0.960836, 0.244418, 0.130591,
		-0.276972, -0.831753, -0.481117,
		30.957100, 37.959881, 32.774712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.640961, 38.388157, 33.476986>,  <31.150980, 38.542110, 33.111496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.640961, 38.388157, 33.476986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.773315, 38.057705, 33.294548>,  <30.852728, 37.859436, 33.185085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.773315, 38.057705, 33.294548>,  <30.640961, 38.388157, 33.476986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.773315, 38.057705, 33.294548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237672, -0.540701, 0.806942,
		-0.913251, -0.158603, -0.375258,
		0.330886, -0.826129, -0.456099,
		30.872581, 37.809868, 33.157719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.257505, 37.851570, 33.698639>,  <30.640961, 38.388157, 33.476986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.257505, 37.851570, 33.698639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.524826, 37.621506, 33.509933>,  <30.685219, 37.483467, 33.396709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.524826, 37.621506, 33.509933>,  <30.257505, 37.851570, 33.698639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.524826, 37.621506, 33.509933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161685, -0.731333, 0.662578,
		-0.726107, -0.366525, -0.581746,
		0.668301, -0.575162, -0.471764,
		30.725317, 37.448956, 33.368404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.020847, 37.225273, 33.285423>,  <30.257505, 37.851570, 33.698639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.020847, 37.225273, 33.285423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.388096, 37.150776, 33.425346>,  <30.608444, 37.106075, 33.509300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.388096, 37.150776, 33.425346>,  <30.020847, 37.225273, 33.285423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.388096, 37.150776, 33.425346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350913, -0.792246, 0.499205,
		0.184162, -0.581084, -0.792733,
		0.918120, -0.186246, 0.349811,
		30.663532, 37.094902, 33.530289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.060135, 36.463543, 33.417412>,  <30.020847, 37.225273, 33.285423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.060135, 36.463543, 33.417412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.410622, 36.575726, 33.574177>,  <30.620913, 36.643036, 33.668236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.410622, 36.575726, 33.574177>,  <30.060135, 36.463543, 33.417412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.410622, 36.575726, 33.574177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023993, -0.786826, 0.616708,
		0.481323, -0.549771, -0.682700,
		0.876215, 0.280456, 0.391908,
		30.673487, 36.659863, 33.691750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.415400, 35.940334, 33.592396>,  <30.060135, 36.463543, 33.417412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.415400, 35.940334, 33.592396> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.586475, 36.198441, 33.845604>,  <30.689121, 36.353306, 33.997528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.586475, 36.198441, 33.845604>,  <30.415400, 35.940334, 33.592396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.586475, 36.198441, 33.845604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047535, -0.683277, 0.728611,
		0.902675, -0.341710, -0.261558,
		0.427691, 0.645265, 0.633020,
		30.714783, 36.392021, 34.035511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.947729, 35.558651, 33.942802>,  <30.415400, 35.940334, 33.592396>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.947729, 35.558651, 33.942802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.871275, 35.871696, 34.179779>,  <30.825403, 36.059525, 34.321964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.871275, 35.871696, 34.179779>,  <30.947729, 35.558651, 33.942802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.871275, 35.871696, 34.179779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049399, -0.610476, 0.790493,
		0.980320, 0.121823, 0.155343,
		-0.191133, 0.782610, 0.592444,
		30.813934, 36.106480, 34.357513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.217939, 35.393787, 34.654499>,  <30.947729, 35.558651, 33.942802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.217939, 35.393787, 34.654499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.947813, 35.678699, 34.731030>,  <30.785736, 35.849648, 34.776947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.947813, 35.678699, 34.731030>,  <31.217939, 35.393787, 34.654499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.947813, 35.678699, 34.731030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192809, -0.420897, 0.886380,
		0.711879, 0.561699, 0.421573,
		-0.675317, 0.712278, 0.191327,
		30.745218, 35.892384, 34.788429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.270834, 35.446362, 35.373230>,  <31.217939, 35.393787, 34.654499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.270834, 35.446362, 35.373230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.923439, 35.621181, 35.279667>,  <30.715002, 35.726074, 35.223530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.923439, 35.621181, 35.279667>,  <31.270834, 35.446362, 35.373230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.923439, 35.621181, 35.279667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371543, -0.261546, 0.890814,
		0.328152, 0.860569, 0.389533,
		-0.868488, 0.437051, -0.233912,
		30.662893, 35.752296, 35.209492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.294008, 35.966328, 35.761196>,  <31.270834, 35.446362, 35.373230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.294008, 35.966328, 35.761196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.907251, 35.920315, 35.670082>,  <30.675198, 35.892708, 35.615414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.907251, 35.920315, 35.670082>,  <31.294008, 35.966328, 35.761196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.907251, 35.920315, 35.670082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241687, 0.126351, 0.962093,
		-0.081893, 0.985293, -0.149970,
		-0.966892, -0.115035, -0.227785,
		30.617184, 35.885803, 35.601746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.993200, 36.567150, 36.039768>,  <31.294008, 35.966328, 35.761196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.993200, 36.567150, 36.039768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.727156, 36.271027, 36.000641>,  <30.567528, 36.093353, 35.977165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.727156, 36.271027, 36.000641>,  <30.993200, 36.567150, 36.039768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.727156, 36.271027, 36.000641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198069, 0.048602, 0.978982,
		-0.719996, 0.670507, -0.178958,
		-0.665113, -0.740309, -0.097814,
		30.527622, 36.048935, 35.971298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.508999, 36.717819, 36.612347>,  <30.993200, 36.567150, 36.039768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.508999, 36.717819, 36.612347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.447823, 36.345142, 36.480549>,  <30.411118, 36.121536, 36.401470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.447823, 36.345142, 36.480549>,  <30.508999, 36.717819, 36.612347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.447823, 36.345142, 36.480549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521938, -0.206965, 0.827494,
		-0.839160, 0.298533, -0.454630,
		-0.152941, -0.931689, -0.329493,
		30.401939, 36.065636, 36.381702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.784328, 36.659931, 36.704243>,  <30.508999, 36.717819, 36.612347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.784328, 36.659931, 36.704243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.949604, 36.295704, 36.699471>,  <30.048769, 36.077168, 36.696609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.949604, 36.295704, 36.699471>,  <29.784328, 36.659931, 36.704243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.949604, 36.295704, 36.699471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625318, -0.293225, 0.723185,
		-0.662006, -0.291354, -0.690551,
		0.413190, -0.910567, -0.011928,
		30.073561, 36.022533, 36.695892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.266266, 36.605812, 37.210857>,  <29.784328, 36.659931, 36.704243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.266266, 36.605812, 37.210857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.958862, 36.820042, 37.350895>,  <28.774420, 36.948578, 37.434917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.958862, 36.820042, 37.350895>,  <29.266266, 36.605812, 37.210857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.958862, 36.820042, 37.350895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403222, 0.019449, -0.914896,
		-0.496800, -0.844267, 0.201007,
		-0.768506, 0.535570, 0.350089,
		28.728310, 36.980713, 37.455921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.684793, 36.380291, 36.938671>,  <29.266266, 36.605812, 37.210857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.684793, 36.380291, 36.938671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.576244, 36.751614, 37.040337>,  <28.511114, 36.974407, 37.101337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.576244, 36.751614, 37.040337>,  <28.684793, 36.380291, 36.938671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.576244, 36.751614, 37.040337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395434, 0.133219, -0.908782,
		-0.877489, -0.347125, 0.330933,
		-0.271374, 0.928308, 0.254164,
		28.494831, 37.030106, 37.116585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.944647, 36.324051, 36.918152>,  <28.684793, 36.380291, 36.938671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.944647, 36.324051, 36.918152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.059214, 36.707016, 36.903564>,  <28.127954, 36.936794, 36.894814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.059214, 36.707016, 36.903564>,  <27.944647, 36.324051, 36.918152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.059214, 36.707016, 36.903564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556662, 0.135314, -0.819645,
		-0.779802, 0.255060, 0.571710,
		0.286419, 0.957410, -0.036464,
		28.145140, 36.994240, 36.892624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.300470, 36.709808, 36.750072>,  <27.944647, 36.324051, 36.918152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.300470, 36.709808, 36.750072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.614050, 36.931019, 36.637230>,  <27.802198, 37.063744, 36.569523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.614050, 36.931019, 36.637230>,  <27.300470, 36.709808, 36.750072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.614050, 36.931019, 36.637230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467372, 0.226623, -0.854521,
		-0.408638, 0.801752, 0.436130,
		0.783951, 0.553025, -0.282110,
		27.849236, 37.096928, 36.552597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.109940, 37.368996, 36.686489>,  <27.300470, 36.709808, 36.750072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.109940, 37.368996, 36.686489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.434315, 37.355209, 36.452843>,  <27.628941, 37.346935, 36.312656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.434315, 37.355209, 36.452843>,  <27.109940, 37.368996, 36.686489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.434315, 37.355209, 36.452843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474725, 0.544839, -0.691221,
		0.342075, 0.837832, 0.425468,
		0.810938, -0.034469, -0.584116,
		27.677597, 37.344868, 36.277607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.121342, 38.079029, 36.231434>,  <27.109940, 37.368996, 36.686489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.121342, 38.079029, 36.231434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.440199, 37.894627, 36.075466>,  <27.631514, 37.783985, 35.981888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.440199, 37.894627, 36.075466>,  <27.121342, 38.079029, 36.231434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.440199, 37.894627, 36.075466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016598, 0.628805, -0.777386,
		0.603562, 0.626160, 0.493596,
		0.797143, -0.461008, -0.389915,
		27.679342, 37.756325, 35.958492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.705067, 38.642975, 36.060406>,  <27.121342, 38.079029, 36.231434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.705067, 38.642975, 36.060406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.730888, 38.310455, 35.839581>,  <27.746382, 38.110943, 35.707085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.730888, 38.310455, 35.839581>,  <27.705067, 38.642975, 36.060406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.730888, 38.310455, 35.839581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027184, 0.551547, -0.833701,
		0.997544, 0.068828, 0.013008,
		0.064556, -0.831300, -0.552063,
		27.750256, 38.061066, 35.673962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.140549, 38.775249, 35.482365>,  <27.705067, 38.642975, 36.060406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.140549, 38.775249, 35.482365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.955091, 38.447800, 35.346786>,  <27.843817, 38.251331, 35.265438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.955091, 38.447800, 35.346786>,  <28.140549, 38.775249, 35.482365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.955091, 38.447800, 35.346786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168667, 0.457104, -0.873274,
		0.869819, -0.347718, -0.350009,
		-0.463644, -0.818625, -0.338949,
		27.815998, 38.202213, 35.245102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.530359, 38.709576, 34.850941>,  <28.140549, 38.775249, 35.482365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.530359, 38.709576, 34.850941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.197119, 38.489101, 34.832466>,  <27.997175, 38.356815, 34.821381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.197119, 38.489101, 34.832466>,  <28.530359, 38.709576, 34.850941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.197119, 38.489101, 34.832466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180257, 0.349491, -0.919436,
		0.522926, -0.757658, -0.390517,
		-0.833101, -0.551190, -0.046185,
		27.947189, 38.323746, 34.818611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.567812, 38.273582, 34.251423>,  <28.530359, 38.709576, 34.850941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.567812, 38.273582, 34.251423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.181091, 38.340271, 34.328876>,  <27.949059, 38.380283, 34.375347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.181091, 38.340271, 34.328876>,  <28.567812, 38.273582, 34.251423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.181091, 38.340271, 34.328876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094194, 0.471879, -0.876617,
		-0.237525, -0.865756, -0.440510,
		-0.966804, 0.166725, 0.193632,
		27.891050, 38.390289, 34.386967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.237085, 38.158951, 33.528618>,  <28.567812, 38.273582, 34.251423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.237085, 38.158951, 33.528618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.014002, 38.381638, 33.774876>,  <27.880152, 38.515251, 33.922630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.014002, 38.381638, 33.774876>,  <28.237085, 38.158951, 33.528618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.014002, 38.381638, 33.774876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304984, 0.552383, -0.775795,
		-0.771974, -0.620431, -0.138279,
		-0.557710, 0.556721, 0.615647,
		27.846689, 38.548653, 33.959568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.490295, 38.183216, 33.293678>,  <28.237085, 38.158951, 33.528618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.490295, 38.183216, 33.293678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.509851, 38.522522, 33.504604>,  <27.521585, 38.726105, 33.631161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.509851, 38.522522, 33.504604>,  <27.490295, 38.183216, 33.293678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.509851, 38.522522, 33.504604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240516, 0.522407, -0.818073,
		-0.969413, -0.086830, 0.229562,
		0.048891, 0.848264, 0.527312,
		27.524519, 38.777000, 33.662800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.809702, 38.604435, 33.230686>,  <27.490295, 38.183216, 33.293678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.809702, 38.604435, 33.230686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.123667, 38.840771, 33.305325>,  <27.312046, 38.982571, 33.350109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.123667, 38.840771, 33.305325>,  <26.809702, 38.604435, 33.230686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.123667, 38.840771, 33.305325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187575, 0.513608, -0.837271,
		-0.590530, 0.622185, 0.513965,
		0.784914, 0.590841, 0.186595,
		27.359140, 39.018024, 33.361301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.588022, 39.203110, 32.968624>,  <26.809702, 38.604435, 33.230686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.588022, 39.203110, 32.968624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.960094, 39.317188, 33.061081>,  <27.183338, 39.385635, 33.116554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.960094, 39.317188, 33.061081>,  <26.588022, 39.203110, 32.968624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.960094, 39.317188, 33.061081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049747, 0.721753, -0.690361,
		-0.363719, 0.630661, 0.685547,
		0.930179, 0.285201, 0.231142,
		27.239149, 39.402748, 33.130424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.599159, 40.018581, 32.990696>,  <26.588022, 39.203110, 32.968624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.599159, 40.018581, 32.990696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.979506, 39.904015, 32.943676>,  <27.207714, 39.835274, 32.915462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.979506, 39.904015, 32.943676>,  <26.599159, 40.018581, 32.990696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.979506, 39.904015, 32.943676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127197, 0.707566, -0.695105,
		0.282262, 0.646001, 0.709233,
		0.950867, -0.286415, -0.117550,
		27.264767, 39.818089, 32.908413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.028669, 40.645874, 32.846100>,  <26.599159, 40.018581, 32.990696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.028669, 40.645874, 32.846100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.244917, 40.341351, 32.702911>,  <27.374664, 40.158638, 32.616997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.244917, 40.341351, 32.702911>,  <27.028669, 40.645874, 32.846100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.244917, 40.341351, 32.702911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247081, 0.550440, -0.797476,
		0.804167, 0.342680, 0.485681,
		0.540617, -0.761306, -0.357976,
		27.407103, 40.112957, 32.595520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.597662, 40.919800, 32.517361>,  <27.028669, 40.645874, 32.846100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.597662, 40.919800, 32.517361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.631727, 40.560238, 32.345448>,  <27.652166, 40.344501, 32.242298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.631727, 40.560238, 32.345448>,  <27.597662, 40.919800, 32.517361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.631727, 40.560238, 32.345448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194862, 0.438046, -0.877579,
		0.977126, -0.009009, 0.212469,
		0.085165, -0.898908, -0.429782,
		27.657276, 40.290565, 32.216515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.117727, 41.013248, 31.924202>,  <27.597662, 40.919800, 32.517361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.117727, 41.013248, 31.924202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.974306, 40.664597, 31.790514>,  <27.888254, 40.455406, 31.710300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.974306, 40.664597, 31.790514>,  <28.117727, 41.013248, 31.924202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.974306, 40.664597, 31.790514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080322, 0.327894, -0.941294,
		0.930048, -0.364348, -0.047556,
		-0.358552, -0.871629, -0.334222,
		27.866741, 40.403107, 31.690247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.531944, 40.824028, 31.381374>,  <28.117727, 41.013248, 31.924202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.531944, 40.824028, 31.381374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.169893, 40.661648, 31.330858>,  <27.952663, 40.564220, 31.300549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.169893, 40.661648, 31.330858>,  <28.531944, 40.824028, 31.381374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.169893, 40.661648, 31.330858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000056, 0.296937, -0.954897,
		0.425143, -0.864310, -0.268743,
		-0.905126, -0.405952, -0.126289,
		27.898355, 40.539864, 31.292973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.550661, 40.313316, 30.778917>,  <28.531944, 40.824028, 31.381374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.550661, 40.313316, 30.778917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.167862, 40.414650, 30.835447>,  <27.938183, 40.475452, 30.869366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.167862, 40.414650, 30.835447>,  <28.550661, 40.313316, 30.778917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.167862, 40.414650, 30.835447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071238, 0.267014, -0.961056,
		-0.281209, -0.929797, -0.237484,
		-0.956999, 0.253339, 0.141324,
		27.880762, 40.490650, 30.877844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.200005, 40.120056, 30.110958>,  <28.550661, 40.313316, 30.778917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.200005, 40.120056, 30.110958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.951561, 40.373943, 30.294855>,  <27.802496, 40.526276, 30.405193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.951561, 40.373943, 30.294855>,  <28.200005, 40.120056, 30.110958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.951561, 40.373943, 30.294855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053888, 0.550637, -0.833004,
		-0.781870, -0.542160, -0.307802,
		-0.621108, 0.634714, 0.459742,
		27.765228, 40.564358, 30.432777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.624508, 40.049053, 29.770733>,  <28.200005, 40.120056, 30.110958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.624508, 40.049053, 29.770733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.590879, 40.411327, 29.936943>,  <27.570702, 40.628693, 30.036669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.590879, 40.411327, 29.936943>,  <27.624508, 40.049053, 29.770733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.590879, 40.411327, 29.936943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246900, 0.385065, -0.889250,
		-0.965387, -0.177353, 0.191242,
		-0.084071, 0.905688, 0.415526,
		27.565659, 40.683033, 30.061602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.967028, 40.357967, 29.534986>,  <27.624508, 40.049053, 29.770733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.967028, 40.357967, 29.534986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.217497, 40.649254, 29.646423>,  <27.367779, 40.824024, 29.713285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.217497, 40.649254, 29.646423>,  <26.967028, 40.357967, 29.534986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.217497, 40.649254, 29.646423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357120, 0.585504, -0.727771,
		-0.693088, 0.356221, 0.626686,
		0.626174, 0.728212, 0.278592,
		27.405350, 40.867718, 29.730001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.646488, 40.898968, 29.369886>,  <26.967028, 40.357967, 29.534986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.646488, 40.898968, 29.369886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.011108, 41.055569, 29.420168>,  <27.229881, 41.149529, 29.450336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.011108, 41.055569, 29.420168>,  <26.646488, 40.898968, 29.369886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.011108, 41.055569, 29.420168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055462, 0.419982, -0.905836,
		-0.407428, 0.818745, 0.404549,
		0.911552, 0.391500, 0.125703,
		27.284575, 41.173019, 29.457878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.730371, 41.740768, 29.427172>,  <26.646488, 40.898968, 29.369886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.730371, 41.740768, 29.427172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.079103, 41.599064, 29.291870>,  <27.288342, 41.514042, 29.210690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.079103, 41.599064, 29.291870>,  <26.730371, 41.740768, 29.427172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.079103, 41.599064, 29.291870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049715, 0.623015, -0.780628,
		0.487282, 0.697390, 0.525550,
		0.871828, -0.354258, -0.338255,
		27.340652, 41.492786, 29.190393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.065487, 42.279034, 29.088974>,  <26.730371, 41.740768, 29.427172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.065487, 42.279034, 29.088974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.309521, 41.991501, 28.955664>,  <27.455942, 41.818981, 28.875677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.309521, 41.991501, 28.955664>,  <27.065487, 42.279034, 29.088974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.309521, 41.991501, 28.955664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114673, 0.496303, -0.860542,
		0.783992, 0.486788, 0.385219,
		0.610087, -0.718833, -0.333277,
		27.492546, 41.775852, 28.855680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.564579, 42.601112, 28.724052>,  <27.065487, 42.279034, 29.088974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.564579, 42.601112, 28.724052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.571651, 42.227211, 28.582113>,  <27.575895, 42.002869, 28.496950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.571651, 42.227211, 28.582113>,  <27.564579, 42.601112, 28.724052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.571651, 42.227211, 28.582113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149718, 0.353379, -0.923422,
		0.988571, -0.036800, 0.146198,
		0.017681, -0.934756, -0.354850,
		27.576956, 41.946785, 28.475658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.180254, 42.468906, 28.336096>,  <27.564579, 42.601112, 28.724052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.180254, 42.468906, 28.336096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.929993, 42.213192, 28.157267>,  <27.779835, 42.059765, 28.049969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.929993, 42.213192, 28.157267>,  <28.180254, 42.468906, 28.336096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.929993, 42.213192, 28.157267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297281, 0.334465, -0.894291,
		0.721234, -0.692425, -0.019214,
		-0.625655, -0.639282, -0.447073,
		27.742296, 42.021408, 28.023146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.781139, 42.922352, 28.623558>,  <28.180254, 42.468906, 28.336096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.781139, 42.922352, 28.623558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.835541, 43.314629, 28.679766>,  <28.868181, 43.549995, 28.713490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.835541, 43.314629, 28.679766>,  <28.781139, 42.922352, 28.623558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.835541, 43.314629, 28.679766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106299, -0.126572, 0.986246,
		0.984989, -0.149068, 0.087032,
		0.136002, 0.980693, 0.140518,
		28.876341, 43.608837, 28.721922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.083723, 42.882896, 29.324160>,  <28.781139, 42.922352, 28.623558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.083723, 42.882896, 29.324160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.983408, 43.267822, 29.282091>,  <28.923220, 43.498775, 29.256849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.983408, 43.267822, 29.282091>,  <29.083723, 42.882896, 29.324160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.983408, 43.267822, 29.282091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186835, 0.058483, 0.980649,
		0.949841, 0.265584, 0.165127,
		-0.250788, 0.962312, -0.105170,
		28.908173, 43.556515, 29.250540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.524681, 43.317192, 29.770861>,  <29.083723, 42.882896, 29.324160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.524681, 43.317192, 29.770861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.197027, 43.534893, 29.698410>,  <29.000435, 43.665516, 29.654940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.197027, 43.534893, 29.698410>,  <29.524681, 43.317192, 29.770861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.197027, 43.534893, 29.698410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209108, 0.010699, 0.977834,
		0.534128, 0.838852, 0.105044,
		-0.819134, 0.544254, -0.181125,
		28.951286, 43.698170, 29.644072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.597792, 43.976807, 30.019297>,  <29.524681, 43.317192, 29.770861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.597792, 43.976807, 30.019297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.199095, 43.945164, 30.013067>,  <28.959877, 43.926178, 30.009329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.199095, 43.945164, 30.013067>,  <29.597792, 43.976807, 30.019297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.199095, 43.945164, 30.013067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015330, -0.003707, 0.999876,
		-0.079154, 0.996859, 0.002482,
		-0.996745, -0.079106, -0.015575,
		28.900072, 43.921432, 30.008394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.305552, 44.538090, 30.483547>,  <29.597792, 43.976807, 30.019297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.305552, 44.538090, 30.483547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.023247, 44.255157, 30.467648>,  <28.853865, 44.085396, 30.458107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.023247, 44.255157, 30.467648>,  <29.305552, 44.538090, 30.483547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.023247, 44.255157, 30.467648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005605, -0.061681, 0.998080,
		-0.708427, 0.704185, 0.047496,
		-0.705762, -0.707333, -0.039749,
		28.811518, 44.042957, 30.455723>
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
