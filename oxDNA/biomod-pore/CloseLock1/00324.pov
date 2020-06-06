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
	<24.535500, 34.874512, 34.649208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.367851, 34.721218, 34.978443>,  <24.267263, 34.629242, 35.175983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.367851, 34.721218, 34.978443>,  <24.535500, 34.874512, 34.649208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.367851, 34.721218, 34.978443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894026, -0.016149, 0.447724,
		-0.158291, 0.923510, 0.349390,
		-0.419120, -0.383235, 0.823085,
		24.242115, 34.606247, 35.225368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.639942, 35.244442, 35.296093>,  <24.535500, 34.874512, 34.649208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.639942, 35.244442, 35.296093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.592659, 34.858727, 35.390900>,  <24.564289, 34.627296, 35.447784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.592659, 34.858727, 35.390900>,  <24.639942, 35.244442, 35.296093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.592659, 34.858727, 35.390900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813399, 0.042881, 0.580123,
		-0.569569, 0.261362, 0.779282,
		-0.118206, -0.964288, 0.237015,
		24.557198, 34.569439, 35.462006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.045336, 35.342957, 35.806465>,  <24.639942, 35.244442, 35.296093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.045336, 35.342957, 35.806465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.006351, 34.946671, 35.768532>,  <24.982962, 34.708900, 35.745773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.006351, 34.946671, 35.768532>,  <25.045336, 35.342957, 35.806465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.006351, 34.946671, 35.768532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864596, -0.131477, 0.484962,
		-0.492925, -0.034728, 0.869378,
		-0.097461, -0.990711, -0.094834,
		24.977114, 34.649456, 35.740082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.755474, 35.579144, 35.985966>,  <25.045336, 35.342957, 35.806465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.755474, 35.579144, 35.985966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.880665, 35.957664, 36.018356>,  <25.955780, 36.184776, 36.037792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.880665, 35.957664, 36.018356>,  <25.755474, 35.579144, 35.985966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.880665, 35.957664, 36.018356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211005, 0.152412, -0.965530,
		-0.926025, 0.285102, 0.247376,
		0.312977, 0.946302, 0.080979,
		25.974558, 36.241554, 36.042648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.202591, 36.037315, 35.718258>,  <25.755474, 35.579144, 35.985966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.202591, 36.037315, 35.718258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.572878, 36.182785, 35.676704>,  <25.795050, 36.270065, 35.651772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.572878, 36.182785, 35.676704>,  <25.202591, 36.037315, 35.718258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.572878, 36.182785, 35.676704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152057, 0.106376, -0.982630,
		-0.346303, 0.925434, 0.153773,
		0.925718, 0.363670, -0.103881,
		25.850594, 36.291885, 35.645538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.093647, 36.572670, 35.302402>,  <25.202591, 36.037315, 35.718258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.093647, 36.572670, 35.302402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.485353, 36.493961, 35.283115>,  <25.720377, 36.446735, 35.271545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.485353, 36.493961, 35.283115>,  <25.093647, 36.572670, 35.302402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.485353, 36.493961, 35.283115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026436, 0.111843, -0.993374,
		0.200857, 0.974050, 0.104322,
		0.979264, -0.196768, -0.048215,
		25.779133, 36.434933, 35.268650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.224056, 36.986088, 34.715549>,  <25.093647, 36.572670, 35.302402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.224056, 36.986088, 34.715549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.558764, 36.771397, 34.758892>,  <25.759588, 36.642582, 34.784897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.558764, 36.771397, 34.758892>,  <25.224056, 36.986088, 34.715549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.558764, 36.771397, 34.758892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203814, 0.121630, -0.971425,
		0.508212, 0.834942, 0.211169,
		0.836768, -0.536729, 0.108359,
		25.809793, 36.610378, 34.791401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.642220, 37.152706, 34.171242>,  <25.224056, 36.986088, 34.715549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.642220, 37.152706, 34.171242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.841806, 36.824379, 34.282440>,  <25.961559, 36.627380, 34.349159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.841806, 36.824379, 34.282440>,  <25.642220, 37.152706, 34.171242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.841806, 36.824379, 34.282440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255018, -0.167513, -0.952316,
		0.828249, 0.546070, 0.125741,
		0.498968, -0.820821, 0.278000,
		25.991497, 36.578133, 34.365841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.318054, 37.202175, 33.920624>,  <25.642220, 37.152706, 34.171242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.318054, 37.202175, 33.920624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.240370, 36.817120, 33.996109>,  <26.193760, 36.586086, 34.041401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.240370, 36.817120, 33.996109>,  <26.318054, 37.202175, 33.920624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.240370, 36.817120, 33.996109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041035, -0.200176, -0.978900,
		0.980101, -0.182369, 0.078378,
		-0.194211, -0.962637, 0.188710,
		26.182106, 36.528328, 34.052723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.732683, 36.796803, 33.596867>,  <26.318054, 37.202175, 33.920624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.732683, 36.796803, 33.596867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.463100, 36.511971, 33.675583>,  <26.301352, 36.341072, 33.722813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.463100, 36.511971, 33.675583>,  <26.732683, 36.796803, 33.596867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.463100, 36.511971, 33.675583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092142, -0.345312, -0.933954,
		0.733002, -0.611313, 0.298338,
		-0.673957, -0.712079, 0.196786,
		26.260914, 36.298347, 33.734619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.003000, 36.130810, 33.469769>,  <26.732683, 36.796803, 33.596867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.003000, 36.130810, 33.469769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.608253, 36.078564, 33.431763>,  <26.371405, 36.047215, 33.408958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.608253, 36.078564, 33.431763>,  <27.003000, 36.130810, 33.469769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.608253, 36.078564, 33.431763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139634, -0.394238, -0.908338,
		0.081188, -0.909678, 0.407301,
		-0.986869, -0.130619, -0.095015,
		26.312193, 36.039379, 33.403259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.885862, 35.448383, 33.054890>,  <27.003000, 36.130810, 33.469769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.885862, 35.448383, 33.054890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.564272, 35.677265, 32.990131>,  <26.371319, 35.814594, 32.951275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.564272, 35.677265, 32.990131>,  <26.885862, 35.448383, 33.054890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.564272, 35.677265, 32.990131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084914, -0.158993, -0.983621,
		-0.588571, -0.804553, 0.079238,
		-0.803974, 0.572203, -0.161896,
		26.323080, 35.848927, 32.941563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.590637, 35.137177, 32.496269>,  <26.885862, 35.448383, 33.054890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.590637, 35.137177, 32.496269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.392044, 35.484310, 32.503914>,  <26.272888, 35.692589, 32.508503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.392044, 35.484310, 32.503914>,  <26.590637, 35.137177, 32.496269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.392044, 35.484310, 32.503914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077209, 0.066082, -0.994823,
		-0.864605, -0.492438, -0.099813,
		-0.496484, 0.867835, 0.019114,
		26.243099, 35.744659, 32.509647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.049643, 35.136860, 31.961155>,  <26.590637, 35.137177, 32.496269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.049643, 35.136860, 31.961155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.141266, 35.522343, 32.016006>,  <26.196239, 35.753632, 32.048916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.141266, 35.522343, 32.016006>,  <26.049643, 35.136860, 31.961155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.141266, 35.522343, 32.016006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173329, 0.098242, -0.979952,
		-0.957856, 0.248235, -0.144535,
		0.229059, 0.963705, 0.137128,
		26.209984, 35.811455, 32.057144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.811184, 35.362221, 31.358412>,  <26.049643, 35.136860, 31.961155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.811184, 35.362221, 31.358412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.013544, 35.692440, 31.458441>,  <26.134960, 35.890572, 31.518459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.013544, 35.692440, 31.458441>,  <25.811184, 35.362221, 31.358412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.013544, 35.692440, 31.458441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297970, 0.104812, -0.948804,
		-0.809493, 0.554515, -0.192964,
		0.505901, 0.825547, 0.250074,
		26.165314, 35.940105, 31.533463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.454142, 35.925987, 31.054298>,  <25.811184, 35.362221, 31.358412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.454142, 35.925987, 31.054298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.831423, 36.031933, 31.134518>,  <26.057791, 36.095501, 31.182650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.831423, 36.031933, 31.134518>,  <25.454142, 35.925987, 31.054298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.831423, 36.031933, 31.134518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103526, 0.339278, -0.934972,
		-0.315681, 0.902629, 0.292587,
		0.943201, 0.264863, 0.200549,
		26.114384, 36.111393, 31.194683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.670729, 36.697941, 30.900366>,  <25.454142, 35.925987, 31.054298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.670729, 36.697941, 30.900366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.018330, 36.500046, 30.896994>,  <26.226891, 36.381310, 30.894970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.018330, 36.500046, 30.896994>,  <25.670729, 36.697941, 30.900366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.018330, 36.500046, 30.896994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209882, 0.383977, -0.899173,
		0.448094, 0.779612, 0.437513,
		0.869000, -0.494740, -0.008431,
		26.279030, 36.351624, 30.894464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.072466, 37.179588, 30.421766>,  <25.670729, 36.697941, 30.900366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.072466, 37.179588, 30.421766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.279560, 36.838001, 30.442524>,  <26.403816, 36.633049, 30.454979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.279560, 36.838001, 30.442524>,  <26.072466, 37.179588, 30.421766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.279560, 36.838001, 30.442524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439371, 0.213349, -0.872602,
		0.734100, 0.474578, 0.485667,
		0.517735, -0.853966, 0.051896,
		26.434881, 36.581810, 30.458094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.807056, 37.362972, 30.468964>,  <26.072466, 37.179588, 30.421766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.807056, 37.362972, 30.468964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.824507, 36.981377, 30.350300>,  <26.834976, 36.752419, 30.279102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.824507, 36.981377, 30.350300>,  <26.807056, 37.362972, 30.468964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.824507, 36.981377, 30.350300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499064, 0.278049, -0.820746,
		0.865466, -0.112247, 0.488230,
		0.043625, -0.953986, -0.296660,
		26.837595, 36.695179, 30.261301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.503075, 37.224522, 30.214027>,  <26.807056, 37.362972, 30.468964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.503075, 37.224522, 30.214027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.276524, 36.943527, 30.041643>,  <27.140593, 36.774929, 29.938213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.276524, 36.943527, 30.041643>,  <27.503075, 37.224522, 30.214027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.276524, 36.943527, 30.041643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395019, 0.227541, -0.890048,
		0.723309, -0.674340, 0.148622,
		-0.566378, -0.702489, -0.430960,
		27.106609, 36.732780, 29.912355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.959433, 37.150723, 29.763927>,  <27.503075, 37.224522, 30.214027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.959433, 37.150723, 29.763927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.647936, 36.926296, 29.651667>,  <27.461037, 36.791641, 29.584311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.647936, 36.926296, 29.651667>,  <27.959433, 37.150723, 29.763927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.647936, 36.926296, 29.651667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297552, 0.063505, -0.952591,
		0.552287, -0.825333, 0.117492,
		-0.778744, -0.561064, -0.280652,
		27.414312, 36.757977, 29.567471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.177126, 36.493908, 29.329952>,  <27.959433, 37.150723, 29.763927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.177126, 36.493908, 29.329952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.801741, 36.595215, 29.236023>,  <27.576509, 36.655998, 29.179665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.801741, 36.595215, 29.236023>,  <28.177126, 36.493908, 29.329952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.801741, 36.595215, 29.236023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239575, -0.012375, -0.970799,
		-0.248779, -0.967317, -0.049064,
		-0.938463, 0.253269, -0.234823,
		27.520203, 36.671196, 29.165575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.976019, 36.044964, 28.832500>,  <28.177126, 36.493908, 29.329952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.976019, 36.044964, 28.832500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.719210, 36.346798, 28.778229>,  <27.565125, 36.527897, 28.745667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.719210, 36.346798, 28.778229>,  <27.976019, 36.044964, 28.832500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.719210, 36.346798, 28.778229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200662, -0.005418, -0.979645,
		-0.739962, -0.656179, -0.147939,
		-0.642021, 0.754586, -0.135679,
		27.526604, 36.573174, 28.737526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.546307, 35.924858, 28.198887>,  <27.976019, 36.044964, 28.832500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.546307, 35.924858, 28.198887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.495693, 36.314709, 28.272736>,  <27.465324, 36.548618, 28.317045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.495693, 36.314709, 28.272736>,  <27.546307, 35.924858, 28.198887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.495693, 36.314709, 28.272736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177283, 0.205342, -0.962499,
		-0.975991, -0.089060, -0.198769,
		-0.126536, 0.974629, 0.184624,
		27.457733, 36.607098, 28.328123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.137371, 36.205292, 27.581600>,  <27.546307, 35.924858, 28.198887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.137371, 36.205292, 27.581600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.333035, 36.497971, 27.771484>,  <27.450432, 36.673576, 27.885414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.333035, 36.497971, 27.771484>,  <27.137371, 36.205292, 27.581600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.333035, 36.497971, 27.771484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163706, 0.457573, -0.873972,
		-0.856695, 0.505222, 0.104042,
		0.489157, 0.731695, 0.474708,
		27.479782, 36.717480, 27.913897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.792555, 36.779995, 27.337244>,  <27.137371, 36.205292, 27.581600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.792555, 36.779995, 27.337244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.153650, 36.871494, 27.482979>,  <27.370308, 36.926395, 27.570419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.153650, 36.871494, 27.482979>,  <26.792555, 36.779995, 27.337244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.153650, 36.871494, 27.482979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210564, 0.503582, -0.837895,
		-0.375140, 0.833114, 0.406436,
		0.902736, 0.228747, 0.364338,
		27.424471, 36.940117, 27.592279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.908003, 37.488129, 27.328850>,  <26.792555, 36.779995, 27.337244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.908003, 37.488129, 27.328850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.263140, 37.304596, 27.314905>,  <27.476221, 37.194477, 27.306538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.263140, 37.304596, 27.314905>,  <26.908003, 37.488129, 27.328850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.263140, 37.304596, 27.314905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220966, 0.491575, -0.842335,
		0.403624, 0.740156, 0.537826,
		0.887841, -0.458828, -0.034862,
		27.529491, 37.166946, 27.304447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.393549, 37.986252, 27.136084>,  <26.908003, 37.488129, 27.328850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.393549, 37.986252, 27.136084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.546543, 37.624428, 27.060751>,  <27.638340, 37.407333, 27.015553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.546543, 37.624428, 27.060751>,  <27.393549, 37.986252, 27.136084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.546543, 37.624428, 27.060751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434620, 0.356010, -0.827262,
		0.815359, 0.234565, 0.529310,
		0.382486, -0.904564, -0.188330,
		27.661289, 37.353058, 27.004251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.941877, 38.542404, 26.772472>,  <27.393549, 37.986252, 27.136084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.941877, 38.542404, 26.772472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.927191, 38.805973, 26.471947>,  <26.918379, 38.964115, 26.291632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.927191, 38.805973, 26.471947>,  <26.941877, 38.542404, 26.772472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.927191, 38.805973, 26.471947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993585, -0.104539, -0.043129,
		-0.106961, 0.744914, 0.658530,
		-0.036715, 0.658919, -0.751317,
		26.916176, 39.003651, 26.246552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.403576, 39.094284, 26.830727>,  <26.941877, 38.542404, 26.772472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.403576, 39.094284, 26.830727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.450739, 39.001976, 26.444391>,  <26.479036, 38.946590, 26.212591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.450739, 39.001976, 26.444391>,  <26.403576, 39.094284, 26.830727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.450739, 39.001976, 26.444391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956272, -0.288548, -0.047793,
		-0.267661, 0.929238, -0.254704,
		0.117906, -0.230774, -0.965837,
		26.486111, 38.932743, 26.154640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.899462, 38.591297, 26.820612>,  <26.403576, 39.094284, 26.830727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.899462, 38.591297, 26.820612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.124130, 38.771465, 27.098217>,  <26.258930, 38.879566, 27.264780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.124130, 38.771465, 27.098217>,  <25.899462, 38.591297, 26.820612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.124130, 38.771465, 27.098217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040097, 0.823020, -0.566595,
		-0.826390, 0.346067, 0.444205,
		0.561669, 0.450417, 0.694012,
		26.292631, 38.906590, 27.306421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.274727, 38.720646, 27.143486>,  <25.899462, 38.591297, 26.820612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.274727, 38.720646, 27.143486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.650743, 38.847523, 27.193624>,  <25.876354, 38.923649, 27.223707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.650743, 38.847523, 27.193624>,  <25.274727, 38.720646, 27.143486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.650743, 38.847523, 27.193624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254843, 0.409013, 0.876221,
		0.226658, -0.855629, 0.465323,
		0.940043, 0.317187, 0.125345,
		25.932756, 38.942680, 27.231228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.662544, 38.517101, 27.807955>,  <25.274727, 38.720646, 27.143486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.662544, 38.517101, 27.807955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.801153, 38.878563, 27.707291>,  <25.884317, 39.095440, 27.646893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.801153, 38.878563, 27.707291>,  <25.662544, 38.517101, 27.807955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.801153, 38.878563, 27.707291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166897, 0.323394, 0.931430,
		0.923076, -0.280758, 0.262880,
		0.346520, 0.903654, -0.251660,
		25.905109, 39.149658, 27.631792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.163851, 38.776546, 28.294024>,  <25.662544, 38.517101, 27.807955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.163851, 38.776546, 28.294024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.975262, 39.069782, 28.097946>,  <25.862108, 39.245724, 27.980299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.975262, 39.069782, 28.097946>,  <26.163851, 38.776546, 28.294024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.975262, 39.069782, 28.097946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122134, 0.496215, 0.859566,
		0.873382, 0.465132, -0.144417,
		-0.471473, 0.733091, -0.490194,
		25.833820, 39.289711, 27.950888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.579977, 39.430813, 28.218231>,  <26.163851, 38.776546, 28.294024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.579977, 39.430813, 28.218231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.183647, 39.427490, 28.272186>,  <25.945848, 39.425495, 28.304560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.183647, 39.427490, 28.272186>,  <26.579977, 39.430813, 28.218231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.183647, 39.427490, 28.272186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131037, 0.185123, 0.973940,
		-0.033063, 0.982680, -0.182336,
		-0.990826, -0.008308, 0.134888,
		25.886400, 39.424999, 28.312653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.395937, 40.067688, 28.535595>,  <26.579977, 39.430813, 28.218231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.395937, 40.067688, 28.535595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.143557, 39.766197, 28.609121>,  <25.992128, 39.585300, 28.653236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.143557, 39.766197, 28.609121>,  <26.395937, 40.067688, 28.535595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.143557, 39.766197, 28.609121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141103, 0.121493, 0.982512,
		-0.762882, 0.645855, 0.029697,
		-0.630952, -0.753731, 0.183817,
		25.954271, 39.540077, 28.664267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.111689, 40.232178, 29.145340>,  <26.395937, 40.067688, 28.535595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.111689, 40.232178, 29.145340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.062969, 39.837055, 29.106541>,  <26.033737, 39.599983, 29.083261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.062969, 39.837055, 29.106541>,  <26.111689, 40.232178, 29.145340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.062969, 39.837055, 29.106541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261654, -0.126222, 0.956873,
		-0.957446, 0.091164, 0.273836,
		-0.121797, -0.987804, -0.096997,
		26.026430, 39.540714, 29.077442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.579414, 40.101906, 29.646414>,  <26.111689, 40.232178, 29.145340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.579414, 40.101906, 29.646414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.743372, 39.743919, 29.575968>,  <25.841747, 39.529125, 29.533701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.743372, 39.743919, 29.575968>,  <25.579414, 40.101906, 29.646414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.743372, 39.743919, 29.575968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267934, -0.066422, 0.961145,
		-0.871893, -0.441155, 0.212567,
		0.409895, -0.894970, -0.176113,
		25.866341, 39.475430, 29.523134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.217978, 39.718777, 30.086897>,  <25.579414, 40.101906, 29.646414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.217978, 39.718777, 30.086897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.561314, 39.540897, 29.984524>,  <25.767315, 39.434170, 29.923100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.561314, 39.540897, 29.984524>,  <25.217978, 39.718777, 30.086897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.561314, 39.540897, 29.984524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185906, -0.195370, 0.962948,
		-0.478220, -0.874115, -0.085023,
		0.858339, -0.444695, -0.255933,
		25.818815, 39.407490, 29.907743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.253752, 39.220116, 30.635538>,  <25.217978, 39.718777, 30.086897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.253752, 39.220116, 30.635538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.604162, 39.244080, 30.444126>,  <25.814407, 39.258457, 30.329279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.604162, 39.244080, 30.444126>,  <25.253752, 39.220116, 30.635538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.604162, 39.244080, 30.444126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477594, -0.245542, 0.843572,
		-0.066960, -0.967533, -0.243714,
		0.876025, 0.059911, -0.478530,
		25.866970, 39.262051, 30.300568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.549839, 38.609486, 30.673172>,  <25.253752, 39.220116, 30.635538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.549839, 38.609486, 30.673172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.843191, 38.881023, 30.658606>,  <26.019201, 39.043945, 30.649866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.843191, 38.881023, 30.658606>,  <25.549839, 38.609486, 30.673172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.843191, 38.881023, 30.658606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279536, -0.252297, 0.926394,
		0.619690, -0.689577, -0.374791,
		0.733378, 0.678845, -0.036415,
		26.063204, 39.084679, 30.647680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.065508, 38.309074, 31.003166>,  <25.549839, 38.609486, 30.673172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.065508, 38.309074, 31.003166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.214918, 38.678825, 30.972176>,  <26.304565, 38.900677, 30.953581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.214918, 38.678825, 30.972176>,  <26.065508, 38.309074, 31.003166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.214918, 38.678825, 30.972176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638680, -0.195709, 0.744168,
		0.672729, -0.327451, -0.663484,
		0.373528, 0.924378, -0.077477,
		26.326977, 38.956139, 30.948933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.658981, 38.164047, 31.102707>,  <26.065508, 38.309074, 31.003166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.658981, 38.164047, 31.102707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.662163, 38.557133, 31.176701>,  <26.664072, 38.792984, 31.221096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.662163, 38.557133, 31.176701>,  <26.658981, 38.164047, 31.102707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.662163, 38.557133, 31.176701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627033, -0.149003, 0.764609,
		0.778952, 0.109910, -0.617377,
		0.007953, 0.982710, 0.184983,
		26.664549, 38.851944, 31.232195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.431702, 38.348751, 31.110733>,  <26.658981, 38.164047, 31.102707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.431702, 38.348751, 31.110733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223919, 38.635460, 31.296812>,  <27.099249, 38.807484, 31.408459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223919, 38.635460, 31.296812>,  <27.431702, 38.348751, 31.110733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.223919, 38.635460, 31.296812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666587, -0.000706, 0.745427,
		0.534627, 0.697311, -0.477421,
		-0.519457, 0.716768, 0.465196,
		27.068081, 38.850491, 31.436371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.984524, 38.707901, 31.471224>,  <27.431702, 38.348751, 31.110733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.984524, 38.707901, 31.471224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.638458, 38.793636, 31.652573>,  <27.430819, 38.845078, 31.761383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.638458, 38.793636, 31.652573>,  <27.984524, 38.707901, 31.471224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.638458, 38.793636, 31.652573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453416, -0.051906, 0.889786,
		0.214248, 0.975379, -0.052277,
		-0.865166, 0.214338, 0.453373,
		27.378908, 38.857937, 31.788584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.057386, 39.166073, 31.969898>,  <27.984524, 38.707901, 31.471224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.057386, 39.166073, 31.969898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.711491, 39.007153, 32.092781>,  <27.503952, 38.911800, 32.166512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.711491, 39.007153, 32.092781>,  <28.057386, 39.166073, 31.969898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.711491, 39.007153, 32.092781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414633, -0.219629, 0.883087,
		-0.283378, 0.891020, 0.354655,
		-0.864741, -0.397299, 0.307208,
		27.452068, 38.887962, 32.184944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.999372, 39.427876, 32.719906>,  <28.057386, 39.166073, 31.969898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.999372, 39.427876, 32.719906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.780254, 39.095997, 32.676960>,  <27.648783, 38.896870, 32.651192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.780254, 39.095997, 32.676960>,  <27.999372, 39.427876, 32.719906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.780254, 39.095997, 32.676960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297713, -0.313259, 0.901796,
		-0.781848, 0.462036, 0.418613,
		-0.547796, -0.829694, -0.107367,
		27.615915, 38.847088, 32.644749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.860865, 39.226067, 33.361427>,  <27.999372, 39.427876, 32.719906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.860865, 39.226067, 33.361427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.750998, 38.876881, 33.200184>,  <27.685078, 38.667370, 33.103439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.750998, 38.876881, 33.200184>,  <27.860865, 39.226067, 33.361427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.750998, 38.876881, 33.200184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342901, -0.480592, 0.807124,
		-0.898319, 0.083464, 0.431342,
		-0.274666, -0.872963, -0.403105,
		27.668598, 38.614990, 33.079250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.451721, 38.955448, 33.867599>,  <27.860865, 39.226067, 33.361427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.451721, 38.955448, 33.867599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.575388, 38.655510, 33.633625>,  <27.649588, 38.475548, 33.493240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.575388, 38.655510, 33.633625>,  <27.451721, 38.955448, 33.867599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.575388, 38.655510, 33.633625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359582, -0.477243, 0.801836,
		-0.880408, -0.458233, 0.122083,
		0.309164, -0.749841, -0.584940,
		27.668137, 38.430557, 33.458141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.141455, 38.365356, 34.161179>,  <27.451721, 38.955448, 33.867599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.141455, 38.365356, 34.161179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.483454, 38.299629, 33.964413>,  <27.688654, 38.260193, 33.846355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.483454, 38.299629, 33.964413>,  <27.141455, 38.365356, 34.161179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.483454, 38.299629, 33.964413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289769, -0.635275, 0.715863,
		-0.430129, -0.754603, -0.495545,
		0.854999, -0.164319, -0.491911,
		27.739954, 38.250332, 33.816841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.305128, 37.605835, 34.387566>,  <27.141455, 38.365356, 34.161179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.305128, 37.605835, 34.387566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.644283, 37.708469, 34.201984>,  <27.847776, 37.770050, 34.090637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.644283, 37.708469, 34.201984>,  <27.305128, 37.605835, 34.387566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.644283, 37.708469, 34.201984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519266, -0.578522, 0.629027,
		-0.107009, -0.774259, -0.623756,
		0.847887, 0.256584, -0.463954,
		27.898649, 37.785446, 34.062798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.567863, 36.951283, 34.193539>,  <27.305128, 37.605835, 34.387566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.567863, 36.951283, 34.193539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.866663, 37.217159, 34.198788>,  <28.045942, 37.376686, 34.201935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.866663, 37.217159, 34.198788>,  <27.567863, 36.951283, 34.193539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.866663, 37.217159, 34.198788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516018, -0.592129, 0.618958,
		0.419187, -0.455591, -0.785315,
		0.747000, 0.664695, 0.013119,
		28.090763, 37.416569, 34.202724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.230202, 36.726196, 34.027405>,  <27.567863, 36.951283, 34.193539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.230202, 36.726196, 34.027405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.316614, 37.039516, 34.260567>,  <28.368462, 37.227509, 34.400463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.316614, 37.039516, 34.260567>,  <28.230202, 36.726196, 34.027405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.316614, 37.039516, 34.260567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434631, -0.611739, 0.660962,
		0.874315, 0.110559, -0.472600,
		0.216032, 0.783296, 0.582905,
		28.381424, 37.274506, 34.435440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.914015, 36.563274, 34.337170>,  <28.230202, 36.726196, 34.027405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.914015, 36.563274, 34.337170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.787857, 36.854511, 34.580616>,  <28.712162, 37.029251, 34.726685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.787857, 36.854511, 34.580616>,  <28.914015, 36.563274, 34.337170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.787857, 36.854511, 34.580616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329842, -0.517249, 0.789720,
		0.889792, 0.449821, -0.077015,
		-0.315397, 0.728089, 0.608614,
		28.693237, 37.072937, 34.763199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.500504, 36.659569, 34.844524>,  <28.914015, 36.563274, 34.337170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.500504, 36.659569, 34.844524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.167339, 36.800159, 35.015507>,  <28.967440, 36.884514, 35.118095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.167339, 36.800159, 35.015507>,  <29.500504, 36.659569, 34.844524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.167339, 36.800159, 35.015507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249647, -0.450714, 0.857049,
		0.493896, 0.820560, 0.287659,
		-0.832912, 0.351480, 0.427456,
		28.917465, 36.905605, 35.143745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.766722, 37.040947, 35.335793>,  <29.500504, 36.659569, 34.844524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.766722, 37.040947, 35.335793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.395868, 36.928844, 35.435299>,  <29.173357, 36.861584, 35.495003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.395868, 36.928844, 35.435299>,  <29.766722, 37.040947, 35.335793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.395868, 36.928844, 35.435299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310261, -0.201795, 0.928987,
		-0.210155, 0.938475, 0.274043,
		-0.927131, -0.280256, 0.248764,
		29.117729, 36.844769, 35.509930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.459486, 37.421562, 35.300419>,  <29.766722, 37.040947, 35.335793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.459486, 37.421562, 35.300419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.854414, 37.411018, 35.363041>,  <31.091370, 37.404694, 35.400612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.854414, 37.411018, 35.363041>,  <30.459486, 37.421562, 35.300419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.854414, 37.411018, 35.363041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125183, 0.735722, -0.665614,
		-0.097633, 0.676770, 0.729692,
		0.987318, -0.026359, 0.156551,
		31.150610, 37.403111, 35.410007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.788128, 38.143768, 35.338085>,  <30.459486, 37.421562, 35.300419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.788128, 38.143768, 35.338085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.052332, 37.879311, 35.195751>,  <31.210854, 37.720634, 35.110352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.052332, 37.879311, 35.195751>,  <30.788128, 38.143768, 35.338085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.052332, 37.879311, 35.195751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168072, 0.592098, -0.788144,
		0.731765, 0.460770, 0.502205,
		0.660508, -0.661144, -0.355834,
		31.250484, 37.680969, 35.089001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.355349, 38.564640, 35.112217>,  <30.788128, 38.143768, 35.338085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.355349, 38.564640, 35.112217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460478, 38.220112, 34.938297>,  <31.523556, 38.013393, 34.833946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460478, 38.220112, 34.938297>,  <31.355349, 38.564640, 35.112217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.460478, 38.220112, 34.938297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427624, 0.507950, -0.747746,
		0.864906, 0.010593, 0.501822,
		0.262821, -0.861321, -0.434799,
		31.539324, 37.961716, 34.807858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.974524, 38.869949, 35.066547>,  <31.355349, 38.564640, 35.112217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.974524, 38.869949, 35.066547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.764381, 39.187824, 35.188187>,  <31.638296, 39.378548, 35.261169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.764381, 39.187824, 35.188187>,  <31.974524, 38.869949, 35.066547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.764381, 39.187824, 35.188187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400890, 0.084070, -0.912261,
		-0.750528, -0.601169, 0.274416,
		-0.525353, 0.794688, 0.304099,
		31.606775, 39.426231, 35.279415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.075142, 39.026455, 35.801884>,  <31.974524, 38.869949, 35.066547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.075142, 39.026455, 35.801884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.308064, 39.279682, 35.597862>,  <32.447815, 39.431618, 35.475449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.308064, 39.279682, 35.597862>,  <32.075142, 39.026455, 35.801884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308064, 39.279682, 35.597862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284995, 0.428625, 0.857356,
		0.761384, -0.644601, 0.069168,
		0.582299, 0.633064, -0.510056,
		32.482754, 39.469601, 35.444847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672958, 39.161388, 36.096050>,  <32.075142, 39.026455, 35.801884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.672958, 39.161388, 36.096050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633358, 39.498428, 35.884304>,  <32.609596, 39.700653, 35.757256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633358, 39.498428, 35.884304>,  <32.672958, 39.161388, 36.096050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633358, 39.498428, 35.884304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339200, 0.528692, 0.778092,
		0.935490, -0.102528, -0.338151,
		-0.099002, 0.842599, -0.529364,
		32.603657, 39.751209, 35.725494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319145, 39.609348, 36.209717>,  <32.672958, 39.161388, 36.096050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319145, 39.609348, 36.209717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.934875, 39.715309, 36.242996>,  <32.704311, 39.778885, 36.262966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.934875, 39.715309, 36.242996>,  <33.319145, 39.609348, 36.209717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934875, 39.715309, 36.242996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163699, 0.298319, 0.940324,
		0.224275, 0.916969, -0.329953,
		-0.960679, 0.264904, 0.083201,
		32.646671, 39.794781, 36.267956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266228, 40.309700, 36.543175>,  <33.319145, 39.609348, 36.209717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.266228, 40.309700, 36.543175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974567, 40.046703, 36.619102>,  <32.799572, 39.888905, 36.664661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974567, 40.046703, 36.619102>,  <33.266228, 40.309700, 36.543175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974567, 40.046703, 36.619102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164781, 0.100536, 0.981193,
		-0.664214, 0.746721, 0.035036,
		-0.729155, -0.657496, 0.189823,
		32.755821, 39.849453, 36.676048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744766, 40.635468, 36.933605>,  <33.266228, 40.309700, 36.543175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744766, 40.635468, 36.933605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.768112, 40.240322, 36.991192>,  <32.782120, 40.003235, 37.025745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.768112, 40.240322, 36.991192>,  <32.744766, 40.635468, 36.933605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.768112, 40.240322, 36.991192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016297, 0.143255, 0.989552,
		-0.998162, -0.060101, -0.007738,
		0.058364, -0.987859, 0.143971,
		32.785622, 39.943966, 37.034382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129303, 40.368740, 37.116390>,  <32.744766, 40.635468, 36.933605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129303, 40.368740, 37.116390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419365, 40.123867, 37.242489>,  <32.593403, 39.976944, 37.318150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419365, 40.123867, 37.242489>,  <32.129303, 40.368740, 37.116390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419365, 40.123867, 37.242489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159846, 0.295656, 0.941826,
		-0.669779, -0.733359, 0.116540,
		0.725152, -0.612187, 0.315249,
		32.636909, 39.940212, 37.337063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813179, 40.070976, 37.657551>,  <32.129303, 40.368740, 37.116390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813179, 40.070976, 37.657551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.199833, 39.979820, 37.704346>,  <32.431824, 39.925125, 37.732422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.199833, 39.979820, 37.704346>,  <31.813179, 40.070976, 37.657551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199833, 39.979820, 37.704346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082241, 0.156437, 0.984258,
		-0.242605, -0.961037, 0.132476,
		0.966633, -0.227891, 0.116989,
		32.489822, 39.911453, 37.739441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.785551, 39.667915, 38.278625>,  <31.813179, 40.070976, 37.657551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.785551, 39.667915, 38.278625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165417, 39.790012, 38.250439>,  <32.393337, 39.863270, 38.233528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165417, 39.790012, 38.250439>,  <31.785551, 39.667915, 38.278625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.165417, 39.790012, 38.250439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115896, -0.133346, 0.984270,
		0.291044, -0.942892, -0.162011,
		0.949664, 0.305242, -0.070468,
		32.450317, 39.881584, 38.229298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170410, 39.278728, 38.857811>,  <31.785551, 39.667915, 38.278625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170410, 39.278728, 38.857811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385483, 39.596607, 38.745129>,  <32.514526, 39.787334, 38.677517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385483, 39.596607, 38.745129>,  <32.170410, 39.278728, 38.857811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.385483, 39.596607, 38.745129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240375, 0.175771, 0.954633,
		0.808159, -0.581002, -0.096516,
		0.537679, 0.794696, -0.281709,
		32.546787, 39.835014, 38.660614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813896, 39.240074, 39.156387>,  <32.170410, 39.278728, 38.857811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813896, 39.240074, 39.156387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799839, 39.633476, 39.085407>,  <32.791405, 39.869518, 39.042820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799839, 39.633476, 39.085407>,  <32.813896, 39.240074, 39.156387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799839, 39.633476, 39.085407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333753, 0.178912, 0.925527,
		0.942005, -0.026698, -0.334535,
		-0.035143, 0.983503, -0.177446,
		32.789295, 39.928528, 39.032173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417240, 39.500076, 39.358181>,  <32.813896, 39.240074, 39.156387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417240, 39.500076, 39.358181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.184517, 39.824741, 39.378941>,  <33.044884, 40.019543, 39.391396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.184517, 39.824741, 39.378941>,  <33.417240, 39.500076, 39.358181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184517, 39.824741, 39.378941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426615, 0.250231, 0.869129,
		0.692457, 0.527808, -0.491856,
		-0.581810, 0.811667, 0.051897,
		33.009975, 40.068241, 39.394508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792728, 39.935188, 39.704113>,  <33.417240, 39.500076, 39.358181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792728, 39.935188, 39.704113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437618, 40.116158, 39.737980>,  <33.224552, 40.224739, 39.758301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437618, 40.116158, 39.737980>,  <33.792728, 39.935188, 39.704113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437618, 40.116158, 39.737980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238971, 0.295851, 0.924859,
		0.393375, 0.841302, -0.370765,
		-0.887778, 0.452418, 0.084666,
		33.171284, 40.251884, 39.763378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825428, 40.614727, 39.660831>,  <33.792728, 39.935188, 39.704113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825428, 40.614727, 39.660831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.513321, 40.507519, 39.886875>,  <33.326057, 40.443192, 40.022499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.513321, 40.507519, 39.886875>,  <33.825428, 40.614727, 39.660831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513321, 40.507519, 39.886875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535624, 0.180164, 0.825014,
		-0.322936, 0.946416, 0.002984,
		-0.780269, -0.268025, 0.565105,
		33.279240, 40.427113, 40.056408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965794, 40.983448, 40.306778>,  <33.825428, 40.614727, 39.660831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965794, 40.983448, 40.306778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689156, 40.720768, 40.427074>,  <33.523170, 40.563160, 40.499252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689156, 40.720768, 40.427074>,  <33.965794, 40.983448, 40.306778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689156, 40.720768, 40.427074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317114, 0.098024, 0.943308,
		-0.648947, 0.747757, 0.140454,
		-0.691597, -0.656697, 0.300737,
		33.481678, 40.523758, 40.517296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.735519, 41.246918, 40.961315>,  <33.965794, 40.983448, 40.306778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.735519, 41.246918, 40.961315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612278, 40.866730, 40.977688>,  <33.538334, 40.638615, 40.987511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612278, 40.866730, 40.977688>,  <33.735519, 41.246918, 40.961315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612278, 40.866730, 40.977688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094970, 0.012085, 0.995407,
		-0.946600, 0.310576, 0.086543,
		-0.308104, -0.950472, 0.040935,
		33.519848, 40.581589, 40.989967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.176388, 41.274147, 41.385906>,  <33.735519, 41.246918, 40.961315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.176388, 41.274147, 41.385906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311031, 40.897644, 41.396709>,  <33.391819, 40.671741, 41.403191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311031, 40.897644, 41.396709>,  <33.176388, 41.274147, 41.385906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311031, 40.897644, 41.396709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055742, 0.008714, 0.998407,
		-0.939992, -0.337580, -0.049535,
		0.336611, -0.941257, 0.027009,
		33.412014, 40.615269, 41.404812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762760, 40.924877, 41.981686>,  <33.176388, 41.274147, 41.385906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762760, 40.924877, 41.981686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075695, 40.688244, 41.903736>,  <33.263454, 40.546265, 41.856968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075695, 40.688244, 41.903736>,  <32.762760, 40.924877, 41.981686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075695, 40.688244, 41.903736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036704, -0.268541, 0.962569,
		-0.621773, -0.760206, -0.188376,
		0.782337, -0.591585, -0.194874,
		33.310398, 40.510769, 41.845272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.562531, 40.268353, 42.177185>,  <32.762760, 40.924877, 41.981686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.562531, 40.268353, 42.177185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.962437, 40.259720, 42.177132>,  <33.202381, 40.254539, 42.177097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.962437, 40.259720, 42.177132>,  <32.562531, 40.268353, 42.177185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962437, 40.259720, 42.177132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004488, -0.214120, 0.976797,
		-0.021110, -0.976569, -0.214167,
		0.999767, -0.021581, -0.000137,
		33.262367, 40.253246, 42.177090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714478, 39.637032, 42.448860>,  <32.562531, 40.268353, 42.177185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714478, 39.637032, 42.448860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025249, 39.881401, 42.509716>,  <33.211712, 40.028023, 42.546230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025249, 39.881401, 42.509716>,  <32.714478, 39.637032, 42.448860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025249, 39.881401, 42.509716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083089, -0.339033, 0.937098,
		0.624080, -0.715419, -0.314166,
		0.776931, 0.610927, 0.152140,
		33.258327, 40.064678, 42.555359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138706, 39.350819, 42.960167>,  <32.714478, 39.637032, 42.448860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138706, 39.350819, 42.960167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325119, 39.704514, 42.972401>,  <33.436966, 39.916733, 42.979740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325119, 39.704514, 42.972401>,  <33.138706, 39.350819, 42.960167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325119, 39.704514, 42.972401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304674, -0.192839, 0.932731,
		0.830656, -0.425363, -0.359273,
		0.466031, 0.884239, 0.030586,
		33.464928, 39.969784, 42.981575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827526, 39.205757, 43.109573>,  <33.138706, 39.350819, 42.960167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827526, 39.205757, 43.109573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742683, 39.578896, 43.226067>,  <33.691780, 39.802776, 43.295963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742683, 39.578896, 43.226067>,  <33.827526, 39.205757, 43.109573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742683, 39.578896, 43.226067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287486, -0.225262, 0.930918,
		0.934004, 0.281175, -0.220401,
		-0.212103, 0.932844, 0.291230,
		33.679054, 39.858749, 43.313435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396397, 39.384617, 43.593395>,  <33.827526, 39.205757, 43.109573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396397, 39.384617, 43.593395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099155, 39.646629, 43.648144>,  <33.920811, 39.803837, 43.680992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099155, 39.646629, 43.648144>,  <34.396397, 39.384617, 43.593395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099155, 39.646629, 43.648144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028126, -0.173777, 0.984383,
		0.668587, 0.735347, 0.110710,
		-0.743102, 0.655032, 0.136868,
		33.876225, 39.843140, 43.689205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597073, 39.915039, 44.123623>,  <34.396397, 39.384617, 43.593395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597073, 39.915039, 44.123623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197880, 39.940277, 44.126278>,  <33.958363, 39.955418, 44.127872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197880, 39.940277, 44.126278>,  <34.597073, 39.915039, 44.123623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197880, 39.940277, 44.126278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009010, 0.037322, 0.999263,
		0.062796, 0.997310, -0.037815,
		-0.997986, 0.063091, 0.006642,
		33.898483, 39.959206, 44.128269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436577, 40.501472, 44.606228>,  <34.597073, 39.915039, 44.123623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436577, 40.501472, 44.606228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.092648, 40.298714, 44.581730>,  <33.886288, 40.177059, 44.567032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.092648, 40.298714, 44.581730>,  <34.436577, 40.501472, 44.606228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092648, 40.298714, 44.581730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195927, 0.216800, 0.956353,
		-0.471498, 0.834297, -0.285726,
		-0.859827, -0.506900, -0.061241,
		33.834698, 40.146645, 44.563358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887466, 40.995937, 44.833103>,  <34.436577, 40.501472, 44.606228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887466, 40.995937, 44.833103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766071, 40.618599, 44.886765>,  <33.693233, 40.392197, 44.918961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766071, 40.618599, 44.886765>,  <33.887466, 40.995937, 44.833103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766071, 40.618599, 44.886765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157264, 0.188451, 0.969409,
		-0.939768, 0.273107, -0.205546,
		-0.303488, -0.943345, 0.134150,
		33.675026, 40.335594, 44.927010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.362823, 41.194965, 45.228615>,  <33.887466, 40.995937, 44.833103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.362823, 41.194965, 45.228615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.393993, 40.797619, 45.262428>,  <33.412693, 40.559212, 45.282715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.393993, 40.797619, 45.262428>,  <33.362823, 41.194965, 45.228615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.393993, 40.797619, 45.262428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257729, 0.061834, 0.964237,
		-0.963070, -0.096921, -0.251202,
		0.077922, -0.993370, 0.084530,
		33.417370, 40.499607, 45.287788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818062, 40.922871, 45.694286>,  <33.362823, 41.194965, 45.228615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818062, 40.922871, 45.694286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.113983, 40.653885, 45.703030>,  <33.291538, 40.492493, 45.708275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.113983, 40.653885, 45.703030>,  <32.818062, 40.922871, 45.694286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113983, 40.653885, 45.703030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138656, -0.120586, 0.982972,
		-0.658378, -0.730240, -0.182452,
		0.739806, -0.672465, 0.021861,
		33.335926, 40.452145, 45.709587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.545116, 40.399414, 46.148323>,  <32.818062, 40.922871, 45.694286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.545116, 40.399414, 46.148323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943569, 40.382580, 46.117451>,  <33.182640, 40.372478, 46.098927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943569, 40.382580, 46.117451>,  <32.545116, 40.399414, 46.148323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943569, 40.382580, 46.117451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071427, -0.124297, 0.989671,
		-0.051241, -0.991352, -0.120810,
		0.996129, -0.042082, -0.077178,
		33.242409, 40.369953, 46.094296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691311, 39.974834, 46.592411>,  <32.545116, 40.399414, 46.148323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691311, 39.974834, 46.592411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.047588, 40.139370, 46.514984>,  <33.261356, 40.238091, 46.468529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.047588, 40.139370, 46.514984>,  <32.691311, 39.974834, 46.592411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.047588, 40.139370, 46.514984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278865, -0.158106, 0.947226,
		0.359026, -0.897666, -0.255532,
		0.890693, 0.411337, -0.193563,
		33.314796, 40.262772, 46.456917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.259560, 39.391243, 46.743191>,  <32.691311, 39.974834, 46.592411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.259560, 39.391243, 46.743191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.412403, 39.760525, 46.759617>,  <33.504108, 39.982094, 46.769474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.412403, 39.760525, 46.759617>,  <33.259560, 39.391243, 46.743191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.412403, 39.760525, 46.759617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379094, -0.197126, 0.904118,
		0.842780, -0.329904, -0.425305,
		0.382110, 0.923204, 0.041069,
		33.527035, 40.037487, 46.771938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.970852, 39.248283, 46.990498>,  <33.259560, 39.391243, 46.743191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.970852, 39.248283, 46.990498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873367, 39.628754, 47.066261>,  <33.814877, 39.857037, 47.111721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873367, 39.628754, 47.066261>,  <33.970852, 39.248283, 46.990498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873367, 39.628754, 47.066261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225244, -0.134450, 0.964981,
		0.943329, 0.277840, -0.181479,
		-0.243711, 0.951172, 0.189413,
		33.800255, 39.914104, 47.123085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520515, 39.538521, 47.353752>,  <33.970852, 39.248283, 46.990498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520515, 39.538521, 47.353752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.231331, 39.795940, 47.454288>,  <34.057819, 39.950390, 47.514610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.231331, 39.795940, 47.454288>,  <34.520515, 39.538521, 47.353752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231331, 39.795940, 47.454288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155950, -0.202397, 0.966807,
		0.673054, 0.738163, 0.045965,
		-0.722964, 0.643545, 0.251341,
		34.014442, 39.989002, 47.529690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698635, 39.877415, 47.997845>,  <34.520515, 39.538521, 47.353752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698635, 39.877415, 47.997845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300728, 39.916737, 47.986691>,  <34.061985, 39.940331, 47.980000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300728, 39.916737, 47.986691>,  <34.698635, 39.877415, 47.997845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300728, 39.916737, 47.986691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045244, -0.179107, 0.982789,
		0.091616, 0.978906, 0.182617,
		-0.994766, 0.098302, -0.027881,
		34.002296, 39.946228, 47.978325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561527, 40.339031, 48.529007>,  <34.698635, 39.877415, 47.997845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561527, 40.339031, 48.529007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.213207, 40.155960, 48.457180>,  <34.004215, 40.046116, 48.414085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.213207, 40.155960, 48.457180>,  <34.561527, 40.339031, 48.529007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.213207, 40.155960, 48.457180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007098, -0.353489, 0.935412,
		-0.491592, 0.815828, 0.304568,
		-0.870797, -0.457679, -0.179563,
		33.951969, 40.018658, 48.403313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.133720, 40.430611, 49.122540>,  <34.561527, 40.339031, 48.529007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.133720, 40.430611, 49.122540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917160, 40.121090, 48.991020>,  <33.787224, 39.935375, 48.912109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917160, 40.121090, 48.991020>,  <34.133720, 40.430611, 49.122540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917160, 40.121090, 48.991020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276469, -0.205475, 0.938800,
		-0.794008, 0.599172, -0.102688,
		-0.541403, -0.773804, -0.328801,
		33.754738, 39.888950, 48.892380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560589, 40.330467, 49.626366>,  <34.133720, 40.430611, 49.122540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560589, 40.330467, 49.626366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558311, 39.971161, 49.450600>,  <33.556946, 39.755577, 49.345139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558311, 39.971161, 49.450600>,  <33.560589, 40.330467, 49.626366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558311, 39.971161, 49.450600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107721, -0.437414, 0.892785,
		-0.994165, -0.042254, 0.099251,
		-0.005690, -0.898267, -0.439414,
		33.556606, 39.701679, 49.318775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157230, 39.923061, 50.025959>,  <33.560589, 40.330467, 49.626366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157230, 39.923061, 50.025959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.372078, 39.645508, 49.834114>,  <33.500984, 39.478973, 49.719006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.372078, 39.645508, 49.834114>,  <33.157230, 39.923061, 50.025959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372078, 39.645508, 49.834114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218478, -0.434745, 0.873650,
		-0.814723, -0.574036, -0.081909,
		0.537116, -0.693887, -0.479611,
		33.533215, 39.437340, 49.690231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.978210, 39.315350, 50.341915>,  <33.157230, 39.923061, 50.025959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.978210, 39.315350, 50.341915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297981, 39.203537, 50.129208>,  <33.489841, 39.136448, 50.001583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297981, 39.203537, 50.129208>,  <32.978210, 39.315350, 50.341915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297981, 39.203537, 50.129208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227703, -0.678127, 0.698781,
		-0.555943, -0.679708, -0.478461,
		0.799424, -0.279535, -0.531771,
		33.537807, 39.119675, 49.969677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.892593, 38.653950, 50.291470>,  <32.978210, 39.315350, 50.341915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.892593, 38.653950, 50.291470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.277454, 38.752880, 50.245716>,  <33.508373, 38.812241, 50.218266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.277454, 38.752880, 50.245716>,  <32.892593, 38.653950, 50.291470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277454, 38.752880, 50.245716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266436, -0.765828, 0.585251,
		0.057151, -0.593579, -0.802744,
		0.962156, 0.247328, -0.114383,
		33.566101, 38.827080, 50.211403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237595, 37.967976, 50.166447>,  <32.892593, 38.653950, 50.291470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237595, 37.967976, 50.166447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524101, 38.212425, 50.301201>,  <33.696007, 38.359093, 50.382053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524101, 38.212425, 50.301201>,  <33.237595, 37.967976, 50.166447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524101, 38.212425, 50.301201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302815, -0.707140, 0.638949,
		0.628701, -0.355644, -0.691558,
		0.716266, 0.611122, 0.336886,
		33.738979, 38.395763, 50.402267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767170, 37.515553, 50.417393>,  <33.237595, 37.967976, 50.166447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767170, 37.515553, 50.417393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876053, 37.864029, 50.580818>,  <33.941383, 38.073116, 50.678875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876053, 37.864029, 50.580818>,  <33.767170, 37.515553, 50.417393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876053, 37.864029, 50.580818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334441, -0.483788, 0.808763,
		0.902248, -0.083509, -0.423053,
		0.272207, 0.871192, 0.408568,
		33.957714, 38.125385, 50.703388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.369148, 37.387211, 50.754631>,  <33.767170, 37.515553, 50.417393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.369148, 37.387211, 50.754631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.238136, 37.714497, 50.943626>,  <34.159527, 37.910870, 51.057026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.238136, 37.714497, 50.943626>,  <34.369148, 37.387211, 50.754631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238136, 37.714497, 50.943626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299629, -0.384316, 0.873226,
		0.896072, 0.427582, -0.119285,
		-0.327533, 0.818214, 0.472491,
		34.139877, 37.959961, 51.085373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906601, 37.727631, 51.277447>,  <34.369148, 37.387211, 50.754631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906601, 37.727631, 51.277447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544239, 37.834492, 51.408878>,  <34.326820, 37.898609, 51.487740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544239, 37.834492, 51.408878>,  <34.906601, 37.727631, 51.277447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544239, 37.834492, 51.408878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235454, -0.327172, 0.915161,
		0.351992, 0.906414, 0.233484,
		-0.905904, 0.267155, 0.328581,
		34.272469, 37.914639, 51.507454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066929, 37.943146, 51.855511>,  <34.906601, 37.727631, 51.277447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066929, 37.943146, 51.855511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670017, 37.918911, 51.898796>,  <34.431870, 37.904369, 51.924767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670017, 37.918911, 51.898796>,  <35.066929, 37.943146, 51.855511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670017, 37.918911, 51.898796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122473, -0.341172, 0.931988,
		-0.019543, 0.938047, 0.345958,
		-0.992280, -0.060585, 0.108218,
		34.372334, 37.900734, 51.931263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841949, 38.361481, 52.538128>,  <35.066929, 37.943146, 51.855511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841949, 38.361481, 52.538128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575851, 38.084728, 52.425877>,  <34.416191, 37.918678, 52.358524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575851, 38.084728, 52.425877>,  <34.841949, 38.361481, 52.538128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575851, 38.084728, 52.425877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024647, -0.355306, 0.934425,
		-0.746219, 0.628538, 0.219313,
		-0.665245, -0.691880, -0.280628,
		34.376278, 37.877163, 52.341690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451942, 38.189304, 53.127808>,  <34.841949, 38.361481, 52.538128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451942, 38.189304, 53.127808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.398060, 37.872528, 52.889587>,  <34.365730, 37.682461, 52.746655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.398060, 37.872528, 52.889587>,  <34.451942, 38.189304, 53.127808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398060, 37.872528, 52.889587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102508, -0.586669, 0.803313,
		-0.985569, 0.169258, -0.002153,
		-0.134704, -0.791942, -0.595553,
		34.357647, 37.634945, 52.710922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888233, 37.893955, 53.405262>,  <34.451942, 38.189304, 53.127808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888233, 37.893955, 53.405262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157024, 37.653000, 53.232952>,  <34.318298, 37.508427, 53.129566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157024, 37.653000, 53.232952>,  <33.888233, 37.893955, 53.405262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157024, 37.653000, 53.232952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050686, -0.617732, 0.784754,
		-0.738832, -0.505505, -0.445636,
		0.671980, -0.602389, -0.430778,
		34.358620, 37.472282, 53.103718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.753723, 37.103455, 53.458523>,  <33.888233, 37.893955, 53.405262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.753723, 37.103455, 53.458523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.143631, 37.190208, 53.479641>,  <34.377575, 37.242260, 53.492310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.143631, 37.190208, 53.479641>,  <33.753723, 37.103455, 53.458523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143631, 37.190208, 53.479641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001493, -0.230168, 0.973150,
		0.223216, -0.948674, -0.224036,
		0.974768, 0.216889, 0.052793,
		34.436062, 37.255276, 53.495480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665684, 36.600063, 54.001053>,  <33.753723, 37.103455, 53.458523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665684, 36.600063, 54.001053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867260, 36.280281, 53.870262>,  <33.988205, 36.088413, 53.791786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867260, 36.280281, 53.870262>,  <33.665684, 36.600063, 54.001053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867260, 36.280281, 53.870262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858239, -0.420815, -0.293838,
		0.097312, 0.428704, -0.898189,
		0.503941, -0.799454, -0.326980,
		34.018444, 36.040443, 53.772167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621098, 36.360210, 53.325249>,  <33.665684, 36.600063, 54.001053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621098, 36.360210, 53.325249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756138, 36.008583, 53.459869>,  <33.837162, 35.797607, 53.540642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756138, 36.008583, 53.459869>,  <33.621098, 36.360210, 53.325249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756138, 36.008583, 53.459869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863947, -0.431313, -0.259931,
		0.373657, -0.203013, -0.905078,
		0.337603, -0.879065, 0.336555,
		33.857418, 35.744865, 53.560837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478626, 35.759632, 52.790440>,  <33.621098, 36.360210, 53.325249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478626, 35.759632, 52.790440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543453, 35.607121, 53.154495>,  <33.582348, 35.515614, 53.372929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543453, 35.607121, 53.154495>,  <33.478626, 35.759632, 52.790440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543453, 35.607121, 53.154495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751050, -0.645907, -0.136848,
		0.640045, -0.661385, -0.391040,
		0.162067, -0.381279, 0.910143,
		33.592072, 35.492737, 53.427540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545147, 35.007854, 52.713779>,  <33.478626, 35.759632, 52.790440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545147, 35.007854, 52.713779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437710, 35.103798, 53.086945>,  <33.373249, 35.161362, 53.310844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437710, 35.103798, 53.086945>,  <33.545147, 35.007854, 52.713779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437710, 35.103798, 53.086945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786482, -0.613789, -0.068628,
		0.556151, -0.752152, 0.353501,
		-0.268594, 0.239854, 0.932913,
		33.357132, 35.175755, 53.366817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.962318, 34.602917, 52.808868>,  <33.545147, 35.007854, 52.713779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.962318, 34.602917, 52.808868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932953, 34.830708, 53.136360>,  <32.915333, 34.967381, 53.332855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932953, 34.830708, 53.136360>,  <32.962318, 34.602917, 52.808868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932953, 34.830708, 53.136360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984465, -0.172675, 0.031830,
		0.159500, -0.803669, 0.573303,
		-0.073414, 0.569473, 0.818725,
		32.910927, 35.001549, 53.381977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.358738, 34.084587, 52.568329>,  <32.962318, 34.602917, 52.808868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.358738, 34.084587, 52.568329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.070454, 34.032719, 52.295929>,  <31.897484, 34.001598, 52.132488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.070454, 34.032719, 52.295929>,  <32.358738, 34.084587, 52.568329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.070454, 34.032719, 52.295929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007279, 0.980880, -0.194479,
		0.693200, -0.145120, -0.705984,
		-0.720708, -0.129674, -0.681002,
		31.854240, 33.993816, 52.091629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617325, 34.481110, 51.910503>,  <32.358738, 34.084587, 52.568329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617325, 34.481110, 51.910503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225616, 34.420383, 51.964146>,  <31.990591, 34.383949, 51.996330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225616, 34.420383, 51.964146>,  <32.617325, 34.481110, 51.910503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225616, 34.420383, 51.964146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164816, 0.982042, -0.091807,
		-0.117764, -0.112007, -0.986705,
		-0.979269, -0.151814, 0.134109,
		31.931835, 34.374840, 52.004379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776451, 35.219868, 51.903366>,  <32.617325, 34.481110, 51.910503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776451, 35.219868, 51.903366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.813381, 35.616653, 51.868786>,  <32.835541, 35.854725, 51.848038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.813381, 35.616653, 51.868786>,  <32.776451, 35.219868, 51.903366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.813381, 35.616653, 51.868786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103891, -0.095945, -0.989950,
		-0.990294, 0.082416, -0.111915,
		0.092325, 0.991969, -0.086451,
		32.841080, 35.914246, 51.842850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211174, 35.394688, 51.379288>,  <32.776451, 35.219868, 51.903366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211174, 35.394688, 51.379288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537464, 35.622364, 51.420498>,  <32.733238, 35.758968, 51.445225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537464, 35.622364, 51.420498>,  <32.211174, 35.394688, 51.379288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537464, 35.622364, 51.420498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137176, -0.017334, -0.990395,
		-0.561934, 0.822026, -0.092218,
		0.815729, 0.569187, 0.103022,
		32.782185, 35.793121, 51.451405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186203, 35.932152, 50.975315>,  <32.211174, 35.394688, 51.379288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186203, 35.932152, 50.975315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.580456, 35.892033, 51.029678>,  <32.817009, 35.867962, 51.062294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.580456, 35.892033, 51.029678>,  <32.186203, 35.932152, 50.975315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580456, 35.892033, 51.029678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138113, 0.015381, -0.990297,
		0.097235, 0.994838, 0.029012,
		0.985632, -0.100299, 0.135905,
		32.876144, 35.861942, 51.070450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550709, 36.317760, 50.458450>,  <32.186203, 35.932152, 50.975315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550709, 36.317760, 50.458450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.870308, 36.102730, 50.566238>,  <33.062069, 35.973713, 50.630913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.870308, 36.102730, 50.566238>,  <32.550709, 36.317760, 50.458450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870308, 36.102730, 50.566238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303969, -0.025589, -0.952338,
		0.518848, 0.842828, 0.142960,
		0.798999, -0.537574, 0.269471,
		33.110008, 35.941456, 50.647079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.178192, 36.689240, 50.239101>,  <32.550709, 36.317760, 50.458450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.178192, 36.689240, 50.239101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263882, 36.299770, 50.270275>,  <33.315296, 36.066090, 50.288979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263882, 36.299770, 50.270275>,  <33.178192, 36.689240, 50.239101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263882, 36.299770, 50.270275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517517, 0.045470, -0.854464,
		0.828423, 0.223377, 0.513632,
		0.214223, -0.973671, 0.077933,
		33.328148, 36.007668, 50.293655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886280, 36.664764, 50.173622>,  <33.178192, 36.689240, 50.239101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886280, 36.664764, 50.173622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732586, 36.304462, 50.092625>,  <33.640369, 36.088280, 50.044025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732586, 36.304462, 50.092625>,  <33.886280, 36.664764, 50.173622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732586, 36.304462, 50.092625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552528, -0.048638, -0.832075,
		0.739647, -0.431595, 0.516381,
		-0.384235, -0.900756, -0.202493,
		33.617317, 36.034237, 50.031876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364552, 36.529446, 49.700184>,  <33.886280, 36.664764, 50.173622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364552, 36.529446, 49.700184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084614, 36.248402, 49.648716>,  <33.916653, 36.079773, 49.617836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084614, 36.248402, 49.648716>,  <34.364552, 36.529446, 49.700184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084614, 36.248402, 49.648716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457346, -0.302385, -0.836300,
		0.548687, -0.644125, 0.532959,
		-0.699840, -0.702614, -0.128674,
		33.874660, 36.037617, 49.610115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628334, 35.935246, 49.507957>,  <34.364552, 36.529446, 49.700184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628334, 35.935246, 49.507957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263927, 35.882393, 49.351707>,  <34.045284, 35.850681, 49.257957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263927, 35.882393, 49.351707>,  <34.628334, 35.935246, 49.507957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263927, 35.882393, 49.351707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396585, -0.021217, -0.917753,
		0.112976, -0.991005, 0.071730,
		-0.911020, -0.132131, -0.390621,
		33.990623, 35.842754, 49.234520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672607, 35.388958, 49.050480>,  <34.628334, 35.935246, 49.507957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672607, 35.388958, 49.050480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.344162, 35.592407, 48.946884>,  <34.147095, 35.714478, 48.884727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.344162, 35.592407, 48.946884>,  <34.672607, 35.388958, 49.050480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344162, 35.592407, 48.946884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341339, 0.073921, -0.937029,
		-0.457451, -0.857809, -0.234311,
		-0.821113, 0.508624, -0.258989,
		34.097828, 35.744995, 48.869186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522392, 35.071350, 48.493969>,  <34.672607, 35.388958, 49.050480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522392, 35.071350, 48.493969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347233, 35.430721, 48.480896>,  <34.242138, 35.646343, 48.473053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347233, 35.430721, 48.480896>,  <34.522392, 35.071350, 48.493969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347233, 35.430721, 48.480896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286793, 0.105147, -0.952204,
		-0.852053, -0.426343, -0.303707,
		-0.437899, 0.898430, -0.032682,
		34.215862, 35.700249, 48.471092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349545, 35.095936, 47.840347>,  <34.522392, 35.071350, 48.493969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349545, 35.095936, 47.840347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302147, 35.477032, 47.952244>,  <34.273708, 35.705688, 48.019382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302147, 35.477032, 47.952244>,  <34.349545, 35.095936, 47.840347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302147, 35.477032, 47.952244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132333, 0.294364, -0.946487,
		-0.984098, -0.075132, -0.160958,
		-0.118491, 0.952736, 0.279741,
		34.266598, 35.762852, 48.036167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805180, 35.297318, 47.351429>,  <34.349545, 35.095936, 47.840347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805180, 35.297318, 47.351429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004532, 35.625134, 47.464550>,  <34.124142, 35.821823, 47.532425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004532, 35.625134, 47.464550>,  <33.805180, 35.297318, 47.351429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004532, 35.625134, 47.464550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158191, 0.234764, -0.959094,
		-0.852405, 0.522729, -0.012642,
		0.498378, 0.819537, 0.282805,
		34.154045, 35.870995, 47.549393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487270, 35.861053, 47.006279>,  <33.805180, 35.297318, 47.351429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487270, 35.861053, 47.006279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855347, 35.996838, 47.084263>,  <34.076195, 36.078308, 47.131054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855347, 35.996838, 47.084263>,  <33.487270, 35.861053, 47.006279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855347, 35.996838, 47.084263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066551, 0.355130, -0.932445,
		-0.385767, 0.871004, 0.304196,
		0.920193, 0.339462, 0.194963,
		34.131405, 36.098675, 47.142754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461636, 36.477684, 46.718811>,  <33.487270, 35.861053, 47.006279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.461636, 36.477684, 46.718811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.852589, 36.394714, 46.735291>,  <34.087162, 36.344933, 46.745178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.852589, 36.394714, 46.735291>,  <33.461636, 36.477684, 46.718811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.852589, 36.394714, 46.735291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118555, 0.376089, -0.918968,
		0.175124, 0.903068, 0.392174,
		0.977383, -0.207427, 0.041202,
		34.145802, 36.332485, 46.747650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765125, 36.931580, 46.347004>,  <33.461636, 36.477684, 46.718811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.765125, 36.931580, 46.347004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.087399, 36.697021, 46.380505>,  <34.280762, 36.556286, 46.400604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.087399, 36.697021, 46.380505>,  <33.765125, 36.931580, 46.347004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087399, 36.697021, 46.380505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292719, 0.271228, -0.916925,
		0.514965, 0.763266, 0.390173,
		0.805684, -0.586396, 0.083750,
		34.329105, 36.521103, 46.405628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265194, 37.319489, 46.226406>,  <33.765125, 36.931580, 46.347004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265194, 37.319489, 46.226406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401886, 36.950821, 46.152916>,  <34.483902, 36.729622, 46.108822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401886, 36.950821, 46.152916>,  <34.265194, 37.319489, 46.226406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401886, 36.950821, 46.152916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386111, 0.315925, -0.866666,
		0.856820, 0.225225, 0.463825,
		0.341728, -0.921664, -0.183729,
		34.504406, 36.674320, 46.097797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934242, 37.489273, 46.007980>,  <34.265194, 37.319489, 46.226406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934242, 37.489273, 46.007980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.851589, 37.122711, 45.870865>,  <34.801998, 36.902775, 45.788597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.851589, 37.122711, 45.870865>,  <34.934242, 37.489273, 46.007980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.851589, 37.122711, 45.870865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272169, 0.282685, -0.919790,
		0.939802, -0.283351, 0.191007,
		-0.206629, -0.916407, -0.342787,
		34.789600, 36.847790, 45.768028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563595, 37.159214, 45.646889>,  <34.934242, 37.489273, 46.007980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563595, 37.159214, 45.646889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223606, 37.017258, 45.491150>,  <35.019611, 36.932083, 45.397705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223606, 37.017258, 45.491150>,  <35.563595, 37.159214, 45.646889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223606, 37.017258, 45.491150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326546, 0.225049, -0.917998,
		0.413415, -0.907416, -0.075397,
		-0.849974, -0.354893, -0.389351,
		34.968613, 36.910789, 45.374344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762253, 36.573341, 45.097378>,  <35.563595, 37.159214, 45.646889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762253, 36.573341, 45.097378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388638, 36.706211, 45.044868>,  <35.164467, 36.785934, 45.013363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388638, 36.706211, 45.044868>,  <35.762253, 36.573341, 45.097378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388638, 36.706211, 45.044868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212999, 0.222999, -0.951264,
		-0.286716, -0.916476, -0.279043,
		-0.934037, 0.332179, -0.131271,
		35.108425, 36.805866, 45.005486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581970, 36.273060, 44.507885>,  <35.762253, 36.573341, 45.097378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581970, 36.273060, 44.507885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265591, 36.517681, 44.515888>,  <35.075764, 36.664455, 44.520691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265591, 36.517681, 44.515888>,  <35.581970, 36.273060, 44.507885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265591, 36.517681, 44.515888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030304, 0.071808, -0.996958,
		-0.611129, -0.787939, -0.075329,
		-0.790951, 0.611552, 0.020006,
		35.028305, 36.701145, 44.521889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193577, 36.079880, 43.987980>,  <35.581970, 36.273060, 44.507885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193577, 36.079880, 43.987980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112617, 36.463806, 44.065735>,  <35.064041, 36.694164, 44.112389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112617, 36.463806, 44.065735>,  <35.193577, 36.079880, 43.987980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112617, 36.463806, 44.065735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112231, 0.219918, -0.969041,
		-0.972852, -0.174314, -0.152232,
		-0.202396, 0.959818, 0.194384,
		35.051899, 36.751751, 44.124050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783585, 36.256790, 43.506027>,  <35.193577, 36.079880, 43.987980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783585, 36.256790, 43.506027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866623, 36.624908, 43.638672>,  <34.916447, 36.845779, 43.718258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866623, 36.624908, 43.638672>,  <34.783585, 36.256790, 43.506027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866623, 36.624908, 43.638672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012531, 0.341472, -0.939808,
		-0.978134, 0.190945, 0.082421,
		0.207596, 0.920292, 0.331613,
		34.928902, 36.900997, 43.738155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266838, 36.700596, 43.207291>,  <34.783585, 36.256790, 43.506027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266838, 36.700596, 43.207291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.588619, 36.904938, 43.328537>,  <34.781689, 37.027542, 43.401287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.588619, 36.904938, 43.328537>,  <34.266838, 36.700596, 43.207291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588619, 36.904938, 43.328537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060048, 0.437741, -0.897094,
		-0.590970, 0.739874, 0.321467,
		0.804455, 0.510852, 0.303120,
		34.829956, 37.058193, 43.419472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094021, 37.422207, 42.953693>,  <34.266838, 36.700596, 43.207291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094021, 37.422207, 42.953693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489635, 37.379162, 42.994137>,  <34.727005, 37.353336, 43.018402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489635, 37.379162, 42.994137>,  <34.094021, 37.422207, 42.953693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489635, 37.379162, 42.994137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106362, 0.044261, -0.993342,
		0.102422, 0.993207, 0.055222,
		0.989038, -0.107614, 0.101106,
		34.786346, 37.346878, 43.024467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363388, 37.913338, 42.479095>,  <34.094021, 37.422207, 42.953693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363388, 37.913338, 42.479095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664856, 37.659843, 42.548790>,  <34.845737, 37.507748, 42.590607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664856, 37.659843, 42.548790>,  <34.363388, 37.913338, 42.479095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664856, 37.659843, 42.548790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261648, 0.046115, -0.964061,
		0.602925, 0.772174, 0.200571,
		0.753673, -0.633735, 0.174234,
		34.890957, 37.469723, 42.601059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944653, 38.258400, 42.114376>,  <34.363388, 37.913338, 42.479095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944653, 38.258400, 42.114376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.024788, 37.872456, 42.182388>,  <35.072868, 37.640888, 42.223198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.024788, 37.872456, 42.182388>,  <34.944653, 38.258400, 42.114376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.024788, 37.872456, 42.182388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435026, -0.067900, -0.897854,
		0.877848, 0.253841, 0.406137,
		0.200335, -0.964860, 0.170034,
		35.084888, 37.582996, 42.233398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517696, 38.131077, 41.672100>,  <34.944653, 38.258400, 42.114376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517696, 38.131077, 41.672100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.353176, 37.780521, 41.772324>,  <35.254463, 37.570187, 41.832458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.353176, 37.780521, 41.772324>,  <35.517696, 38.131077, 41.672100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353176, 37.780521, 41.772324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001665, -0.275603, -0.961270,
		0.911500, -0.394950, 0.114813,
		-0.411296, -0.876389, 0.250554,
		35.229786, 37.517605, 41.847488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775940, 37.638973, 41.195206>,  <35.517696, 38.131077, 41.672100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775940, 37.638973, 41.195206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.442692, 37.444382, 41.300472>,  <35.242744, 37.327625, 41.363632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.442692, 37.444382, 41.300472>,  <35.775940, 37.638973, 41.195206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442692, 37.444382, 41.300472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184997, -0.203302, -0.961480,
		0.521241, -0.849710, 0.079377,
		-0.833117, -0.486478, 0.263163,
		35.192757, 37.298439, 41.379421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792458, 36.960613, 40.920883>,  <35.775940, 37.638973, 41.195206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792458, 36.960613, 40.920883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.407101, 37.042191, 40.990482>,  <35.175884, 37.091137, 41.032242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.407101, 37.042191, 40.990482>,  <35.792458, 36.960613, 40.920883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407101, 37.042191, 40.990482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225310, -0.264276, -0.937760,
		-0.145262, -0.942639, 0.300552,
		-0.963397, 0.203938, 0.173996,
		35.118080, 37.103374, 41.042683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523891, 36.380943, 40.643471>,  <35.792458, 36.960613, 40.920883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523891, 36.380943, 40.643471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252129, 36.673977, 40.660076>,  <35.089069, 36.849796, 40.670040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252129, 36.673977, 40.660076>,  <35.523891, 36.380943, 40.643471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252129, 36.673977, 40.660076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297327, -0.223138, -0.928335,
		-0.670824, -0.643058, 0.369419,
		-0.679405, 0.732588, 0.041512,
		35.048306, 36.893753, 40.672531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912193, 36.208069, 40.472282>,  <35.523891, 36.380943, 40.643471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912193, 36.208069, 40.472282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856792, 36.600323, 40.416882>,  <34.823551, 36.835674, 40.383640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856792, 36.600323, 40.416882>,  <34.912193, 36.208069, 40.472282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856792, 36.600323, 40.416882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476552, -0.188582, -0.858682,
		-0.868168, -0.052925, 0.493440,
		-0.138499, 0.980630, -0.138500,
		34.815243, 36.894512, 40.375332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456459, 36.178841, 39.966106>,  <34.912193, 36.208069, 40.472282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456459, 36.178841, 39.966106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.479462, 36.578049, 39.955872>,  <34.493263, 36.817574, 39.949730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.479462, 36.578049, 39.955872>,  <34.456459, 36.178841, 39.966106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479462, 36.578049, 39.955872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346439, -0.004085, -0.938064,
		-0.936308, 0.062813, 0.345518,
		0.057511, 0.998017, -0.025585,
		34.496716, 36.877453, 39.948196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761459, 36.554466, 39.697262>,  <34.456459, 36.178841, 39.966106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761459, 36.554466, 39.697262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059147, 36.817112, 39.648281>,  <34.237759, 36.974697, 39.618893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059147, 36.817112, 39.648281>,  <33.761459, 36.554466, 39.697262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059147, 36.817112, 39.648281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279080, 0.139124, -0.950137,
		-0.606834, 0.741287, 0.286786,
		0.744222, 0.656611, -0.122453,
		34.282413, 37.014095, 39.611546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502182, 37.060863, 39.282082>,  <33.761459, 36.554466, 39.697262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502182, 37.060863, 39.282082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895290, 37.123425, 39.242699>,  <34.131157, 37.160961, 39.219070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895290, 37.123425, 39.242699>,  <33.502182, 37.060863, 39.282082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895290, 37.123425, 39.242699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126490, 0.180818, -0.975349,
		-0.134741, 0.971001, 0.197487,
		0.982774, 0.156400, -0.098459,
		34.190125, 37.170345, 39.213161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560928, 37.622288, 38.817314>,  <33.502182, 37.060863, 39.282082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560928, 37.622288, 38.817314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906128, 37.420235, 38.814060>,  <34.113247, 37.299004, 38.812107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906128, 37.420235, 38.814060>,  <33.560928, 37.622288, 38.817314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906128, 37.420235, 38.814060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045758, 0.094186, -0.994503,
		0.503124, 0.857886, 0.104397,
		0.863002, -0.505135, -0.008132,
		34.165028, 37.268696, 38.811619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990017, 37.982155, 38.271908>,  <33.560928, 37.622288, 38.817314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990017, 37.982155, 38.271908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.174183, 37.630920, 38.324036>,  <34.284683, 37.420181, 38.355312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.174183, 37.630920, 38.324036>,  <33.990017, 37.982155, 38.271908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174183, 37.630920, 38.324036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017873, -0.137606, -0.990326,
		0.887522, 0.458294, -0.047663,
		0.460419, -0.878084, 0.130319,
		34.312309, 37.367496, 38.363132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619133, 38.037659, 37.842754>,  <33.990017, 37.982155, 38.271908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.619133, 38.037659, 37.842754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565929, 37.645527, 37.901089>,  <34.534008, 37.410248, 37.936089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565929, 37.645527, 37.901089>,  <34.619133, 38.037659, 37.842754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565929, 37.645527, 37.901089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220118, -0.172687, -0.960066,
		0.966362, -0.095598, 0.238757,
		-0.133011, -0.980326, 0.145836,
		34.526028, 37.351429, 37.944839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153580, 37.697868, 37.481602>,  <34.619133, 38.037659, 37.842754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153580, 37.697868, 37.481602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883404, 37.405819, 37.522972>,  <34.721298, 37.230587, 37.547794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883404, 37.405819, 37.522972>,  <35.153580, 37.697868, 37.481602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883404, 37.405819, 37.522972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268666, -0.374262, -0.887551,
		0.686732, -0.571700, 0.448952,
		-0.675439, -0.730128, 0.103421,
		34.680771, 37.186779, 37.553997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450073, 37.013592, 37.431023>,  <35.153580, 37.697868, 37.481602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450073, 37.013592, 37.431023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073193, 37.050274, 37.302120>,  <34.847065, 37.072285, 37.224777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073193, 37.050274, 37.302120>,  <35.450073, 37.013592, 37.431023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073193, 37.050274, 37.302120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273094, -0.347042, -0.897208,
		-0.194116, -0.933355, 0.301939,
		-0.942199, 0.091705, -0.322260,
		34.790531, 37.077785, 37.205441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985516, 36.494404, 37.359180>,  <35.450073, 37.013592, 37.431023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985516, 36.494404, 37.359180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226540, 36.208481, 37.217209>,  <35.371155, 36.036926, 37.132027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226540, 36.208481, 37.217209>,  <34.985516, 36.494404, 37.359180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226540, 36.208481, 37.217209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437975, -0.075596, 0.895803,
		-0.667154, -0.695227, 0.267515,
		0.602563, -0.714804, -0.354926,
		35.407310, 35.994041, 37.110729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.947777, 35.892063, 37.780594>,  <34.985516, 36.494404, 37.359180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.947777, 35.892063, 37.780594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.281368, 35.808922, 37.576134>,  <35.481525, 35.759037, 37.453457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.281368, 35.808922, 37.576134>,  <34.947777, 35.892063, 37.780594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281368, 35.808922, 37.576134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438302, -0.313215, 0.842489,
		-0.335217, -0.926656, -0.170111,
		0.833979, -0.207857, -0.511150,
		35.531563, 35.746567, 37.422791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173389, 35.169964, 37.879990>,  <34.947777, 35.892063, 37.780594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173389, 35.169964, 37.879990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513443, 35.344387, 37.761921>,  <35.717476, 35.449043, 37.691082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513443, 35.344387, 37.761921>,  <35.173389, 35.169964, 37.879990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513443, 35.344387, 37.761921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513828, -0.564421, 0.646072,
		0.115128, -0.700913, -0.703894,
		0.850133, 0.436061, -0.295168,
		35.768482, 35.475204, 37.673370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607224, 34.557655, 37.824444>,  <35.173389, 35.169964, 37.879990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607224, 34.557655, 37.824444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843719, 34.880219, 37.819798>,  <35.985619, 35.073757, 37.817009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843719, 34.880219, 37.819798>,  <35.607224, 34.557655, 37.824444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843719, 34.880219, 37.819798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746916, -0.542075, 0.385059,
		0.304221, -0.236337, -0.922819,
		0.591241, 0.806411, -0.011613,
		36.021091, 35.122143, 37.816315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235733, 34.240505, 37.881477>,  <35.607224, 34.557655, 37.824444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235733, 34.240505, 37.881477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.315113, 34.618469, 37.985596>,  <36.362743, 34.845249, 38.048069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.315113, 34.618469, 37.985596>,  <36.235733, 34.240505, 37.881477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315113, 34.618469, 37.985596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545477, -0.327133, 0.771647,
		0.814292, -0.011149, -0.580349,
		0.198454, 0.944913, 0.260301,
		36.374649, 34.901943, 38.063686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036572, 34.365910, 38.121155>,  <36.235733, 34.240505, 37.881477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036572, 34.365910, 38.121155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.839725, 34.656281, 38.313347>,  <36.721619, 34.830502, 38.428661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.839725, 34.656281, 38.313347>,  <37.036572, 34.365910, 38.121155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839725, 34.656281, 38.313347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538541, -0.179777, 0.823198,
		0.683959, 0.663862, -0.302470,
		-0.492112, 0.725925, 0.480477,
		36.692093, 34.874058, 38.457489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475670, 34.642567, 38.556099>,  <37.036572, 34.365910, 38.121155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.475670, 34.642567, 38.556099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.145836, 34.803207, 38.715485>,  <36.947933, 34.899590, 38.811115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.145836, 34.803207, 38.715485>,  <37.475670, 34.642567, 38.556099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145836, 34.803207, 38.715485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389310, -0.108222, 0.914727,
		0.410475, 0.909399, -0.067108,
		-0.824589, 0.401599, 0.398461,
		36.898460, 34.923687, 38.835022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624619, 35.075668, 39.050522>,  <37.475670, 34.642567, 38.556099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624619, 35.075668, 39.050522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.241539, 35.057781, 39.164238>,  <37.011692, 35.047050, 39.232468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.241539, 35.057781, 39.164238>,  <37.624619, 35.075668, 39.050522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241539, 35.057781, 39.164238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286568, -0.057310, 0.956344,
		-0.026469, 0.997355, 0.067699,
		-0.957694, -0.044714, 0.284293,
		36.954231, 35.044369, 39.249527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668804, 35.549522, 39.604622>,  <37.624619, 35.075668, 39.050522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668804, 35.549522, 39.604622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.369228, 35.287434, 39.644180>,  <37.189484, 35.130180, 39.667915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.369228, 35.287434, 39.644180>,  <37.668804, 35.549522, 39.604622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369228, 35.287434, 39.644180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253629, -0.145573, 0.956285,
		-0.612181, 0.741279, 0.275208,
		-0.748937, -0.655220, 0.098893,
		37.144547, 35.090866, 39.673847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311554, 35.768261, 40.221893>,  <37.668804, 35.549522, 39.604622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311554, 35.768261, 40.221893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.237568, 35.380398, 40.157951>,  <37.193176, 35.147678, 40.119587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.237568, 35.380398, 40.157951>,  <37.311554, 35.768261, 40.221893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237568, 35.380398, 40.157951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157130, -0.189745, 0.969178,
		-0.970101, 0.154152, 0.187459,
		-0.184970, -0.969657, -0.159850,
		37.182076, 35.089500, 40.109997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690666, 35.578796, 40.630150>,  <37.311554, 35.768261, 40.221893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690666, 35.578796, 40.630150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857708, 35.222622, 40.557793>,  <36.957935, 35.008915, 40.514378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857708, 35.222622, 40.557793>,  <36.690666, 35.578796, 40.630150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857708, 35.222622, 40.557793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056735, -0.173145, 0.983261,
		-0.906854, -0.420882, -0.021788,
		0.417609, -0.890438, -0.180896,
		36.982990, 34.955490, 40.503525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270599, 35.153538, 41.094223>,  <36.690666, 35.578796, 40.630150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.270599, 35.153538, 41.094223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.615170, 34.974735, 40.997776>,  <36.821911, 34.867455, 40.939907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.615170, 34.974735, 40.997776>,  <36.270599, 35.153538, 41.094223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615170, 34.974735, 40.997776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034066, -0.524535, 0.850707,
		-0.506748, -0.724603, -0.467074,
		0.861421, -0.447005, -0.241122,
		36.873596, 34.840633, 40.925438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184738, 34.535126, 41.304924>,  <36.270599, 35.153538, 41.094223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184738, 34.535126, 41.304924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582741, 34.573448, 41.293789>,  <36.821545, 34.596443, 41.287109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582741, 34.573448, 41.293789>,  <36.184738, 34.535126, 41.304924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582741, 34.573448, 41.293789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073514, -0.515391, 0.853796,
		0.067455, -0.851582, -0.519863,
		0.995010, 0.095810, -0.027838,
		36.881245, 34.602192, 41.285439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376526, 33.885777, 41.552017>,  <36.184738, 34.535126, 41.304924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.376526, 33.885777, 41.552017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714401, 34.096069, 41.592232>,  <36.917126, 34.222244, 41.616360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714401, 34.096069, 41.592232>,  <36.376526, 33.885777, 41.552017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714401, 34.096069, 41.592232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167843, -0.438511, 0.882914,
		0.508265, -0.728911, -0.458645,
		0.844686, 0.525735, 0.100537,
		36.967808, 34.253788, 41.622395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829872, 33.462444, 41.835785>,  <36.376526, 33.885777, 41.552017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829872, 33.462444, 41.835785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.990623, 33.814358, 41.937347>,  <37.087074, 34.025505, 41.998287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.990623, 33.814358, 41.937347>,  <36.829872, 33.462444, 41.835785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990623, 33.814358, 41.937347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221943, -0.362605, 0.905129,
		0.888388, -0.307401, -0.340986,
		0.401881, 0.879785, 0.253908,
		37.111187, 34.078293, 42.013519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530670, 33.423683, 42.283928>,  <36.829872, 33.462444, 41.835785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530670, 33.423683, 42.283928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350975, 33.773773, 42.355667>,  <37.243156, 33.983826, 42.398712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350975, 33.773773, 42.355667>,  <37.530670, 33.423683, 42.283928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350975, 33.773773, 42.355667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065631, -0.167876, 0.983621,
		0.890998, 0.453650, 0.017974,
		-0.449237, 0.875225, 0.179350,
		37.216206, 34.036343, 42.409473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868954, 33.666321, 42.828045>,  <37.530670, 33.423683, 42.283928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868954, 33.666321, 42.828045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.544640, 33.900410, 42.832756>,  <37.350052, 34.040863, 42.835583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.544640, 33.900410, 42.832756>,  <37.868954, 33.666321, 42.828045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544640, 33.900410, 42.832756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074394, -0.122979, 0.989617,
		0.580598, 0.801490, 0.143247,
		-0.810784, 0.585227, 0.011775,
		37.301403, 34.075977, 42.836288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905544, 34.053864, 43.487862>,  <37.868954, 33.666321, 42.828045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905544, 34.053864, 43.487862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.527863, 34.128998, 43.379646>,  <37.301254, 34.174080, 43.314716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.527863, 34.128998, 43.379646>,  <37.905544, 34.053864, 43.487862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527863, 34.128998, 43.379646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238320, 0.177291, 0.954867,
		0.227322, 0.966067, -0.122635,
		-0.944208, 0.187836, -0.270535,
		37.244598, 34.185349, 43.298485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622128, 34.746143, 43.684704>,  <37.905544, 34.053864, 43.487862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622128, 34.746143, 43.684704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253902, 34.597431, 43.636810>,  <37.032967, 34.508205, 43.608074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253902, 34.597431, 43.636810>,  <37.622128, 34.746143, 43.684704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253902, 34.597431, 43.636810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295001, 0.460897, 0.836988,
		-0.255990, 0.805825, -0.533962,
		-0.920567, -0.371780, -0.119734,
		36.977734, 34.485897, 43.600891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122208, 35.310177, 43.726521>,  <37.622128, 34.746143, 43.684704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122208, 35.310177, 43.726521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.923183, 34.971645, 43.802582>,  <36.803768, 34.768524, 43.848217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.923183, 34.971645, 43.802582>,  <37.122208, 35.310177, 43.726521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.923183, 34.971645, 43.802582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283627, 0.365892, 0.886385,
		-0.819749, 0.387099, -0.422096,
		-0.497560, -0.846332, 0.190148,
		36.773914, 34.717747, 43.859627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394604, 35.402164, 43.934250>,  <37.122208, 35.310177, 43.726521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394604, 35.402164, 43.934250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531906, 35.064037, 44.098011>,  <36.614288, 34.861160, 44.196266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531906, 35.064037, 44.098011>,  <36.394604, 35.402164, 43.934250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531906, 35.064037, 44.098011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318549, 0.305277, 0.897403,
		-0.883572, -0.438457, -0.164486,
		0.343259, -0.845317, 0.409404,
		36.634884, 34.810444, 44.220833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894176, 35.122955, 44.364452>,  <36.394604, 35.402164, 43.934250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894176, 35.122955, 44.364452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.230190, 34.948158, 44.493061>,  <36.431797, 34.843281, 44.570229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.230190, 34.948158, 44.493061>,  <35.894176, 35.122955, 44.364452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.230190, 34.948158, 44.493061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223888, 0.260596, 0.939129,
		-0.494185, -0.860885, 0.121070,
		0.840033, -0.436998, 0.321525,
		36.482201, 34.817059, 44.589520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725124, 34.576637, 44.850094>,  <35.894176, 35.122955, 44.364452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725124, 34.576637, 44.850094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.108849, 34.665615, 44.919651>,  <36.339085, 34.719002, 44.961384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.108849, 34.665615, 44.919651>,  <35.725124, 34.576637, 44.850094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108849, 34.665615, 44.919651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208092, 0.140758, 0.967928,
		0.190834, -0.964731, 0.181320,
		0.959313, 0.222444, 0.173891,
		36.396641, 34.732349, 44.971817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796055, 34.369518, 45.626854>,  <35.725124, 34.576637, 44.850094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796055, 34.369518, 45.626854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.145397, 34.540817, 45.534031>,  <36.355003, 34.643597, 45.478336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.145397, 34.540817, 45.534031>,  <35.796055, 34.369518, 45.626854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145397, 34.540817, 45.534031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154462, 0.208335, 0.965784,
		0.461936, -0.879320, 0.115804,
		0.873359, 0.428243, -0.232059,
		36.407406, 34.669289, 45.464413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262207, 34.109333, 46.089710>,  <35.796055, 34.369518, 45.626854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262207, 34.109333, 46.089710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420509, 34.453445, 45.961159>,  <36.515491, 34.659912, 45.884026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420509, 34.453445, 45.961159>,  <36.262207, 34.109333, 46.089710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420509, 34.453445, 45.961159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168329, 0.276072, 0.946282,
		0.902797, -0.428596, -0.035553,
		0.395757, 0.860285, -0.321382,
		36.539238, 34.711533, 45.864746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888546, 34.067375, 46.429031>,  <36.262207, 34.109333, 46.089710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.888546, 34.067375, 46.429031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830395, 34.454063, 46.344826>,  <36.795502, 34.686077, 46.294304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830395, 34.454063, 46.344826>,  <36.888546, 34.067375, 46.429031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830395, 34.454063, 46.344826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241659, 0.241024, 0.939951,
		0.959409, 0.085780, -0.268657,
		-0.145382, 0.966721, -0.210511,
		36.786781, 34.744080, 46.281673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391491, 34.362228, 46.776680>,  <36.888546, 34.067375, 46.429031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391491, 34.362228, 46.776680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.124924, 34.649956, 46.698223>,  <36.964985, 34.822590, 46.651150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.124924, 34.649956, 46.698223>,  <37.391491, 34.362228, 46.776680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124924, 34.649956, 46.698223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106585, 0.352290, 0.929802,
		0.737921, 0.598729, -0.311440,
		-0.666417, 0.719316, -0.196147,
		36.924999, 34.865749, 46.639378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667233, 35.002895, 46.971642>,  <37.391491, 34.362228, 46.776680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667233, 35.002895, 46.971642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.268475, 35.033993, 46.976784>,  <37.029221, 35.052650, 46.979870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.268475, 35.033993, 46.976784>,  <37.667233, 35.002895, 46.971642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.268475, 35.033993, 46.976784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032818, 0.261334, 0.964690,
		0.071644, 0.962112, -0.263073,
		-0.996890, 0.077748, 0.012851,
		36.969406, 35.057316, 46.980640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459400, 35.614189, 47.325829>,  <37.667233, 35.002895, 46.971642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459400, 35.614189, 47.325829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.123901, 35.398006, 47.352390>,  <36.922604, 35.268295, 47.368328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.123901, 35.398006, 47.352390>,  <37.459400, 35.614189, 47.325829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123901, 35.398006, 47.352390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109746, 0.287224, 0.951555,
		-0.533347, 0.790827, -0.300222,
		-0.838747, -0.540457, 0.066400,
		36.872276, 35.235870, 47.372311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126202, 36.021580, 47.717541>,  <37.459400, 35.614189, 47.325829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126202, 36.021580, 47.717541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.914822, 35.683136, 47.745358>,  <36.787994, 35.480068, 47.762047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.914822, 35.683136, 47.745358>,  <37.126202, 36.021580, 47.717541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914822, 35.683136, 47.745358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126162, 0.159274, 0.979140,
		-0.839541, 0.508648, -0.190915,
		-0.528445, -0.846114, 0.069545,
		36.756287, 35.429302, 47.766220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708927, 36.193226, 48.177776>,  <37.126202, 36.021580, 47.717541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708927, 36.193226, 48.177776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.673065, 35.794895, 48.184612>,  <36.651550, 35.555897, 48.188713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.673065, 35.794895, 48.184612>,  <36.708927, 36.193226, 48.177776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673065, 35.794895, 48.184612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197066, 0.034551, 0.979781,
		-0.976283, 0.084472, -0.199341,
		-0.089651, -0.995827, 0.017085,
		36.646172, 35.496147, 48.189739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177387, 36.063843, 48.673943>,  <36.708927, 36.193226, 48.177776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177387, 36.063843, 48.673943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383678, 35.723404, 48.634647>,  <36.507454, 35.519138, 48.611073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383678, 35.723404, 48.634647>,  <36.177387, 36.063843, 48.673943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383678, 35.723404, 48.634647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016429, -0.124464, 0.992088,
		-0.856594, -0.510035, -0.078173,
		0.515729, -0.851101, -0.098236,
		36.538399, 35.468075, 48.605175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778824, 35.462120, 49.028152>,  <36.177387, 36.063843, 48.673943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778824, 35.462120, 49.028152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.176083, 35.415440, 49.030807>,  <36.414436, 35.387432, 49.032398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.176083, 35.415440, 49.030807>,  <35.778824, 35.462120, 49.028152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176083, 35.415440, 49.030807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031103, -0.209140, 0.977391,
		-0.112673, -0.970897, -0.211336,
		0.993146, -0.116699, 0.006634,
		36.474026, 35.380428, 49.032799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895035, 35.049892, 49.558491>,  <35.778824, 35.462120, 49.028152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895035, 35.049892, 49.558491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.270355, 35.171440, 49.492451>,  <36.495548, 35.244370, 49.452827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.270355, 35.171440, 49.492451>,  <35.895035, 35.049892, 49.558491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270355, 35.171440, 49.492451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137220, 0.111077, 0.984293,
		0.317441, -0.946214, 0.062526,
		0.938297, 0.303875, -0.165100,
		36.551846, 35.262604, 49.442921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186604, 34.932903, 50.142975>,  <35.895035, 35.049892, 49.558491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186604, 34.932903, 50.142975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482262, 35.149551, 49.982822>,  <36.659657, 35.279541, 49.886730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482262, 35.149551, 49.982822>,  <36.186604, 34.932903, 50.142975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482262, 35.149551, 49.982822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178214, 0.415985, 0.891738,
		0.649538, -0.730480, 0.210950,
		0.739149, 0.541623, -0.400380,
		36.704006, 35.312038, 49.862709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740639, 34.947071, 50.659405>,  <36.186604, 34.932903, 50.142975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740639, 34.947071, 50.659405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.819386, 35.265629, 50.430672>,  <36.866634, 35.456764, 50.293430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.819386, 35.265629, 50.430672>,  <36.740639, 34.947071, 50.659405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819386, 35.265629, 50.430672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427627, 0.455100, 0.781037,
		0.882258, -0.398293, -0.250967,
		0.196866, 0.796396, -0.571836,
		36.878445, 35.504547, 50.259121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479088, 35.093559, 50.674637>,  <36.740639, 34.947071, 50.659405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479088, 35.093559, 50.674637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238297, 35.405071, 50.604065>,  <37.093822, 35.591980, 50.561722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238297, 35.405071, 50.604065>,  <37.479088, 35.093559, 50.674637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238297, 35.405071, 50.604065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463268, 0.520572, 0.717208,
		0.650391, 0.350008, -0.674156,
		-0.601976, 0.778780, -0.176428,
		37.057705, 35.638706, 50.551136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831524, 35.719532, 50.486134>,  <37.479088, 35.093559, 50.674637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831524, 35.719532, 50.486134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508453, 35.844948, 50.685875>,  <37.314610, 35.920197, 50.805717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508453, 35.844948, 50.685875>,  <37.831524, 35.719532, 50.486134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508453, 35.844948, 50.685875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589357, 0.403840, 0.699694,
		0.017723, 0.859423, -0.510958,
		-0.807678, 0.313537, 0.499350,
		37.266151, 35.939011, 50.835678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378403, 35.643826, 51.106060>,  <37.831524, 35.719532, 50.486134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378403, 35.643826, 51.106060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.573086, 35.849380, 51.388626>,  <38.689896, 35.972713, 51.558167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.573086, 35.849380, 51.388626>,  <38.378403, 35.643826, 51.106060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573086, 35.849380, 51.388626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449892, 0.545719, -0.706957,
		-0.748805, 0.661897, 0.034412,
		0.486712, 0.513890, 0.706419,
		38.719101, 36.003548, 51.600552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288258, 36.395111, 51.087990>,  <38.378403, 35.643826, 51.106060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288258, 36.395111, 51.087990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.661964, 36.346954, 51.222248>,  <38.886189, 36.318062, 51.302803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.661964, 36.346954, 51.222248>,  <38.288258, 36.395111, 51.087990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.661964, 36.346954, 51.222248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349398, 0.497072, -0.794255,
		-0.071218, 0.859317, 0.506460,
		0.934264, -0.120391, 0.335644,
		38.942245, 36.310837, 51.322941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597523, 36.976391, 50.892403>,  <38.288258, 36.395111, 51.087990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597523, 36.976391, 50.892403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.907768, 36.742020, 50.986305>,  <39.093914, 36.601398, 51.042648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.907768, 36.742020, 50.986305>,  <38.597523, 36.976391, 50.892403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907768, 36.742020, 50.986305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551032, 0.447116, -0.704593,
		0.307877, 0.675851, 0.669654,
		0.775613, -0.585929, 0.234759,
		39.140453, 36.566242, 51.056732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292618, 37.416096, 50.900616>,  <38.597523, 36.976391, 50.892403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.292618, 37.416096, 50.900616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.373051, 37.032677, 50.819862>,  <39.421310, 36.802628, 50.771412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.373051, 37.032677, 50.819862>,  <39.292618, 37.416096, 50.900616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.373051, 37.032677, 50.819862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369104, 0.265042, -0.890795,
		0.907374, 0.104612, 0.407099,
		0.201086, -0.958545, -0.201879,
		39.433376, 36.745113, 50.759300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872814, 37.433613, 50.514019>,  <39.292618, 37.416096, 50.900616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.872814, 37.433613, 50.514019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.765411, 37.051651, 50.463326>,  <39.700970, 36.822475, 50.432911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.765411, 37.051651, 50.463326>,  <39.872814, 37.433613, 50.514019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765411, 37.051651, 50.463326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252719, 0.057121, -0.965852,
		0.929535, -0.291368, 0.225985,
		-0.268510, -0.954904, -0.126730,
		39.684860, 36.765179, 50.425308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256519, 37.239147, 49.948357>,  <39.872814, 37.433613, 50.514019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.256519, 37.239147, 49.948357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.008312, 36.925808, 49.962906>,  <39.859386, 36.737804, 49.971638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.008312, 36.925808, 49.962906>,  <40.256519, 37.239147, 49.948357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.008312, 36.925808, 49.962906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151088, -0.164942, -0.974662,
		0.769498, -0.599302, 0.220704,
		-0.620520, -0.783347, 0.036376,
		39.822155, 36.690804, 49.973820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.589794, 36.617958, 49.670834>,  <40.256519, 37.239147, 49.948357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.589794, 36.617958, 49.670834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.195621, 36.560658, 49.634182>,  <39.959118, 36.526279, 49.612190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.195621, 36.560658, 49.634182>,  <40.589794, 36.617958, 49.670834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.195621, 36.560658, 49.634182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110387, -0.129016, -0.985479,
		0.129349, -0.981241, 0.142950,
		-0.985436, -0.143250, -0.091628,
		39.899990, 36.517681, 49.606693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.405453, 36.013062, 49.278572>,  <40.589794, 36.617958, 49.670834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.405453, 36.013062, 49.278572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083939, 36.246418, 49.231960>,  <39.891029, 36.386433, 49.203995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083939, 36.246418, 49.231960>,  <40.405453, 36.013062, 49.278572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.083939, 36.246418, 49.231960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134204, -0.013018, -0.990868,
		-0.579582, -0.812086, -0.067829,
		-0.803787, 0.583393, -0.116530,
		39.842804, 36.421436, 49.197002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048435, 35.656803, 48.768394>,  <40.405453, 36.013062, 49.278572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.048435, 35.656803, 48.768394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.869972, 36.014698, 48.776257>,  <39.762894, 36.229435, 48.780972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.869972, 36.014698, 48.776257>,  <40.048435, 35.656803, 48.768394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.869972, 36.014698, 48.776257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129824, -0.042978, -0.990605,
		-0.885490, -0.444513, 0.135334,
		-0.446153, 0.894741, 0.019652,
		39.736126, 36.283119, 48.782150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456699, 35.597897, 48.424507>,  <40.048435, 35.656803, 48.768394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456699, 35.597897, 48.424507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.541050, 35.988773, 48.414459>,  <39.591660, 36.223297, 48.408432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.541050, 35.988773, 48.414459>,  <39.456699, 35.597897, 48.424507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.541050, 35.988773, 48.414459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086426, -0.006957, -0.996234,
		-0.973684, 0.212256, 0.082988,
		0.210879, 0.977189, -0.025119,
		39.604313, 36.281929, 48.406925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.877407, 35.797279, 47.975616>,  <39.456699, 35.597897, 48.424507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.877407, 35.797279, 47.975616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.166302, 36.073940, 47.975094>,  <39.339638, 36.239937, 47.974781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.166302, 36.073940, 47.975094>,  <38.877407, 35.797279, 47.975616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166302, 36.073940, 47.975094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113706, 0.116868, -0.986617,
		-0.682240, 0.712715, 0.163050,
		0.722232, 0.691649, -0.001308,
		39.382973, 36.281437, 47.974701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470642, 36.414494, 47.613338>,  <38.877407, 35.797279, 47.975616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.470642, 36.414494, 47.613338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.869781, 36.439720, 47.606277>,  <39.109264, 36.454857, 47.602043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.869781, 36.439720, 47.606277>,  <38.470642, 36.414494, 47.613338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869781, 36.439720, 47.606277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028179, 0.170174, -0.985011,
		-0.059122, 0.983394, 0.171586,
		0.997853, 0.063071, -0.017650,
		39.169136, 36.458641, 47.600983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601009, 36.794456, 47.101265>,  <38.470642, 36.414494, 47.613338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.601009, 36.794456, 47.101265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972954, 36.653614, 47.143925>,  <39.196121, 36.569111, 47.169521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972954, 36.653614, 47.143925>,  <38.601009, 36.794456, 47.101265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972954, 36.653614, 47.143925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138910, 0.067597, -0.987995,
		0.340666, 0.933517, 0.111767,
		0.929866, -0.352102, 0.106647,
		39.251915, 36.547985, 47.175919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160835, 37.321812, 46.779358>,  <38.601009, 36.794456, 47.101265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160835, 37.321812, 46.779358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.313999, 36.954700, 46.821419>,  <39.405895, 36.734432, 46.846657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.313999, 36.954700, 46.821419>,  <39.160835, 37.321812, 46.779358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.313999, 36.954700, 46.821419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121025, -0.063008, -0.990648,
		0.915825, 0.392052, 0.086948,
		0.382907, -0.917783, 0.105152,
		39.428871, 36.679367, 46.852962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760136, 37.344017, 46.404415>,  <39.160835, 37.321812, 46.779358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.760136, 37.344017, 46.404415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.685619, 36.951042, 46.400261>,  <39.640907, 36.715256, 46.397770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.685619, 36.951042, 46.400261>,  <39.760136, 37.344017, 46.404415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.685619, 36.951042, 46.400261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049343, 0.001200, -0.998781,
		0.981254, -0.186580, 0.048253,
		-0.186295, -0.982439, -0.010384,
		39.629730, 36.656311, 46.397144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.335957, 37.087769, 46.043827>,  <39.760136, 37.344017, 46.404415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.335957, 37.087769, 46.043827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.061436, 36.798042, 46.017445>,  <39.896721, 36.624207, 46.001614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.061436, 36.798042, 46.017445>,  <40.335957, 37.087769, 46.043827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.061436, 36.798042, 46.017445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191658, -0.092626, -0.977081,
		0.701609, -0.683215, 0.202390,
		-0.686303, -0.724319, -0.065956,
		39.855545, 36.580746, 45.997658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.547447, 36.691628, 45.396839>,  <40.335957, 37.087769, 46.043827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.547447, 36.691628, 45.396839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.191250, 36.546028, 45.506042>,  <39.977531, 36.458668, 45.571564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.191250, 36.546028, 45.506042>,  <40.547447, 36.691628, 45.396839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191250, 36.546028, 45.506042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156691, -0.317982, -0.935059,
		0.427174, -0.875437, 0.226124,
		-0.890489, -0.364002, 0.273007,
		39.924103, 36.436829, 45.587944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.496544, 35.929634, 45.122307>,  <40.547447, 36.691628, 45.396839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.496544, 35.929634, 45.122307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.137375, 36.098751, 45.171272>,  <39.921875, 36.200222, 45.200649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.137375, 36.098751, 45.171272>,  <40.496544, 35.929634, 45.122307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.137375, 36.098751, 45.171272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294217, -0.369677, -0.881349,
		-0.327374, -0.827398, 0.456333,
		-0.897921, 0.422791, 0.122411,
		39.868000, 36.225590, 45.207996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043503, 35.456585, 44.878937>,  <40.496544, 35.929634, 45.122307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.043503, 35.456585, 44.878937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.806740, 35.777687, 44.850018>,  <39.664684, 35.970348, 44.832664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.806740, 35.777687, 44.850018>,  <40.043503, 35.456585, 44.878937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.806740, 35.777687, 44.850018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359045, -0.342915, -0.868041,
		-0.721619, -0.487841, 0.491200,
		-0.591906, 0.802758, -0.072298,
		39.629169, 36.018513, 44.828327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510666, 35.164726, 44.548771>,  <40.043503, 35.456585, 44.878937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.510666, 35.164726, 44.548771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.480713, 35.556358, 44.473091>,  <39.462742, 35.791336, 44.427685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.480713, 35.556358, 44.473091>,  <39.510666, 35.164726, 44.548771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.480713, 35.556358, 44.473091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207799, -0.200886, -0.957321,
		-0.975301, -0.032373, 0.218495,
		-0.074884, 0.979080, -0.189197,
		39.458248, 35.850082, 44.416332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003696, 35.263958, 43.973652>,  <39.510666, 35.164726, 44.548771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003696, 35.263958, 43.973652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.218384, 35.601460, 43.974953>,  <39.347195, 35.803959, 43.975731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.218384, 35.601460, 43.974953>,  <39.003696, 35.263958, 43.973652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.218384, 35.601460, 43.974953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137035, 0.090968, -0.986381,
		-0.832559, 0.528965, 0.164448,
		0.536720, 0.843755, 0.003249,
		39.379398, 35.854588, 43.975929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614365, 35.640930, 43.573917>,  <39.003696, 35.263958, 43.973652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614365, 35.640930, 43.573917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964748, 35.833836, 43.578079>,  <39.174980, 35.949581, 43.580578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964748, 35.833836, 43.578079>,  <38.614365, 35.640930, 43.573917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964748, 35.833836, 43.578079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100802, 0.204104, -0.973746,
		-0.471729, 0.851916, 0.227401,
		0.875963, 0.482267, 0.010407,
		39.227539, 35.978516, 43.581200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585030, 36.308395, 43.174686>,  <38.614365, 35.640930, 43.573917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585030, 36.308395, 43.174686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957867, 36.165184, 43.196625>,  <39.181568, 36.079258, 43.209789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957867, 36.165184, 43.196625>,  <38.585030, 36.308395, 43.174686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957867, 36.165184, 43.196625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081027, 0.058519, -0.994993,
		0.353030, 0.931874, 0.083555,
		0.932097, -0.358032, 0.054848,
		39.237495, 36.057774, 43.213078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904907, 36.647617, 42.700890>,  <38.585030, 36.308395, 43.174686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904907, 36.647617, 42.700890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.151535, 36.338646, 42.761806>,  <39.299511, 36.153263, 42.798359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.151535, 36.338646, 42.761806>,  <38.904907, 36.647617, 42.700890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151535, 36.338646, 42.761806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040829, -0.224554, -0.973606,
		0.786238, 0.594082, -0.169991,
		0.616574, -0.772426, 0.152297,
		39.336506, 36.106918, 42.807495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199677, 36.621593, 42.121841>,  <38.904907, 36.647617, 42.700890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.199677, 36.621593, 42.121841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.351913, 36.290440, 42.286648>,  <39.443256, 36.091747, 42.385532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.351913, 36.290440, 42.286648>,  <39.199677, 36.621593, 42.121841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351913, 36.290440, 42.286648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142598, -0.387679, -0.910698,
		0.913683, 0.405356, -0.029492,
		0.380590, -0.827884, 0.412019,
		39.466091, 36.042076, 42.410252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905182, 36.506138, 41.792782>,  <39.199677, 36.621593, 42.121841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905182, 36.506138, 41.792782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.746796, 36.160629, 41.917439>,  <39.651764, 35.953323, 41.992233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.746796, 36.160629, 41.917439>,  <39.905182, 36.506138, 41.792782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.746796, 36.160629, 41.917439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119378, -0.384920, -0.915197,
		0.910474, -0.325180, 0.255528,
		-0.395962, -0.863768, 0.311641,
		39.628006, 35.901501, 42.010929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.311687, 36.008442, 41.542091>,  <39.905182, 36.506138, 41.792782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.311687, 36.008442, 41.542091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.970131, 35.809124, 41.602203>,  <39.765198, 35.689533, 41.638271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.970131, 35.809124, 41.602203>,  <40.311687, 36.008442, 41.542091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.970131, 35.809124, 41.602203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006826, -0.277991, -0.960560,
		0.520414, -0.821235, 0.233971,
		-0.853887, -0.498292, 0.150276,
		39.713966, 35.659637, 41.647285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413456, 35.437454, 41.231331>,  <40.311687, 36.008442, 41.542091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413456, 35.437454, 41.231331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.014076, 35.435383, 41.253479>,  <39.774448, 35.434139, 41.266769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.014076, 35.435383, 41.253479>,  <40.413456, 35.437454, 41.231331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014076, 35.435383, 41.253479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048927, -0.391568, -0.918847,
		0.026440, -0.920134, 0.390709,
		-0.998452, -0.005178, 0.055372,
		39.714542, 35.433830, 41.270092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.178185, 34.777161, 40.883785>,  <40.413456, 35.437454, 41.231331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.178185, 34.777161, 40.883785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860493, 35.020092, 40.891235>,  <39.669876, 35.165852, 40.895706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860493, 35.020092, 40.891235>,  <40.178185, 34.777161, 40.883785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860493, 35.020092, 40.891235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158939, -0.178070, -0.971097,
		-0.586457, -0.774238, 0.237957,
		-0.794233, 0.607327, 0.018626,
		39.622223, 35.202290, 40.896824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678341, 34.447414, 40.515453>,  <40.178185, 34.777161, 40.883785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678341, 34.447414, 40.515453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.554111, 34.827610, 40.511242>,  <39.479576, 35.055729, 40.508717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.554111, 34.827610, 40.511242>,  <39.678341, 34.447414, 40.515453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.554111, 34.827610, 40.511242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078712, -0.036750, -0.996220,
		-0.947285, -0.308569, 0.086229,
		-0.310571, 0.950492, -0.010525,
		39.460941, 35.112759, 40.508083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084354, 34.366142, 40.184811>,  <39.678341, 34.447414, 40.515453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084354, 34.366142, 40.184811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.226028, 34.738903, 40.153538>,  <39.311031, 34.962559, 40.134773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.226028, 34.738903, 40.153538>,  <39.084354, 34.366142, 40.184811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226028, 34.738903, 40.153538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132532, -0.032741, -0.990638,
		-0.925737, 0.361230, 0.111911,
		0.354184, 0.931902, -0.078184,
		39.332283, 35.018475, 40.130081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506901, 34.752979, 39.672901>,  <39.084354, 34.366142, 40.184811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.506901, 34.752979, 39.672901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.846016, 34.964249, 39.692066>,  <39.049484, 35.091011, 39.703564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.846016, 34.964249, 39.692066>,  <38.506901, 34.752979, 39.672901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846016, 34.964249, 39.692066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117056, 0.274470, -0.954445,
		-0.517261, 0.803555, 0.294517,
		0.847785, 0.528172, 0.047912,
		39.100353, 35.122700, 39.706440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407364, 35.421268, 39.423302>,  <38.506901, 34.752979, 39.672901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407364, 35.421268, 39.423302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.800594, 35.355812, 39.390373>,  <39.036533, 35.316540, 39.370617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.800594, 35.355812, 39.390373>,  <38.407364, 35.421268, 39.423302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800594, 35.355812, 39.390373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014436, 0.378791, -0.925370,
		0.182609, 0.910901, 0.370019,
		0.983080, -0.163639, -0.082321,
		39.095520, 35.306721, 39.365677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535652, 35.985138, 38.939613>,  <38.407364, 35.421268, 39.423302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.535652, 35.985138, 38.939613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.856895, 35.746838, 38.935669>,  <39.049641, 35.603855, 38.933304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.856895, 35.746838, 38.935669>,  <38.535652, 35.985138, 38.939613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.856895, 35.746838, 38.935669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177570, 0.255098, -0.950470,
		0.568762, 0.761578, 0.310659,
		0.803105, -0.595755, -0.009856,
		39.097828, 35.568111, 38.932713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993587, 36.338825, 38.542385>,  <38.535652, 35.985138, 38.939613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993587, 36.338825, 38.542385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.232826, 36.018261, 38.544418>,  <39.376369, 35.825924, 38.545639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.232826, 36.018261, 38.544418>,  <38.993587, 36.338825, 38.542385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232826, 36.018261, 38.544418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452467, 0.332430, -0.827505,
		0.661480, 0.497227, 0.561436,
		0.598095, -0.801409, 0.005083,
		39.412254, 35.777840, 38.545944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689030, 36.487823, 38.488441>,  <38.993587, 36.338825, 38.542385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.689030, 36.487823, 38.488441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.658680, 36.111420, 38.356541>,  <39.640469, 35.885574, 38.277401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.658680, 36.111420, 38.356541>,  <39.689030, 36.487823, 38.488441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.658680, 36.111420, 38.356541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570559, 0.230236, -0.788323,
		0.817743, -0.247958, 0.519435,
		-0.075879, -0.941014, -0.329749,
		39.635918, 35.829117, 38.257614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350975, 36.281582, 38.255852>,  <39.689030, 36.487823, 38.488441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350975, 36.281582, 38.255852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.108158, 36.042751, 38.046089>,  <39.962467, 35.899452, 37.920231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.108158, 36.042751, 38.046089>,  <40.350975, 36.281582, 38.255852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.108158, 36.042751, 38.046089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486941, 0.242025, -0.839233,
		0.628003, -0.764806, 0.143819,
		-0.607043, -0.597073, -0.524407,
		39.926044, 35.863628, 37.888767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736595, 35.968391, 37.664867>,  <40.350975, 36.281582, 38.255852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.736595, 35.968391, 37.664867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.362354, 35.886700, 37.549667>,  <40.137810, 35.837685, 37.480549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.362354, 35.886700, 37.549667>,  <40.736595, 35.968391, 37.664867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.362354, 35.886700, 37.549667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274270, 0.093232, -0.957123,
		0.222322, -0.974473, -0.031214,
		-0.935601, -0.204229, -0.287997,
		40.081673, 35.825432, 37.463268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.776993, 35.393936, 37.149925>,  <40.736595, 35.968391, 37.664867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.776993, 35.393936, 37.149925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444233, 35.600090, 37.067635>,  <40.244576, 35.723782, 37.018261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444233, 35.600090, 37.067635>,  <40.776993, 35.393936, 37.149925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.444233, 35.600090, 37.067635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274537, 0.060050, -0.959700,
		-0.482260, -0.854853, -0.191448,
		-0.831898, 0.515384, -0.205729,
		40.194664, 35.754704, 37.005917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.590748, 35.116753, 36.512386>,  <40.776993, 35.393936, 37.149925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.590748, 35.116753, 36.512386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.388020, 35.458931, 36.555000>,  <40.266380, 35.664238, 36.580570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.388020, 35.458931, 36.555000>,  <40.590748, 35.116753, 36.512386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.388020, 35.458931, 36.555000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139956, 0.203596, -0.969000,
		-0.850613, -0.476201, -0.222911,
		-0.506822, 0.855442, 0.106534,
		40.235973, 35.715565, 36.586960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163162, 35.079708, 35.932190>,  <40.590748, 35.116753, 36.512386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.163162, 35.079708, 35.932190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.179790, 35.468346, 36.025387>,  <40.189770, 35.701527, 36.081303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.179790, 35.468346, 36.025387>,  <40.163162, 35.079708, 35.932190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.179790, 35.468346, 36.025387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211294, 0.219368, -0.952487,
		-0.976538, 0.088828, -0.196172,
		0.041574, 0.971590, 0.232990,
		40.192261, 35.759823, 36.095284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524658, 35.368855, 35.740440>,  <40.163162, 35.079708, 35.932190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.524658, 35.368855, 35.740440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.818012, 35.639114, 35.770519>,  <39.994022, 35.801270, 35.788567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.818012, 35.639114, 35.770519>,  <39.524658, 35.368855, 35.740440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818012, 35.639114, 35.770519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046009, 0.061028, -0.997075,
		-0.678259, 0.734696, 0.013671,
		0.733382, 0.675646, 0.075195,
		40.038025, 35.841808, 35.793079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308609, 35.819241, 35.244659>,  <39.524658, 35.368855, 35.740440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.308609, 35.819241, 35.244659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.693470, 35.849350, 35.349422>,  <39.924385, 35.867416, 35.412281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.693470, 35.849350, 35.349422>,  <39.308609, 35.819241, 35.244659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.693470, 35.849350, 35.349422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235837, 0.251551, -0.938671,
		-0.136540, 0.964912, 0.224278,
		0.962153, 0.075273, 0.261909,
		39.982117, 35.871933, 35.427994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622082, 36.518311, 35.192028>,  <39.308609, 35.819241, 35.244659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.622082, 36.518311, 35.192028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.894558, 36.231236, 35.134193>,  <40.058044, 36.058990, 35.099491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.894558, 36.231236, 35.134193>,  <39.622082, 36.518311, 35.192028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.894558, 36.231236, 35.134193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259168, 0.421104, -0.869197,
		0.684696, 0.554618, 0.472854,
		0.681193, -0.717684, -0.144589,
		40.098915, 36.015930, 35.090816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371216, 36.767101, 34.979813>,  <39.622082, 36.518311, 35.192028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.371216, 36.767101, 34.979813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.294403, 36.397644, 34.847145>,  <40.248314, 36.175968, 34.767544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.294403, 36.397644, 34.847145>,  <40.371216, 36.767101, 34.979813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.294403, 36.397644, 34.847145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098858, 0.318030, -0.942913,
		0.976397, -0.213857, 0.030238,
		-0.192032, -0.923646, -0.331665,
		40.236794, 36.120552, 34.747646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.921719, 36.441055, 34.774105>,  <40.371216, 36.767101, 34.979813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.921719, 36.441055, 34.774105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.593224, 36.320045, 34.580593>,  <40.396126, 36.247440, 34.464485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.593224, 36.320045, 34.580593>,  <40.921719, 36.441055, 34.774105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.593224, 36.320045, 34.580593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359475, 0.384127, -0.850426,
		0.443106, -0.872311, -0.206712,
		-0.821240, -0.302521, -0.483784,
		40.346851, 36.229290, 34.435459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.325031, 36.655838, 34.145618>,  <40.921719, 36.441055, 34.774105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.325031, 36.655838, 34.145618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.475471, 36.353882, 34.360538>,  <41.565735, 36.172707, 34.489491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.475471, 36.353882, 34.360538>,  <41.325031, 36.655838, 34.145618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.475471, 36.353882, 34.360538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403199, -0.388759, -0.828430,
		0.834254, 0.528209, 0.158161,
		0.376098, -0.754892, 0.537297,
		41.588303, 36.127415, 34.521729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.070473, 36.666943, 34.203773>,  <41.325031, 36.655838, 34.145618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.070473, 36.666943, 34.203773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.901772, 36.304264, 34.205856>,  <41.800552, 36.086658, 34.207108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.901772, 36.304264, 34.205856>,  <42.070473, 36.666943, 34.203773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.901772, 36.304264, 34.205856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537451, -0.254616, -0.803939,
		0.730253, -0.336265, 0.594690,
		-0.421754, -0.906695, 0.005208,
		41.775246, 36.032257, 34.207420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.715244, 36.377357, 34.447147>,  <42.070473, 36.666943, 34.203773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.715244, 36.377357, 34.447147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.093216, 36.246586, 34.453175>,  <43.320000, 36.168121, 34.456791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.093216, 36.246586, 34.453175>,  <42.715244, 36.377357, 34.447147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.093216, 36.246586, 34.453175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016590, -0.001866, 0.999861,
		-0.326856, -0.945047, -0.007187,
		0.944928, -0.326930, 0.015069,
		43.376694, 36.148506, 34.457695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.755234, 35.886475, 34.979855>,  <42.715244, 36.377357, 34.447147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.755234, 35.886475, 34.979855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.130859, 36.020378, 34.948605>,  <43.356236, 36.100719, 34.929855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.130859, 36.020378, 34.948605>,  <42.755234, 35.886475, 34.979855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.130859, 36.020378, 34.948605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047726, 0.098104, 0.994031,
		0.340423, -0.937184, 0.076149,
		0.939061, 0.334756, -0.078125,
		43.412579, 36.120804, 34.925167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.280849, 35.513367, 35.474609>,  <42.755234, 35.886475, 34.979855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.280849, 35.513367, 35.474609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.433090, 35.869595, 35.374992>,  <43.524437, 36.083332, 35.315220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.433090, 35.869595, 35.374992>,  <43.280849, 35.513367, 35.474609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.433090, 35.869595, 35.374992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117491, 0.220562, 0.968271,
		0.917243, -0.397790, -0.020687,
		0.380606, 0.890570, -0.249046,
		43.547272, 36.136765, 35.300278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.657475, 35.681061, 36.034466>,  <43.280849, 35.513367, 35.474609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.657475, 35.681061, 36.034466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.669113, 36.037052, 35.852436>,  <43.676098, 36.250648, 35.743217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.669113, 36.037052, 35.852436>,  <43.657475, 35.681061, 36.034466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.669113, 36.037052, 35.852436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364498, 0.414469, 0.833881,
		0.930750, -0.190136, -0.312336,
		0.029097, 0.889980, -0.455071,
		43.677841, 36.304047, 35.715916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.245174, 36.064747, 36.226624>,  <43.657475, 35.681061, 36.034466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.245174, 36.064747, 36.226624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.008854, 36.358990, 36.094055>,  <43.867062, 36.535534, 36.014515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.008854, 36.358990, 36.094055>,  <44.245174, 36.064747, 36.226624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.008854, 36.358990, 36.094055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083754, 0.464470, 0.881620,
		0.802457, 0.493105, -0.336020,
		-0.590802, 0.735605, -0.331418,
		43.831612, 36.579670, 35.994629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.608952, 36.666595, 36.361279>,  <44.245174, 36.064747, 36.226624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.608952, 36.666595, 36.361279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.236694, 36.808632, 36.325920>,  <44.013340, 36.893852, 36.304703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.236694, 36.808632, 36.325920>,  <44.608952, 36.666595, 36.361279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.236694, 36.808632, 36.325920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142653, 0.574524, 0.805961,
		0.336974, 0.737452, -0.585331,
		-0.930644, 0.355087, -0.088400,
		43.957500, 36.915157, 36.299400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.692356, 37.348682, 36.564079>,  <44.608952, 36.666595, 36.361279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.692356, 37.348682, 36.564079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.302704, 37.264431, 36.596840>,  <44.068913, 37.213882, 36.616497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.302704, 37.264431, 36.596840>,  <44.692356, 37.348682, 36.564079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.302704, 37.264431, 36.596840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014955, 0.421707, 0.906609,
		-0.225493, 0.881930, -0.413947,
		-0.974130, -0.210625, 0.081902,
		44.010464, 37.201244, 36.621410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.421970, 37.922005, 36.922787>,  <44.692356, 37.348682, 36.564079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.421970, 37.922005, 36.922787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.126957, 37.655575, 36.967300>,  <43.949947, 37.495716, 36.994007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.126957, 37.655575, 36.967300>,  <44.421970, 37.922005, 36.922787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.126957, 37.655575, 36.967300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207323, 0.380162, 0.901384,
		-0.642698, 0.641730, -0.418476,
		-0.737534, -0.666078, 0.111284,
		43.905697, 37.455753, 37.000687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.881516, 38.188011, 37.406750>,  <44.421970, 37.922005, 36.922787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.881516, 38.188011, 37.406750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.821487, 37.792553, 37.403675>,  <43.785469, 37.555279, 37.401833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.821487, 37.792553, 37.403675>,  <43.881516, 38.188011, 37.406750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.821487, 37.792553, 37.403675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102105, 0.007767, 0.994743,
		-0.983389, 0.150066, -0.102112,
		-0.150071, -0.988645, -0.007685,
		43.776466, 37.495960, 37.401371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.460804, 38.143333, 37.925217>,  <43.881516, 38.188011, 37.406750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.460804, 38.143333, 37.925217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.580750, 37.763798, 37.885639>,  <43.652718, 37.536076, 37.861893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.580750, 37.763798, 37.885639>,  <43.460804, 38.143333, 37.925217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.580750, 37.763798, 37.885639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046618, -0.089017, 0.994939,
		-0.952842, -0.302960, 0.017540,
		0.299865, -0.948837, -0.098943,
		43.670708, 37.479145, 37.855957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.027557, 37.738514, 38.283493>,  <43.460804, 38.143333, 37.925217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.027557, 37.738514, 38.283493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.340813, 37.490520, 38.264248>,  <43.528767, 37.341724, 38.252701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.340813, 37.490520, 38.264248>,  <43.027557, 37.738514, 38.283493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.340813, 37.490520, 38.264248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000572, -0.078092, 0.996946,
		-0.621850, -0.780717, -0.061511,
		0.783136, -0.619986, -0.048115,
		43.575752, 37.304523, 38.249813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.918457, 37.236668, 38.713779>,  <43.027557, 37.738514, 38.283493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.918457, 37.236668, 38.713779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.308064, 37.165516, 38.657715>,  <43.541828, 37.122826, 38.624077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.308064, 37.165516, 38.657715>,  <42.918457, 37.236668, 38.713779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.308064, 37.165516, 38.657715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095343, -0.239308, 0.966251,
		-0.205417, -0.954511, -0.216131,
		0.974019, -0.177878, -0.140164,
		43.600269, 37.112152, 38.615665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.929581, 36.596825, 39.084576>,  <42.918457, 37.236668, 38.713779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.929581, 36.596825, 39.084576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.300045, 36.746059, 39.062550>,  <43.522324, 36.835598, 39.049335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.300045, 36.746059, 39.062550>,  <42.929581, 36.596825, 39.084576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.300045, 36.746059, 39.062550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184988, -0.322197, 0.928423,
		0.328639, -0.870055, -0.367423,
		0.926162, 0.373085, -0.055063,
		43.577892, 36.857986, 39.046032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.275879, 36.029053, 39.330311>,  <42.929581, 36.596825, 39.084576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.275879, 36.029053, 39.330311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.502045, 36.358425, 39.349373>,  <43.637745, 36.556049, 39.360809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.502045, 36.358425, 39.349373>,  <43.275879, 36.029053, 39.330311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.502045, 36.358425, 39.349373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279263, -0.245483, 0.928305,
		0.776094, -0.511565, -0.368752,
		0.565411, 0.823431, 0.047657,
		43.671669, 36.605453, 39.363670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.089584, 35.914604, 39.425709>,  <43.275879, 36.029053, 39.330311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.089584, 35.914604, 39.425709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.973747, 36.270126, 39.567787>,  <43.904243, 36.483440, 39.653034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.973747, 36.270126, 39.567787>,  <44.089584, 35.914604, 39.425709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.973747, 36.270126, 39.567787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321213, -0.259333, 0.910807,
		0.901642, 0.377856, -0.210395,
		-0.289591, 0.888803, 0.355198,
		43.886871, 36.536766, 39.674347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.639370, 36.071438, 39.851212>,  <44.089584, 35.914604, 39.425709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.639370, 36.071438, 39.851212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.340916, 36.309799, 39.969994>,  <44.161842, 36.452816, 40.041264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.340916, 36.309799, 39.969994>,  <44.639370, 36.071438, 39.851212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.340916, 36.309799, 39.969994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285427, -0.116667, 0.951273,
		0.601509, 0.794539, -0.083037,
		-0.746136, 0.595900, 0.296960,
		44.117077, 36.488567, 40.059082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.864265, 36.426094, 40.371002>,  <44.639370, 36.071438, 39.851212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.864265, 36.426094, 40.371002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.475563, 36.508640, 40.416786>,  <44.242340, 36.558167, 40.444256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.475563, 36.508640, 40.416786>,  <44.864265, 36.426094, 40.371002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.475563, 36.508640, 40.416786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076213, -0.184576, 0.979859,
		0.223333, 0.960909, 0.163636,
		-0.971758, 0.206364, 0.114455,
		44.184036, 36.570549, 40.451122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.768829, 36.944576, 40.925747>,  <44.864265, 36.426094, 40.371002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.768829, 36.944576, 40.925747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.421345, 36.749187, 40.892910>,  <44.212856, 36.631954, 40.873207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.421345, 36.749187, 40.892910>,  <44.768829, 36.944576, 40.925747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.421345, 36.749187, 40.892910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006026, -0.155302, 0.987849,
		-0.495287, 0.858647, 0.131969,
		-0.868709, -0.488473, -0.082093,
		44.160732, 36.602646, 40.868282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.503342, 37.038818, 41.584534>,  <44.768829, 36.944576, 40.925747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.503342, 37.038818, 41.584534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.256855, 36.754517, 41.448822>,  <44.108963, 36.583935, 41.367397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.256855, 36.754517, 41.448822>,  <44.503342, 37.038818, 41.584534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.256855, 36.754517, 41.448822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159642, -0.309119, 0.937529,
		-0.771227, 0.631884, 0.077019,
		-0.616217, -0.710752, -0.339276,
		44.071991, 36.541290, 41.347038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.926075, 37.051376, 42.004475>,  <44.503342, 37.038818, 41.584534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.926075, 37.051376, 42.004475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.932068, 36.676064, 41.866257>,  <43.935661, 36.450874, 41.783325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.932068, 36.676064, 41.866257>,  <43.926075, 37.051376, 42.004475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.932068, 36.676064, 41.866257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173232, -0.342789, 0.923302,
		-0.984767, 0.046028, -0.167676,
		0.014979, -0.938284, -0.345541,
		43.936562, 36.394577, 41.762596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.558987, 36.704361, 42.466480>,  <43.926075, 37.051376, 42.004475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.558987, 36.704361, 42.466480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.783115, 36.414406, 42.306194>,  <43.917595, 36.240433, 42.210022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.783115, 36.414406, 42.306194>,  <43.558987, 36.704361, 42.466480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.783115, 36.414406, 42.306194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049385, -0.512177, 0.857459,
		-0.826799, -0.460666, -0.322785,
		0.560326, -0.724887, -0.400718,
		43.951214, 36.196941, 42.185978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.290596, 35.928867, 42.607552>,  <43.558987, 36.704361, 42.466480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.290596, 35.928867, 42.607552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.680759, 35.901707, 42.523678>,  <43.914856, 35.885410, 42.473354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.680759, 35.901707, 42.523678>,  <43.290596, 35.928867, 42.607552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.680759, 35.901707, 42.523678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115873, -0.651315, 0.749908,
		-0.187491, -0.755764, -0.627430,
		0.975408, -0.067898, -0.209688,
		43.973381, 35.881336, 42.460770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.461918, 35.224079, 42.535961>,  <43.290596, 35.928867, 42.607552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.461918, 35.224079, 42.535961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.747746, 35.470184, 42.669128>,  <43.919243, 35.617847, 42.749031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.747746, 35.470184, 42.669128>,  <43.461918, 35.224079, 42.535961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.747746, 35.470184, 42.669128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008801, -0.483767, 0.875153,
		0.699507, -0.622429, -0.351101,
		0.714571, 0.615265, 0.332920,
		43.962116, 35.654762, 42.769005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.969654, 34.906147, 42.864609>,  <43.461918, 35.224079, 42.535961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.969654, 34.906147, 42.864609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.902554, 35.285145, 42.973511>,  <43.862293, 35.512543, 43.038853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.902554, 35.285145, 42.973511>,  <43.969654, 34.906147, 42.864609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.902554, 35.285145, 42.973511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108334, -0.256777, 0.960380,
		0.979860, 0.190596, -0.059572,
		-0.167747, 0.947491, 0.272254,
		43.852230, 35.569393, 43.055187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.738209, 34.229527, 43.058884>,  <43.969654, 34.906147, 42.864609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.738209, 34.229527, 43.058884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.975380, 34.143276, 42.748543>,  <44.117683, 34.091526, 42.562340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.975380, 34.143276, 42.748543>,  <43.738209, 34.229527, 43.058884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.975380, 34.143276, 42.748543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665285, 0.674005, 0.321111,
		0.453685, -0.706556, 0.543091,
		0.592929, -0.215627, -0.775848,
		44.153259, 34.078587, 42.515789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.416733, 33.925220, 42.898762>,  <43.738209, 34.229527, 43.058884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.416733, 33.925220, 42.898762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.229008, 33.674168, 42.650299>,  <44.116375, 33.523537, 42.501221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.229008, 33.674168, 42.650299>,  <44.416733, 33.925220, 42.898762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.229008, 33.674168, 42.650299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510009, -0.766899, 0.389559,
		-0.720860, -0.133970, 0.680010,
		-0.469310, -0.627628, -0.621153,
		44.088215, 33.485878, 42.463955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.046585, 33.415070, 43.317150>,  <44.416733, 33.925220, 42.898762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.046585, 33.415070, 43.317150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.162960, 33.292389, 42.954651>,  <44.232784, 33.218781, 42.737152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.162960, 33.292389, 42.954651>,  <44.046585, 33.415070, 43.317150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.162960, 33.292389, 42.954651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571036, -0.704341, 0.421689,
		-0.767643, -0.640186, -0.029780,
		0.290935, -0.306700, -0.906252,
		44.250240, 33.200378, 42.682774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.075302, 32.690205, 43.221706>,  <44.046585, 33.415070, 43.317150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.075302, 32.690205, 43.221706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.346664, 32.806828, 42.951962>,  <44.509483, 32.876801, 42.790115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.346664, 32.806828, 42.951962>,  <44.075302, 32.690205, 43.221706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.346664, 32.806828, 42.951962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632203, -0.699276, 0.333666,
		-0.374281, -0.652693, -0.658716,
		0.678405, 0.291557, -0.674360,
		44.550186, 32.894295, 42.749653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.466789, 32.144760, 42.763458>,  <44.075302, 32.690205, 43.221706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.466789, 32.144760, 42.763458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.683796, 32.471283, 42.842777>,  <44.813999, 32.667198, 42.890369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.683796, 32.471283, 42.842777>,  <44.466789, 32.144760, 42.763458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.683796, 32.471283, 42.842777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735546, -0.575621, 0.357256,
		0.405774, -0.047961, -0.912714,
		0.542512, 0.816309, 0.198295,
		44.846550, 32.716175, 42.902267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.195679, 32.103325, 42.684345>,  <44.466789, 32.144760, 42.763458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.195679, 32.103325, 42.684345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.151794, 32.401306, 42.947559>,  <45.125465, 32.580093, 43.105488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.151794, 32.401306, 42.947559>,  <45.195679, 32.103325, 42.684345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.151794, 32.401306, 42.947559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858361, -0.262805, 0.440623,
		0.501178, 0.613175, -0.610604,
		-0.109709, 0.744950, 0.658037,
		45.118881, 32.624790, 43.144970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.268810, 31.400280, 42.550900>,  <45.195679, 32.103325, 42.684345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.268810, 31.400280, 42.550900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.959389, 31.153559, 42.492710>,  <44.773735, 31.005526, 42.457798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.959389, 31.153559, 42.492710>,  <45.268810, 31.400280, 42.550900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.959389, 31.153559, 42.492710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025231, 0.259346, -0.965455,
		0.633224, -0.743164, -0.216182,
		-0.773557, -0.616804, -0.145473,
		44.727322, 30.968517, 42.449070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.444870, 30.767809, 42.044186>,  <45.268810, 31.400280, 42.550900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.444870, 30.767809, 42.044186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.074184, 30.917986, 42.050438>,  <44.851772, 31.008093, 42.054188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.074184, 30.917986, 42.050438>,  <45.444870, 30.767809, 42.044186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.074184, 30.917986, 42.050438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162835, 0.438720, -0.883748,
		-0.338654, -0.816436, -0.467703,
		-0.926714, 0.375443, 0.015630,
		44.796169, 31.030619, 42.055126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.087173, 30.558332, 41.470367>,  <45.444870, 30.767809, 42.044186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.087173, 30.558332, 41.470367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.881905, 30.889551, 41.560692>,  <44.758743, 31.088282, 41.614887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.881905, 30.889551, 41.560692>,  <45.087173, 30.558332, 41.470367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.881905, 30.889551, 41.560692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213802, 0.378137, -0.900723,
		-0.831228, -0.413948, -0.371088,
		-0.513174, 0.828046, 0.225815,
		44.727951, 31.137964, 41.628437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.697308, 30.783649, 40.822281>,  <45.087173, 30.558332, 41.470367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.697308, 30.783649, 40.822281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.671165, 31.115318, 41.044346>,  <44.655479, 31.314320, 41.177586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.671165, 31.115318, 41.044346>,  <44.697308, 30.783649, 40.822281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.671165, 31.115318, 41.044346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082509, 0.558933, -0.825098,
		-0.994445, -0.008116, -0.104942,
		-0.065352, 0.829173, 0.555159,
		44.651558, 31.364071, 41.210892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.048531, 31.160858, 40.578075>,  <44.697308, 30.783649, 40.822281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.048531, 31.160858, 40.578075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.319019, 31.405939, 40.741695>,  <44.481312, 31.552988, 40.839867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.319019, 31.405939, 40.741695>,  <44.048531, 31.160858, 40.578075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.319019, 31.405939, 40.741695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064927, 0.503517, -0.861542,
		-0.733832, 0.609151, 0.300708,
		0.676221, 0.612703, 0.409048,
		44.521885, 31.589750, 40.864410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.878258, 31.757082, 40.387096>,  <44.048531, 31.160858, 40.578075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.878258, 31.757082, 40.387096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.245361, 31.864231, 40.504379>,  <44.465622, 31.928520, 40.574749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.245361, 31.864231, 40.504379>,  <43.878258, 31.757082, 40.387096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.245361, 31.864231, 40.504379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096360, 0.566029, -0.818734,
		-0.385278, 0.779651, 0.493665,
		0.917756, 0.267871, 0.293206,
		44.520687, 31.944593, 40.592342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.883247, 32.372734, 40.222298>,  <43.878258, 31.757082, 40.387096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.883247, 32.372734, 40.222298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.277996, 32.331600, 40.272102>,  <44.514847, 32.306919, 40.301987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.277996, 32.331600, 40.272102>,  <43.883247, 32.372734, 40.222298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.277996, 32.331600, 40.272102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161029, 0.568483, -0.806782,
		0.012177, 0.816243, 0.577580,
		0.986875, -0.102831, 0.124516,
		44.574059, 32.300751, 40.309456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.235352, 32.961914, 40.395580>,  <43.883247, 32.372734, 40.222298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.235352, 32.961914, 40.395580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.536541, 32.740456, 40.253311>,  <44.717255, 32.607578, 40.167950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.536541, 32.740456, 40.253311>,  <44.235352, 32.961914, 40.395580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.536541, 32.740456, 40.253311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242067, 0.735636, -0.632648,
		0.611908, 0.390273, 0.687935,
		0.752975, -0.553649, -0.355670,
		44.762432, 32.574360, 40.146610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.626396, 33.467655, 40.180119>,  <44.235352, 32.961914, 40.395580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.626396, 33.467655, 40.180119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.743595, 33.139923, 39.982998>,  <44.813915, 32.943283, 39.864723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.743595, 33.139923, 39.982998>,  <44.626396, 33.467655, 40.180119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.743595, 33.139923, 39.982998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088152, 0.536378, -0.839362,
		0.952041, 0.202489, 0.229382,
		0.292997, -0.819327, -0.492804,
		44.831493, 32.894123, 39.835155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.143326, 33.681602, 39.652817>,  <44.626396, 33.467655, 40.180119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.143326, 33.681602, 39.652817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.031830, 33.335262, 39.486637>,  <44.964931, 33.127457, 39.386929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.031830, 33.335262, 39.486637>,  <45.143326, 33.681602, 39.652817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.031830, 33.335262, 39.486637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092493, 0.454791, -0.885782,
		0.955903, -0.208473, -0.206852,
		-0.278736, -0.865855, -0.415454,
		44.948208, 33.075504, 39.362000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.576900, 33.475285, 39.116257>,  <45.143326, 33.681602, 39.652817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.576900, 33.475285, 39.116257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.233265, 33.288166, 39.033180>,  <45.027084, 33.175896, 38.983334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.233265, 33.288166, 39.033180>,  <45.576900, 33.475285, 39.116257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.233265, 33.288166, 39.033180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056028, 0.317392, -0.946638,
		0.508757, -0.824879, -0.246457,
		-0.859085, -0.467800, -0.207692,
		44.975540, 33.147827, 38.970871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.521317, 33.628975, 38.470150>,  <45.576900, 33.475285, 39.116257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.521317, 33.628975, 38.470150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.181320, 33.418293, 38.474113>,  <44.977322, 33.291885, 38.476490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.181320, 33.418293, 38.474113>,  <45.521317, 33.628975, 38.470150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.181320, 33.418293, 38.474113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138877, 0.205892, -0.968670,
		0.508163, -0.824736, -0.248153,
		-0.849990, -0.526705, 0.009910,
		44.926323, 33.260281, 38.477085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.562176, 33.133419, 37.831913>,  <45.521317, 33.628975, 38.470150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.562176, 33.133419, 37.831913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.184101, 33.184856, 37.951973>,  <44.957256, 33.215717, 38.024010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.184101, 33.184856, 37.951973>,  <45.562176, 33.133419, 37.831913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.184101, 33.184856, 37.951973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214678, 0.447900, -0.867928,
		-0.246047, -0.884788, -0.395741,
		-0.945185, 0.128594, 0.300149,
		44.900547, 33.223434, 38.042019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.128498, 32.883110, 37.255219>,  <45.562176, 33.133419, 37.831913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.128498, 32.883110, 37.255219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.909706, 33.137436, 37.473045>,  <44.778431, 33.290031, 37.603741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.909706, 33.137436, 37.473045>,  <45.128498, 32.883110, 37.255219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.909706, 33.137436, 37.473045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305263, 0.454231, -0.836952,
		-0.779505, -0.624033, -0.054365,
		-0.546980, 0.635813, 0.544569,
		44.745613, 33.328178, 37.636417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.528793, 33.090321, 36.828228>,  <45.128498, 32.883110, 37.255219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.528793, 33.090321, 36.828228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.554073, 33.366383, 37.116585>,  <44.569241, 33.532021, 37.289600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.554073, 33.366383, 37.116585>,  <44.528793, 33.090321, 36.828228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.554073, 33.366383, 37.116585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235323, 0.712275, -0.661278,
		-0.969860, -0.127853, 0.207423,
		0.063196, 0.690158, 0.720894,
		44.573032, 33.573429, 37.332851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.021717, 33.517395, 36.661446>,  <44.528793, 33.090321, 36.828228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.021717, 33.517395, 36.661446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.285343, 33.714287, 36.888897>,  <44.443520, 33.832420, 37.025368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.285343, 33.714287, 36.888897>,  <44.021717, 33.517395, 36.661446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.285343, 33.714287, 36.888897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024316, 0.769628, -0.638029,
		-0.751690, 0.406678, 0.519206,
		0.659068, 0.492226, 0.568633,
		44.483063, 33.861954, 37.059486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.707611, 34.246277, 36.885334>,  <44.021717, 33.517395, 36.661446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.707611, 34.246277, 36.885334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.103653, 34.289482, 36.921165>,  <44.341278, 34.315407, 36.942665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.103653, 34.289482, 36.921165>,  <43.707611, 34.246277, 36.885334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.103653, 34.289482, 36.921165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059789, 0.902229, -0.427092,
		-0.126956, 0.417510, 0.899760,
		0.990105, 0.108017, 0.089581,
		44.400684, 34.321888, 36.948040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.852432, 34.879143, 37.010376>,  <43.707611, 34.246277, 36.885334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.852432, 34.879143, 37.010376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.222054, 34.778999, 36.894833>,  <44.443829, 34.718914, 36.825504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.222054, 34.778999, 36.894833>,  <43.852432, 34.879143, 37.010376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.222054, 34.778999, 36.894833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022424, 0.789879, -0.612853,
		0.381599, 0.559833, 0.735506,
		0.924056, -0.250358, -0.288863,
		44.499271, 34.703892, 36.808174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.290104, 35.455837, 37.108738>,  <43.852432, 34.879143, 37.010376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.290104, 35.455837, 37.108738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.457306, 35.221535, 36.830986>,  <44.557629, 35.080952, 36.664337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.457306, 35.221535, 36.830986>,  <44.290104, 35.455837, 37.108738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.457306, 35.221535, 36.830986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160146, 0.799903, -0.578368,
		0.894217, 0.130560, 0.428171,
		0.418007, -0.585756, -0.694378,
		44.582706, 35.045807, 36.622673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.753723, 35.913654, 36.937733>,  <44.290104, 35.455837, 37.108738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.753723, 35.913654, 36.937733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.752766, 35.644360, 36.641964>,  <44.752193, 35.482780, 36.464504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.752766, 35.644360, 36.641964>,  <44.753723, 35.913654, 36.937733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.752766, 35.644360, 36.641964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342162, 0.694240, -0.633211,
		0.939638, -0.254514, 0.228699,
		-0.002389, -0.673241, -0.739419,
		44.752048, 35.442387, 36.420139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.495777, 35.843082, 36.689987>,  <44.753723, 35.913654, 36.937733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.495777, 35.843082, 36.689987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.252811, 35.741302, 36.388973>,  <45.107033, 35.680237, 36.208366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.252811, 35.741302, 36.388973>,  <45.495777, 35.843082, 36.689987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.252811, 35.741302, 36.388973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554521, 0.542513, -0.631019,
		0.568823, -0.800584, -0.188430,
		-0.607410, -0.254450, -0.752535,
		45.070587, 35.664967, 36.163212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.966087, 35.652210, 36.052608>,  <45.495777, 35.843082, 36.689987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.966087, 35.652210, 36.052608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.595226, 35.722858, 35.920433>,  <45.372707, 35.765247, 35.841129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.595226, 35.722858, 35.920433>,  <45.966087, 35.652210, 36.052608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.595226, 35.722858, 35.920433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371407, 0.549436, -0.748450,
		0.049364, -0.816656, -0.575010,
		-0.927157, 0.176616, -0.330434,
		45.317078, 35.775845, 35.821304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.128094, 34.910725, 35.764194>,  <45.966087, 35.652210, 36.052608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.128094, 34.910725, 35.764194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.424023, 34.642662, 35.788033>,  <46.601582, 34.481827, 35.802334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.424023, 34.642662, 35.788033>,  <46.128094, 34.910725, 35.764194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.424023, 34.642662, 35.788033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649888, 0.688909, -0.321013,
		0.174073, 0.276224, 0.945198,
		0.739827, -0.670153, 0.059594,
		46.645969, 34.441616, 35.805912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.817673, 35.168114, 36.025204>,  <46.128094, 34.910725, 35.764194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.817673, 35.168114, 36.025204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.904476, 34.872852, 35.769691>,  <46.956558, 34.695698, 35.616383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.904476, 34.872852, 35.769691>,  <46.817673, 35.168114, 36.025204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.904476, 34.872852, 35.769691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457414, 0.654981, -0.601476,
		0.862369, -0.161662, 0.479777,
		0.217009, -0.738150, -0.638781,
		46.969578, 34.651405, 35.578056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.480980, 35.369118, 35.731556>,  <46.817673, 35.168114, 36.025204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.480980, 35.369118, 35.731556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.326565, 35.135571, 35.445877>,  <47.233917, 34.995441, 35.274471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.326565, 35.135571, 35.445877>,  <47.480980, 35.369118, 35.731556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.326565, 35.135571, 35.445877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440898, 0.563275, -0.698806,
		0.810300, -0.584649, 0.039985,
		-0.386033, -0.583872, -0.714193,
		47.210754, 34.960407, 35.231621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.035263, 35.104221, 35.213413>,  <47.480980, 35.369118, 35.731556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.035263, 35.104221, 35.213413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.688698, 35.109108, 35.013741>,  <47.480759, 35.112041, 34.893936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.688698, 35.109108, 35.013741>,  <48.035263, 35.104221, 35.213413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.688698, 35.109108, 35.013741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456799, 0.423120, -0.782498,
		0.201651, -0.905991, -0.372179,
		-0.866413, 0.012219, -0.499179,
		47.428776, 35.112774, 34.863987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.377468, 40.446339, 45.411610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.989532, 40.487717, 45.499889>,  <36.756771, 40.512543, 45.552856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.989532, 40.487717, 45.499889>,  <37.377468, 40.446339, 45.411610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989532, 40.487717, 45.499889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220343, 0.015006, -0.975307,
		-0.104208, -0.994521, 0.008242,
		-0.969840, 0.103451, 0.220699,
		36.698582, 40.518753, 45.566097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056087, 39.990166, 44.909233>,  <37.377468, 40.446339, 45.411610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056087, 39.990166, 44.909233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.768044, 40.239231, 45.031696>,  <36.595219, 40.388668, 45.105175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.768044, 40.239231, 45.031696>,  <37.056087, 39.990166, 44.909233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768044, 40.239231, 45.031696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254423, 0.173556, -0.951392,
		-0.645532, -0.763001, 0.033440,
		-0.720109, 0.622662, 0.306162,
		36.552010, 40.426029, 45.123547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501022, 39.772026, 44.592293>,  <37.056087, 39.990166, 44.909233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.501022, 39.772026, 44.592293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.392017, 40.145050, 44.687012>,  <36.326614, 40.368866, 44.743843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.392017, 40.145050, 44.687012>,  <36.501022, 39.772026, 44.592293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392017, 40.145050, 44.687012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351040, 0.132780, -0.926898,
		-0.895829, -0.335713, 0.291181,
		-0.272509, 0.932559, 0.236797,
		36.310265, 40.424816, 44.758049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858570, 39.855282, 44.463512>,  <36.501022, 39.772026, 44.592293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858570, 39.855282, 44.463512> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.002884, 40.226044, 44.422153>,  <36.089470, 40.448502, 44.397339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.002884, 40.226044, 44.422153>,  <35.858570, 39.855282, 44.463512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002884, 40.226044, 44.422153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446662, 0.074400, -0.891604,
		-0.818737, 0.367855, 0.440854,
		0.360780, 0.926902, -0.103393,
		36.111118, 40.504116, 44.391136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253742, 40.284611, 44.254929>,  <35.858570, 39.855282, 44.463512>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253742, 40.284611, 44.254929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.563492, 40.512638, 44.145115>,  <35.749340, 40.649452, 44.079227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.563492, 40.512638, 44.145115>,  <35.253742, 40.284611, 44.254929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563492, 40.512638, 44.145115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379796, 0.071760, -0.922283,
		-0.506062, 0.818459, 0.272078,
		0.774375, 0.570066, -0.274533,
		35.795803, 40.683659, 44.062756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878281, 40.824310, 43.900841>,  <35.253742, 40.284611, 44.254929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878281, 40.824310, 43.900841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.260479, 40.832367, 43.783119>,  <35.489799, 40.837200, 43.712486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.260479, 40.832367, 43.783119>,  <34.878281, 40.824310, 43.900841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.260479, 40.832367, 43.783119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288578, 0.270694, -0.918394,
		0.061166, 0.962455, 0.264461,
		0.955501, 0.020143, -0.294301,
		35.547131, 40.838409, 43.694828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887939, 41.310360, 43.316444>,  <34.878281, 40.824310, 43.900841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887939, 41.310360, 43.316444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.208206, 41.071037, 43.304070>,  <35.400368, 40.927444, 43.296646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.208206, 41.071037, 43.304070>,  <34.887939, 41.310360, 43.316444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208206, 41.071037, 43.304070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123345, -0.114088, -0.985784,
		0.586271, 0.793104, -0.165145,
		0.800670, -0.598306, -0.030938,
		35.448406, 40.891544, 43.294788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408596, 41.610306, 42.842228>,  <34.887939, 41.310360, 43.316444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408596, 41.610306, 42.842228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.547050, 41.235035, 42.841053>,  <35.630123, 41.009872, 42.840347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.547050, 41.235035, 42.841053>,  <35.408596, 41.610306, 42.842228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547050, 41.235035, 42.841053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162338, 0.062974, -0.984724,
		0.924033, 0.340370, 0.174099,
		0.346134, -0.938180, -0.002935,
		35.650890, 40.953579, 42.840172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857922, 41.622890, 42.236416>,  <35.408596, 41.610306, 42.842228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857922, 41.622890, 42.236416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.799854, 41.228172, 42.265137>,  <35.765015, 40.991341, 42.282368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.799854, 41.228172, 42.265137>,  <35.857922, 41.622890, 42.236416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799854, 41.228172, 42.265137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031336, -0.067946, -0.997197,
		0.988911, -0.147011, -0.021059,
		-0.145168, -0.986798, 0.071799,
		35.756306, 40.932133, 42.286678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260883, 41.338177, 41.736088>,  <35.857922, 41.622890, 42.236416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260883, 41.338177, 41.736088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.015903, 41.034409, 41.823891>,  <35.868916, 40.852150, 41.876572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.015903, 41.034409, 41.823891>,  <36.260883, 41.338177, 41.736088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015903, 41.034409, 41.823891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174206, -0.400515, -0.899578,
		0.771072, -0.512710, 0.377592,
		-0.612454, -0.759418, 0.219509,
		35.832169, 40.806583, 41.889744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654480, 40.787178, 41.650780>,  <36.260883, 41.338177, 41.736088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654480, 40.787178, 41.650780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.273903, 40.667519, 41.621750>,  <36.045555, 40.595722, 41.604332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.273903, 40.667519, 41.621750>,  <36.654480, 40.787178, 41.650780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.273903, 40.667519, 41.621750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222169, -0.504122, -0.834567,
		0.213074, -0.810166, 0.546104,
		-0.951441, -0.299152, -0.072578,
		35.988472, 40.577774, 41.599976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676620, 40.009918, 41.499374>,  <36.654480, 40.787178, 41.650780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676620, 40.009918, 41.499374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.315346, 40.130928, 41.377563>,  <36.098583, 40.203533, 41.304478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.315346, 40.130928, 41.377563>,  <36.676620, 40.009918, 41.499374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315346, 40.130928, 41.377563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128770, -0.485810, -0.864527,
		-0.409480, -0.820042, 0.399821,
		-0.903185, 0.302522, -0.304527,
		36.044392, 40.221684, 41.286205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282524, 39.405792, 41.238033>,  <36.676620, 40.009918, 41.499374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282524, 39.405792, 41.238033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.126312, 39.721710, 41.048840>,  <36.032585, 39.911263, 40.935326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.126312, 39.721710, 41.048840>,  <36.282524, 39.405792, 41.238033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126312, 39.721710, 41.048840> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179747, -0.438474, -0.880586,
		-0.902873, -0.428909, 0.029272,
		-0.390526, 0.789796, -0.472982,
		36.009155, 39.958649, 40.906944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.962158, 39.200382, 40.682896>,  <36.282524, 39.405792, 41.238033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.962158, 39.200382, 40.682896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.969879, 39.585812, 40.576202>,  <35.974514, 39.817070, 40.512188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.969879, 39.585812, 40.576202>,  <35.962158, 39.200382, 40.682896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969879, 39.585812, 40.576202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029002, -0.266131, -0.963501,
		-0.999393, 0.026337, 0.022808,
		0.019306, 0.963577, -0.266734,
		35.975670, 39.874886, 40.496181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580616, 39.239143, 40.122997>,  <35.962158, 39.200382, 40.682896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580616, 39.239143, 40.122997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.801479, 39.571186, 40.091900>,  <35.933998, 39.770412, 40.073242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.801479, 39.571186, 40.091900>,  <35.580616, 39.239143, 40.122997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801479, 39.571186, 40.091900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277085, -0.270649, -0.921940,
		-0.786351, 0.487513, -0.379451,
		0.552156, 0.830108, -0.077742,
		35.967125, 39.820217, 40.068577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300411, 39.519459, 39.487392>,  <35.580616, 39.239143, 40.122997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300411, 39.519459, 39.487392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.666061, 39.669975, 39.547752>,  <35.885452, 39.760284, 39.583969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.666061, 39.669975, 39.547752>,  <35.300411, 39.519459, 39.487392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666061, 39.669975, 39.547752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246734, -0.221023, -0.943542,
		-0.321698, 0.899751, -0.294888,
		0.914130, 0.376294, 0.150896,
		35.940300, 39.782864, 39.593021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.401951, 39.976120, 38.932278>,  <35.300411, 39.519459, 39.487392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.401951, 39.976120, 38.932278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.771996, 39.878609, 39.048717>,  <35.994022, 39.820103, 39.118580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.771996, 39.878609, 39.048717>,  <35.401951, 39.976120, 38.932278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771996, 39.878609, 39.048717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269251, -0.119368, -0.955644,
		0.267717, 0.962456, -0.044790,
		0.925112, -0.243782, 0.291099,
		36.049530, 39.805473, 39.136047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829964, 40.439686, 38.572063>,  <35.401951, 39.976120, 38.932278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829964, 40.439686, 38.572063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.069443, 40.132236, 38.662197>,  <36.213131, 39.947765, 38.716278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.069443, 40.132236, 38.662197>,  <35.829964, 40.439686, 38.572063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069443, 40.132236, 38.662197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399902, 0.043087, -0.915545,
		0.694001, 0.638248, 0.333170,
		0.598700, -0.768624, 0.225334,
		36.249054, 39.901649, 38.729797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486313, 40.594753, 38.352207>,  <35.829964, 40.439686, 38.572063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486313, 40.594753, 38.352207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.479671, 40.194813, 38.350571>,  <36.475689, 39.954849, 38.349590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.479671, 40.194813, 38.350571>,  <36.486313, 40.594753, 38.352207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479671, 40.194813, 38.350571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450085, -0.003820, -0.892978,
		0.892832, -0.016666, 0.450082,
		-0.016602, -0.999854, -0.004091,
		36.474689, 39.894855, 38.349342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093163, 40.521694, 38.038132>,  <36.486313, 40.594753, 38.352207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093163, 40.521694, 38.038132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.928913, 40.156994, 38.034283>,  <36.830364, 39.938171, 38.031975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.928913, 40.156994, 38.034283>,  <37.093163, 40.521694, 38.038132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928913, 40.156994, 38.034283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479117, -0.206781, -0.853046,
		0.775778, -0.354892, 0.521747,
		-0.410627, -0.911753, -0.009619,
		36.805725, 39.883469, 38.031399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619572, 39.926575, 37.933399>,  <37.093163, 40.521694, 38.038132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619572, 39.926575, 37.933399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.267521, 39.767258, 37.830070>,  <37.056290, 39.671665, 37.768074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.267521, 39.767258, 37.830070>,  <37.619572, 39.926575, 37.933399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267521, 39.767258, 37.830070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405360, -0.347293, -0.845619,
		0.247091, -0.848969, 0.467116,
		-0.880131, -0.398295, -0.258325,
		37.003483, 39.647770, 37.752571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525066, 39.083740, 38.004902>,  <37.619572, 39.926575, 37.933399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525066, 39.083740, 38.004902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.378418, 38.819778, 38.267235>,  <37.290428, 38.661404, 38.424637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.378418, 38.819778, 38.267235>,  <37.525066, 39.083740, 38.004902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378418, 38.819778, 38.267235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909488, -0.402714, 0.103213,
		0.196003, 0.634314, 0.747816,
		-0.366625, -0.659900, 0.655834,
		37.268429, 38.621807, 38.463985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706707, 38.621937, 37.527145>,  <37.525066, 39.083740, 38.004902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706707, 38.621937, 37.527145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.087051, 38.612537, 37.403652>,  <38.315258, 38.606895, 37.329556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.087051, 38.612537, 37.403652>,  <37.706707, 38.621937, 37.527145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087051, 38.612537, 37.403652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290365, -0.278489, 0.915496,
		-0.107493, -0.960152, -0.257980,
		0.950859, -0.023501, -0.308729,
		38.372311, 38.605488, 37.311031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927998, 38.010998, 37.880188>,  <37.706707, 38.621937, 37.527145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927998, 38.010998, 37.880188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.227459, 38.258549, 37.785099>,  <38.407135, 38.407082, 37.728046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.227459, 38.258549, 37.785099>,  <37.927998, 38.010998, 37.880188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.227459, 38.258549, 37.785099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442095, -0.198826, 0.874655,
		0.494041, -0.759905, -0.422455,
		0.748649, 0.618881, -0.237722,
		38.452053, 38.444214, 37.713783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579929, 37.653687, 37.961781>,  <37.927998, 38.010998, 37.880188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579929, 37.653687, 37.961781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.692097, 38.036545, 37.990738>,  <38.759396, 38.266258, 38.008114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.692097, 38.036545, 37.990738>,  <38.579929, 37.653687, 37.961781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692097, 38.036545, 37.990738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544022, -0.220619, 0.809548,
		0.790826, -0.187627, -0.582573,
		0.280419, 0.957143, 0.072398,
		38.776222, 38.323689, 38.012459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192223, 37.578449, 38.184742>,  <38.579929, 37.653687, 37.961781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192223, 37.578449, 38.184742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.124641, 37.966507, 38.254349>,  <39.084095, 38.199341, 38.296112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.124641, 37.966507, 38.254349>,  <39.192223, 37.578449, 38.184742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.124641, 37.966507, 38.254349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390624, -0.096192, 0.915511,
		0.904914, 0.222652, -0.362708,
		-0.168951, 0.970141, 0.174018,
		39.073956, 38.257549, 38.306553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757408, 37.727150, 38.681965>,  <39.192223, 37.578449, 38.184742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.757408, 37.727150, 38.681965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.497082, 38.026367, 38.733925>,  <39.340885, 38.205898, 38.765102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.497082, 38.026367, 38.733925>,  <39.757408, 37.727150, 38.681965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497082, 38.026367, 38.733925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200177, 0.004023, 0.979751,
		0.732370, 0.663643, -0.152358,
		-0.650818, 0.748039, 0.129900,
		39.301838, 38.250778, 38.772896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052856, 38.301357, 38.899456>,  <39.757408, 37.727150, 38.681965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052856, 38.301357, 38.899456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.674210, 38.334446, 39.024086>,  <39.447021, 38.354298, 39.098866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.674210, 38.334446, 39.024086>,  <40.052856, 38.301357, 38.899456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.674210, 38.334446, 39.024086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313645, 0.012975, 0.949452,
		0.074496, 0.996488, -0.038227,
		-0.946614, 0.082720, 0.311577,
		39.390224, 38.359261, 39.117558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033070, 38.699764, 39.505520>,  <40.052856, 38.301357, 38.899456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033070, 38.699764, 39.505520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.665161, 38.545559, 39.534912>,  <39.444416, 38.453037, 39.552547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.665161, 38.545559, 39.534912>,  <40.033070, 38.699764, 39.505520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.665161, 38.545559, 39.534912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009152, 0.166121, 0.986063,
		-0.392344, 0.907626, -0.149266,
		-0.919773, -0.385510, 0.073483,
		39.389229, 38.429905, 39.556957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563507, 39.191345, 39.890636>,  <40.033070, 38.699764, 39.505520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.563507, 39.191345, 39.890636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.405190, 38.824123, 39.899815>,  <39.310200, 38.603790, 39.905319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.405190, 38.824123, 39.899815>,  <39.563507, 39.191345, 39.890636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.405190, 38.824123, 39.899815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082118, 0.060263, 0.994799,
		-0.914659, 0.391855, -0.099240,
		-0.395798, -0.918051, 0.022942,
		39.286449, 38.548710, 39.906696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015049, 39.347992, 40.357002>,  <39.563507, 39.191345, 39.890636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015049, 39.347992, 40.357002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.048122, 38.950214, 40.330971>,  <39.067966, 38.711548, 40.315350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.048122, 38.950214, 40.330971>,  <39.015049, 39.347992, 40.357002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.048122, 38.950214, 40.330971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293462, -0.086707, 0.952031,
		-0.952388, -0.059621, -0.299002,
		0.082687, -0.994448, -0.065082,
		39.072929, 38.651878, 40.311447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288254, 39.001705, 40.641262>,  <39.015049, 39.347992, 40.357002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288254, 39.001705, 40.641262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.588692, 38.738930, 40.667461>,  <38.768955, 38.581264, 40.683182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.588692, 38.738930, 40.667461>,  <38.288254, 39.001705, 40.641262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588692, 38.738930, 40.667461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204862, -0.137601, 0.969071,
		-0.627605, -0.741283, -0.237933,
		0.751095, -0.656937, 0.065502,
		38.814022, 38.541847, 40.687111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960430, 38.473251, 40.977367>,  <38.288254, 39.001705, 40.641262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960430, 38.473251, 40.977367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.352848, 38.409122, 41.020916>,  <38.588299, 38.370644, 41.047047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.352848, 38.409122, 41.020916>,  <37.960430, 38.473251, 40.977367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352848, 38.409122, 41.020916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141661, -0.209881, 0.967410,
		-0.132242, -0.964494, -0.228613,
		0.981042, -0.160318, 0.108876,
		38.647160, 38.361027, 41.053577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042278, 37.900204, 41.341656>,  <37.960430, 38.473251, 40.977367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042278, 37.900204, 41.341656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.381268, 38.101665, 41.408737>,  <38.584660, 38.222542, 41.448986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.381268, 38.101665, 41.408737>,  <38.042278, 37.900204, 41.341656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381268, 38.101665, 41.408737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123541, -0.120126, 0.985042,
		0.516268, -0.855512, -0.039581,
		0.847469, 0.503656, 0.167708,
		38.635509, 38.252762, 41.459049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491035, 37.566776, 41.918056>,  <38.042278, 37.900204, 41.341656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491035, 37.566776, 41.918056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.620373, 37.941338, 41.863518>,  <38.697975, 38.166077, 41.830795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.620373, 37.941338, 41.863518>,  <38.491035, 37.566776, 41.918056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620373, 37.941338, 41.863518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029161, 0.153878, 0.987660,
		0.945832, -0.315378, 0.077062,
		0.323344, 0.936407, -0.136346,
		38.717377, 38.222260, 41.822613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697117, 37.642754, 42.524708>,  <38.491035, 37.566776, 41.918056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697117, 37.642754, 42.524708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.712757, 38.018093, 42.387318>,  <38.722141, 38.243298, 42.304882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.712757, 38.018093, 42.387318>,  <38.697117, 37.642754, 42.524708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712757, 38.018093, 42.387318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044117, 0.345026, 0.937556,
		0.998261, -0.021509, 0.054888,
		0.039103, 0.938347, -0.343477,
		38.724487, 38.299599, 42.284275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374283, 38.059196, 42.809570>,  <38.697117, 37.642754, 42.524708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.374283, 38.059196, 42.809570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.116951, 38.341145, 42.690052>,  <38.962551, 38.510315, 42.618340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.116951, 38.341145, 42.690052>,  <39.374283, 38.059196, 42.809570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116951, 38.341145, 42.690052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066300, 0.440112, 0.895492,
		0.762713, 0.556286, -0.329870,
		-0.643329, 0.704874, -0.298798,
		38.923954, 38.552608, 42.600414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601562, 38.702152, 43.016430>,  <39.374283, 38.059196, 42.809570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.601562, 38.702152, 43.016430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.205334, 38.748081, 42.986546>,  <38.967598, 38.775639, 42.968613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.205334, 38.748081, 42.986546>,  <39.601562, 38.702152, 43.016430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205334, 38.748081, 42.986546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010611, 0.479454, 0.877503,
		0.136575, 0.870023, -0.473716,
		-0.990573, 0.114818, -0.074713,
		38.908161, 38.782528, 42.964130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494362, 39.331478, 43.283798>,  <39.601562, 38.702152, 43.016430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.494362, 39.331478, 43.283798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.124088, 39.180599, 43.295357>,  <38.901924, 39.090073, 43.302292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.124088, 39.180599, 43.295357>,  <39.494362, 39.331478, 43.283798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.124088, 39.180599, 43.295357> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078724, 0.266790, 0.960534,
		-0.370016, 0.886876, -0.276657,
		-0.925684, -0.377193, 0.028898,
		38.846382, 39.067440, 43.304028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048199, 39.872173, 43.509289>,  <39.494362, 39.331478, 43.283798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048199, 39.872173, 43.509289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.839146, 39.545174, 43.606083>,  <38.713715, 39.348976, 43.664158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.839146, 39.545174, 43.606083>,  <39.048199, 39.872173, 43.509289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839146, 39.545174, 43.606083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037937, 0.305852, 0.951323,
		-0.851714, 0.488012, -0.190862,
		-0.522633, -0.817495, 0.241985,
		38.682354, 39.299927, 43.678677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.306194, 40.051216, 43.964535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.391041, 39.669731, 44.049801>,  <38.441948, 39.440842, 44.100960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.391041, 39.669731, 44.049801>,  <38.306194, 40.051216, 43.964535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391041, 39.669731, 44.049801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013738, 0.215193, 0.976475,
		-0.977148, -0.210053, 0.032544,
		0.212115, -0.953714, 0.213161,
		38.454674, 39.383617, 44.113750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821159, 39.934372, 44.471817>,  <38.306194, 40.051216, 43.964535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821159, 39.934372, 44.471817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.099098, 39.647900, 44.497986>,  <38.265862, 39.476017, 44.513687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.099098, 39.647900, 44.497986>,  <37.821159, 39.934372, 44.471817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.099098, 39.647900, 44.497986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159692, -0.064961, 0.985027,
		-0.701205, -0.694888, -0.159506,
		0.694846, -0.716178, 0.065417,
		38.307552, 39.433048, 44.517612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555080, 39.464230, 44.966206>,  <37.821159, 39.934372, 44.471817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555080, 39.464230, 44.966206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.938221, 39.353474, 44.935612>,  <38.168106, 39.287018, 44.917255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.938221, 39.353474, 44.935612>,  <37.555080, 39.464230, 44.966206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938221, 39.353474, 44.935612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021684, -0.195805, 0.980403,
		-0.286442, -0.940740, -0.181548,
		0.957852, -0.276892, -0.076485,
		38.225578, 39.270405, 44.912666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695560, 38.999638, 45.438171>,  <37.555080, 39.464230, 44.966206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695560, 38.999638, 45.438171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.077141, 39.102936, 45.377132>,  <38.306087, 39.164913, 45.340508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.077141, 39.102936, 45.377132>,  <37.695560, 38.999638, 45.438171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077141, 39.102936, 45.377132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112785, 0.162602, 0.980225,
		0.277951, -0.952297, 0.125988,
		0.953951, 0.258245, -0.152600,
		38.363327, 39.180408, 45.331352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066593, 38.496365, 45.822327>,  <37.695560, 38.999638, 45.438171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066593, 38.496365, 45.822327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.275475, 38.831383, 45.758049>,  <38.400803, 39.032394, 45.719482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.275475, 38.831383, 45.758049>,  <38.066593, 38.496365, 45.822327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275475, 38.831383, 45.758049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248299, 0.030946, 0.968189,
		0.815874, -0.545493, -0.191802,
		0.522204, 0.837544, -0.160693,
		38.432137, 39.082645, 45.709843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795254, 38.252850, 45.951233>,  <38.066593, 38.496365, 45.822327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.795254, 38.252850, 45.951233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.729660, 38.643047, 46.009922>,  <38.690304, 38.877167, 46.045135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.729660, 38.643047, 46.009922>,  <38.795254, 38.252850, 45.951233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729660, 38.643047, 46.009922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460557, -0.055820, 0.885874,
		0.872352, 0.212839, -0.440116,
		-0.163981, 0.975492, 0.146719,
		38.680466, 38.935696, 46.053936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337799, 38.509388, 46.274639>,  <38.795254, 38.252850, 45.951233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.337799, 38.509388, 46.274639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.072685, 38.801617, 46.340351>,  <38.913616, 38.976952, 46.379780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.072685, 38.801617, 46.340351>,  <39.337799, 38.509388, 46.274639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072685, 38.801617, 46.340351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382951, 0.142167, 0.912763,
		0.643481, 0.667876, -0.373997,
		-0.662783, 0.730568, 0.164282,
		38.873852, 39.020786, 46.389637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602356, 38.846893, 46.760242>,  <39.337799, 38.509388, 46.274639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602356, 38.846893, 46.760242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.234074, 39.001022, 46.784966>,  <39.013103, 39.093498, 46.799797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.234074, 39.001022, 46.784966>,  <39.602356, 38.846893, 46.760242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234074, 39.001022, 46.784966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137044, 0.170962, 0.975700,
		0.365395, 0.906806, -0.210212,
		-0.920709, 0.385324, 0.061804,
		38.957859, 39.116619, 46.803505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.672348, 39.409317, 47.113667>,  <39.602356, 38.846893, 46.760242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.672348, 39.409317, 47.113667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.283962, 39.330162, 47.167439>,  <39.050930, 39.282669, 47.199703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.283962, 39.330162, 47.167439>,  <39.672348, 39.409317, 47.113667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283962, 39.330162, 47.167439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094384, 0.199487, 0.975345,
		-0.219829, 0.959711, -0.175016,
		-0.970962, -0.197890, 0.134434,
		38.992672, 39.270794, 47.207767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458378, 39.986397, 47.499470>,  <39.672348, 39.409317, 47.113667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.458378, 39.986397, 47.499470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.185665, 39.704544, 47.578129>,  <39.022038, 39.535431, 47.625324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.185665, 39.704544, 47.578129>,  <39.458378, 39.986397, 47.499470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185665, 39.704544, 47.578129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033832, 0.298885, 0.953689,
		-0.730773, 0.643555, -0.227614,
		-0.681782, -0.704631, 0.196644,
		38.981133, 39.493156, 47.637123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120216, 40.254356, 48.032112>,  <39.458378, 39.986397, 47.499470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120216, 40.254356, 48.032112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.991276, 39.876148, 48.050362>,  <38.913910, 39.649223, 48.061314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.991276, 39.876148, 48.050362>,  <39.120216, 40.254356, 48.032112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991276, 39.876148, 48.050362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136714, 0.094195, 0.986122,
		-0.936694, 0.311644, -0.159630,
		-0.322355, -0.945518, 0.045626,
		38.894569, 39.592491, 48.064049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446415, 40.222046, 48.444416>,  <39.120216, 40.254356, 48.032112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446415, 40.222046, 48.444416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.607677, 39.857891, 48.481644>,  <38.704437, 39.639400, 48.503979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.607677, 39.857891, 48.481644>,  <38.446415, 40.222046, 48.444416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607677, 39.857891, 48.481644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181643, 0.020069, 0.983160,
		-0.896922, -0.413274, -0.157274,
		0.403158, -0.910386, 0.093069,
		38.728626, 39.584774, 48.509563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918098, 39.748798, 48.855637>,  <38.446415, 40.222046, 48.444416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918098, 39.748798, 48.855637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.279694, 39.579456, 48.879593>,  <38.496651, 39.477852, 48.893967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.279694, 39.579456, 48.879593>,  <37.918098, 39.748798, 48.855637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279694, 39.579456, 48.879593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210321, -0.318340, 0.924351,
		-0.372265, -0.848192, -0.376814,
		0.903982, -0.423356, 0.059886,
		38.550888, 39.452450, 48.897560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809719, 39.248661, 49.293514>,  <37.918098, 39.748798, 48.855637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809719, 39.248661, 49.293514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.208424, 39.222519, 49.274754>,  <38.447647, 39.206833, 49.263496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.208424, 39.222519, 49.274754>,  <37.809719, 39.248661, 49.293514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208424, 39.222519, 49.274754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016368, -0.406083, 0.913690,
		-0.078758, -0.911496, -0.403697,
		0.996759, -0.065352, -0.046901,
		38.507450, 39.202911, 49.260685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099632, 38.511330, 49.449940>,  <37.809719, 39.248661, 49.293514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.099632, 38.511330, 49.449940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.363194, 38.794819, 49.550785>,  <38.521332, 38.964912, 49.611290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.363194, 38.794819, 49.550785>,  <38.099632, 38.511330, 49.449940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363194, 38.794819, 49.550785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028869, -0.311082, 0.949944,
		0.751673, -0.633201, -0.184514,
		0.658904, 0.708720, 0.252112,
		38.560863, 39.007435, 49.626419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723392, 38.185349, 49.738617>,  <38.099632, 38.511330, 49.449940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723392, 38.185349, 49.738617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.749409, 38.564358, 49.863811>,  <38.765018, 38.791763, 49.938927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.749409, 38.564358, 49.863811>,  <38.723392, 38.185349, 49.738617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749409, 38.564358, 49.863811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263276, -0.318833, 0.910512,
		0.962525, 0.023179, -0.270199,
		0.065044, 0.947527, 0.312987,
		38.768921, 38.848618, 49.957706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357414, 38.182259, 50.282082>,  <38.723392, 38.185349, 49.738617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357414, 38.182259, 50.282082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.167446, 38.528366, 50.346279>,  <39.053467, 38.736031, 50.384796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.167446, 38.528366, 50.346279>,  <39.357414, 38.182259, 50.282082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167446, 38.528366, 50.346279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153546, -0.098098, 0.983260,
		0.866530, 0.491614, -0.086270,
		-0.474921, 0.865270, 0.160490,
		39.024971, 38.787949, 50.394424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681923, 38.618759, 50.873238>,  <39.357414, 38.182259, 50.282082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.681923, 38.618759, 50.873238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.313107, 38.772194, 50.852440>,  <39.091816, 38.864254, 50.839962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.313107, 38.772194, 50.852440>,  <39.681923, 38.618759, 50.873238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.313107, 38.772194, 50.852440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125390, -0.168901, 0.977625,
		0.366224, 0.907928, 0.203831,
		-0.922040, 0.383588, -0.051990,
		39.036495, 38.887272, 50.836842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.629490, 39.109924, 51.490074>,  <39.681923, 38.618759, 50.873238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.629490, 39.109924, 51.490074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.252823, 39.042534, 51.373531>,  <39.026825, 39.002102, 51.303608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.252823, 39.042534, 51.373531>,  <39.629490, 39.109924, 51.490074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.252823, 39.042534, 51.373531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288730, -0.040420, 0.956557,
		-0.172930, 0.984877, -0.010581,
		-0.941663, -0.168472, -0.291354,
		38.970325, 38.991993, 51.286125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158070, 39.672531, 51.816978>,  <39.629490, 39.109924, 51.490074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.158070, 39.672531, 51.816978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.929985, 39.357502, 51.723518>,  <38.793133, 39.168484, 51.667442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.929985, 39.357502, 51.723518>,  <39.158070, 39.672531, 51.816978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929985, 39.357502, 51.723518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359824, -0.016242, 0.932878,
		-0.738501, 0.616013, -0.274125,
		-0.570213, -0.787568, -0.233651,
		38.758923, 39.121231, 51.653423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870617, 39.721481, 52.419811>,  <39.158070, 39.672531, 51.816978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870617, 39.721481, 52.419811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.731743, 39.397125, 52.231377>,  <38.648418, 39.202511, 52.118317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.731743, 39.397125, 52.231377>,  <38.870617, 39.721481, 52.419811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731743, 39.397125, 52.231377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519642, -0.251818, 0.816431,
		-0.780665, 0.528244, -0.333947,
		-0.347181, -0.810892, -0.471083,
		38.627590, 39.153858, 52.090054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074341, 39.638580, 52.439377>,  <38.870617, 39.721481, 52.419811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074341, 39.638580, 52.439377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.264542, 39.287563, 52.414669>,  <38.378662, 39.076954, 52.399845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.264542, 39.287563, 52.414669>,  <38.074341, 39.638580, 52.439377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264542, 39.287563, 52.414669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452914, -0.304404, 0.837978,
		-0.754165, -0.370484, -0.542196,
		0.475504, -0.877542, -0.061774,
		38.407192, 39.024300, 52.396137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780281, 39.828922, 53.166470>,  <38.074341, 39.638580, 52.439377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780281, 39.828922, 53.166470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.437008, 39.668713, 53.038033>,  <37.231045, 39.572586, 52.960972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.437008, 39.668713, 53.038033>,  <37.780281, 39.828922, 53.166470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437008, 39.668713, 53.038033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510884, -0.727525, -0.457936,
		-0.050185, -0.557033, 0.828973,
		-0.858183, -0.400528, -0.321090,
		37.179554, 39.548553, 52.941704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751133, 39.077335, 53.386013>,  <37.780281, 39.828922, 53.166470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.751133, 39.077335, 53.386013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.531605, 39.190319, 53.071304>,  <37.399887, 39.258110, 52.882481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.531605, 39.190319, 53.071304>,  <37.751133, 39.077335, 53.386013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531605, 39.190319, 53.071304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528607, -0.611848, -0.588402,
		-0.647587, -0.738820, 0.186482,
		-0.548822, 0.282466, -0.786770,
		37.366959, 39.275059, 52.835274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320900, 38.499283, 53.119141>,  <37.751133, 39.077335, 53.386013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320900, 38.499283, 53.119141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.974689, 38.649990, 53.251144>,  <36.766964, 38.740414, 53.330345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.974689, 38.649990, 53.251144>,  <37.320900, 38.499283, 53.119141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974689, 38.649990, 53.251144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364724, -0.022546, -0.930843,
		-0.343276, -0.926031, 0.156932,
		-0.865527, 0.376773, 0.330007,
		36.715031, 38.763023, 53.350147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806469, 38.159397, 52.793591>,  <37.320900, 38.499283, 53.119141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806469, 38.159397, 52.793591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.646702, 38.505627, 52.914417>,  <36.550842, 38.713364, 52.986912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.646702, 38.505627, 52.914417>,  <36.806469, 38.159397, 52.793591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646702, 38.505627, 52.914417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448006, 0.103180, -0.888056,
		-0.799847, -0.490034, 0.346571,
		-0.399419, 0.865575, 0.302067,
		36.526875, 38.765301, 53.005039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214344, 38.239815, 52.357002>,  <36.806469, 38.159397, 52.793591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214344, 38.239815, 52.357002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.265907, 38.592922, 52.537708>,  <36.296844, 38.804787, 52.646133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.265907, 38.592922, 52.537708>,  <36.214344, 38.239815, 52.357002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265907, 38.592922, 52.537708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364703, 0.465846, -0.806213,
		-0.922157, -0.060832, 0.382002,
		0.128911, 0.882772, 0.451769,
		36.304581, 38.857754, 52.673241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568916, 38.634460, 52.432934>,  <36.214344, 38.239815, 52.357002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568916, 38.634460, 52.432934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.863754, 38.904442, 52.419483>,  <36.040657, 39.066433, 52.411411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.863754, 38.904442, 52.419483>,  <35.568916, 38.634460, 52.432934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863754, 38.904442, 52.419483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393507, 0.388214, -0.833332,
		-0.549407, 0.627475, 0.551749,
		0.737092, 0.674956, -0.033628,
		36.084881, 39.106930, 52.409393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190418, 39.218540, 52.190857>,  <35.568916, 38.634460, 52.432934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190418, 39.218540, 52.190857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.579128, 39.290241, 52.129509>,  <35.812355, 39.333260, 52.092701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.579128, 39.290241, 52.129509>,  <35.190418, 39.218540, 52.190857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579128, 39.290241, 52.129509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195547, 0.248396, -0.948715,
		-0.131961, 0.951929, 0.276437,
		0.971776, 0.179250, -0.153368,
		35.870663, 39.344017, 52.083500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313282, 39.955162, 51.947536>,  <35.190418, 39.218540, 52.190857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313282, 39.955162, 51.947536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.632721, 39.747665, 51.825459>,  <35.824387, 39.623169, 51.752213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.632721, 39.747665, 51.825459>,  <35.313282, 39.955162, 51.947536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632721, 39.747665, 51.825459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072363, 0.420651, -0.904332,
		0.597496, 0.744285, 0.298395,
		0.798601, -0.518741, -0.305196,
		35.872299, 39.592045, 51.733898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400173, 40.351719, 51.370644>,  <35.313282, 39.955162, 51.947536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400173, 40.351719, 51.370644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.684509, 40.074005, 51.325619>,  <35.855110, 39.907375, 51.298603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.684509, 40.074005, 51.325619>,  <35.400173, 40.351719, 51.370644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684509, 40.074005, 51.325619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112622, 0.270325, -0.956159,
		0.694278, 0.667000, 0.270350,
		0.710841, -0.694288, -0.112562,
		35.897762, 39.865719, 51.291851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979321, 40.676750, 51.043495>,  <35.400173, 40.351719, 51.370644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979321, 40.676750, 51.043495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.999454, 40.286976, 50.955906>,  <36.011536, 40.053112, 50.903355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.999454, 40.286976, 50.955906>,  <35.979321, 40.676750, 51.043495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999454, 40.286976, 50.955906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216407, 0.224683, -0.950098,
		0.975005, 0.000440, 0.222184,
		0.050338, -0.974432, -0.218971,
		36.014557, 39.994648, 50.890213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520893, 40.670311, 50.566677>,  <35.979321, 40.676750, 51.043495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520893, 40.670311, 50.566677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.339409, 40.317135, 50.518391>,  <36.230518, 40.105228, 50.489418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.339409, 40.317135, 50.518391>,  <36.520893, 40.670311, 50.566677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339409, 40.317135, 50.518391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250400, 0.003694, -0.968136,
		0.855248, -0.469479, 0.219411,
		-0.453709, -0.882936, -0.120717,
		36.203297, 40.052254, 50.482174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973186, 40.260834, 50.223011>,  <36.520893, 40.670311, 50.566677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973186, 40.260834, 50.223011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.608570, 40.112385, 50.152168>,  <36.389801, 40.023315, 50.109661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.608570, 40.112385, 50.152168>,  <36.973186, 40.260834, 50.223011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608570, 40.112385, 50.152168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256523, -0.176573, -0.950273,
		0.321393, -0.911643, 0.256154,
		-0.911539, -0.371120, -0.177108,
		36.335110, 40.001049, 50.099037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110962, 39.563961, 49.967514>,  <36.973186, 40.260834, 50.223011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.110962, 39.563961, 49.967514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.757412, 39.707355, 49.847343>,  <36.545280, 39.793392, 49.775242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.757412, 39.707355, 49.847343>,  <37.110962, 39.563961, 49.967514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757412, 39.707355, 49.847343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263557, -0.148900, -0.953083,
		-0.386397, -0.921585, 0.037128,
		-0.883875, 0.358483, -0.300425,
		36.492249, 39.814899, 49.757217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912949, 39.175804, 49.375942>,  <37.110962, 39.563961, 49.967514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912949, 39.175804, 49.375942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.675964, 39.495338, 49.334274>,  <36.533775, 39.687057, 49.309273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.675964, 39.495338, 49.334274>,  <36.912949, 39.175804, 49.375942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675964, 39.495338, 49.334274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072424, -0.075966, -0.994477,
		-0.802338, -0.596731, -0.012848,
		-0.592459, 0.798838, -0.104168,
		36.498226, 39.734989, 49.303024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303009, 38.982197, 48.982616>,  <36.912949, 39.175804, 49.375942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303009, 38.982197, 48.982616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.359959, 39.376472, 48.946495>,  <36.394127, 39.613037, 48.924824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.359959, 39.376472, 48.946495>,  <36.303009, 38.982197, 48.982616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359959, 39.376472, 48.946495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024872, -0.094764, -0.995189,
		-0.989501, 0.139442, -0.038008,
		0.142373, 0.985685, -0.090300,
		36.402672, 39.672176, 48.919403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829948, 39.185642, 48.454731>,  <36.303009, 38.982197, 48.982616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829948, 39.185642, 48.454731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.041420, 39.523693, 48.486359>,  <36.168304, 39.726524, 48.505337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.041420, 39.523693, 48.486359>,  <35.829948, 39.185642, 48.454731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041420, 39.523693, 48.486359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103243, 0.156487, -0.982269,
		-0.842517, 0.511146, 0.169985,
		0.528683, 0.845128, 0.079071,
		36.200024, 39.777233, 48.510078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509869, 39.745319, 48.101860>,  <35.829948, 39.185642, 48.454731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509869, 39.745319, 48.101860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.900345, 39.832069, 48.100655>,  <36.134632, 39.884121, 48.099930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.900345, 39.832069, 48.100655>,  <35.509869, 39.745319, 48.101860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900345, 39.832069, 48.100655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025426, 0.100618, -0.994600,
		-0.215401, 0.971000, 0.103737,
		0.976195, 0.216875, -0.003015,
		36.193203, 39.897133, 48.099751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562588, 40.380421, 47.779251>,  <35.509869, 39.745319, 48.101860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562588, 40.380421, 47.779251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.948513, 40.287754, 47.729500>,  <36.180069, 40.232155, 47.699650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.948513, 40.287754, 47.729500>,  <35.562588, 40.380421, 47.779251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948513, 40.287754, 47.729500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043572, 0.325624, -0.944495,
		0.259311, 0.916678, 0.304072,
		0.964810, -0.231669, -0.124380,
		36.237957, 40.218254, 47.692184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868019, 40.943504, 47.480343>,  <35.562588, 40.380421, 47.779251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868019, 40.943504, 47.480343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.095818, 40.626343, 47.393654>,  <36.232498, 40.436047, 47.341640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.095818, 40.626343, 47.393654>,  <35.868019, 40.943504, 47.480343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095818, 40.626343, 47.393654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173651, 0.373756, -0.911127,
		0.803440, 0.481252, 0.350543,
		0.569499, -0.792908, -0.216721,
		36.266666, 40.388470, 47.328636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352272, 41.209858, 47.141510>,  <35.868019, 40.943504, 47.480343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352272, 41.209858, 47.141510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.405762, 40.829166, 47.030994>,  <36.437855, 40.600754, 46.964684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.405762, 40.829166, 47.030994>,  <36.352272, 41.209858, 47.141510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405762, 40.829166, 47.030994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032971, 0.282910, -0.958580,
		0.990470, 0.119074, 0.069211,
		0.133723, -0.951727, -0.276287,
		36.445877, 40.543648, 46.948109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844772, 41.249870, 46.524807>,  <36.352272, 41.209858, 47.141510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844772, 41.249870, 46.524807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.711296, 40.873886, 46.496170>,  <36.631210, 40.648296, 46.478989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.711296, 40.873886, 46.496170>,  <36.844772, 41.249870, 46.524807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711296, 40.873886, 46.496170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228831, 0.154439, -0.961137,
		0.914489, -0.304337, -0.266626,
		-0.333687, -0.939962, -0.071591,
		36.611191, 40.591896, 46.474693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308231, 40.846626, 46.074871>,  <36.844772, 41.249870, 46.524807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308231, 40.846626, 46.074871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.937378, 40.697945, 46.055882>,  <36.714867, 40.608734, 46.044487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.937378, 40.697945, 46.055882>,  <37.308231, 40.846626, 46.074871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937378, 40.697945, 46.055882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010145, 0.151541, -0.988399,
		0.374588, -0.915899, -0.144270,
		-0.927136, -0.371706, -0.047473,
		36.659237, 40.586433, 46.041641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.573521, 35.204891, 41.533466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.339027, 35.463810, 41.728336>,  <44.198334, 35.619160, 41.845261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.339027, 35.463810, 41.728336>,  <44.573521, 35.204891, 41.533466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.339027, 35.463810, 41.728336> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433487, 0.257396, -0.863618,
		-0.684415, -0.717463, 0.129701,
		-0.586229, 0.647297, 0.487177,
		44.163158, 35.658001, 41.874489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.941090, 35.224751, 41.189434>,  <44.573521, 35.204891, 41.533466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.941090, 35.224751, 41.189434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.945881, 35.577850, 41.377308>,  <43.948753, 35.789711, 41.490032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.945881, 35.577850, 41.377308>,  <43.941090, 35.224751, 41.189434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.945881, 35.577850, 41.377308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247894, 0.457679, -0.853861,
		-0.968713, -0.106208, 0.224309,
		0.011974, 0.882751, 0.469688,
		43.949474, 35.842674, 41.518215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.346699, 35.497070, 41.119450>,  <43.941090, 35.224751, 41.189434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.346699, 35.497070, 41.119450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.574055, 35.822186, 41.170540>,  <43.710468, 36.017254, 41.201195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.574055, 35.822186, 41.170540>,  <43.346699, 35.497070, 41.119450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.574055, 35.822186, 41.170540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390727, 0.403270, -0.827470,
		-0.724064, 0.420418, 0.546791,
		0.568387, 0.812787, 0.127724,
		43.744572, 36.066021, 41.208858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.993286, 36.027355, 40.830814>,  <43.346699, 35.497070, 41.119450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.993286, 36.027355, 40.830814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.356232, 36.195484, 40.829247>,  <43.574001, 36.296360, 40.828304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.356232, 36.195484, 40.829247>,  <42.993286, 36.027355, 40.830814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.356232, 36.195484, 40.829247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278723, 0.594663, -0.754115,
		-0.314638, 0.685352, 0.656731,
		0.907368, 0.420320, -0.003919,
		43.628441, 36.321579, 40.828072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.856602, 36.654655, 40.624660>,  <42.993286, 36.027355, 40.830814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.856602, 36.654655, 40.624660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.252964, 36.651112, 40.570969>,  <43.490784, 36.648987, 40.538754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.252964, 36.651112, 40.570969>,  <42.856602, 36.654655, 40.624660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.252964, 36.651112, 40.570969> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111578, 0.503288, -0.856885,
		0.075150, 0.864073, 0.497725,
		0.990910, -0.008859, -0.134234,
		43.550236, 36.648453, 40.530697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.066605, 37.286446, 40.386963>,  <42.856602, 36.654655, 40.624660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.066605, 37.286446, 40.386963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.369549, 37.044193, 40.289291>,  <43.551315, 36.898842, 40.230690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.369549, 37.044193, 40.289291>,  <43.066605, 37.286446, 40.386963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.369549, 37.044193, 40.289291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117487, 0.494212, -0.861366,
		0.642344, 0.623674, 0.445449,
		0.757358, -0.605628, -0.244180,
		43.596756, 36.862503, 40.216038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.574856, 37.744862, 40.061611>,  <43.066605, 37.286446, 40.386963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.574856, 37.744862, 40.061611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.688244, 37.377476, 39.951286>,  <43.756275, 37.157043, 39.885090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.688244, 37.377476, 39.951286>,  <43.574856, 37.744862, 40.061611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.688244, 37.377476, 39.951286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183474, 0.334242, -0.924456,
		0.941267, 0.211449, 0.263261,
		0.283468, -0.918462, -0.275816,
		43.773285, 37.101936, 39.868542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.132141, 37.775887, 39.642696>,  <43.574856, 37.744862, 40.061611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.132141, 37.775887, 39.642696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.988708, 37.413967, 39.550823>,  <43.902649, 37.196815, 39.495701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.988708, 37.413967, 39.550823>,  <44.132141, 37.775887, 39.642696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.988708, 37.413967, 39.550823> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264586, 0.137441, -0.954518,
		0.895217, -0.403042, 0.190114,
		-0.358581, -0.904802, -0.229679,
		43.881134, 37.142525, 39.481918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.709770, 37.401848, 39.351376>,  <44.132141, 37.775887, 39.642696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.709770, 37.401848, 39.351376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.350483, 37.272327, 39.232479>,  <44.134911, 37.194614, 39.161140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.350483, 37.272327, 39.232479>,  <44.709770, 37.401848, 39.351376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.350483, 37.272327, 39.232479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321658, -0.023354, -0.946568,
		0.299558, -0.945837, 0.125130,
		-0.898221, -0.323801, -0.297240,
		44.081017, 37.175186, 39.143307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.883205, 37.143448, 38.636765>,  <44.709770, 37.401848, 39.351376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.883205, 37.143448, 38.636765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.484829, 37.108719, 38.627296>,  <44.245804, 37.087883, 38.621616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.484829, 37.108719, 38.627296>,  <44.883205, 37.143448, 38.636765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.484829, 37.108719, 38.627296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015946, 0.088568, -0.995943,
		0.088568, -0.992279, -0.086824,
		0.995943, 0.086824, 0.023667,
		44.186047, 37.082672, 38.620197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.613850, 36.518803, 38.215725>,  <44.883205, 37.143448, 38.636765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.613850, 36.518803, 38.215725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.290833, 36.754723, 38.214569>,  <44.097023, 36.896275, 38.213875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.290833, 36.754723, 38.214569>,  <44.613850, 36.518803, 38.215725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.290833, 36.754723, 38.214569> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024488, -0.038428, -0.998961,
		-0.589300, -0.806633, 0.045475,
		-0.807543, 0.589802, -0.002893,
		44.048569, 36.931664, 38.213703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.116684, 36.269688, 37.758156>,  <44.613850, 36.518803, 38.215725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.116684, 36.269688, 37.758156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.978619, 36.642963, 37.798183>,  <43.895779, 36.866928, 37.822201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.978619, 36.642963, 37.798183>,  <44.116684, 36.269688, 37.758156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.978619, 36.642963, 37.798183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106298, 0.067068, -0.992070,
		-0.932504, -0.353064, 0.076047,
		-0.345164, 0.933192, 0.100071,
		43.875069, 36.922920, 37.828205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.551258, 36.209427, 37.385571>,  <44.116684, 36.269688, 37.758156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.551258, 36.209427, 37.385571> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.614212, 36.604019, 37.403793>,  <43.651985, 36.840775, 37.414726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.614212, 36.604019, 37.403793>,  <43.551258, 36.209427, 37.385571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.614212, 36.604019, 37.403793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252439, 0.084792, -0.963891,
		-0.954727, 0.140203, 0.262372,
		0.157387, 0.986486, 0.045560,
		43.661427, 36.899963, 37.417461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.971127, 36.554615, 37.290844>,  <43.551258, 36.209427, 37.385571>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.971127, 36.554615, 37.290844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.242798, 36.834003, 37.200638>,  <43.405800, 37.001637, 37.146515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.242798, 36.834003, 37.200638>,  <42.971127, 36.554615, 37.290844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.242798, 36.834003, 37.200638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260691, -0.057661, -0.963699,
		-0.686116, 0.713315, 0.142922,
		0.679180, 0.698467, -0.225517,
		43.446552, 37.043545, 37.132984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.722450, 37.092705, 36.825817>,  <42.971127, 36.554615, 37.290844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.722450, 37.092705, 36.825817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.114037, 37.123760, 36.750343>,  <43.348988, 37.142395, 36.705059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.114037, 37.123760, 36.750343>,  <42.722450, 37.092705, 36.825817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.114037, 37.123760, 36.750343> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168585, -0.213135, -0.962368,
		-0.114932, 0.973933, -0.195563,
		0.978964, 0.077638, -0.188686,
		43.407726, 37.147053, 36.693737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.748360, 37.321487, 36.159416>,  <42.722450, 37.092705, 36.825817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.748360, 37.321487, 36.159416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.128445, 37.201424, 36.192863>,  <43.356495, 37.129387, 36.212933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.128445, 37.201424, 36.192863>,  <42.748360, 37.321487, 36.159416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.128445, 37.201424, 36.192863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056342, -0.429444, -0.901334,
		0.306453, 0.851752, -0.424977,
		0.950217, -0.300160, 0.083615,
		43.413509, 37.111374, 36.217949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.048717, 37.539074, 35.573490>,  <42.748360, 37.321487, 36.159416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.048717, 37.539074, 35.573490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.292858, 37.248524, 35.699883>,  <43.439342, 37.074192, 35.775719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.292858, 37.248524, 35.699883>,  <43.048717, 37.539074, 35.573490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.292858, 37.248524, 35.699883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119593, -0.309831, -0.943241,
		0.783051, 0.613497, -0.102236,
		0.610351, -0.726379, 0.315983,
		43.475964, 37.030609, 35.794678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.639904, 37.482178, 35.124344>,  <43.048717, 37.539074, 35.573490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.639904, 37.482178, 35.124344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.658813, 37.126518, 35.306416>,  <43.670158, 36.913124, 35.415657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.658813, 37.126518, 35.306416>,  <43.639904, 37.482178, 35.124344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.658813, 37.126518, 35.306416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193235, -0.438939, -0.877492,
		0.980013, 0.129442, 0.151062,
		0.047277, -0.889144, 0.455179,
		43.672997, 36.859776, 35.442970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.130608, 37.189232, 34.783470>,  <43.639904, 37.482178, 35.124344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.130608, 37.189232, 34.783470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.946079, 36.878788, 34.955437>,  <43.835361, 36.692520, 35.058617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.946079, 36.878788, 34.955437>,  <44.130608, 37.189232, 34.783470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.946079, 36.878788, 34.955437> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092283, -0.523906, -0.846762,
		0.882419, -0.350958, 0.313312,
		-0.461324, -0.776113, 0.429918,
		43.807682, 36.645954, 35.084412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.690784, 36.518070, 34.840137>,  <44.130608, 37.189232, 34.783470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.690784, 36.518070, 34.840137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.304260, 36.415287, 34.846031>,  <44.072346, 36.353619, 34.849567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.304260, 36.415287, 34.846031>,  <44.690784, 36.518070, 34.840137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.304260, 36.415287, 34.846031> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078473, -0.348661, -0.933958,
		0.245126, -0.901337, 0.357079,
		-0.966310, -0.256959, 0.014735,
		44.014366, 36.338200, 34.850452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.685436, 35.907745, 34.610897>,  <44.690784, 36.518070, 34.840137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.685436, 35.907745, 34.610897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.296543, 35.991135, 34.568356>,  <44.063210, 36.041168, 34.542831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.296543, 35.991135, 34.568356>,  <44.685436, 35.907745, 34.610897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.296543, 35.991135, 34.568356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007008, -0.428316, -0.903602,
		-0.233930, -0.879253, 0.414960,
		-0.972228, 0.208472, -0.106357,
		44.004875, 36.053677, 34.536449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.183247, 35.795177, 35.171459>,  <44.685436, 35.907745, 34.610897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.183247, 35.795177, 35.171459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.534035, 35.781094, 35.363159>,  <44.744507, 35.772644, 35.478180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.534035, 35.781094, 35.363159>,  <44.183247, 35.795177, 35.171459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.534035, 35.781094, 35.363159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322021, -0.783320, 0.531706,
		0.356689, -0.620620, -0.698286,
		0.876969, -0.035209, 0.479255,
		44.797127, 35.770531, 35.506935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.409306, 35.145836, 35.141964>,  <44.183247, 35.795177, 35.171459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.409306, 35.145836, 35.141964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.602272, 35.300842, 35.456188>,  <44.718052, 35.393848, 35.644722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.602272, 35.300842, 35.456188>,  <44.409306, 35.145836, 35.141964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.602272, 35.300842, 35.456188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180535, -0.833573, 0.522075,
		0.857134, -0.393680, -0.332171,
		0.482419, 0.387520, 0.785557,
		44.746998, 35.417099, 35.691856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.861549, 34.610298, 35.451504>,  <44.409306, 35.145836, 35.141964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.861549, 34.610298, 35.451504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.828384, 34.864437, 35.758610>,  <44.808487, 35.016918, 35.942875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.828384, 34.864437, 35.758610>,  <44.861549, 34.610298, 35.451504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.828384, 34.864437, 35.758610> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020454, -0.771340, 0.636095,
		0.996347, 0.037036, 0.076950,
		-0.082913, 0.635345, 0.767764,
		44.803509, 35.055042, 35.988937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.370884, 34.412014, 35.865479>,  <44.861549, 34.610298, 35.451504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.370884, 34.412014, 35.865479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.100269, 34.605343, 36.087723>,  <44.937901, 34.721340, 36.221069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.100269, 34.605343, 36.087723>,  <45.370884, 34.412014, 35.865479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.100269, 34.605343, 36.087723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042536, -0.727577, 0.684706,
		0.735183, 0.486859, 0.471671,
		-0.676532, 0.483322, 0.555611,
		44.897308, 34.750340, 36.254406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.710213, 34.338596, 36.485737>,  <45.370884, 34.412014, 35.865479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.710213, 34.338596, 36.485737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.330376, 34.436947, 36.563530>,  <45.102474, 34.495956, 36.610207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.330376, 34.436947, 36.563530>,  <45.710213, 34.338596, 36.485737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.330376, 34.436947, 36.563530> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024097, -0.561274, 0.827279,
		0.312568, 0.790262, 0.527055,
		-0.949590, 0.245881, 0.194479,
		45.045498, 34.510712, 36.621872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.652363, 34.394444, 37.198792>,  <45.710213, 34.338596, 36.485737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.652363, 34.394444, 37.198792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.272453, 34.348797, 37.082241>,  <45.044506, 34.321411, 37.012310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.272453, 34.348797, 37.082241>,  <45.652363, 34.394444, 37.198792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.272453, 34.348797, 37.082241> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154254, -0.639421, 0.753224,
		-0.272267, 0.760341, 0.589705,
		-0.949777, -0.114113, -0.291379,
		44.987518, 34.314564, 36.994827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.276867, 34.600311, 37.728565>,  <45.652363, 34.394444, 37.198792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.276867, 34.600311, 37.728565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.024151, 34.360382, 37.532173>,  <44.872520, 34.216423, 37.414337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.024151, 34.360382, 37.532173>,  <45.276867, 34.600311, 37.728565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.024151, 34.360382, 37.532173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063771, -0.591036, 0.804120,
		-0.772515, 0.539342, 0.335157,
		-0.631786, -0.599822, -0.490979,
		44.834614, 34.180435, 37.384880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.698727, 34.522606, 38.217220>,  <45.276867, 34.600311, 37.728565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.698727, 34.522606, 38.217220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.660423, 34.230412, 37.946747>,  <44.637444, 34.055096, 37.784462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.660423, 34.230412, 37.946747>,  <44.698727, 34.522606, 38.217220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.660423, 34.230412, 37.946747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173052, -0.656740, 0.733993,
		-0.980247, 0.187299, -0.063525,
		-0.095756, -0.730487, -0.676180,
		44.631695, 34.011265, 37.743893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.056602, 34.166454, 38.363869>,  <44.698727, 34.522606, 38.217220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.056602, 34.166454, 38.363869> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.264076, 33.903294, 38.145462>,  <44.388561, 33.745399, 38.014416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.264076, 33.903294, 38.145462>,  <44.056602, 34.166454, 38.363869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.264076, 33.903294, 38.145462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029160, -0.624659, 0.780353,
		-0.854470, -0.420677, -0.304815,
		0.518682, -0.657900, -0.546019,
		44.419682, 33.705925, 37.981655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.669750, 33.481941, 38.386307>,  <44.056602, 34.166454, 38.363869>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.669750, 33.481941, 38.386307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.048908, 33.393959, 38.294117>,  <44.276402, 33.341171, 38.238804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.048908, 33.393959, 38.294117>,  <43.669750, 33.481941, 38.386307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.048908, 33.393959, 38.294117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062644, -0.580623, 0.811759,
		-0.312368, -0.783899, -0.536590,
		0.947893, -0.219953, -0.230475,
		44.333275, 33.327972, 38.224976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.719646, 32.868843, 38.574764>,  <43.669750, 33.481941, 38.386307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.719646, 32.868843, 38.574764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.106133, 32.968300, 38.547588>,  <44.338024, 33.027973, 38.531284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.106133, 32.968300, 38.547588>,  <43.719646, 32.868843, 38.574764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.106133, 32.968300, 38.547588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199997, -0.556912, 0.806133,
		0.162600, -0.792482, -0.587821,
		0.966210, 0.248639, -0.067940,
		44.395996, 33.042892, 38.527206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.002972, 32.301247, 38.769821>,  <43.719646, 32.868843, 38.574764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.002972, 32.301247, 38.769821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.322227, 32.541557, 38.787876>,  <44.513783, 32.685745, 38.798710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.322227, 32.541557, 38.787876>,  <44.002972, 32.301247, 38.769821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.322227, 32.541557, 38.787876> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314882, -0.479849, 0.818898,
		0.513632, -0.639385, -0.572162,
		0.798143, 0.600776, 0.045135,
		44.561668, 32.721790, 38.801418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.593960, 31.903694, 38.896690>,  <44.002972, 32.301247, 38.769821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.593960, 31.903694, 38.896690> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.706829, 32.259365, 39.040771>,  <44.774551, 32.472767, 39.127220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.706829, 32.259365, 39.040771>,  <44.593960, 31.903694, 38.896690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.706829, 32.259365, 39.040771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487182, -0.456249, 0.744641,
		0.826459, -0.034631, -0.561930,
		0.282168, 0.889178, 0.360200,
		44.791481, 32.526119, 39.148830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.236820, 31.819933, 39.187454>,  <44.593960, 31.903694, 38.896690>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.236820, 31.819933, 39.187454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.088326, 32.142071, 39.372326>,  <44.999229, 32.335354, 39.483250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.088326, 32.142071, 39.372326>,  <45.236820, 31.819933, 39.187454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.088326, 32.142071, 39.372326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253805, -0.390779, 0.884802,
		0.893178, 0.445773, -0.059328,
		-0.371237, 0.805343, 0.462175,
		44.976955, 32.383675, 39.510979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.729885, 31.888323, 39.646343>,  <45.236820, 31.819933, 39.187454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.729885, 31.888323, 39.646343> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.403687, 32.078407, 39.778484>,  <45.207966, 32.192459, 39.857769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.403687, 32.078407, 39.778484>,  <45.729885, 31.888323, 39.646343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.403687, 32.078407, 39.778484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174090, -0.342953, 0.923080,
		0.551953, 0.810283, 0.196949,
		-0.815500, 0.475210, 0.330356,
		45.159035, 32.220970, 39.877590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.843212, 31.913824, 40.323418>,  <45.729885, 31.888323, 39.646343>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.843212, 31.913824, 40.323418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.465458, 32.044884, 40.334625>,  <45.238808, 32.123520, 40.341351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.465458, 32.044884, 40.334625>,  <45.843212, 31.913824, 40.323418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.465458, 32.044884, 40.334625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089718, -0.338675, 0.936616,
		0.316372, 0.882011, 0.349236,
		-0.944383, 0.327651, 0.028015,
		45.182144, 32.143181, 40.343029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.732750, 32.206413, 40.979649>,  <45.843212, 31.913824, 40.323418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.732750, 32.206413, 40.979649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.361443, 32.127045, 40.853828>,  <45.138657, 32.079422, 40.778336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.361443, 32.127045, 40.853828>,  <45.732750, 32.206413, 40.979649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.361443, 32.127045, 40.853828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267049, -0.233012, 0.935088,
		-0.258835, 0.952016, 0.163310,
		-0.928272, -0.198422, -0.314547,
		45.082962, 32.067516, 40.759464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.286491, 32.511002, 41.437450>,  <45.732750, 32.206413, 40.979649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.286491, 32.511002, 41.437450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.049000, 32.234467, 41.272751>,  <44.906506, 32.068546, 41.173931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.049000, 32.234467, 41.272751>,  <45.286491, 32.511002, 41.437450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.049000, 32.234467, 41.272751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262230, -0.317531, 0.911268,
		-0.760734, 0.649023, 0.007240,
		-0.593733, -0.691334, -0.411750,
		44.870880, 32.027065, 41.149227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.633293, 32.475754, 41.796879>,  <45.286491, 32.511002, 41.437450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.633293, 32.475754, 41.796879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.625900, 32.123196, 41.608074>,  <44.621464, 31.911659, 41.494793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.625900, 32.123196, 41.608074>,  <44.633293, 32.475754, 41.796879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.625900, 32.123196, 41.608074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516155, -0.395905, 0.759502,
		-0.856296, 0.257669, -0.447621,
		-0.018485, -0.881400, -0.472009,
		44.620354, 31.858776, 41.466473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.983192, 32.211304, 41.880161>,  <44.633293, 32.475754, 41.796879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.983192, 32.211304, 41.880161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.201107, 31.885422, 41.800697>,  <44.331856, 31.689892, 41.753021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.201107, 31.885422, 41.800697>,  <43.983192, 32.211304, 41.880161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.201107, 31.885422, 41.800697> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431188, -0.475329, 0.766902,
		-0.719228, -0.332136, -0.610243,
		0.544782, -0.814707, -0.198657,
		44.364540, 31.641010, 41.741100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.655029, 31.657240, 42.136623>,  <43.983192, 32.211304, 41.880161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.655029, 31.657240, 42.136623> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.023426, 31.501442, 42.133331>,  <44.244465, 31.407963, 42.131355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.023426, 31.501442, 42.133331>,  <43.655029, 31.657240, 42.136623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.023426, 31.501442, 42.133331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237309, -0.577643, 0.781034,
		-0.308963, -0.717373, -0.624435,
		0.920992, -0.389494, -0.008231,
		44.299725, 31.384594, 42.130863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.819447, 38.757484, 41.516674> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451950, 38.600243, 41.501785>,  <39.231453, 38.505898, 41.492851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451950, 38.600243, 41.501785>,  <39.819447, 38.757484, 41.516674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.451950, 38.600243, 41.501785> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125357, -0.200977, -0.971542,
		0.374437, -0.897260, 0.233924,
		-0.918739, -0.393106, -0.037224,
		39.176327, 38.482311, 41.490620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862858, 38.091904, 41.275860>,  <39.819447, 38.757484, 41.516674>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.862858, 38.091904, 41.275860> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478218, 38.178394, 41.208248>,  <39.247433, 38.230289, 41.167683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478218, 38.178394, 41.208248>,  <39.862858, 38.091904, 41.275860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.478218, 38.178394, 41.208248> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109952, -0.260791, -0.959113,
		-0.251451, -0.940872, 0.227005,
		-0.961604, 0.216211, -0.169027,
		39.189739, 38.243259, 41.157539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709660, 37.584015, 40.838253>,  <39.862858, 38.091904, 41.275860>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709660, 37.584015, 40.838253> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429920, 37.865509, 40.788177>,  <39.262077, 38.034405, 40.758133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429920, 37.865509, 40.788177>,  <39.709660, 37.584015, 40.838253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.429920, 37.865509, 40.788177> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127638, -0.049378, -0.990591,
		-0.703293, -0.708747, -0.055290,
		-0.699348, 0.703733, -0.125190,
		39.220116, 38.076630, 40.750622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.181126, 37.332310, 40.331860>,  <39.709660, 37.584015, 40.838253>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.181126, 37.332310, 40.331860> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131889, 37.729210, 40.325027>,  <39.102348, 37.967350, 40.320930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131889, 37.729210, 40.325027>,  <39.181126, 37.332310, 40.331860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131889, 37.729210, 40.325027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108117, -0.030515, -0.993670,
		-0.986489, -0.120463, 0.111035,
		-0.123089, 0.992249, -0.017078,
		39.094963, 38.026886, 40.319904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571461, 37.460495, 39.926262>,  <39.181126, 37.332310, 40.331860>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571461, 37.460495, 39.926262> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791996, 37.794064, 39.916389>,  <38.924316, 37.994205, 39.910465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791996, 37.794064, 39.916389>,  <38.571461, 37.460495, 39.926262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791996, 37.794064, 39.916389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176925, 0.087959, -0.980286,
		-0.815308, 0.544833, 0.196036,
		0.551336, 0.833919, -0.024681,
		38.957397, 38.044239, 39.908985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233982, 37.840282, 39.438988>,  <38.571461, 37.460495, 39.926262>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233982, 37.840282, 39.438988> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571739, 38.048615, 39.489178>,  <38.774391, 38.173615, 39.519291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571739, 38.048615, 39.489178>,  <38.233982, 37.840282, 39.438988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571739, 38.048615, 39.489178> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008051, 0.246530, -0.969102,
		-0.535669, 0.817289, 0.212361,
		0.844390, 0.520827, 0.125479,
		38.825058, 38.204865, 39.526821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056541, 38.560116, 39.296841>,  <38.233982, 37.840282, 39.438988>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056541, 38.560116, 39.296841> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442127, 38.472126, 39.237003>,  <38.673481, 38.419331, 39.201099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442127, 38.472126, 39.237003>,  <38.056541, 38.560116, 39.296841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442127, 38.472126, 39.237003> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066343, 0.345789, -0.935964,
		0.257618, 0.912163, 0.318735,
		0.963967, -0.219975, -0.149597,
		38.731316, 38.406132, 39.192123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308647, 39.132641, 39.032372>,  <38.056541, 38.560116, 39.296841>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308647, 39.132641, 39.032372> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627426, 38.915257, 38.926907>,  <38.818695, 38.784824, 38.863628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627426, 38.915257, 38.926907>,  <38.308647, 39.132641, 39.032372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.627426, 38.915257, 38.926907> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156739, 0.235483, -0.959156,
		0.583354, 0.805726, 0.102487,
		0.796951, -0.543464, -0.263659,
		38.866512, 38.752216, 38.847809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878235, 39.513409, 38.618168>,  <38.308647, 39.132641, 39.032372>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878235, 39.513409, 38.618168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954506, 39.135174, 38.512718>,  <39.000267, 38.908234, 38.449448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954506, 39.135174, 38.512718>,  <38.878235, 39.513409, 38.618168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954506, 39.135174, 38.512718> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064595, 0.280056, -0.957808,
		0.979525, 0.165605, 0.114481,
		0.190679, -0.945592, -0.263624,
		39.011711, 38.851498, 38.433632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.136211, 39.572674, 37.973530>,  <38.878235, 39.513409, 38.618168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.136211, 39.572674, 37.973530> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031857, 39.186729, 37.986019>,  <38.969242, 38.955162, 37.993515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031857, 39.186729, 37.986019>,  <39.136211, 39.572674, 37.973530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031857, 39.186729, 37.986019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246594, 0.035335, -0.968474,
		0.933342, -0.260366, -0.247148,
		-0.260891, -0.964863, 0.031225,
		38.953590, 38.897270, 37.995388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487392, 39.201427, 37.450966>,  <39.136211, 39.572674, 37.973530>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487392, 39.201427, 37.450966> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173344, 38.964981, 37.524906>,  <38.984917, 38.823112, 37.569271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173344, 38.964981, 37.524906>,  <39.487392, 39.201427, 37.450966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173344, 38.964981, 37.524906> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146422, -0.112852, -0.982764,
		0.601789, -0.798653, 0.002050,
		-0.785119, -0.591116, 0.184853,
		38.937809, 38.787647, 37.580360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580509, 38.520199, 37.059387>,  <39.487392, 39.201427, 37.450966>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580509, 38.520199, 37.059387> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192772, 38.585934, 37.132454>,  <38.960129, 38.625374, 37.176292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192772, 38.585934, 37.132454>,  <39.580509, 38.520199, 37.059387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192772, 38.585934, 37.132454> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191750, -0.041080, -0.980584,
		-0.153639, -0.985549, 0.071331,
		-0.969344, 0.164333, 0.182667,
		38.901970, 38.635235, 37.187256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100979, 38.041054, 36.779205>,  <39.580509, 38.520199, 37.059387>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100979, 38.041054, 36.779205> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902981, 38.387867, 36.801941>,  <38.784180, 38.595955, 36.815582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902981, 38.387867, 36.801941>,  <39.100979, 38.041054, 36.779205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902981, 38.387867, 36.801941> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215099, -0.058896, -0.974815,
		-0.841848, -0.494758, 0.215652,
		-0.494999, 0.867033, 0.056841,
		38.754482, 38.647976, 36.818993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466557, 37.523727, 36.466686>,  <39.100979, 38.041054, 36.779205>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.466557, 37.523727, 36.466686> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490944, 37.762684, 36.146835>,  <39.505577, 37.906059, 35.954926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490944, 37.762684, 36.146835>,  <39.466557, 37.523727, 36.466686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490944, 37.762684, 36.146835> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133211, -0.789083, -0.599670,
		-0.989211, 0.143079, 0.031471,
		0.060967, 0.597392, -0.799628,
		39.509235, 37.941902, 35.906948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123600, 37.049992, 36.498806>,  <39.466557, 37.523727, 36.466686>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.123600, 37.049992, 36.498806> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087280, 36.669930, 36.379498>,  <40.065487, 36.441895, 36.307915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087280, 36.669930, 36.379498>,  <40.123600, 37.049992, 36.498806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.087280, 36.669930, 36.379498> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206465, -0.275037, 0.939003,
		-0.974232, 0.146847, -0.171199,
		-0.090804, -0.950153, -0.298269,
		40.060040, 36.384884, 36.290016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454731, 36.719604, 36.717899>,  <40.123600, 37.049992, 36.498806>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454731, 36.719604, 36.717899> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718353, 36.422119, 36.673111>,  <39.876526, 36.243629, 36.646240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718353, 36.422119, 36.673111>,  <39.454731, 36.719604, 36.717899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718353, 36.422119, 36.673111> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296337, -0.393613, 0.870203,
		-0.691254, -0.540331, -0.479803,
		0.659054, -0.743715, -0.111966,
		39.916069, 36.199005, 36.639523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015873, 36.252827, 36.866364>,  <39.454731, 36.719604, 36.717899>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015873, 36.252827, 36.866364> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383602, 36.108677, 36.929581>,  <39.604240, 36.022186, 36.967510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383602, 36.108677, 36.929581>,  <39.015873, 36.252827, 36.866364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383602, 36.108677, 36.929581> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286999, -0.339270, 0.895839,
		-0.269214, -0.868925, -0.415324,
		0.919324, -0.360370, 0.158044,
		39.659397, 36.000565, 36.976994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867466, 35.569836, 37.118767>,  <39.015873, 36.252827, 36.866364>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867466, 35.569836, 37.118767> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241379, 35.658321, 37.229935>,  <39.465729, 35.711411, 37.296635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241379, 35.658321, 37.229935>,  <38.867466, 35.569836, 37.118767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.241379, 35.658321, 37.229935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148483, -0.467434, 0.871469,
		0.322689, -0.855903, -0.404105,
		0.934786, 0.221211, 0.277923,
		39.521816, 35.724686, 37.313313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059898, 34.990219, 37.377003>,  <38.867466, 35.569836, 37.118767>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059898, 34.990219, 37.377003> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321594, 35.256126, 37.521255>,  <39.478611, 35.415668, 37.607807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321594, 35.256126, 37.521255>,  <39.059898, 34.990219, 37.377003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321594, 35.256126, 37.521255> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145553, -0.357261, 0.922594,
		0.742148, -0.656089, -0.136976,
		0.654241, 0.664764, 0.360636,
		39.517868, 35.455555, 37.629448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473572, 34.666122, 37.764420>,  <39.059898, 34.990219, 37.377003>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473572, 34.666122, 37.764420> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523819, 35.035355, 37.909824>,  <39.553967, 35.256893, 37.997066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523819, 35.035355, 37.909824>,  <39.473572, 34.666122, 37.764420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.523819, 35.035355, 37.909824> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204093, -0.334529, 0.920020,
		0.970858, -0.189763, 0.146371,
		0.125620, 0.923082, 0.363510,
		39.561504, 35.312279, 38.018879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.898251, 34.521408, 38.358383>,  <39.473572, 34.666122, 37.764420>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.898251, 34.521408, 38.358383> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791012, 34.902340, 38.416618>,  <39.726669, 35.130898, 38.451557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791012, 34.902340, 38.416618>,  <39.898251, 34.521408, 38.358383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791012, 34.902340, 38.416618> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055726, -0.166192, 0.984517,
		0.961779, 0.255832, 0.097625,
		-0.268096, 0.952329, 0.145584,
		39.710583, 35.188038, 38.460293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198303, 34.866974, 38.824059>,  <39.898251, 34.521408, 38.358383>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.198303, 34.866974, 38.824059> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862034, 35.081024, 38.857307>,  <39.660275, 35.209454, 38.877258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862034, 35.081024, 38.857307>,  <40.198303, 34.866974, 38.824059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862034, 35.081024, 38.857307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104967, -0.311592, 0.944400,
		0.531277, 0.785205, 0.318117,
		-0.840671, 0.535130, 0.083122,
		39.609833, 35.241562, 38.882244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.338066, 35.301334, 39.391483>,  <40.198303, 34.866974, 38.824059>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.338066, 35.301334, 39.391483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942913, 35.333557, 39.338432>,  <39.705822, 35.352890, 39.306602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942913, 35.333557, 39.338432>,  <40.338066, 35.301334, 39.391483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.942913, 35.333557, 39.338432> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138351, -0.070158, 0.987895,
		0.070272, 0.994278, 0.080453,
		-0.987887, 0.080552, -0.132629,
		39.646545, 35.357723, 39.298645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127697, 35.992489, 39.802197>,  <40.338066, 35.301334, 39.391483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127697, 35.992489, 39.802197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823238, 35.737293, 39.755505>,  <39.640564, 35.584175, 39.727489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823238, 35.737293, 39.755505>,  <40.127697, 35.992489, 39.802197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823238, 35.737293, 39.755505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163150, 0.014155, 0.986500,
		-0.627727, 0.769913, -0.114863,
		-0.761145, -0.637992, -0.116726,
		39.594894, 35.545895, 39.720486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.611099, 36.342155, 40.096596>,  <40.127697, 35.992489, 39.802197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.611099, 36.342155, 40.096596> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528767, 35.950741, 40.100597>,  <39.479366, 35.715893, 40.102997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528767, 35.950741, 40.100597>,  <39.611099, 36.342155, 40.096596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528767, 35.950741, 40.100597> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225756, 0.057429, 0.972490,
		-0.952191, 0.197909, -0.232731,
		-0.205830, -0.978537, 0.010005,
		39.467018, 35.657181, 40.103600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050140, 36.311153, 40.509342>,  <39.611099, 36.342155, 40.096596>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050140, 36.311153, 40.509342> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194153, 35.938053, 40.501850>,  <39.280560, 35.714191, 40.497356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194153, 35.938053, 40.501850>,  <39.050140, 36.311153, 40.509342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.194153, 35.938053, 40.501850> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133470, -0.071364, 0.988480,
		-0.923346, -0.353379, -0.150187,
		0.360026, -0.932754, -0.018728,
		39.302162, 35.658226, 40.496231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594830, 36.019550, 40.882191>,  <39.050140, 36.311153, 40.509342>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594830, 36.019550, 40.882191> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907845, 35.770557, 40.877277>,  <39.095654, 35.621162, 40.874329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907845, 35.770557, 40.877277>,  <38.594830, 36.019550, 40.882191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907845, 35.770557, 40.877277> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083268, -0.124190, 0.988758,
		-0.617011, -0.772717, -0.149016,
		0.782537, -0.622484, -0.012284,
		39.142605, 35.583813, 40.873592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400646, 35.442734, 41.415901>,  <38.594830, 36.019550, 40.882191>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400646, 35.442734, 41.415901> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795444, 35.407326, 41.362232>,  <39.032322, 35.386082, 41.330029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795444, 35.407326, 41.362232>,  <38.400646, 35.442734, 41.415901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795444, 35.407326, 41.362232> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131932, -0.030732, 0.990782,
		-0.091834, -0.995600, -0.018653,
		0.986996, -0.088526, -0.134174,
		39.091545, 35.380768, 41.321980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178833, 34.670216, 41.217411>,  <38.400646, 35.442734, 41.415901>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178833, 34.670216, 41.217411> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780308, 34.636116, 41.213440>,  <37.541195, 34.615654, 41.211060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780308, 34.636116, 41.213440>,  <38.178833, 34.670216, 41.217411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780308, 34.636116, 41.213440> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006379, 0.188868, -0.981982,
		0.085588, -0.978295, -0.188715,
		-0.996310, -0.085250, -0.009924,
		37.481415, 34.610538, 41.210461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953808, 34.207970, 40.638206>,  <38.178833, 34.670216, 41.217411>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953808, 34.207970, 40.638206> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628532, 34.422680, 40.728180>,  <37.433369, 34.551506, 40.782166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628532, 34.422680, 40.728180>,  <37.953808, 34.207970, 40.638206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628532, 34.422680, 40.728180> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186196, 0.126227, -0.974370,
		-0.551415, -0.834226, -0.002700,
		-0.813187, 0.536780, 0.224933,
		37.384575, 34.583714, 40.795658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554352, 33.893959, 40.093212>,  <37.953808, 34.207970, 40.638206>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554352, 33.893959, 40.093212> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387783, 34.229782, 40.232780>,  <37.287842, 34.431274, 40.316521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387783, 34.229782, 40.232780>,  <37.554352, 33.893959, 40.093212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387783, 34.229782, 40.232780> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321010, 0.223287, -0.920378,
		-0.850615, -0.495272, 0.176524,
		-0.416422, 0.839553, 0.348918,
		37.262856, 34.481647, 40.337456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890194, 33.833504, 39.844913>,  <37.554352, 33.893959, 40.093212>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890194, 33.833504, 39.844913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983879, 34.212055, 39.933926>,  <37.040092, 34.439186, 39.987331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983879, 34.212055, 39.933926>,  <36.890194, 33.833504, 39.844913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983879, 34.212055, 39.933926> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353961, 0.296196, -0.887119,
		-0.905458, 0.129012, 0.404353,
		0.234217, 0.946374, 0.222528,
		37.054146, 34.495968, 40.000683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250946, 34.187561, 39.833008>,  <36.890194, 33.833504, 39.844913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250946, 34.187561, 39.833008> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536896, 34.461956, 39.778782>,  <36.708466, 34.626595, 39.746246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536896, 34.461956, 39.778782>,  <36.250946, 34.187561, 39.833008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536896, 34.461956, 39.778782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418267, 0.264131, -0.869073,
		-0.560369, 0.677977, 0.475746,
		0.714871, 0.685990, -0.135565,
		36.751358, 34.667751, 39.738113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781044, 34.772385, 39.591549>,  <36.250946, 34.187561, 39.833008>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781044, 34.772385, 39.591549> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148746, 34.892689, 39.489948>,  <36.369366, 34.964870, 39.428989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148746, 34.892689, 39.489948>,  <35.781044, 34.772385, 39.591549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148746, 34.892689, 39.489948> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343693, 0.298531, -0.890368,
		-0.191960, 0.905772, 0.377795,
		0.919253, 0.300761, -0.254001,
		36.424522, 34.982918, 39.413750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742744, 35.390755, 39.197269>,  <35.781044, 34.772385, 39.591549>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.742744, 35.390755, 39.197269> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109455, 35.262451, 39.102081>,  <36.329483, 35.185471, 39.044968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109455, 35.262451, 39.102081>,  <35.742744, 35.390755, 39.197269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109455, 35.262451, 39.102081> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118870, 0.349691, -0.929293,
		0.381295, 0.880244, 0.282461,
		0.916779, -0.320759, -0.237970,
		36.384487, 35.166222, 39.030689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020771, 35.888233, 38.821648>,  <35.742744, 35.390755, 39.197269>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020771, 35.888233, 38.821648> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253838, 35.580666, 38.716377>,  <36.393677, 35.396126, 38.653214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253838, 35.580666, 38.716377>,  <36.020771, 35.888233, 38.821648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253838, 35.580666, 38.716377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092362, 0.384383, -0.918542,
		0.807443, 0.510899, 0.294987,
		0.582670, -0.768916, -0.263180,
		36.428638, 35.349991, 38.637424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574383, 36.130196, 38.472454>,  <36.020771, 35.888233, 38.821648>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574383, 36.130196, 38.472454> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529163, 35.755653, 38.339508>,  <36.502029, 35.530930, 38.259743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529163, 35.755653, 38.339508>,  <36.574383, 36.130196, 38.472454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.529163, 35.755653, 38.339508> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105728, 0.343944, -0.933019,
		0.987948, -0.070338, -0.137882,
		-0.113051, -0.936352, -0.332362,
		36.495247, 35.474747, 38.239799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928699, 36.072517, 37.874390>,  <36.574383, 36.130196, 38.472454>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928699, 36.072517, 37.874390> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651524, 35.786606, 37.836571>,  <36.485218, 35.615059, 37.813881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651524, 35.786606, 37.836571>,  <36.928699, 36.072517, 37.874390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651524, 35.786606, 37.836571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282670, 0.389951, -0.876377,
		0.663279, -0.580547, -0.472256,
		-0.692935, -0.714775, -0.094543,
		36.443642, 35.572174, 37.808208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927864, 35.865864, 37.181274>,  <36.928699, 36.072517, 37.874390>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927864, 35.865864, 37.181274> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578358, 35.773380, 37.352421>,  <36.368652, 35.717892, 37.455109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578358, 35.773380, 37.352421>,  <36.927864, 35.865864, 37.181274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578358, 35.773380, 37.352421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483106, 0.513912, -0.708875,
		-0.055987, -0.826098, -0.560739,
		-0.873770, -0.231209, 0.427865,
		36.316227, 35.704018, 37.480782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445236, 35.593243, 36.657780>,  <36.927864, 35.865864, 37.181274>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.445236, 35.593243, 36.657780> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215466, 35.722095, 36.958782>,  <36.077602, 35.799408, 37.139385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215466, 35.722095, 36.958782>,  <36.445236, 35.593243, 36.657780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215466, 35.722095, 36.958782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630898, 0.411500, -0.657750,
		-0.521536, -0.852585, -0.033147,
		-0.574428, 0.322128, 0.752506,
		36.043137, 35.818733, 37.184536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.285152, 33.900646, 44.972050> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.052155, 34.203403, 44.853519>,  <36.912357, 34.385059, 44.782402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.052155, 34.203403, 44.853519>,  <37.285152, 33.900646, 44.972050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052155, 34.203403, 44.853519> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117182, -0.438948, -0.890838,
		-0.804343, -0.484185, 0.344379,
		-0.582494, 0.756895, -0.296327,
		36.877407, 34.430473, 44.764622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767708, 33.663380, 44.716949>,  <37.285152, 33.900646, 44.972050>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767708, 33.663380, 44.716949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.707687, 34.024887, 44.556610>,  <36.671677, 34.241791, 44.460407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.707687, 34.024887, 44.556610>,  <36.767708, 33.663380, 44.716949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707687, 34.024887, 44.556610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159446, -0.422255, -0.892344,
		-0.975737, -0.069981, 0.207462,
		-0.150048, 0.903772, -0.400851,
		36.662674, 34.296021, 44.436356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264248, 33.525539, 44.169445>,  <36.767708, 33.663380, 44.716949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264248, 33.525539, 44.169445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.442844, 33.871956, 44.079456>,  <36.550003, 34.079807, 44.025463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.442844, 33.871956, 44.079456>,  <36.264248, 33.525539, 44.169445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.442844, 33.871956, 44.079456> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014490, -0.258393, -0.965931,
		-0.894669, 0.428023, -0.127920,
		0.446495, 0.866042, -0.224974,
		36.576794, 34.131767, 44.011963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032169, 33.655106, 43.430477>,  <36.264248, 33.525539, 44.169445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032169, 33.655106, 43.430477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.319084, 33.928509, 43.484612>,  <36.491234, 34.092552, 43.517094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.319084, 33.928509, 43.484612>,  <36.032169, 33.655106, 43.430477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.319084, 33.928509, 43.484612> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142239, 0.046505, -0.988739,
		-0.682103, 0.728462, -0.063864,
		0.717289, 0.683506, 0.135337,
		36.534271, 34.133560, 43.525211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972672, 34.142048, 42.930603>,  <36.032169, 33.655106, 43.430477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972672, 34.142048, 42.930603> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.355412, 34.174374, 43.042244>,  <36.585056, 34.193768, 43.109230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.355412, 34.174374, 43.042244>,  <35.972672, 34.142048, 42.930603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355412, 34.174374, 43.042244> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266519, 0.138559, -0.953818,
		-0.115751, 0.987052, 0.111043,
		0.956854, 0.080810, 0.279106,
		36.642467, 34.198616, 43.125977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199104, 34.797493, 42.745235>,  <35.972672, 34.142048, 42.930603>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199104, 34.797493, 42.745235> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.528183, 34.570805, 42.763126>,  <36.725628, 34.434792, 42.773861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.528183, 34.570805, 42.763126>,  <36.199104, 34.797493, 42.745235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528183, 34.570805, 42.763126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190202, 0.200251, -0.961105,
		0.535722, 0.799203, 0.272537,
		0.822694, -0.566722, 0.044731,
		36.774990, 34.400787, 42.776546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753288, 35.234936, 42.394367>,  <36.199104, 34.797493, 42.745235>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753288, 35.234936, 42.394367> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.883442, 34.856823, 42.403893>,  <36.961533, 34.629955, 42.409607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.883442, 34.856823, 42.403893>,  <36.753288, 35.234936, 42.394367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883442, 34.856823, 42.403893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377132, 0.106636, -0.920000,
		0.867121, 0.308332, 0.391194,
		0.325381, -0.945283, 0.023815,
		36.981056, 34.573238, 42.411037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438885, 35.356979, 42.177464>,  <36.753288, 35.234936, 42.394367>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438885, 35.356979, 42.177464> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.339676, 34.971161, 42.141392>,  <37.280151, 34.739670, 42.119747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.339676, 34.971161, 42.141392>,  <37.438885, 35.356979, 42.177464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339676, 34.971161, 42.141392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232435, 0.031123, -0.972114,
		0.940456, -0.262072, 0.216475,
		-0.248027, -0.964546, -0.090184,
		37.265266, 34.681797, 42.114338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934414, 35.097744, 41.887398>,  <37.438885, 35.356979, 42.177464>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934414, 35.097744, 41.887398> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.642239, 34.841290, 41.793240>,  <37.466934, 34.687416, 41.736744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.642239, 34.841290, 41.793240>,  <37.934414, 35.097744, 41.887398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642239, 34.841290, 41.793240> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069336, 0.273271, -0.959435,
		0.679453, -0.717127, -0.155153,
		-0.730435, -0.641134, -0.235398,
		37.423107, 34.648949, 41.722622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643234, 35.023525, 41.962955>,  <37.934414, 35.097744, 41.887398>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643234, 35.023525, 41.962955> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.973675, 35.217003, 41.847301>,  <39.171940, 35.333088, 41.777908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.973675, 35.217003, 41.847301>,  <38.643234, 35.023525, 41.962955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973675, 35.217003, 41.847301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268942, 0.112481, 0.956566,
		0.495208, -0.867979, -0.037165,
		0.826099, 0.483694, -0.289138,
		39.221504, 35.362110, 41.760559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092739, 34.808308, 42.399933>,  <38.643234, 35.023525, 41.962955>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.092739, 34.808308, 42.399933> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.248985, 35.156754, 42.280880>,  <39.342731, 35.365822, 42.209450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.248985, 35.156754, 42.280880>,  <39.092739, 34.808308, 42.399933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.248985, 35.156754, 42.280880> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200910, 0.234848, 0.951042,
		0.898363, -0.431286, -0.083281,
		0.390613, 0.871114, -0.297628,
		39.366169, 35.418087, 42.191593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765026, 34.818527, 42.730461>,  <39.092739, 34.808308, 42.399933>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765026, 34.818527, 42.730461> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.637878, 35.183941, 42.628941>,  <39.561588, 35.403191, 42.568027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.637878, 35.183941, 42.628941>,  <39.765026, 34.818527, 42.730461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637878, 35.183941, 42.628941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195211, 0.325009, 0.925344,
		0.927820, 0.244596, -0.281643,
		-0.317872, 0.913533, -0.253802,
		39.542519, 35.458000, 42.552799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.113377, 35.190941, 43.223534>,  <39.765026, 34.818527, 42.730461>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.113377, 35.190941, 43.223534> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.853882, 35.455013, 43.072113>,  <39.698185, 35.613457, 42.981258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.853882, 35.455013, 43.072113>,  <40.113377, 35.190941, 43.223534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.853882, 35.455013, 43.072113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028344, 0.518050, 0.854881,
		0.760485, 0.543863, -0.354790,
		-0.648737, 0.660180, -0.378554,
		39.659260, 35.653069, 42.958546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.476429, 35.752213, 43.456528>,  <40.113377, 35.190941, 43.223534>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.476429, 35.752213, 43.456528> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.096157, 35.847446, 43.377014>,  <39.867992, 35.904587, 43.329304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.096157, 35.847446, 43.377014>,  <40.476429, 35.752213, 43.456528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.096157, 35.847446, 43.377014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062489, 0.480745, 0.874631,
		0.303804, 0.843919, -0.442159,
		-0.950683, 0.238086, -0.198788,
		39.810951, 35.918873, 43.317379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.447269, 36.472267, 43.678913>,  <40.476429, 35.752213, 43.456528>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.447269, 36.472267, 43.678913> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.081821, 36.312366, 43.649273>,  <39.862553, 36.216427, 43.631489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.081821, 36.312366, 43.649273>,  <40.447269, 36.472267, 43.678913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.081821, 36.312366, 43.649273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258368, 0.430156, 0.864992,
		-0.313908, 0.809422, -0.496284,
		-0.913623, -0.399752, -0.074099,
		39.807735, 36.192440, 43.627045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.978165, 37.003502, 43.867500>,  <40.447269, 36.472267, 43.678913>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.978165, 37.003502, 43.867500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.815132, 36.642418, 43.922626>,  <39.717312, 36.425770, 43.955704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.815132, 36.642418, 43.922626>,  <39.978165, 37.003502, 43.867500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.815132, 36.642418, 43.922626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132809, 0.207913, 0.969089,
		-0.903458, 0.376683, -0.204630,
		-0.407585, -0.902708, 0.137814,
		39.692856, 36.371605, 43.963970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347054, 37.136688, 44.154415>,  <39.978165, 37.003502, 43.867500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347054, 37.136688, 44.154415> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.393520, 36.750198, 44.246422>,  <39.421402, 36.518303, 44.301624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.393520, 36.750198, 44.246422>,  <39.347054, 37.136688, 44.154415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393520, 36.750198, 44.246422> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002656, 0.231283, 0.972883,
		-0.993226, -0.113631, 0.024302,
		0.116170, -0.966228, 0.230018,
		39.428371, 36.460331, 44.315426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873661, 37.044266, 44.657871>,  <39.347054, 37.136688, 44.154415>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873661, 37.044266, 44.657871> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.120903, 36.734619, 44.712540>,  <39.269249, 36.548832, 44.745342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.120903, 36.734619, 44.712540>,  <38.873661, 37.044266, 44.657871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120903, 36.734619, 44.712540> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102083, 0.251440, 0.962474,
		-0.779436, -0.580962, 0.234442,
		0.618109, -0.774120, 0.136675,
		39.306335, 36.502384, 44.753544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756802, 36.896599, 45.349926>,  <38.873661, 37.044266, 44.657871>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756802, 36.896599, 45.349926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.082977, 36.674839, 45.283344>,  <39.278683, 36.541782, 45.243393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.082977, 36.674839, 45.283344>,  <38.756802, 36.896599, 45.349926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082977, 36.674839, 45.283344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114345, -0.127626, 0.985209,
		-0.567440, -0.822409, -0.040679,
		0.815437, -0.554395, -0.166459,
		39.327610, 36.508522, 45.233406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642982, 36.193237, 45.572746>,  <38.756802, 36.896599, 45.349926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.642982, 36.193237, 45.572746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.028000, 36.300571, 45.588318>,  <39.259010, 36.364971, 45.597660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.028000, 36.300571, 45.588318>,  <38.642982, 36.193237, 45.572746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028000, 36.300571, 45.588318> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023949, -0.058873, 0.997978,
		0.270082, -0.961526, -0.050241,
		0.962540, 0.268333, 0.038928,
		39.316761, 36.381073, 45.599995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975670, 35.686474, 45.927505>,  <38.642982, 36.193237, 45.572746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975670, 35.686474, 45.927505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.211288, 36.007664, 45.963852>,  <39.352661, 36.200378, 45.985661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.211288, 36.007664, 45.963852>,  <38.975670, 35.686474, 45.927505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211288, 36.007664, 45.963852> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032182, -0.089050, 0.995507,
		0.807456, -0.589327, -0.026613,
		0.589049, 0.802972, 0.090870,
		39.388004, 36.248554, 45.991112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444798, 35.439224, 46.522461>,  <38.975670, 35.686474, 45.927505>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444798, 35.439224, 46.522461> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.489574, 35.832726, 46.466320>,  <39.516441, 36.068825, 46.432636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.489574, 35.832726, 46.466320>,  <39.444798, 35.439224, 46.522461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.489574, 35.832726, 46.466320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175985, 0.119376, 0.977128,
		0.978007, -0.134084, -0.159763,
		0.111945, 0.983753, -0.140348,
		39.523159, 36.127853, 46.424217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076530, 35.575508, 46.788925>,  <39.444798, 35.439224, 46.522461>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.076530, 35.575508, 46.788925> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.836185, 35.893166, 46.825363>,  <39.691978, 36.083759, 46.847225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.836185, 35.893166, 46.825363>,  <40.076530, 35.575508, 46.788925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.836185, 35.893166, 46.825363> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164210, 0.011095, 0.986363,
		0.782303, 0.607629, -0.137073,
		-0.600863, 0.794144, 0.091099,
		39.655926, 36.131409, 46.852692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.497070, 41.174824, 47.402756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.599094, 40.794682, 47.331467>,  <33.660309, 40.566597, 47.288692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.599094, 40.794682, 47.331467>,  <33.497070, 41.174824, 47.402756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.599094, 40.794682, 47.331467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049476, 0.196903, -0.979174,
		0.965659, 0.240929, 0.097241,
		0.255059, -0.950359, -0.178221,
		33.675613, 40.509575, 47.278000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106026, 41.227398, 46.847507>,  <33.497070, 41.174824, 47.402756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106026, 41.227398, 46.847507> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.925701, 40.871105, 46.824284>,  <33.817509, 40.657330, 46.810349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.925701, 40.871105, 46.824284>,  <34.106026, 41.227398, 46.847507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925701, 40.871105, 46.824284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053406, 0.091840, -0.994341,
		0.891022, -0.445156, -0.088973,
		-0.450808, -0.890731, -0.058057,
		33.790459, 40.603886, 46.806866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469994, 40.833698, 46.288677>,  <34.106026, 41.227398, 46.847507>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469994, 40.833698, 46.288677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.111294, 40.668175, 46.351421>,  <33.896072, 40.568859, 46.389069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.111294, 40.668175, 46.351421>,  <34.469994, 40.833698, 46.288677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.111294, 40.668175, 46.351421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095526, -0.165096, -0.981641,
		0.432109, -0.895268, 0.108520,
		-0.896748, -0.413809, 0.156861,
		33.842270, 40.544033, 46.398479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454556, 40.070221, 46.183956>,  <34.469994, 40.833698, 46.288677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454556, 40.070221, 46.183956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.078312, 40.195164, 46.130760>,  <33.852566, 40.270130, 46.098843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.078312, 40.195164, 46.130760>,  <34.454556, 40.070221, 46.183956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078312, 40.195164, 46.130760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042836, -0.497801, -0.866233,
		-0.336781, -0.809089, 0.481616,
		-0.940608, 0.312361, -0.132992,
		33.796131, 40.288872, 46.090862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203747, 39.525421, 45.761391>,  <34.454556, 40.070221, 46.183956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203747, 39.525421, 45.761391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.899445, 39.784992, 45.756512>,  <33.716866, 39.940735, 45.753586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.899445, 39.784992, 45.756512>,  <34.203747, 39.525421, 45.761391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.899445, 39.784992, 45.756512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057111, -0.085649, -0.994687,
		-0.646527, -0.756012, 0.102219,
		-0.760751, 0.648930, -0.012198,
		33.671219, 39.979671, 45.752853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.634567, 39.231777, 45.487087>,  <34.203747, 39.525421, 45.761391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.634567, 39.231777, 45.487087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.552700, 39.614292, 45.403534>,  <33.503582, 39.843800, 45.353401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.552700, 39.614292, 45.403534>,  <33.634567, 39.231777, 45.487087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552700, 39.614292, 45.403534> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088742, -0.230651, -0.968981,
		-0.974801, -0.179779, 0.132069,
		-0.204665, 0.956284, -0.208885,
		33.491302, 39.901176, 45.340870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041283, 39.255337, 45.128628>,  <33.634567, 39.231777, 45.487087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041283, 39.255337, 45.128628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.230038, 39.595577, 45.035851>,  <33.343292, 39.799721, 44.980183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.230038, 39.595577, 45.035851>,  <33.041283, 39.255337, 45.128628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.230038, 39.595577, 45.035851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134207, -0.190708, -0.972429,
		-0.871382, 0.490009, 0.024163,
		0.471891, 0.850601, -0.231943,
		33.371605, 39.850758, 44.966267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.745819, 39.472599, 44.480167>,  <33.041283, 39.255337, 45.128628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.745819, 39.472599, 44.480167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.074375, 39.700684, 44.485531>,  <33.271507, 39.837536, 44.488750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.074375, 39.700684, 44.485531>,  <32.745819, 39.472599, 44.480167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.074375, 39.700684, 44.485531> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019621, 0.051748, -0.998468,
		-0.570033, 0.819866, 0.053693,
		0.821388, 0.570213, 0.013411,
		33.320793, 39.871746, 44.489555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595917, 40.037323, 44.039265>,  <32.745819, 39.472599, 44.480167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595917, 40.037323, 44.039265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.992565, 40.015720, 44.086216>,  <33.230553, 40.002758, 44.114388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.992565, 40.015720, 44.086216>,  <32.595917, 40.037323, 44.039265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992565, 40.015720, 44.086216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128056, 0.289931, -0.948442,
		0.017187, 0.955523, 0.294416,
		0.991618, -0.054003, 0.117377,
		33.290051, 39.999519, 44.121429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.877056, 40.670731, 43.931767>,  <32.595917, 40.037323, 44.039265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.877056, 40.670731, 43.931767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.173428, 40.415977, 43.846535>,  <33.351250, 40.263126, 43.795395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.173428, 40.415977, 43.846535>,  <32.877056, 40.670731, 43.931767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173428, 40.415977, 43.846535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018935, 0.336969, -0.941325,
		0.671313, 0.693423, 0.261731,
		0.740932, -0.636880, -0.213082,
		33.395706, 40.224915, 43.782612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544281, 41.092495, 43.653900>,  <32.877056, 40.670731, 43.931767>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544281, 41.092495, 43.653900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.576050, 40.710030, 43.541161>,  <33.595112, 40.480549, 43.473515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.576050, 40.710030, 43.541161>,  <33.544281, 41.092495, 43.653900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.576050, 40.710030, 43.541161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151893, 0.291053, -0.944572,
		0.985201, 0.032208, 0.168351,
		0.079422, -0.956165, -0.281853,
		33.599876, 40.423180, 43.456604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026451, 41.072002, 43.191227>,  <33.544281, 41.092495, 43.653900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026451, 41.072002, 43.191227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.836227, 40.729263, 43.111561>,  <33.722095, 40.523621, 43.063763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.836227, 40.729263, 43.111561>,  <34.026451, 41.072002, 43.191227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836227, 40.729263, 43.111561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048927, 0.200287, -0.978515,
		0.878324, -0.475083, -0.053324,
		-0.475556, -0.856844, -0.199161,
		33.693562, 40.472210, 43.051811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340618, 40.781189, 42.652771>,  <34.026451, 41.072002, 43.191227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340618, 40.781189, 42.652771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.020153, 40.544971, 42.614010>,  <33.827873, 40.403240, 42.590755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.020153, 40.544971, 42.614010>,  <34.340618, 40.781189, 42.652771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020153, 40.544971, 42.614010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166575, -0.064540, -0.983914,
		0.574794, -0.804418, 0.150077,
		-0.801165, -0.590547, -0.096899,
		33.779804, 40.367805, 42.584942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.569313, 40.259533, 42.212170>,  <34.340618, 40.781189, 42.652771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.569313, 40.259533, 42.212170> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.169479, 40.268360, 42.204788>,  <33.929577, 40.273659, 42.200359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.169479, 40.268360, 42.204788>,  <34.569313, 40.259533, 42.212170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169479, 40.268360, 42.204788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016714, -0.076645, -0.996918,
		-0.023418, -0.996814, 0.076244,
		-0.999586, 0.022071, -0.018455,
		33.869602, 40.274982, 42.199253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106865, 39.807644, 41.975239>,  <34.569313, 40.259533, 42.212170>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106865, 39.807644, 41.975239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.363567, 40.112095, 41.937637>,  <35.517590, 40.294765, 41.915077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.363567, 40.112095, 41.937637>,  <35.106865, 39.807644, 41.975239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363567, 40.112095, 41.937637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047179, 0.083166, 0.995418,
		0.765458, -0.643249, 0.017463,
		0.641754, 0.761127, -0.094008,
		35.556095, 40.340431, 41.909435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653522, 39.678474, 42.460499>,  <35.106865, 39.807644, 41.975239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653522, 39.678474, 42.460499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.642414, 40.074692, 42.406757>,  <35.635750, 40.312424, 42.374512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.642414, 40.074692, 42.406757>,  <35.653522, 39.678474, 42.460499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642414, 40.074692, 42.406757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267126, 0.136871, 0.953892,
		0.963261, -0.009397, -0.268401,
		-0.027773, 0.990544, -0.134352,
		35.634083, 40.371857, 42.366451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094547, 39.723137, 42.892578>,  <35.653522, 39.678474, 42.460499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094547, 39.723137, 42.892578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.929501, 40.087063, 42.874722>,  <35.830475, 40.305416, 42.864010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.929501, 40.087063, 42.874722>,  <36.094547, 39.723137, 42.892578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929501, 40.087063, 42.874722> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341558, 0.199959, 0.918343,
		0.844446, 0.363673, -0.393260,
		-0.412613, 0.909812, -0.044639,
		35.805717, 40.360008, 42.861328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586140, 40.171547, 43.104576>,  <36.094547, 39.723137, 42.892578>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586140, 40.171547, 43.104576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.235882, 40.344757, 43.190121>,  <36.025726, 40.448685, 43.241447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.235882, 40.344757, 43.190121>,  <36.586140, 40.171547, 43.104576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235882, 40.344757, 43.190121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275933, 0.085139, 0.957399,
		0.396370, 0.897352, -0.194038,
		-0.875644, 0.433025, 0.213863,
		35.973190, 40.474663, 43.254280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796368, 40.875980, 43.369968>,  <36.586140, 40.171547, 43.104576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796368, 40.875980, 43.369968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.409206, 40.897995, 43.468060>,  <36.176910, 40.911205, 43.526917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.409206, 40.897995, 43.468060>,  <36.796368, 40.875980, 43.369968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409206, 40.897995, 43.468060> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251313, 0.199600, 0.947102,
		0.003177, 0.978330, -0.207025,
		-0.967901, 0.055037, 0.245233,
		36.118835, 40.914505, 43.541630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672115, 41.532967, 43.704308>,  <36.796368, 40.875980, 43.369968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672115, 41.532967, 43.704308> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.398010, 41.264042, 43.816311>,  <36.233547, 41.102688, 43.883514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.398010, 41.264042, 43.816311>,  <36.672115, 41.532967, 43.704308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.398010, 41.264042, 43.816311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145484, 0.250362, 0.957159,
		-0.713617, 0.696642, -0.073753,
		-0.685262, -0.672316, 0.280013,
		36.192432, 41.062347, 43.900314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622463, 41.705017, 44.444069>,  <36.672115, 41.532967, 43.704308>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622463, 41.705017, 44.444069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.438076, 41.350491, 44.426437>,  <36.327442, 41.137775, 44.415859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.438076, 41.350491, 44.426437>,  <36.622463, 41.705017, 44.444069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438076, 41.350491, 44.426437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108811, -0.105745, 0.988422,
		-0.880719, 0.450837, 0.145187,
		-0.460970, -0.886320, -0.044076,
		36.299786, 41.084595, 44.413216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957920, 41.699280, 44.894615>,  <36.622463, 41.705017, 44.444069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957920, 41.699280, 44.894615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.086292, 41.321720, 44.863480>,  <36.163315, 41.095184, 44.844799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.086292, 41.321720, 44.863480>,  <35.957920, 41.699280, 44.894615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086292, 41.321720, 44.863480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143742, -0.129779, 0.981069,
		-0.936131, -0.303666, -0.177328,
		0.320931, -0.943899, -0.077840,
		36.182571, 41.038551, 44.840126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598194, 41.280663, 45.419796>,  <35.957920, 41.699280, 44.894615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598194, 41.280663, 45.419796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.902275, 41.034081, 45.337742>,  <36.084724, 40.886131, 45.288509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.902275, 41.034081, 45.337742>,  <35.598194, 41.280663, 45.419796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902275, 41.034081, 45.337742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048971, -0.260470, 0.964239,
		-0.647840, -0.743061, -0.167822,
		0.760201, -0.616454, -0.205132,
		36.130337, 40.849144, 45.276203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381821, 40.736767, 45.777500>,  <35.598194, 41.280663, 45.419796>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381821, 40.736767, 45.777500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.774830, 40.691090, 45.718704>,  <36.010635, 40.663685, 45.683426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.774830, 40.691090, 45.718704>,  <35.381821, 40.736767, 45.777500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774830, 40.691090, 45.718704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096005, -0.365638, 0.925793,
		-0.159460, -0.923726, -0.348285,
		0.982525, -0.114190, -0.146987,
		36.069588, 40.656834, 45.674606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471470, 40.107681, 46.074821>,  <35.381821, 40.736767, 45.777500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471470, 40.107681, 46.074821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.840828, 40.259235, 46.050220>,  <36.062443, 40.350170, 46.035461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.840828, 40.259235, 46.050220>,  <35.471470, 40.107681, 46.074821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840828, 40.259235, 46.050220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161460, -0.238034, 0.957742,
		0.348239, -0.894306, -0.280975,
		0.923396, 0.378889, -0.061502,
		36.117847, 40.372902, 46.031769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934536, 39.532570, 46.395817>,  <35.471470, 40.107681, 46.074821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934536, 39.532570, 46.395817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.147640, 39.870770, 46.410248>,  <36.275501, 40.073689, 46.418907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.147640, 39.870770, 46.410248>,  <35.934536, 39.532570, 46.395817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147640, 39.870770, 46.410248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422767, -0.302840, 0.854141,
		0.733100, -0.439797, -0.518789,
		0.532759, 0.845498, 0.036080,
		36.307468, 40.124420, 46.421070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613865, 39.346130, 46.538765>,  <35.934536, 39.532570, 46.395817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613865, 39.346130, 46.538765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.538258, 39.710243, 46.686096>,  <36.492893, 39.928711, 46.774494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.538258, 39.710243, 46.686096>,  <36.613865, 39.346130, 46.538765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538258, 39.710243, 46.686096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414652, -0.266022, 0.870228,
		0.890133, 0.317216, -0.327166,
		-0.189017, 0.910278, 0.368329,
		36.481552, 39.983326, 46.796597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184265, 39.445671, 46.995663>,  <36.613865, 39.346130, 46.538765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184265, 39.445671, 46.995663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.908760, 39.719952, 47.089825>,  <36.743458, 39.884521, 47.146324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.908760, 39.719952, 47.089825>,  <37.184265, 39.445671, 46.995663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908760, 39.719952, 47.089825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278159, -0.049913, 0.959237,
		0.669502, 0.726168, -0.156356,
		-0.688763, 0.685703, 0.235407,
		36.702129, 39.925663, 47.160446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822041, 39.695553, 46.901283>,  <37.184265, 39.445671, 46.995663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.822041, 39.695553, 46.901283> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.177723, 39.515808, 46.866905>,  <38.391132, 39.407963, 46.846279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.177723, 39.515808, 46.866905>,  <37.822041, 39.695553, 46.901283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177723, 39.515808, 46.866905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009838, 0.169036, -0.985561,
		0.457401, 0.877212, 0.145888,
		0.889206, -0.449361, -0.085947,
		38.444485, 39.381001, 46.841122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118328, 40.054905, 46.408062>,  <37.822041, 39.695553, 46.901283>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118328, 40.054905, 46.408062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.362957, 39.738430, 46.409130>,  <38.509735, 39.548546, 46.409771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.362957, 39.738430, 46.409130>,  <38.118328, 40.054905, 46.408062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362957, 39.738430, 46.409130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031251, 0.020780, -0.999296,
		0.790572, 0.611224, 0.037434,
		0.611572, -0.791185, 0.002673,
		38.546429, 39.501076, 46.409931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649303, 40.201302, 45.997707>,  <38.118328, 40.054905, 46.408062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649303, 40.201302, 45.997707> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.692646, 39.805305, 46.033890>,  <38.718651, 39.567707, 46.055599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.692646, 39.805305, 46.033890>,  <38.649303, 40.201302, 45.997707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692646, 39.805305, 46.033890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210381, -0.066091, -0.975383,
		0.971596, 0.124720, 0.201113,
		0.108358, -0.989988, 0.090453,
		38.725155, 39.508308, 46.061024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227295, 40.119957, 45.569881>,  <38.649303, 40.201302, 45.997707>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227295, 40.119957, 45.569881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.020275, 39.780499, 45.613586>,  <38.896065, 39.576824, 45.639809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.020275, 39.780499, 45.613586>,  <39.227295, 40.119957, 45.569881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020275, 39.780499, 45.613586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035685, -0.148996, -0.988194,
		0.854909, -0.507540, 0.107397,
		-0.517549, -0.848648, 0.109267,
		38.865009, 39.525906, 45.646366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562099, 39.606800, 45.137310>,  <39.227295, 40.119957, 45.569881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562099, 39.606800, 45.137310> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.202885, 39.442558, 45.200462>,  <38.987354, 39.344013, 45.238354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.202885, 39.442558, 45.200462>,  <39.562099, 39.606800, 45.137310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202885, 39.442558, 45.200462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148331, -0.055244, -0.987394,
		0.414153, -0.910137, -0.011295,
		-0.898040, -0.410607, 0.157881,
		38.933472, 39.319378, 45.247826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493660, 38.979961, 44.791737>,  <39.562099, 39.606800, 45.137310>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493660, 38.979961, 44.791737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.105465, 39.068295, 44.830505>,  <38.872547, 39.121296, 44.853767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.105465, 39.068295, 44.830505>,  <39.493660, 38.979961, 44.791737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.105465, 39.068295, 44.830505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152972, -0.252964, -0.955306,
		-0.186441, -0.941936, 0.279278,
		-0.970484, 0.220829, 0.096927,
		38.814320, 39.134544, 44.859585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141869, 38.388180, 44.579399>,  <39.493660, 38.979961, 44.791737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141869, 38.388180, 44.579399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.881405, 38.691612, 44.570110>,  <38.725124, 38.873672, 44.564537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.881405, 38.691612, 44.570110>,  <39.141869, 38.388180, 44.579399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881405, 38.691612, 44.570110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275207, -0.264536, -0.924274,
		-0.707282, -0.595461, 0.381023,
		-0.651164, 0.758582, -0.023226,
		38.686054, 38.919186, 44.563141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579117, 38.074345, 44.354698>,  <39.141869, 38.388180, 44.579399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579117, 38.074345, 44.354698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.559521, 38.465870, 44.275181>,  <38.547764, 38.700787, 44.227470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.559521, 38.465870, 44.275181>,  <38.579117, 38.074345, 44.354698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559521, 38.465870, 44.275181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193090, -0.204555, -0.959621,
		-0.979957, -0.008626, 0.199021,
		-0.048989, 0.978817, -0.198790,
		38.544823, 38.759514, 44.215546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110268, 38.152954, 43.848827>,  <38.579117, 38.074345, 44.354698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110268, 38.152954, 43.848827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.273914, 38.515007, 43.802589>,  <38.372101, 38.732239, 43.774845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.273914, 38.515007, 43.802589>,  <38.110268, 38.152954, 43.848827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273914, 38.515007, 43.802589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061899, -0.098860, -0.993174,
		-0.910381, 0.413479, 0.015582,
		0.409116, 0.905131, -0.115595,
		38.396648, 38.786545, 43.767910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655228, 38.483925, 43.286282>,  <38.110268, 38.152954, 43.848827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655228, 38.483925, 43.286282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.007851, 38.672321, 43.299061>,  <38.219425, 38.785358, 43.306728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.007851, 38.672321, 43.299061>,  <37.655228, 38.483925, 43.286282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007851, 38.672321, 43.299061> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046699, -0.019668, -0.998715,
		-0.469760, 0.881917, -0.039333,
		0.881558, 0.470993, 0.031945,
		38.272320, 38.813618, 43.308643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623547, 38.967812, 42.768391>,  <37.655228, 38.483925, 43.286282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.623547, 38.967812, 42.768391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.013298, 38.902504, 42.830261>,  <38.247150, 38.863319, 42.867386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.013298, 38.902504, 42.830261>,  <37.623547, 38.967812, 42.768391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013298, 38.902504, 42.830261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099831, -0.302300, -0.947971,
		0.201535, 0.939126, -0.278256,
		0.974381, -0.163270, 0.154678,
		38.305611, 38.853523, 42.876663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913486, 39.331928, 42.199135>,  <37.623547, 38.967812, 42.768391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.913486, 39.331928, 42.199135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.236801, 39.124329, 42.310360>,  <38.430790, 38.999771, 42.377094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.236801, 39.124329, 42.310360>,  <37.913486, 39.331928, 42.199135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236801, 39.124329, 42.310360> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179800, -0.232127, -0.955923,
		0.560667, 0.822654, -0.094309,
		0.808285, -0.518997, 0.278059,
		38.479286, 38.968628, 42.393776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.607082, 39.573112, 41.940331>,  <37.913486, 39.331928, 42.199135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.607082, 39.573112, 41.940331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.648396, 39.185028, 42.027988>,  <38.673183, 38.952179, 42.080582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.648396, 39.185028, 42.027988>,  <38.607082, 39.573112, 41.940331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648396, 39.185028, 42.027988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375952, -0.165897, -0.911668,
		0.920865, 0.176549, 0.347618,
		0.103285, -0.970211, 0.219143,
		38.679382, 38.893967, 42.093731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149380, 39.389790, 41.619370>,  <38.607082, 39.573112, 41.940331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149380, 39.389790, 41.619370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.990494, 39.030102, 41.692726>,  <38.895161, 38.814289, 41.736740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.990494, 39.030102, 41.692726>,  <39.149380, 39.389790, 41.619370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990494, 39.030102, 41.692726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284503, -0.310644, -0.906950,
		0.872513, -0.308077, 0.379222,
		-0.397213, -0.899216, 0.183392,
		38.871330, 38.760338, 41.747746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.063829, 37.831173, 28.450060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.856129, 37.531654, 28.285290>,  <27.731508, 37.351944, 28.186428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.856129, 37.531654, 28.285290>,  <28.063829, 37.831173, 28.450060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.856129, 37.531654, 28.285290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341616, -0.259957, 0.903173,
		-0.783374, 0.609696, -0.120817,
		-0.519253, -0.748795, -0.411925,
		27.700354, 37.307014, 28.161713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.457289, 37.866905, 28.653433>,  <28.063829, 37.831173, 28.450060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.457289, 37.866905, 28.653433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.414244, 37.489815, 28.527140>,  <27.388416, 37.263561, 28.451365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.414244, 37.489815, 28.527140>,  <27.457289, 37.866905, 28.653433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.414244, 37.489815, 28.527140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314078, -0.269077, 0.910468,
		-0.943279, 0.197142, -0.267133,
		-0.107612, -0.942726, -0.315733,
		27.381960, 37.206997, 28.432419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.721067, 37.569305, 28.718262>,  <27.457289, 37.866905, 28.653433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.721067, 37.569305, 28.718262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.977549, 37.262360, 28.719765>,  <27.131437, 37.078194, 28.720667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.977549, 37.262360, 28.719765>,  <26.721067, 37.569305, 28.718262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.977549, 37.262360, 28.719765> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410354, -0.338742, 0.846678,
		-0.648436, -0.544435, -0.532092,
		0.641203, -0.767362, 0.003759,
		27.169910, 37.032150, 28.720892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.274220, 36.956791, 28.860365>,  <26.721067, 37.569305, 28.718262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.274220, 36.956791, 28.860365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.651825, 36.860138, 28.950207>,  <26.878389, 36.802147, 29.004112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.651825, 36.860138, 28.950207>,  <26.274220, 36.956791, 28.860365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.651825, 36.860138, 28.950207> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313780, -0.447412, 0.837475,
		-0.101873, -0.861066, -0.498185,
		0.944015, -0.241636, 0.224606,
		26.935030, 36.787647, 29.017590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.228334, 36.260727, 29.023979>,  <26.274220, 36.956791, 28.860365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.228334, 36.260727, 29.023979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.569601, 36.403305, 29.176325>,  <26.774361, 36.488850, 29.267733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.569601, 36.403305, 29.176325>,  <26.228334, 36.260727, 29.023979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.569601, 36.403305, 29.176325> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208907, -0.435553, 0.875587,
		0.477982, -0.826586, -0.297136,
		0.853166, 0.356441, 0.380866,
		26.825550, 36.510239, 29.290585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.455236, 35.724289, 29.437065>,  <26.228334, 36.260727, 29.023979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.455236, 35.724289, 29.437065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.646549, 36.049782, 29.569176>,  <26.761337, 36.245079, 29.648443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.646549, 36.049782, 29.569176>,  <26.455236, 35.724289, 29.437065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.646549, 36.049782, 29.569176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144325, -0.298139, 0.943548,
		0.866266, -0.498949, -0.025152,
		0.478281, 0.813734, 0.330279,
		26.790033, 36.293903, 29.668259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.845966, 35.457325, 29.923805>,  <26.455236, 35.724289, 29.437065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.845966, 35.457325, 29.923805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.810356, 35.847664, 30.003593>,  <26.788990, 36.081867, 30.051466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.810356, 35.847664, 30.003593>,  <26.845966, 35.457325, 29.923805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.810356, 35.847664, 30.003593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177520, -0.212604, 0.960878,
		0.980082, 0.050135, 0.192161,
		-0.089028, 0.975851, 0.199469,
		26.783648, 36.140419, 30.063435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.178411, 35.480095, 30.473148>,  <26.845966, 35.457325, 29.923805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.178411, 35.480095, 30.473148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.964182, 35.817871, 30.476713>,  <26.835644, 36.020538, 30.478851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.964182, 35.817871, 30.476713>,  <27.178411, 35.480095, 30.473148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.964182, 35.817871, 30.476713> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140113, -0.099262, 0.985147,
		0.832785, 0.526369, 0.171479,
		-0.535572, 0.844442, 0.008912,
		26.803511, 36.071205, 30.479387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.482300, 35.978813, 31.021763>,  <27.178411, 35.480095, 30.473148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.482300, 35.978813, 31.021763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.104679, 36.097008, 30.963173>,  <26.878107, 36.167927, 30.928019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.104679, 36.097008, 30.963173>,  <27.482300, 35.978813, 31.021763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.104679, 36.097008, 30.963173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118026, 0.112016, 0.986672,
		0.307960, 0.948756, -0.070873,
		-0.944050, 0.295490, -0.146474,
		26.821465, 36.185654, 30.919231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.427277, 36.479923, 31.536764>,  <27.482300, 35.978813, 31.021763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.427277, 36.479923, 31.536764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.060055, 36.367149, 31.425274>,  <26.839722, 36.299484, 31.358379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.060055, 36.367149, 31.425274>,  <27.427277, 36.479923, 31.536764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.060055, 36.367149, 31.425274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322336, 0.121501, 0.938795,
		-0.230817, 0.951708, -0.202423,
		-0.918054, -0.281938, -0.278725,
		26.784639, 36.282566, 31.341656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.888691, 36.945869, 31.828098>,  <27.427277, 36.479923, 31.536764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.888691, 36.945869, 31.828098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.658861, 36.631477, 31.736805>,  <26.520964, 36.442841, 31.682028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.658861, 36.631477, 31.736805>,  <26.888691, 36.945869, 31.828098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.658861, 36.631477, 31.736805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315809, -0.044354, 0.947785,
		-0.755067, 0.616654, -0.222736,
		-0.574577, -0.785984, -0.228235,
		26.486488, 36.395683, 31.668335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.375898, 37.066021, 32.257889>,  <26.888691, 36.945869, 31.828098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.375898, 37.066021, 32.257889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.337498, 36.673168, 32.193146>,  <26.314457, 36.437458, 32.154301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.337498, 36.673168, 32.193146>,  <26.375898, 37.066021, 32.257889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.337498, 36.673168, 32.193146> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334303, -0.121351, 0.934621,
		-0.937563, 0.143835, -0.316680,
		-0.096002, -0.982133, -0.161859,
		26.308697, 36.378529, 32.144588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.616512, 36.880806, 32.290882>,  <26.375898, 37.066021, 32.257889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.616512, 36.880806, 32.290882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.835625, 36.560535, 32.387924>,  <25.967093, 36.368374, 32.446152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.835625, 36.560535, 32.387924>,  <25.616512, 36.880806, 32.290882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.835625, 36.560535, 32.387924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429241, -0.020061, 0.902967,
		-0.718113, -0.598767, -0.354670,
		0.547782, -0.800672, 0.242609,
		25.999960, 36.320335, 32.460709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.190489, 36.456242, 32.721523>,  <25.616512, 36.880806, 32.290882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.190489, 36.456242, 32.721523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.543459, 36.283447, 32.796051>,  <25.755241, 36.179771, 32.840767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.543459, 36.283447, 32.796051>,  <25.190489, 36.456242, 32.721523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.543459, 36.283447, 32.796051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291373, -0.190905, 0.937367,
		-0.369363, -0.881443, -0.294328,
		0.882425, -0.431988, 0.186315,
		25.808186, 36.153851, 32.851944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.061586, 35.959534, 33.243832>,  <25.190489, 36.456242, 32.721523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.061586, 35.959534, 33.243832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.458298, 35.997986, 33.277618>,  <25.696325, 36.021057, 33.297890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.458298, 35.997986, 33.277618>,  <25.061586, 35.959534, 33.243832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.458298, 35.997986, 33.277618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094229, 0.102011, 0.990310,
		0.086586, -0.990127, 0.110231,
		0.991778, 0.096134, 0.084466,
		25.755831, 36.026825, 33.302959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.183640, 35.608150, 33.963879>,  <25.061586, 35.959534, 33.243832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.183640, 35.608150, 33.963879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.517138, 35.820232, 33.902233>,  <25.717237, 35.947479, 33.865246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.517138, 35.820232, 33.902233>,  <25.183640, 35.608150, 33.963879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.517138, 35.820232, 33.902233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079477, 0.160973, 0.983753,
		0.546397, -0.832450, 0.092072,
		0.833747, 0.530203, -0.154116,
		25.767262, 35.979294, 33.855999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.700752, 35.320454, 34.405476>,  <25.183640, 35.608150, 33.963879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.700752, 35.320454, 34.405476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.852024, 35.672886, 34.291862>,  <25.942787, 35.884346, 34.223694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.852024, 35.672886, 34.291862>,  <25.700752, 35.320454, 34.405476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.852024, 35.672886, 34.291862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333297, 0.156651, 0.929717,
		0.863652, -0.446265, -0.234421,
		0.378178, 0.881083, -0.284031,
		25.965477, 35.937210, 34.206654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.390368, 35.217175, 34.678528>,  <25.700752, 35.320454, 34.405476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.390368, 35.217175, 34.678528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.257793, 35.590015, 34.620110>,  <26.178249, 35.813721, 34.585056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.257793, 35.590015, 34.620110>,  <26.390368, 35.217175, 34.678528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.257793, 35.590015, 34.620110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151189, 0.205269, 0.966957,
		0.931285, 0.298403, -0.208958,
		-0.331436, 0.932105, -0.146048,
		26.158363, 35.869648, 34.576294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.792416, 35.574749, 35.013355>,  <26.390368, 35.217175, 34.678528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.792416, 35.574749, 35.013355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.520073, 35.861568, 34.953648>,  <26.356667, 36.033661, 34.917824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.520073, 35.861568, 34.953648>,  <26.792416, 35.574749, 35.013355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.520073, 35.861568, 34.953648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110212, 0.301786, 0.946984,
		0.724077, 0.628308, -0.284500,
		-0.680856, 0.717045, -0.149269,
		26.315817, 36.076683, 34.908867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.010048, 36.249069, 35.051758>,  <26.792416, 35.574749, 35.013355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.010048, 36.249069, 35.051758> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.617725, 36.270138, 35.126850>,  <26.382332, 36.282780, 35.171906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.617725, 36.270138, 35.126850>,  <27.010048, 36.249069, 35.051758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.617725, 36.270138, 35.126850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194895, 0.236283, 0.951938,
		0.005780, 0.970256, -0.242013,
		-0.980807, 0.052669, 0.187732,
		26.323483, 36.285938, 35.183170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.052538, 36.730095, 35.463604>,  <27.010048, 36.249069, 35.051758>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.052538, 36.730095, 35.463604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.685003, 36.582134, 35.518612>,  <26.464481, 36.493359, 35.551617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.685003, 36.582134, 35.518612>,  <27.052538, 36.730095, 35.463604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.685003, 36.582134, 35.518612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105806, 0.104799, 0.988849,
		-0.380185, 0.923143, -0.057156,
		-0.918838, -0.369898, 0.137517,
		26.409351, 36.471165, 35.559868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.783239, 36.607868, 35.675419>,  <27.052538, 36.730095, 35.463604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.783239, 36.607868, 35.675419> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.168274, 36.715054, 35.659279>,  <28.399294, 36.779366, 35.649593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.168274, 36.715054, 35.659279>,  <27.783239, 36.607868, 35.675419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.168274, 36.715054, 35.659279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220864, 0.689528, -0.689761,
		-0.157003, 0.672866, 0.722911,
		0.962585, 0.267960, -0.040354,
		28.457048, 36.795441, 35.647171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.847452, 37.387894, 35.669418>,  <27.783239, 36.607868, 35.675419>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.847452, 37.387894, 35.669418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.180855, 37.248520, 35.497902>,  <28.380896, 37.164894, 35.394993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.180855, 37.248520, 35.497902>,  <27.847452, 37.387894, 35.669418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.180855, 37.248520, 35.497902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047461, 0.728051, -0.683878,
		0.550468, 0.590367, 0.590298,
		0.833506, -0.348437, -0.428788,
		28.430906, 37.143990, 35.369267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.160713, 38.005630, 35.468567>,  <27.847452, 37.387894, 35.669418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.160713, 38.005630, 35.468567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.322220, 37.716820, 35.243839>,  <28.419125, 37.543533, 35.109001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.322220, 37.716820, 35.243839>,  <28.160713, 38.005630, 35.468567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.322220, 37.716820, 35.243839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110275, 0.571218, -0.813357,
		0.908191, 0.390362, 0.151018,
		0.403768, -0.722030, -0.561823,
		28.443350, 37.500210, 35.075291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.621147, 38.373489, 35.040161>,  <28.160713, 38.005630, 35.468567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.621147, 38.373489, 35.040161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.539476, 38.026188, 34.859295>,  <28.490473, 37.817806, 34.750774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.539476, 38.026188, 34.859295>,  <28.621147, 38.373489, 35.040161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.539476, 38.026188, 34.859295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120568, 0.480681, -0.868568,
		0.971481, -0.122826, -0.202827,
		-0.204178, -0.868251, -0.452163,
		28.478224, 37.765713, 34.723644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.091671, 38.282894, 34.410103>,  <28.621147, 38.373489, 35.040161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.091671, 38.282894, 34.410103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.772017, 38.049789, 34.351089>,  <28.580223, 37.909927, 34.315681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.772017, 38.049789, 34.351089>,  <29.091671, 38.282894, 34.410103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.772017, 38.049789, 34.351089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044788, 0.302457, -0.952110,
		0.599481, -0.754257, -0.267805,
		-0.799135, -0.582766, -0.147536,
		28.532276, 37.874958, 34.306828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.060995, 38.151325, 33.672184>,  <29.091671, 38.282894, 34.410103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.060995, 38.151325, 33.672184> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.691257, 38.078846, 33.806496>,  <28.469414, 38.035358, 33.887085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.691257, 38.078846, 33.806496>,  <29.060995, 38.151325, 33.672184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.691257, 38.078846, 33.806496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377121, 0.300099, -0.876197,
		0.058000, -0.936540, -0.345730,
		-0.924346, -0.181202, 0.335783,
		28.413954, 38.024487, 33.907230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.789341, 37.826244, 33.098824>,  <29.060995, 38.151325, 33.672184>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.789341, 37.826244, 33.098824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.478401, 37.956951, 33.313843>,  <28.291838, 38.035374, 33.442856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.478401, 37.956951, 33.313843>,  <28.789341, 37.826244, 33.098824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.478401, 37.956951, 33.313843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489246, 0.223111, -0.843125,
		-0.395435, -0.918394, -0.013568,
		-0.777348, 0.326763, 0.537547,
		28.245197, 38.054981, 33.475105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.091900, 37.497597, 32.754837>,  <28.789341, 37.826244, 33.098824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.091900, 37.497597, 32.754837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.919064, 37.759476, 33.002926>,  <27.815363, 37.916603, 33.151779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.919064, 37.759476, 33.002926>,  <28.091900, 37.497597, 32.754837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.919064, 37.759476, 33.002926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487485, 0.409040, -0.771392,
		-0.758721, -0.635659, 0.142412,
		-0.432090, 0.654694, 0.620221,
		27.789436, 37.955883, 33.188992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.397406, 37.434505, 32.724178>,  <28.091900, 37.497597, 32.754837>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.397406, 37.434505, 32.724178> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.472881, 37.815620, 32.819328>,  <27.518167, 38.044289, 32.876419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.472881, 37.815620, 32.819328>,  <27.397406, 37.434505, 32.724178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.472881, 37.815620, 32.819328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667355, 0.302113, -0.680710,
		-0.720440, -0.030305, 0.692855,
		0.188691, 0.952791, 0.237878,
		27.529490, 38.101456, 32.890694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.820631, 37.829079, 32.553299>,  <27.397406, 37.434505, 32.724178>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.820631, 37.829079, 32.553299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.057678, 38.148006, 32.599052>,  <27.199905, 38.339363, 32.626503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.057678, 38.148006, 32.599052>,  <26.820631, 37.829079, 32.553299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.057678, 38.148006, 32.599052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531511, 0.493784, -0.688239,
		-0.605229, 0.347065, 0.716410,
		0.592616, 0.797322, 0.114384,
		27.235462, 38.387203, 32.633366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.316397, 38.429073, 32.579048>,  <26.820631, 37.829079, 32.553299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.316397, 38.429073, 32.579048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.673578, 38.576015, 32.474983>,  <26.887888, 38.664181, 32.412544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.673578, 38.576015, 32.474983>,  <26.316397, 38.429073, 32.579048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.673578, 38.576015, 32.474983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427793, 0.512673, -0.744419,
		-0.140090, 0.776026, 0.614946,
		0.892955, 0.367355, -0.260158,
		26.941465, 38.686222, 32.396935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.252003, 39.112816, 32.394772>,  <26.316397, 38.429073, 32.579048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.252003, 39.112816, 32.394772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.584791, 39.033981, 32.187317>,  <26.784464, 38.986679, 32.062843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.584791, 39.033981, 32.187317>,  <26.252003, 39.112816, 32.394772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.584791, 39.033981, 32.187317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401157, 0.432067, -0.807707,
		0.383275, 0.880042, 0.280403,
		0.831969, -0.197088, -0.518636,
		26.834381, 38.974854, 32.031727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.475048, 39.740292, 32.124554>,  <26.252003, 39.112816, 32.394772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.475048, 39.740292, 32.124554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.659641, 39.467770, 31.897270>,  <26.770397, 39.304256, 31.760900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.659641, 39.467770, 31.897270>,  <26.475048, 39.740292, 32.124554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.659641, 39.467770, 31.897270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503675, 0.326039, -0.800006,
		0.730305, 0.655381, -0.192693,
		0.461483, -0.681303, -0.568207,
		26.798086, 39.263378, 31.726809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.668062, 40.086269, 31.554825>,  <26.475048, 39.740292, 32.124554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.668062, 40.086269, 31.554825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.672319, 39.700169, 31.450380>,  <26.674873, 39.468510, 31.387712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.672319, 39.700169, 31.450380>,  <26.668062, 40.086269, 31.554825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.672319, 39.700169, 31.450380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397141, 0.235569, -0.887010,
		0.917696, 0.113140, -0.380833,
		0.010644, -0.965249, -0.261113,
		26.675512, 39.410595, 31.372047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.827269, 40.141193, 30.853270>,  <26.668062, 40.086269, 31.554825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.827269, 40.141193, 30.853270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.669481, 39.775982, 30.894791>,  <26.574810, 39.556854, 30.919703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.669481, 39.775982, 30.894791>,  <26.827269, 40.141193, 30.853270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.669481, 39.775982, 30.894791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361277, 0.050230, -0.931105,
		0.844911, -0.404791, -0.349670,
		-0.394466, -0.913029, 0.103802,
		26.551142, 39.502071, 30.925932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.959620, 39.941029, 30.207474>,  <26.827269, 40.141193, 30.853270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.959620, 39.941029, 30.207474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.683060, 39.699112, 30.365557>,  <26.517124, 39.553963, 30.460407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.683060, 39.699112, 30.365557>,  <26.959620, 39.941029, 30.207474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.683060, 39.699112, 30.365557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373779, -0.168685, -0.912050,
		0.618267, -0.778313, -0.109430,
		-0.691401, -0.604793, 0.395210,
		26.475639, 39.517673, 30.484119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.064894, 39.355675, 29.849051>,  <26.959620, 39.941029, 30.207474>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.064894, 39.355675, 29.849051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.686350, 39.329987, 29.975716>,  <26.459223, 39.314571, 30.051714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.686350, 39.329987, 29.975716>,  <27.064894, 39.355675, 29.849051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.686350, 39.329987, 29.975716> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282294, -0.312456, -0.907018,
		0.157197, -0.947759, 0.277566,
		-0.946361, -0.064225, 0.316664,
		26.402441, 39.310719, 30.070715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.827389, 38.671364, 29.620869>,  <27.064894, 39.355675, 29.849051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.827389, 38.671364, 29.620869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.508408, 38.906097, 29.677006>,  <26.317019, 39.046936, 29.710688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.508408, 38.906097, 29.677006>,  <26.827389, 38.671364, 29.620869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.508408, 38.906097, 29.677006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340879, -0.246243, -0.907285,
		-0.497868, -0.771355, 0.396407,
		-0.797451, 0.586835, 0.140342,
		26.269173, 39.082150, 29.719109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.353016, 38.315533, 29.219027>,  <26.827389, 38.671364, 29.620869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.353016, 38.315533, 29.219027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.216385, 38.677471, 29.320669>,  <26.134407, 38.894634, 29.381655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.216385, 38.677471, 29.320669>,  <26.353016, 38.315533, 29.219027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.216385, 38.677471, 29.320669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405639, 0.101958, -0.908329,
		-0.847810, -0.413341, 0.332216,
		-0.341578, 0.904850, 0.254108,
		26.113911, 38.948925, 29.396902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.639748, 38.265854, 29.070997>,  <26.353016, 38.315533, 29.219027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.639748, 38.265854, 29.070997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.753687, 38.649223, 29.064184>,  <25.822050, 38.879246, 29.060097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.753687, 38.649223, 29.064184>,  <25.639748, 38.265854, 29.070997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.753687, 38.649223, 29.064184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524259, 0.140888, -0.839823,
		-0.802505, 0.248151, 0.542593,
		0.284847, 0.958421, -0.017032,
		25.839142, 38.936749, 29.059074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.055399, 38.607727, 28.946011>,  <25.639748, 38.265854, 29.070997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.055399, 38.607727, 28.946011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.341745, 38.862888, 28.832441>,  <25.513554, 39.015984, 28.764299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.341745, 38.862888, 28.832441>,  <25.055399, 38.607727, 28.946011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.341745, 38.862888, 28.832441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384671, 0.020947, -0.922816,
		-0.582721, 0.769831, 0.260378,
		0.715866, 0.637904, -0.283925,
		25.556505, 39.054260, 28.747263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.301460, 35.856659, 47.449295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.986477, 36.074665, 47.334152>,  <39.797485, 36.205471, 47.265068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.986477, 36.074665, 47.334152>,  <40.301460, 35.856659, 47.449295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.986477, 36.074665, 47.334152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042148, 0.418317, 0.907323,
		0.614925, 0.726612, -0.306436,
		-0.787459, 0.545020, -0.287858,
		39.750240, 36.238171, 47.247795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.479561, 36.524120, 47.724281>,  <40.301460, 35.856659, 47.449295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.479561, 36.524120, 47.724281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.082584, 36.486782, 47.692425>,  <39.844398, 36.464378, 47.673309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.082584, 36.486782, 47.692425>,  <40.479561, 36.524120, 47.724281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082584, 36.486782, 47.692425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103390, 0.286617, 0.952450,
		-0.066081, 0.953487, -0.294102,
		-0.992443, -0.093346, -0.079641,
		39.784851, 36.458778, 47.668533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.248295, 37.234360, 48.034283>,  <40.479561, 36.524120, 47.724281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.248295, 37.234360, 48.034283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.955257, 36.962769, 48.015091>,  <39.779434, 36.799812, 48.003574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.955257, 36.962769, 48.015091>,  <40.248295, 37.234360, 48.034283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.955257, 36.962769, 48.015091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209677, 0.158048, 0.964913,
		-0.647571, 0.716945, -0.258150,
		-0.732590, -0.678977, -0.047980,
		39.735481, 36.759075, 48.000698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631378, 37.547539, 48.469330>,  <40.248295, 37.234360, 48.034283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.631378, 37.547539, 48.469330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.611599, 37.148613, 48.447720>,  <39.599731, 36.909256, 48.434753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.611599, 37.148613, 48.447720>,  <39.631378, 37.547539, 48.469330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.611599, 37.148613, 48.447720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137450, -0.046779, 0.989403,
		-0.989274, 0.056352, -0.134767,
		-0.049451, -0.997315, -0.054022,
		39.596764, 36.849419, 48.431515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019131, 37.321423, 48.880424>,  <39.631378, 37.547539, 48.469330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019131, 37.321423, 48.880424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.264183, 37.007504, 48.842945>,  <39.411213, 36.819153, 48.820457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.264183, 37.007504, 48.842945>,  <39.019131, 37.321423, 48.880424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264183, 37.007504, 48.842945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023654, -0.136705, 0.990329,
		-0.790016, -0.604489, -0.102313,
		0.612630, -0.784796, -0.093700,
		39.447971, 36.772064, 48.814835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584797, 36.767235, 49.106289>,  <39.019131, 37.321423, 48.880424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.584797, 36.767235, 49.106289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.973274, 36.683067, 49.151028>,  <39.206360, 36.632568, 49.177872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.973274, 36.683067, 49.151028>,  <38.584797, 36.767235, 49.106289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973274, 36.683067, 49.151028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121913, -0.035431, 0.991908,
		-0.204751, -0.976969, -0.060063,
		0.971192, -0.210417, 0.111851,
		39.264633, 36.619942, 49.184582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565445, 36.362164, 49.548561>,  <38.584797, 36.767235, 49.106289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565445, 36.362164, 49.548561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.963764, 36.395737, 49.563190>,  <39.202755, 36.415882, 49.571968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.963764, 36.395737, 49.563190>,  <38.565445, 36.362164, 49.548561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963764, 36.395737, 49.563190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039423, 0.032503, 0.998694,
		0.082637, -0.995941, 0.035675,
		0.995800, 0.083936, 0.036577,
		39.262505, 36.420918, 49.574165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869995, 35.868233, 49.973755>,  <38.565445, 36.362164, 49.548561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869995, 35.868233, 49.973755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.186451, 36.111778, 49.950500>,  <39.376324, 36.257904, 49.936546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.186451, 36.111778, 49.950500>,  <38.869995, 35.868233, 49.973755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186451, 36.111778, 49.950500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189013, -0.152983, 0.969985,
		0.581695, -0.778383, -0.236114,
		0.791141, 0.608864, -0.058134,
		39.423794, 36.294437, 49.933060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284233, 35.524849, 50.348701>,  <38.869995, 35.868233, 49.973755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284233, 35.524849, 50.348701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.425297, 35.899136, 50.351906>,  <39.509933, 36.123707, 50.353828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.425297, 35.899136, 50.351906>,  <39.284233, 35.524849, 50.348701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425297, 35.899136, 50.351906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108588, -0.049423, 0.992858,
		0.929431, -0.349269, -0.119037,
		0.352658, 0.935718, 0.008009,
		39.531094, 36.179852, 50.354309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956173, 35.554955, 50.782822>,  <39.284233, 35.524849, 50.348701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956173, 35.554955, 50.782822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.770424, 35.907684, 50.749966>,  <39.658974, 36.119320, 50.730251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.770424, 35.907684, 50.749966>,  <39.956173, 35.554955, 50.782822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770424, 35.907684, 50.749966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020566, 0.081984, 0.996421,
		0.885399, 0.464403, -0.019936,
		-0.464376, 0.881821, -0.082140,
		39.631111, 36.172230, 50.725323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245567, 35.963013, 51.288219>,  <39.956173, 35.554955, 50.782822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.245567, 35.963013, 51.288219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.886288, 36.130661, 51.235199>,  <39.670719, 36.231251, 51.203388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.886288, 36.130661, 51.235199>,  <40.245567, 35.963013, 51.288219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.886288, 36.130661, 51.235199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198517, -0.117719, 0.973002,
		0.392203, 0.900266, 0.188938,
		-0.898202, 0.419122, -0.132549,
		39.616825, 36.256397, 51.195435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.077091, 36.371441, 51.936794>,  <40.245567, 35.963013, 51.288219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.077091, 36.371441, 51.936794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.724827, 36.346230, 51.748978>,  <39.513470, 36.331104, 51.636288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.724827, 36.346230, 51.748978>,  <40.077091, 36.371441, 51.936794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.724827, 36.346230, 51.748978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472608, 0.047994, 0.879965,
		-0.032923, 0.996857, -0.072052,
		-0.880657, -0.063024, -0.469543,
		39.460629, 36.327324, 51.608116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666870, 36.943520, 52.142368>,  <40.077091, 36.371441, 51.936794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.666870, 36.943520, 52.142368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.459164, 36.613869, 52.051880>,  <39.334538, 36.416080, 51.997585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.459164, 36.613869, 52.051880>,  <39.666870, 36.943520, 52.142368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459164, 36.613869, 52.051880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316880, -0.060172, 0.946555,
		-0.793691, 0.563205, -0.229903,
		-0.519271, -0.824124, -0.226226,
		39.303383, 36.366631, 51.984013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966305, 37.010513, 52.275887>,  <39.666870, 36.943520, 52.142368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966305, 37.010513, 52.275887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.098392, 36.636112, 52.324642>,  <39.177647, 36.411472, 52.353893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.098392, 36.636112, 52.324642>,  <38.966305, 37.010513, 52.275887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.098392, 36.636112, 52.324642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367396, -0.008510, 0.930026,
		-0.869467, -0.351896, -0.346693,
		0.330223, -0.936000, 0.121886,
		39.197460, 36.355312, 52.361210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903709, 37.819912, 52.230865>,  <38.966305, 37.010513, 52.275887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.903709, 37.819912, 52.230865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.756615, 38.188862, 52.278179>,  <38.668358, 38.410233, 52.306568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.756615, 38.188862, 52.278179>,  <38.903709, 37.819912, 52.230865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756615, 38.188862, 52.278179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222380, 0.210731, -0.951914,
		-0.902948, -0.323751, -0.282611,
		-0.367738, 0.922376, 0.118283,
		38.646294, 38.465576, 52.313663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334747, 37.933296, 51.706051>,  <38.903709, 37.819912, 52.230865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334747, 37.933296, 51.706051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.434067, 38.307934, 51.804951>,  <38.493660, 38.532719, 51.864288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.434067, 38.307934, 51.804951>,  <38.334747, 37.933296, 51.706051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434067, 38.307934, 51.804951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134182, 0.219523, -0.966336,
		-0.959345, 0.273118, -0.071167,
		0.248301, 0.936598, 0.247246,
		38.508556, 38.588913, 51.879124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784065, 38.308090, 51.333450>,  <38.334747, 37.933296, 51.706051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784065, 38.308090, 51.333450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.118351, 38.503162, 51.434444>,  <38.318924, 38.620205, 51.495041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.118351, 38.503162, 51.434444>,  <37.784065, 38.308090, 51.333450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118351, 38.503162, 51.434444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070493, 0.360698, -0.930015,
		-0.544618, 0.795027, 0.267063,
		0.835716, 0.487677, 0.252486,
		38.369064, 38.649464, 51.510189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717583, 38.896202, 51.050774>,  <37.784065, 38.308090, 51.333450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.717583, 38.896202, 51.050774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.110641, 38.893887, 51.124931>,  <38.346478, 38.892498, 51.169426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.110641, 38.893887, 51.124931>,  <37.717583, 38.896202, 51.050774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110641, 38.893887, 51.124931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176645, 0.334165, -0.925814,
		-0.056590, 0.942497, 0.329389,
		0.982647, -0.005793, 0.185397,
		38.405434, 38.892147, 51.180550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850582, 39.363331, 50.703476>,  <37.717583, 38.896202, 51.050774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850582, 39.363331, 50.703476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.220642, 39.219215, 50.751297>,  <38.442677, 39.132748, 50.779987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.220642, 39.219215, 50.751297>,  <37.850582, 39.363331, 50.703476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220642, 39.219215, 50.751297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207290, 0.215659, -0.954213,
		0.318007, 0.907571, 0.274201,
		0.925150, -0.360285, 0.119549,
		38.498188, 39.111130, 50.787163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345608, 39.937035, 50.507206>,  <37.850582, 39.363331, 50.703476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345608, 39.937035, 50.507206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.529785, 39.582294, 50.491776>,  <38.640293, 39.369450, 50.482517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.529785, 39.582294, 50.491776>,  <38.345608, 39.937035, 50.507206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529785, 39.582294, 50.491776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423630, 0.257714, -0.868401,
		0.780083, 0.383509, 0.494359,
		0.460443, -0.886851, -0.038572,
		38.667919, 39.316238, 50.480206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002316, 40.064598, 50.318363>,  <38.345608, 39.937035, 50.507206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002316, 40.064598, 50.318363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.937401, 39.686802, 50.204102>,  <38.898453, 39.460125, 50.135544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.937401, 39.686802, 50.204102>,  <39.002316, 40.064598, 50.318363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937401, 39.686802, 50.204102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259893, 0.238360, -0.935757,
		0.951903, -0.226098, 0.206784,
		-0.162283, -0.944492, -0.285657,
		38.888718, 39.403454, 50.118404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476089, 39.924767, 49.805584>,  <39.002316, 40.064598, 50.318363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476089, 39.924767, 49.805584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.191284, 39.650047, 49.747143>,  <39.020401, 39.485214, 49.712078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.191284, 39.650047, 49.747143>,  <39.476089, 39.924767, 49.805584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.191284, 39.650047, 49.747143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019410, 0.188739, -0.981835,
		0.701901, -0.701912, -0.121054,
		-0.712010, -0.686802, -0.146100,
		38.977680, 39.444008, 49.703312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771610, 39.388897, 49.300747>,  <39.476089, 39.924767, 49.805584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771610, 39.388897, 49.300747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.377129, 39.323368, 49.291225>,  <39.140442, 39.284050, 49.285515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.377129, 39.323368, 49.291225>,  <39.771610, 39.388897, 49.300747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377129, 39.323368, 49.291225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018035, 0.036580, -0.999168,
		0.164562, -0.985811, -0.033120,
		-0.986202, -0.163827, -0.023799,
		39.081268, 39.274220, 49.284084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638664, 38.757172, 48.852734>,  <39.771610, 39.388897, 49.300747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.638664, 38.757172, 48.852734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.296101, 38.962021, 48.878937>,  <39.090561, 39.084930, 48.894657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.296101, 38.962021, 48.878937>,  <39.638664, 38.757172, 48.852734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.296101, 38.962021, 48.878937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107359, -0.052540, -0.992831,
		-0.505009, -0.857304, 0.099977,
		-0.856411, 0.512122, 0.065506,
		39.039177, 39.115658, 48.898590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210484, 38.406872, 48.364624>,  <39.638664, 38.757172, 48.852734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.210484, 38.406872, 48.364624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.019299, 38.751232, 48.434364>,  <38.904587, 38.957848, 48.476208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.019299, 38.751232, 48.434364>,  <39.210484, 38.406872, 48.364624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.019299, 38.751232, 48.434364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302240, 0.025181, -0.952899,
		-0.824745, -0.508144, 0.248164,
		-0.477961, 0.860904, 0.174350,
		38.875912, 39.009502, 48.486668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495865, 38.343693, 48.202137>,  <39.210484, 38.406872, 48.364624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495865, 38.343693, 48.202137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.628376, 38.717155, 48.147682>,  <38.707882, 38.941235, 48.115009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.628376, 38.717155, 48.147682>,  <38.495865, 38.343693, 48.202137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628376, 38.717155, 48.147682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224705, -0.062066, -0.972448,
		-0.916386, 0.352742, 0.189237,
		0.331278, 0.933660, -0.136139,
		38.727760, 38.997253, 48.106842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090015, 38.589085, 47.751041>,  <38.495865, 38.343693, 48.202137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090015, 38.589085, 47.751041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.354954, 38.885960, 47.710152>,  <38.513916, 39.064087, 47.685619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.354954, 38.885960, 47.710152>,  <38.090015, 38.589085, 47.751041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354954, 38.885960, 47.710152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282549, 0.121087, -0.951580,
		-0.693876, 0.659159, 0.289907,
		0.662346, 0.742191, -0.102225,
		38.553658, 39.108616, 47.679485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731960, 39.242928, 47.458206>,  <38.090015, 38.589085, 47.751041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731960, 39.242928, 47.458206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.122749, 39.255783, 47.373829>,  <38.357224, 39.263496, 47.323204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.122749, 39.255783, 47.373829>,  <37.731960, 39.242928, 47.458206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122749, 39.255783, 47.373829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213307, 0.121469, -0.969405,
		-0.005537, 0.992075, 0.125528,
		0.976969, 0.032143, -0.210944,
		38.415840, 39.265427, 47.310547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453705, 39.866085, 47.609272>,  <37.731960, 39.242928, 47.458206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453705, 39.866085, 47.609272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.062263, 39.944469, 47.634350>,  <36.827396, 39.991501, 47.649399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.062263, 39.944469, 47.634350>,  <37.453705, 39.866085, 47.609272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062263, 39.944469, 47.634350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054920, -0.044882, 0.997482,
		0.198278, 0.979585, 0.033159,
		-0.978606, 0.195957, 0.062698,
		36.768681, 40.003258, 47.653160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422375, 40.280659, 48.165909>,  <37.453705, 39.866085, 47.609272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422375, 40.280659, 48.165909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.037437, 40.173893, 48.145325>,  <36.806473, 40.109833, 48.132973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.037437, 40.173893, 48.145325>,  <37.422375, 40.280659, 48.165909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037437, 40.173893, 48.145325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047440, -0.021502, 0.998643,
		-0.267654, 0.963482, 0.008031,
		-0.962346, -0.266910, -0.051462,
		36.748734, 40.093819, 48.129887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014145, 40.764233, 48.637001>,  <37.422375, 40.280659, 48.165909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014145, 40.764233, 48.637001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.761135, 40.462837, 48.565262>,  <36.609329, 40.282001, 48.522217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.761135, 40.462837, 48.565262>,  <37.014145, 40.764233, 48.637001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761135, 40.462837, 48.565262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297428, 0.022489, 0.954479,
		-0.715154, 0.657078, -0.238333,
		-0.632527, -0.753487, -0.179351,
		36.571377, 40.236790, 48.511456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426132, 40.975292, 48.963779>,  <37.014145, 40.764233, 48.637001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426132, 40.975292, 48.963779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.401703, 40.577972, 48.924545>,  <36.387047, 40.339581, 48.901005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.401703, 40.577972, 48.924545>,  <36.426132, 40.975292, 48.963779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401703, 40.577972, 48.924545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212985, -0.083033, 0.973521,
		-0.975145, 0.080344, -0.206488,
		-0.061072, -0.993303, -0.098081,
		36.383381, 40.279980, 48.895123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729416, 40.765533, 49.232464>,  <36.426132, 40.975292, 48.963779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729416, 40.765533, 49.232464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.992764, 40.464767, 49.246227>,  <36.150772, 40.284309, 49.254486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.992764, 40.464767, 49.246227>,  <35.729416, 40.765533, 49.232464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992764, 40.464767, 49.246227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313295, -0.232184, 0.920835,
		-0.684398, -0.617025, -0.388432,
		0.658366, -0.751911, 0.034405,
		36.190273, 40.239193, 49.256550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274021, 40.260254, 49.425385>,  <35.729416, 40.765533, 49.232464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.274021, 40.260254, 49.425385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.644691, 40.136990, 49.511471>,  <35.867092, 40.063030, 49.563122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.644691, 40.136990, 49.511471>,  <35.274021, 40.260254, 49.425385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644691, 40.136990, 49.511471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251300, -0.082155, 0.964416,
		-0.279511, -0.947781, -0.153571,
		0.926672, -0.308157, 0.215214,
		35.922691, 40.044544, 49.576035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182888, 39.554577, 49.693676>,  <35.274021, 40.260254, 49.425385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182888, 39.554577, 49.693676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.525124, 39.713367, 49.826565>,  <35.730465, 39.808643, 49.906300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.525124, 39.713367, 49.826565>,  <35.182888, 39.554577, 49.693676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525124, 39.713367, 49.826565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281169, -0.182470, 0.942151,
		0.434633, -0.899507, -0.044503,
		0.855592, 0.396978, 0.332221,
		35.781803, 39.832462, 49.926231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698643, 38.981617, 49.476097>,  <35.182888, 39.554577, 49.693676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698643, 38.981617, 49.476097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.327263, 38.981216, 49.624680>,  <34.104435, 38.980976, 49.713829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.327263, 38.981216, 49.624680>,  <34.698643, 38.981617, 49.476097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327263, 38.981216, 49.624680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339032, 0.410889, -0.846302,
		-0.151783, -0.911685, -0.381828,
		-0.928450, -0.000998, 0.371456,
		34.048729, 38.980919, 49.736115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248398, 38.555798, 49.034023>,  <34.698643, 38.981617, 49.476097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248398, 38.555798, 49.034023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.019653, 38.818287, 49.230938>,  <33.882408, 38.975780, 49.349087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.019653, 38.818287, 49.230938>,  <34.248398, 38.555798, 49.034023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019653, 38.818287, 49.230938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288991, 0.400481, -0.869539,
		-0.767762, -0.639523, -0.039378,
		-0.571861, 0.656220, 0.492291,
		33.848095, 39.015152, 49.378624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660706, 38.506371, 48.670784>,  <34.248398, 38.555798, 49.034023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660706, 38.506371, 48.670784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.632618, 38.857639, 48.860046>,  <33.615765, 39.068401, 48.973602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.632618, 38.857639, 48.860046>,  <33.660706, 38.506371, 48.670784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632618, 38.857639, 48.860046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275920, 0.438721, -0.855215,
		-0.958613, -0.190603, 0.211501,
		-0.070216, 0.878177, 0.473155,
		33.611553, 39.121094, 49.001991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091805, 38.848221, 48.504097>,  <33.660706, 38.506371, 48.670784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091805, 38.848221, 48.504097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.308464, 39.159241, 48.631866>,  <33.438457, 39.345852, 48.708527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.308464, 39.159241, 48.631866>,  <33.091805, 38.848221, 48.504097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308464, 39.159241, 48.631866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322340, 0.543067, -0.775355,
		-0.776347, 0.317005, 0.544787,
		0.541647, 0.777551, 0.319425,
		33.470959, 39.392506, 48.727695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.836170, 39.463230, 48.146927>,  <33.091805, 38.848221, 48.504097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.836170, 39.463230, 48.146927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.189949, 39.632488, 48.225613>,  <33.402218, 39.734043, 48.272823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.189949, 39.632488, 48.225613>,  <32.836170, 39.463230, 48.146927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189949, 39.632488, 48.225613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072181, 0.540536, -0.838219,
		-0.461022, 0.727162, 0.508619,
		0.884448, 0.423150, 0.196712,
		33.455284, 39.759434, 48.284626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.726330, 40.110207, 47.908607>,  <32.836170, 39.463230, 48.146927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.726330, 40.110207, 47.908607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.124065, 40.083191, 47.941433>,  <33.362705, 40.066982, 47.961128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.124065, 40.083191, 47.941433>,  <32.726330, 40.110207, 47.908607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124065, 40.083191, 47.941433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104974, 0.503530, -0.857577,
		0.016599, 0.861334, 0.507768,
		0.994336, -0.067537, 0.082060,
		33.422367, 40.062931, 47.966049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995312, 40.729340, 47.678776>,  <32.726330, 40.110207, 47.908607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995312, 40.729340, 47.678776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.316418, 40.491474, 47.661140>,  <33.509083, 40.348755, 47.650558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.316418, 40.491474, 47.661140>,  <32.995312, 40.729340, 47.678776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316418, 40.491474, 47.661140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319490, 0.491360, -0.810241,
		0.503482, 0.636348, 0.584436,
		0.802765, -0.594664, -0.044084,
		33.557247, 40.313076, 47.647915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.089760, 37.562382, 50.522835> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.838402, 37.791531, 50.312332>,  <35.687588, 37.929020, 50.186031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.838402, 37.791531, 50.312332>,  <36.089760, 37.562382, 50.522835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.838402, 37.791531, 50.312332> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762458, -0.587703, 0.270672,
		-0.154220, 0.571334, 0.806098,
		-0.628390, 0.572873, -0.526253,
		35.649883, 37.963394, 50.154457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082291, 36.880291, 50.494061>,  <36.089760, 37.562382, 50.522835>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082291, 36.880291, 50.494061> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.814625, 36.746113, 50.228821>,  <35.654026, 36.665607, 50.069679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.814625, 36.746113, 50.228821>,  <36.082291, 36.880291, 50.494061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814625, 36.746113, 50.228821> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626793, -0.224554, 0.746127,
		-0.399184, 0.914907, -0.059990,
		-0.669166, -0.335443, -0.663095,
		35.613876, 36.645481, 50.029892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750595, 36.916138, 50.090233>,  <36.082291, 36.880291, 50.494061>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750595, 36.916138, 50.090233> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.799877, 36.542351, 50.223854>,  <36.829445, 36.318077, 50.304028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.799877, 36.542351, 50.223854>,  <36.750595, 36.916138, 50.090233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.799877, 36.542351, 50.223854> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078736, -0.326349, -0.941964,
		0.989253, 0.142354, 0.033369,
		0.123203, -0.934469, 0.334050,
		36.836838, 36.262009, 50.324070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117802, 36.562698, 49.568840>,  <36.750595, 36.916138, 50.090233>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117802, 36.562698, 49.568840> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.036610, 36.223457, 49.764599>,  <36.987896, 36.019913, 49.882053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.036610, 36.223457, 49.764599>,  <37.117802, 36.562698, 49.568840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036610, 36.223457, 49.764599> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075171, -0.484834, -0.871369,
		0.976293, -0.213660, 0.034658,
		-0.202980, -0.848107, 0.489402,
		36.975716, 35.969025, 49.911419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569649, 36.054272, 49.312687>,  <37.117802, 36.562698, 49.568840>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.569649, 36.054272, 49.312687> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.293900, 35.822956, 49.487202>,  <37.128452, 35.684166, 49.591911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.293900, 35.822956, 49.487202>,  <37.569649, 36.054272, 49.312687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293900, 35.822956, 49.487202> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155777, -0.469835, -0.868901,
		0.707462, -0.666957, 0.233805,
		-0.689370, -0.578293, 0.436287,
		37.087090, 35.649467, 49.618088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778599, 35.420380, 49.099316>,  <37.569649, 36.054272, 49.312687>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778599, 35.420380, 49.099316> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.396069, 35.399757, 49.214409>,  <37.166550, 35.387383, 49.283466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.396069, 35.399757, 49.214409>,  <37.778599, 35.420380, 49.099316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396069, 35.399757, 49.214409> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218245, -0.528900, -0.820143,
		0.194468, -0.847117, 0.494546,
		-0.956322, -0.051559, 0.287732,
		37.109173, 35.384289, 49.300728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636269, 34.934460, 48.726391>,  <37.778599, 35.420380, 49.099316>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636269, 34.934460, 48.726391> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.270290, 35.051914, 48.837139>,  <37.050705, 35.122387, 48.903587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.270290, 35.051914, 48.837139>,  <37.636269, 34.934460, 48.726391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270290, 35.051914, 48.837139> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372842, -0.352362, -0.858388,
		-0.154491, -0.888606, 0.431870,
		-0.914943, 0.293632, 0.276873,
		36.995808, 35.140003, 48.920200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234974, 34.390102, 48.508408>,  <37.636269, 34.934460, 48.726391>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234974, 34.390102, 48.508408> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.015327, 34.723007, 48.538887>,  <36.883537, 34.922749, 48.557175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.015327, 34.723007, 48.538887>,  <37.234974, 34.390102, 48.508408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015327, 34.723007, 48.538887> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307979, -0.116753, -0.944202,
		-0.776928, -0.541947, 0.320431,
		-0.549119, 0.832263, 0.076199,
		36.850590, 34.972687, 48.561749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619267, 34.193470, 48.195309>,  <37.234974, 34.390102, 48.508408>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619267, 34.193470, 48.195309> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.636971, 34.592972, 48.186146>,  <36.647594, 34.832672, 48.180649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.636971, 34.592972, 48.186146>,  <36.619267, 34.193470, 48.195309>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636971, 34.592972, 48.186146> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238964, -0.011681, -0.970958,
		-0.970019, 0.048452, 0.238150,
		0.044263, 0.998757, -0.022909,
		36.650249, 34.892597, 48.179272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078526, 34.319069, 47.862938>,  <36.619267, 34.193470, 48.195309>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078526, 34.319069, 47.862938> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.285255, 34.660160, 47.832623>,  <36.409294, 34.864815, 47.814434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.285255, 34.660160, 47.832623>,  <36.078526, 34.319069, 47.862938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285255, 34.660160, 47.832623> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137718, -0.004561, -0.990461,
		-0.844940, 0.522334, 0.115079,
		0.516826, 0.852729, -0.075789,
		36.440304, 34.915977, 47.809887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693142, 34.791649, 47.403923>,  <36.078526, 34.319069, 47.862938>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693142, 34.791649, 47.403923> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.069973, 34.925228, 47.391438>,  <36.296070, 35.005375, 47.383945>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.069973, 34.925228, 47.391438>,  <35.693142, 34.791649, 47.403923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069973, 34.925228, 47.391438> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043636, 0.029753, -0.998604,
		-0.332553, 0.942122, 0.042601,
		0.942075, 0.333948, -0.031216,
		36.352596, 35.025414, 47.382072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671894, 35.250267, 46.942104>,  <35.693142, 34.791649, 47.403923>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671894, 35.250267, 46.942104> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.069218, 35.204109, 46.943661>,  <36.307613, 35.176414, 46.944595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.069218, 35.204109, 46.943661>,  <35.671894, 35.250267, 46.942104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069218, 35.204109, 46.943661> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005100, 0.010147, -0.999936,
		0.115345, 0.993268, 0.010668,
		0.993312, -0.115392, 0.003895,
		36.367210, 35.169491, 46.944828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408924, 36.066227, 46.942719>,  <35.671894, 35.250267, 46.942104>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408924, 36.066227, 46.942719> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.018848, 36.114368, 46.868393>,  <34.784805, 36.143253, 46.823799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.018848, 36.114368, 46.868393>,  <35.408924, 36.066227, 46.942719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018848, 36.114368, 46.868393> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194206, -0.062117, 0.978992,
		0.106281, 0.990786, 0.083948,
		-0.975186, 0.120351, -0.185815,
		34.726292, 36.150475, 46.812649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304379, 36.582497, 47.375885>,  <35.408924, 36.066227, 46.942719>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304379, 36.582497, 47.375885> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.938316, 36.431995, 47.318027>,  <34.718678, 36.341694, 47.283314>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.938316, 36.431995, 47.318027>,  <35.304379, 36.582497, 47.375885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938316, 36.431995, 47.318027> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115316, -0.099466, 0.988336,
		-0.386254, 0.921162, 0.047638,
		-0.915156, -0.376255, -0.144644,
		34.663769, 36.319118, 47.274635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836414, 36.907997, 47.952950>,  <35.304379, 36.582497, 47.375885>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836414, 36.907997, 47.952950> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.624004, 36.592316, 47.829552>,  <34.496559, 36.402908, 47.755512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.624004, 36.592316, 47.829552>,  <34.836414, 36.907997, 47.952950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624004, 36.592316, 47.829552> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287658, -0.174544, 0.941694,
		-0.797035, 0.588804, -0.134333,
		-0.531026, -0.789205, -0.308491,
		34.464695, 36.355553, 47.737003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105980, 37.054787, 48.244930>,  <34.836414, 36.907997, 47.952950>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105980, 37.054787, 48.244930> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.154442, 36.663597, 48.176945>,  <34.183517, 36.428883, 48.136154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.154442, 36.663597, 48.176945>,  <34.105980, 37.054787, 48.244930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154442, 36.663597, 48.176945> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393570, -0.204523, 0.896255,
		-0.911276, -0.041692, -0.409680,
		0.121156, -0.977974, -0.169968,
		34.190788, 36.370205, 48.125954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564827, 36.788280, 48.214573>,  <34.105980, 37.054787, 48.244930>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564827, 36.788280, 48.214573> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.749527, 36.447258, 48.312492>,  <33.860348, 36.242645, 48.371243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.749527, 36.447258, 48.312492>,  <33.564827, 36.788280, 48.214573>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749527, 36.447258, 48.312492> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581239, -0.082356, 0.809555,
		-0.670035, -0.516098, -0.533570,
		0.461752, -0.852561, 0.244795,
		33.888054, 36.191490, 48.385929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004623, 36.390568, 48.596767>,  <33.564827, 36.788280, 48.214573>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004623, 36.390568, 48.596767> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.352551, 36.200695, 48.650574>,  <33.561306, 36.086769, 48.682858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.352551, 36.200695, 48.650574>,  <33.004623, 36.390568, 48.596767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352551, 36.200695, 48.650574> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341557, -0.382591, 0.858466,
		-0.356034, -0.792653, -0.494915,
		0.869815, -0.474685, 0.134521,
		33.613495, 36.058289, 48.690929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809959, 35.725788, 48.829636>,  <33.004623, 36.390568, 48.596767>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.809959, 35.725788, 48.829636> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.188004, 35.736095, 48.959934>,  <33.414829, 35.742279, 49.038113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.188004, 35.736095, 48.959934>,  <32.809959, 35.725788, 48.829636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.188004, 35.736095, 48.959934> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298960, -0.334202, 0.893830,
		0.131900, -0.942149, -0.308152,
		0.945106, 0.025771, 0.325746,
		33.471535, 35.743828, 49.057659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880009, 35.126751, 49.341152>,  <32.809959, 35.725788, 48.829636>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880009, 35.126751, 49.341152> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.155190, 35.403652, 49.428341>,  <33.320297, 35.569794, 49.480656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.155190, 35.403652, 49.428341>,  <32.880009, 35.126751, 49.341152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.155190, 35.403652, 49.428341> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085862, -0.220598, 0.971578,
		0.720661, -0.687114, -0.092323,
		0.687951, 0.692251, 0.217973,
		33.361576, 35.611328, 49.493732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408085, 34.755157, 49.669010>,  <32.880009, 35.126751, 49.341152>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408085, 34.755157, 49.669010> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.434521, 35.140270, 49.773842>,  <33.450382, 35.371338, 49.836742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.434521, 35.140270, 49.773842>,  <33.408085, 34.755157, 49.669010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.434521, 35.140270, 49.773842> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144720, -0.250629, 0.957205,
		0.987263, -0.101187, 0.122770,
		0.066087, 0.962780, 0.262081,
		33.454346, 35.429104, 49.852467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.790478, 34.798092, 50.327209>,  <33.408085, 34.755157, 49.669010>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.790478, 34.798092, 50.327209> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.645657, 35.170879, 50.334648>,  <33.558762, 35.394554, 50.339111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.645657, 35.170879, 50.334648>,  <33.790478, 34.798092, 50.327209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645657, 35.170879, 50.334648> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237203, -0.111406, 0.965051,
		0.901471, 0.344993, 0.261402,
		-0.362057, 0.931970, 0.018596,
		33.537041, 35.450470, 50.340225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043865, 35.163456, 51.008518>,  <33.790478, 34.798092, 50.327209>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043865, 35.163456, 51.008518> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.747749, 35.404114, 50.888523>,  <33.570080, 35.548508, 50.816525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.747749, 35.404114, 50.888523>,  <34.043865, 35.163456, 51.008518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747749, 35.404114, 50.888523> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181627, 0.250648, 0.950887,
		0.647287, 0.758420, -0.076278,
		-0.740291, 0.601643, -0.299991,
		33.525661, 35.584606, 50.798527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144936, 35.855515, 51.199398>,  <34.043865, 35.163456, 51.008518>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144936, 35.855515, 51.199398> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.749210, 35.798313, 51.188068>,  <33.511776, 35.763992, 51.181271>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.749210, 35.798313, 51.188068>,  <34.144936, 35.855515, 51.199398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749210, 35.798313, 51.188068> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081575, 0.382003, 0.920554,
		-0.120822, 0.913030, -0.389588,
		-0.989317, -0.143003, -0.028326,
		33.452415, 35.755413, 51.179569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965248, 36.516552, 51.389233>,  <34.144936, 35.855515, 51.199398>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965248, 36.516552, 51.389233> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.653488, 36.271858, 51.443378>,  <33.466434, 36.125042, 51.475868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.653488, 36.271858, 51.443378>,  <33.965248, 36.516552, 51.389233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.653488, 36.271858, 51.443378> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285616, 0.539216, 0.792256,
		-0.557642, 0.578818, -0.594983,
		-0.779396, -0.611732, 0.135369,
		33.419670, 36.088337, 51.483990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267467, 36.852688, 51.268074>,  <33.965248, 36.516552, 51.389233>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267467, 36.852688, 51.268074> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.261986, 36.597038, 51.575668>,  <33.258698, 36.443649, 51.760223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.261986, 36.597038, 51.575668>,  <33.267467, 36.852688, 51.268074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.261986, 36.597038, 51.575668> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123678, 0.764235, 0.632968,
		-0.992228, -0.086435, -0.089515,
		-0.013700, -0.639119, 0.768986,
		33.257877, 36.405304, 51.806362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449348, 37.021137, 51.984489>,  <33.267467, 36.852688, 51.268074>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.449348, 37.021137, 51.984489> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.735989, 37.277206, 52.095245>,  <33.907974, 37.430847, 52.161697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.735989, 37.277206, 52.095245>,  <33.449348, 37.021137, 51.984489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735989, 37.277206, 52.095245> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221199, 0.585076, -0.780229,
		-0.661481, 0.497864, 0.560870,
		0.716599, 0.640170, 0.276890,
		33.950970, 37.469257, 52.178314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.083336, 37.545345, 51.992458>,  <33.449348, 37.021137, 51.984489>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.083336, 37.545345, 51.992458> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.468613, 37.648552, 51.962273>,  <33.699780, 37.710476, 51.944160>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.468613, 37.648552, 51.962273>,  <33.083336, 37.545345, 51.992458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.468613, 37.648552, 51.962273> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215432, 0.572904, -0.790804,
		-0.160808, 0.777951, 0.607399,
		0.963187, 0.258021, -0.075468,
		33.757568, 37.725960, 51.939632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.044601, 38.302349, 51.781338>,  <33.083336, 37.545345, 51.992458>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.044601, 38.302349, 51.781338> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.429260, 38.205791, 51.729244>,  <33.660057, 38.147858, 51.697990>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.429260, 38.205791, 51.729244>,  <33.044601, 38.302349, 51.781338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429260, 38.205791, 51.729244> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015907, 0.523094, -0.852126,
		0.273820, 0.817375, 0.506873,
		0.961649, -0.241392, -0.130232,
		33.717754, 38.133373, 51.690174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418159, 38.908707, 51.602058>,  <33.044601, 38.302349, 51.781338>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418159, 38.908707, 51.602058> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.643440, 38.612534, 51.455330>,  <33.778610, 38.434830, 51.367294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.643440, 38.612534, 51.455330>,  <33.418159, 38.908707, 51.602058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643440, 38.612534, 51.455330> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135119, 0.520465, -0.843124,
		0.815196, 0.425287, 0.393175,
		0.563204, -0.740437, -0.366817,
		33.812401, 38.390404, 51.345284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982548, 39.321911, 51.283634>,  <33.418159, 38.908707, 51.602058>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.982548, 39.321911, 51.283634> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.998936, 38.958294, 51.117760>,  <34.008766, 38.740124, 51.018234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.998936, 38.958294, 51.117760>,  <33.982548, 39.321911, 51.283634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998936, 38.958294, 51.117760> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354348, 0.401280, -0.844638,
		0.934216, -0.112342, 0.338555,
		0.040967, -0.909040, -0.414690,
		34.011227, 38.685581, 50.993351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545261, 39.340557, 50.857666>,  <33.982548, 39.321911, 51.283634>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.545261, 39.340557, 50.857666> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.308529, 39.041195, 50.737919>,  <34.166489, 38.861576, 50.666069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.308529, 39.041195, 50.737919>,  <34.545261, 39.340557, 50.857666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308529, 39.041195, 50.737919> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029704, 0.350900, -0.935942,
		0.805514, -0.562812, -0.185443,
		-0.591832, -0.748406, -0.299373,
		34.130978, 38.816673, 50.648106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812340, 39.203846, 50.202057>,  <34.545261, 39.340557, 50.857666>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812340, 39.203846, 50.202057> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.436676, 39.066456, 50.201443>,  <34.211277, 38.984024, 50.201077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.436676, 39.066456, 50.201443>,  <34.812340, 39.203846, 50.202057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436676, 39.066456, 50.201443> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150943, 0.416723, -0.896414,
		0.308529, -0.841647, -0.443215,
		-0.939162, -0.343470, -0.001530,
		34.154926, 38.963413, 50.200985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539665, 38.989460, 50.226894>,  <34.812340, 39.203846, 50.202057>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539665, 38.989460, 50.226894> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.759602, 39.311413, 50.316196>,  <35.891563, 39.504585, 50.369778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.759602, 39.311413, 50.316196>,  <35.539665, 38.989460, 50.226894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.759602, 39.311413, 50.316196> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159683, -0.363650, 0.917747,
		0.819865, -0.468963, -0.328475,
		0.549839, 0.804880, 0.223259,
		35.924553, 39.552876, 50.383175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075619, 38.735870, 50.573338>,  <35.539665, 38.989460, 50.226894>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075619, 38.735870, 50.573338> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.043404, 39.123608, 50.666195>,  <36.024075, 39.356251, 50.721909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.043404, 39.123608, 50.666195>,  <36.075619, 38.735870, 50.573338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043404, 39.123608, 50.666195> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092957, -0.224579, 0.970012,
		0.992408, 0.099700, -0.072020,
		-0.080536, 0.969342, 0.232142,
		36.019241, 39.414410, 50.735836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467659, 38.703140, 51.150387>,  <36.075619, 38.735870, 50.573338>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467659, 38.703140, 51.150387> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.291607, 39.061333, 51.176899>,  <36.185974, 39.276249, 51.192806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.291607, 39.061333, 51.176899>,  <36.467659, 38.703140, 51.150387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291607, 39.061333, 51.176899> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106580, -0.021194, 0.994078,
		0.891587, 0.444588, -0.086112,
		-0.440130, 0.895485, 0.066281,
		36.159569, 39.329979, 51.196785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022694, 39.047840, 51.408314>,  <36.467659, 38.703140, 51.150387>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022694, 39.047840, 51.408314> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.676735, 39.230152, 51.492428>,  <36.469158, 39.339539, 51.542896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.676735, 39.230152, 51.492428>,  <37.022694, 39.047840, 51.408314>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676735, 39.230152, 51.492428> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230581, -0.011362, 0.972987,
		0.445855, 0.890021, -0.095267,
		-0.864896, 0.455778, 0.210288,
		36.417267, 39.366886, 51.555515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201645, 39.484360, 51.962990>,  <37.022694, 39.047840, 51.408314>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201645, 39.484360, 51.962990> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.803173, 39.465652, 51.992493>,  <36.564091, 39.454430, 52.010197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.803173, 39.465652, 51.992493>,  <37.201645, 39.484360, 51.962990>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803173, 39.465652, 51.992493> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066190, 0.146728, 0.986960,
		-0.056982, 0.988070, -0.143071,
		-0.996179, -0.046769, 0.073761,
		36.504318, 39.451622, 52.014622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979229, 40.025646, 52.444080>,  <37.201645, 39.484360, 51.962990>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979229, 40.025646, 52.444080> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.700485, 39.738991, 52.432590>,  <36.533241, 39.566998, 52.425697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.700485, 39.738991, 52.432590>,  <36.979229, 40.025646, 52.444080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700485, 39.738991, 52.432590> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053261, -0.091646, 0.994366,
		-0.715229, 0.691401, 0.102033,
		-0.696857, -0.716634, -0.028723,
		36.491428, 39.524002, 52.423973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301411, 40.117710, 52.873150>,  <36.979229, 40.025646, 52.444080>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301411, 40.117710, 52.873150> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.301456, 39.721405, 52.818897>,  <36.301483, 39.483624, 52.786346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.301456, 39.721405, 52.818897>,  <36.301411, 40.117710, 52.873150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301456, 39.721405, 52.818897> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070640, -0.135297, 0.988284,
		-0.997502, 0.009470, -0.070002,
		0.000112, -0.990760, -0.135628,
		36.301491, 39.424175, 52.778210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940788, 39.827309, 53.465584>,  <36.301411, 40.117710, 52.873150>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940788, 39.827309, 53.465584> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.090950, 39.495766, 53.299656>,  <36.181046, 39.296841, 53.200100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.090950, 39.495766, 53.299656>,  <35.940788, 39.827309, 53.465584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.090950, 39.495766, 53.299656> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174106, -0.376521, 0.909900,
		-0.910361, -0.413804, 0.002960,
		0.375405, -0.828853, -0.414816,
		36.203571, 39.247108, 53.175213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538368, 39.363239, 53.746300>,  <35.940788, 39.827309, 53.465584>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538368, 39.363239, 53.746300> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.899597, 39.226330, 53.642532>,  <36.116337, 39.144184, 53.580273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.899597, 39.226330, 53.642532>,  <35.538368, 39.363239, 53.746300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899597, 39.226330, 53.642532> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180172, -0.246384, 0.952278,
		-0.389862, -0.906719, -0.160835,
		0.903076, -0.342279, -0.259421,
		36.170521, 39.123646, 53.564705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.610970, 39.897179, 37.780754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.539879, 40.191933, 37.519859>,  <35.497223, 40.368786, 37.363323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.539879, 40.191933, 37.519859>,  <35.610970, 39.897179, 37.780754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539879, 40.191933, 37.519859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899555, -0.390394, -0.195943,
		-0.399017, 0.551897, 0.732254,
		-0.177727, 0.736887, -0.652235,
		35.486561, 40.412998, 37.324188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821644, 39.188812, 37.544655>,  <35.610970, 39.897179, 37.780754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821644, 39.188812, 37.544655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.197750, 39.310246, 37.606289>,  <36.423412, 39.383106, 37.643269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.197750, 39.310246, 37.606289>,  <35.821644, 39.188812, 37.544655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197750, 39.310246, 37.606289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235946, 0.254796, 0.937768,
		0.245414, -0.918110, 0.311202,
		0.940267, 0.303568, 0.154094,
		36.479828, 39.401318, 37.652515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190746, 38.779018, 38.029480>,  <35.821644, 39.188812, 37.544655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190746, 38.779018, 38.029480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366425, 39.138374, 38.027969>,  <36.471832, 39.353989, 38.027065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366425, 39.138374, 38.027969>,  <36.190746, 38.779018, 38.029480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366425, 39.138374, 38.027969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253609, 0.128007, 0.958800,
		0.861855, -0.420139, 0.284058,
		0.439191, 0.898386, -0.003772,
		36.498180, 39.407890, 38.026836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691097, 38.686974, 38.596405>,  <36.190746, 38.779018, 38.029480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691097, 38.686974, 38.596405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.616432, 39.074581, 38.531700>,  <36.571632, 39.307144, 38.492878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.616432, 39.074581, 38.531700>,  <36.691097, 38.686974, 38.596405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616432, 39.074581, 38.531700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131843, 0.138462, 0.981553,
		0.973538, 0.204545, 0.101913,
		-0.186660, 0.969015, -0.161766,
		36.560432, 39.365284, 38.483170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072018, 38.977745, 39.059975>,  <36.691097, 38.686974, 38.596405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072018, 38.977745, 39.059975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.817921, 39.269539, 38.958534>,  <36.665462, 39.444614, 38.897671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.817921, 39.269539, 38.958534>,  <37.072018, 38.977745, 39.059975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817921, 39.269539, 38.958534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259353, 0.107798, 0.959748,
		0.727461, 0.675446, 0.120716,
		-0.635245, 0.729487, -0.253598,
		36.627346, 39.488384, 38.882454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293869, 39.626820, 39.482807>,  <37.072018, 38.977745, 39.059975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293869, 39.626820, 39.482807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.906212, 39.666840, 39.392700>,  <36.673618, 39.690853, 39.338634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.906212, 39.666840, 39.392700>,  <37.293869, 39.626820, 39.482807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906212, 39.666840, 39.392700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169813, 0.391423, 0.904407,
		0.178660, 0.914756, -0.362356,
		-0.969146, 0.100049, -0.225269,
		36.615467, 39.696854, 39.325119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127056, 40.348270, 39.778080>,  <37.293869, 39.626820, 39.482807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127056, 40.348270, 39.778080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.765945, 40.184235, 39.726192>,  <36.549278, 40.085812, 39.695061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.765945, 40.184235, 39.726192>,  <37.127056, 40.348270, 39.778080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765945, 40.184235, 39.726192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304801, 0.397159, 0.865656,
		-0.303474, 0.821031, -0.483540,
		-0.902773, -0.410088, -0.129724,
		36.495113, 40.061207, 39.687275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622143, 40.861591, 39.862602>,  <37.127056, 40.348270, 39.778080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622143, 40.861591, 39.862602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.428638, 40.517155, 39.925209>,  <36.312534, 40.310493, 39.962772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.428638, 40.517155, 39.925209>,  <36.622143, 40.861591, 39.862602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428638, 40.517155, 39.925209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406944, 0.379635, 0.830827,
		-0.774835, 0.338232, -0.534069,
		-0.483763, -0.861090, 0.156513,
		36.283508, 40.258827, 39.972164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046013, 41.135525, 40.170456>,  <36.622143, 40.861591, 39.862602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046013, 41.135525, 40.170456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019676, 40.748234, 40.266960>,  <36.003872, 40.515862, 40.324863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019676, 40.748234, 40.266960>,  <36.046013, 41.135525, 40.170456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019676, 40.748234, 40.266960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571944, 0.234748, 0.785986,
		-0.817646, -0.086235, -0.569226,
		-0.065845, -0.968224, 0.241263,
		35.999924, 40.457767, 40.339340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358902, 40.964195, 40.450466>,  <36.046013, 41.135525, 40.170456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358902, 40.964195, 40.450466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.562710, 40.649498, 40.589851>,  <35.684994, 40.460678, 40.673485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.562710, 40.649498, 40.589851>,  <35.358902, 40.964195, 40.450466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562710, 40.649498, 40.589851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388654, 0.150890, 0.908945,
		-0.767686, -0.598554, -0.228890,
		0.509516, -0.786743, 0.348466,
		35.715565, 40.413475, 40.694393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948563, 40.562263, 40.746113>,  <35.358902, 40.964195, 40.450466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948563, 40.562263, 40.746113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.293194, 40.464222, 40.923923>,  <35.499973, 40.405396, 41.030609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.293194, 40.464222, 40.923923>,  <34.948563, 40.562263, 40.746113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.293194, 40.464222, 40.923923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416187, 0.160314, 0.895035,
		-0.290644, -0.956150, 0.036112,
		0.861577, -0.245107, 0.444531,
		35.551666, 40.390690, 41.057281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730530, 40.260399, 41.429470>,  <34.948563, 40.562263, 40.746113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730530, 40.260399, 41.429470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117413, 40.350834, 41.475769>,  <35.349541, 40.405094, 41.503548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117413, 40.350834, 41.475769>,  <34.730530, 40.260399, 41.429470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117413, 40.350834, 41.475769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158997, 0.183551, 0.970066,
		0.198090, -0.956654, 0.213481,
		0.967202, 0.226104, 0.115745,
		35.407574, 40.418663, 41.510494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379135, 39.746418, 41.744720>,  <34.730530, 40.260399, 41.429470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379135, 39.746418, 41.744720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065197, 39.993584, 41.763500>,  <33.876835, 40.141884, 41.774769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065197, 39.993584, 41.763500>,  <34.379135, 39.746418, 41.744720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065197, 39.993584, 41.763500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386816, -0.429309, -0.816129,
		-0.484143, -0.658693, 0.575959,
		-0.784843, 0.617914, 0.046946,
		33.829742, 40.178955, 41.777584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908657, 39.414120, 41.280464>,  <34.379135, 39.746418, 41.744720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908657, 39.414120, 41.280464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732815, 39.770660, 41.324722>,  <33.627308, 39.984585, 41.351276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732815, 39.770660, 41.324722>,  <33.908657, 39.414120, 41.280464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732815, 39.770660, 41.324722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536397, -0.161723, -0.828326,
		-0.720432, -0.423492, 0.549211,
		-0.439609, 0.891348, 0.110649,
		33.600933, 40.038063, 41.357918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218918, 39.338249, 41.103054>,  <33.908657, 39.414120, 41.280464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218918, 39.338249, 41.103054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300098, 39.725494, 41.044312>,  <33.348808, 39.957840, 41.009068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300098, 39.725494, 41.044312>,  <33.218918, 39.338249, 41.103054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300098, 39.725494, 41.044312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542165, -0.013784, -0.840159,
		-0.815393, 0.250132, 0.522080,
		0.202954, 0.968114, -0.146852,
		33.360985, 40.015930, 41.000256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574986, 39.627113, 40.843685>,  <33.218918, 39.338249, 41.103054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574986, 39.627113, 40.843685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.852047, 39.897194, 40.742233>,  <33.018284, 40.059242, 40.681362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.852047, 39.897194, 40.742233>,  <32.574986, 39.627113, 40.843685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.852047, 39.897194, 40.742233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502201, 0.199077, -0.841524,
		-0.517709, 0.710259, 0.476980,
		0.692656, 0.675204, -0.253629,
		33.059845, 40.099754, 40.666145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135281, 40.147388, 40.560368>,  <32.574986, 39.627113, 40.843685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.135281, 40.147388, 40.560368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.501801, 40.227509, 40.421646>,  <32.721714, 40.275581, 40.338413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.501801, 40.227509, 40.421646>,  <32.135281, 40.147388, 40.560368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501801, 40.227509, 40.421646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384266, 0.195751, -0.902231,
		-0.112827, 0.959981, 0.256335,
		0.916302, 0.200296, -0.346802,
		32.776691, 40.287598, 40.317604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.011158, 40.698479, 39.990993>,  <32.135281, 40.147388, 40.560368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.011158, 40.698479, 39.990993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377335, 40.555206, 39.917591>,  <32.597038, 40.469242, 39.873550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377335, 40.555206, 39.917591>,  <32.011158, 40.698479, 39.990993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377335, 40.555206, 39.917591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201785, -0.013977, -0.979330,
		0.348214, 0.933547, -0.085071,
		0.915440, -0.358183, -0.183508,
		32.651966, 40.447750, 39.862537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189960, 41.069065, 39.394814>,  <32.011158, 40.698479, 39.990993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189960, 41.069065, 39.394814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.442921, 40.759331, 39.403465>,  <32.594696, 40.573490, 39.408657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.442921, 40.759331, 39.403465>,  <32.189960, 41.069065, 39.394814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.442921, 40.759331, 39.403465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041733, -0.061944, -0.997207,
		0.773514, 0.629734, -0.071489,
		0.632403, -0.774337, 0.021634,
		32.632641, 40.527031, 39.409954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570591, 41.119480, 38.774559>,  <32.189960, 41.069065, 39.394814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.570591, 41.119480, 38.774559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682453, 40.742340, 38.847031>,  <32.749569, 40.516056, 38.890514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682453, 40.742340, 38.847031>,  <32.570591, 41.119480, 38.774559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682453, 40.742340, 38.847031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032267, -0.197832, -0.979705,
		0.959559, 0.268129, -0.085747,
		0.279651, -0.942852, 0.181180,
		32.766350, 40.459484, 38.901386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.086044, 40.946827, 38.375866>,  <32.570591, 41.119480, 38.774559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.086044, 40.946827, 38.375866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922741, 40.595005, 38.473602>,  <32.824757, 40.383911, 38.532246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922741, 40.595005, 38.473602>,  <33.086044, 40.946827, 38.375866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922741, 40.595005, 38.473602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195577, -0.345724, -0.917728,
		0.891668, -0.326886, 0.313167,
		-0.408261, -0.879557, 0.244339,
		32.800262, 40.331139, 38.546906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573853, 40.445244, 38.173309>,  <33.086044, 40.946827, 38.375866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573853, 40.445244, 38.173309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.205986, 40.288239, 38.168289>,  <32.985268, 40.194035, 38.165276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.205986, 40.288239, 38.168289>,  <33.573853, 40.445244, 38.173309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205986, 40.288239, 38.168289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209447, -0.463198, -0.861150,
		0.332197, -0.794596, 0.508195,
		-0.919661, -0.392511, -0.012553,
		32.930088, 40.170486, 38.164524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733372, 39.732986, 38.117035>,  <33.573853, 40.445244, 38.173309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.733372, 39.732986, 38.117035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.354073, 39.766361, 37.994488>,  <33.126492, 39.786385, 37.920959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.354073, 39.766361, 37.994488>,  <33.733372, 39.732986, 38.117035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.354073, 39.766361, 37.994488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155434, -0.719381, -0.677001,
		-0.276886, -0.689586, 0.669183,
		-0.948248, 0.083438, -0.306371,
		33.069599, 39.791393, 37.902576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586990, 39.140400, 37.713432>,  <33.733372, 39.732986, 38.117035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.586990, 39.140400, 37.713432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287979, 39.384010, 37.607380>,  <33.108574, 39.530174, 37.543747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287979, 39.384010, 37.607380>,  <33.586990, 39.140400, 37.713432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287979, 39.384010, 37.607380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038718, -0.438432, -0.897930,
		-0.663102, -0.660961, 0.351320,
		-0.747526, 0.609021, -0.265135,
		33.063721, 39.566715, 37.527840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057190, 38.671951, 37.216854>,  <33.586990, 39.140400, 37.713432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057190, 38.671951, 37.216854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009315, 39.066219, 37.169296>,  <32.980591, 39.302780, 37.140762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009315, 39.066219, 37.169296>,  <33.057190, 38.671951, 37.216854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009315, 39.066219, 37.169296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124018, -0.103977, -0.986817,
		-0.985035, -0.132857, -0.109796,
		-0.119690, 0.985666, -0.118898,
		32.973408, 39.361919, 37.133625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627823, 38.717216, 36.671009>,  <33.057190, 38.671951, 37.216854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627823, 38.717216, 36.671009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857494, 39.044579, 36.680279>,  <32.995296, 39.240993, 36.685841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857494, 39.044579, 36.680279>,  <32.627823, 38.717216, 36.671009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857494, 39.044579, 36.680279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038772, 0.001092, -0.999247,
		-0.817811, 0.574645, -0.031104,
		0.574179, 0.818402, 0.023173,
		33.029747, 39.290100, 36.687229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591682, 37.888798, 36.809891>,  <32.627823, 38.717216, 36.671009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591682, 37.888798, 36.809891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781059, 38.081524, 36.514946>,  <32.894688, 38.197159, 36.337978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781059, 38.081524, 36.514946>,  <32.591682, 37.888798, 36.809891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781059, 38.081524, 36.514946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791406, 0.134818, 0.596239,
		0.386686, -0.865840, -0.317482,
		0.473445, 0.481814, -0.737363,
		32.923092, 38.226067, 36.293736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326019, 37.802273, 36.948898>,  <32.591682, 37.888798, 36.809891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326019, 37.802273, 36.948898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325294, 38.109520, 36.692776>,  <33.324860, 38.293869, 36.539101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325294, 38.109520, 36.692776>,  <33.326019, 37.802273, 36.948898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325294, 38.109520, 36.692776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718749, 0.446187, 0.533214,
		0.695268, -0.459250, -0.552894,
		-0.001815, 0.768119, -0.640305,
		33.324749, 38.339954, 36.500683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868443, 37.275818, 36.836193>,  <33.326019, 37.802273, 36.948898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868443, 37.275818, 36.836193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133034, 36.976467, 36.816704>,  <34.291790, 36.796856, 36.805012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133034, 36.976467, 36.816704>,  <33.868443, 37.275818, 36.836193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133034, 36.976467, 36.816704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136066, 0.055872, 0.989123,
		-0.737518, -0.660912, 0.138787,
		0.661478, -0.748381, -0.048721,
		34.331478, 36.751953, 36.802086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642113, 36.668629, 37.233971>,  <33.868443, 37.275818, 36.836193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642113, 36.668629, 37.233971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.040436, 36.695621, 37.209282>,  <34.279430, 36.711819, 37.194469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.040436, 36.695621, 37.209282>,  <33.642113, 36.668629, 37.233971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040436, 36.695621, 37.209282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059898, 0.028696, 0.997792,
		0.069109, -0.997307, 0.024534,
		0.995809, 0.067486, -0.061719,
		34.339180, 36.715866, 37.190765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964100, 36.121937, 37.583439>,  <33.642113, 36.668629, 37.233971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964100, 36.121937, 37.583439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206299, 36.439613, 37.603931>,  <34.351620, 36.630219, 37.616226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206299, 36.439613, 37.603931>,  <33.964100, 36.121937, 37.583439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206299, 36.439613, 37.603931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159275, 0.057853, 0.985538,
		0.779746, -0.604901, 0.161525,
		0.605498, 0.794196, 0.051235,
		34.387947, 36.677872, 37.619301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249817, 36.111099, 38.236980>,  <33.964100, 36.121937, 37.583439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249817, 36.111099, 38.236980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367958, 36.479595, 38.135715>,  <34.438843, 36.700691, 38.074959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367958, 36.479595, 38.135715>,  <34.249817, 36.111099, 38.236980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367958, 36.479595, 38.135715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027540, 0.256661, 0.966109,
		0.954991, -0.292317, 0.050435,
		0.295354, 0.921236, -0.253159,
		34.456566, 36.755966, 38.059769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783813, 36.226990, 38.664108>,  <34.249817, 36.111099, 38.236980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783813, 36.226990, 38.664108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659721, 36.587849, 38.544186>,  <34.585266, 36.804363, 38.472233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659721, 36.587849, 38.544186>,  <34.783813, 36.226990, 38.664108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659721, 36.587849, 38.544186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024240, 0.322772, 0.946166,
		0.950353, 0.286259, -0.122001,
		-0.310227, 0.902149, -0.299809,
		34.566654, 36.858494, 38.454243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350925, 36.662998, 38.826221>,  <34.783813, 36.226990, 38.664108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350925, 36.662998, 38.826221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992191, 36.839062, 38.808525>,  <34.776951, 36.944698, 38.797905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992191, 36.839062, 38.808525>,  <35.350925, 36.662998, 38.826221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992191, 36.839062, 38.808525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022997, 0.146270, 0.988977,
		0.441775, 0.885928, -0.141302,
		-0.896831, 0.440155, -0.044245,
		34.723141, 36.971107, 38.795250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492100, 37.208775, 39.176193>,  <35.350925, 36.662998, 38.826221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492100, 37.208775, 39.176193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092678, 37.230194, 39.174057>,  <34.853027, 37.243046, 39.172775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092678, 37.230194, 39.174057>,  <35.492100, 37.208775, 39.176193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092678, 37.230194, 39.174057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005947, 0.208479, 0.978009,
		0.053489, 0.976560, -0.208496,
		-0.998551, 0.053553, -0.005344,
		34.793114, 37.246262, 39.172455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338280, 37.847019, 39.465240>,  <35.492100, 37.208775, 39.176193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338280, 37.847019, 39.465240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011101, 37.623688, 39.520702>,  <34.814793, 37.489689, 39.553978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011101, 37.623688, 39.520702>,  <35.338280, 37.847019, 39.465240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011101, 37.623688, 39.520702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046209, 0.176476, 0.983220,
		-0.573429, 0.810633, -0.118549,
		-0.817951, -0.558328, 0.138655,
		34.765717, 37.456188, 39.562298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763672, 38.126450, 39.853931>,  <35.338280, 37.847019, 39.465240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763672, 38.126450, 39.853931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701145, 37.733501, 39.894955>,  <34.663628, 37.497734, 39.919567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701145, 37.733501, 39.894955>,  <34.763672, 38.126450, 39.853931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701145, 37.733501, 39.894955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080888, 0.116215, 0.989925,
		-0.984389, 0.146449, -0.097628,
		-0.156319, -0.982368, 0.102555,
		34.654251, 37.438789, 39.925720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.241776, 38.007378, 40.307892>,  <34.763672, 38.126450, 39.853931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.241776, 38.007378, 40.307892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464909, 37.676117, 40.329788>,  <34.598789, 37.477360, 40.342926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464909, 37.676117, 40.329788>,  <34.241776, 38.007378, 40.307892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464909, 37.676117, 40.329788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093921, 0.128524, 0.987249,
		-0.824625, -0.545574, 0.149475,
		0.557828, -0.828149, 0.054744,
		34.632256, 37.427673, 40.346210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836216, 37.510769, 40.752071>,  <34.241776, 38.007378, 40.307892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836216, 37.510769, 40.752071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.209751, 37.367950, 40.743401>,  <34.433872, 37.282261, 40.738197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.209751, 37.367950, 40.743401>,  <33.836216, 37.510769, 40.752071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209751, 37.367950, 40.743401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044273, 0.055225, 0.997492,
		-0.354950, -0.932454, 0.067379,
		0.933836, -0.357043, -0.021680,
		34.489902, 37.260838, 40.736897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862236, 37.086174, 41.361027>,  <33.836216, 37.510769, 40.752071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862236, 37.086174, 41.361027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.248871, 37.107544, 41.260746>,  <34.480854, 37.120365, 41.200577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.248871, 37.107544, 41.260746>,  <33.862236, 37.086174, 41.361027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248871, 37.107544, 41.260746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253532, -0.055235, 0.965749,
		0.037747, -0.997043, -0.066934,
		0.966590, 0.053424, -0.250697,
		34.538849, 37.123569, 41.185535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192299, 36.623146, 41.802982>,  <33.862236, 37.086174, 41.361027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192299, 36.623146, 41.802982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506077, 36.844242, 41.690468>,  <34.694344, 36.976898, 41.622959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506077, 36.844242, 41.690468>,  <34.192299, 36.623146, 41.802982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506077, 36.844242, 41.690468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287459, 0.077847, 0.954624,
		0.549558, -0.829709, -0.097824,
		0.784445, 0.552742, -0.281289,
		34.741409, 37.010063, 41.606083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778374, 36.309658, 42.052200>,  <34.192299, 36.623146, 41.802982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778374, 36.309658, 42.052200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896858, 36.687016, 41.992508>,  <34.967949, 36.913429, 41.956692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896858, 36.687016, 41.992508>,  <34.778374, 36.309658, 42.052200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896858, 36.687016, 41.992508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391752, 0.022494, 0.919796,
		0.871084, -0.330920, -0.362912,
		0.296216, 0.943391, -0.149232,
		34.985722, 36.970032, 41.947739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472843, 36.373211, 42.294685>,  <34.778374, 36.309658, 42.052200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472843, 36.373211, 42.294685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.324093, 36.744461, 42.301594>,  <35.234844, 36.967209, 42.305740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.324093, 36.744461, 42.301594>,  <35.472843, 36.373211, 42.294685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324093, 36.744461, 42.301594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398867, 0.142962, 0.905796,
		0.838220, 0.343732, -0.423361,
		-0.371876, 0.928122, 0.017270,
		35.212528, 37.022896, 42.306774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821716, 36.617580, 42.878708>,  <35.472843, 36.373211, 42.294685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821716, 36.617580, 42.878708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563126, 36.908760, 42.787361>,  <35.407970, 37.083469, 42.732552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563126, 36.908760, 42.787361>,  <35.821716, 36.617580, 42.878708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563126, 36.908760, 42.787361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116529, 0.201605, 0.972510,
		0.753983, 0.655316, -0.045505,
		-0.646476, 0.727954, -0.228370,
		35.369183, 37.127148, 42.718849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013889, 37.223427, 43.286175>,  <35.821716, 36.617580, 42.878708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013889, 37.223427, 43.286175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.627090, 37.270687, 43.195873>,  <35.395012, 37.299042, 43.141693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.627090, 37.270687, 43.195873>,  <36.013889, 37.223427, 43.286175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627090, 37.270687, 43.195873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210893, 0.126093, 0.969342,
		0.142991, 0.984958, -0.097015,
		-0.966994, 0.118147, -0.225751,
		35.336990, 37.306129, 43.128147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878868, 37.788036, 43.695850>,  <36.013889, 37.223427, 43.286175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878868, 37.788036, 43.695850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561935, 37.562695, 43.602173>,  <35.371777, 37.427490, 43.545967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561935, 37.562695, 43.602173>,  <35.878868, 37.788036, 43.695850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561935, 37.562695, 43.602173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205498, -0.114992, 0.971878,
		-0.574446, 0.818171, -0.024657,
		-0.792328, -0.563358, -0.234189,
		35.324238, 37.393688, 43.531918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416103, 38.026287, 44.124722>,  <35.878868, 37.788036, 43.695850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416103, 38.026287, 44.124722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.255833, 37.677277, 44.012897>,  <35.159668, 37.467869, 43.945805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.255833, 37.677277, 44.012897>,  <35.416103, 38.026287, 44.124722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.255833, 37.677277, 44.012897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215830, -0.206648, 0.954313,
		-0.890435, 0.442710, -0.105518,
		-0.400679, -0.872528, -0.279556,
		35.135628, 37.415520, 43.929031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598820, 38.013649, 44.325310>,  <35.416103, 38.026287, 44.124722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598820, 38.013649, 44.325310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.748711, 37.647682, 44.265308>,  <34.838646, 37.428101, 44.229305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.748711, 37.647682, 44.265308>,  <34.598820, 38.013649, 44.325310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.748711, 37.647682, 44.265308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225094, -0.246736, 0.942578,
		-0.899395, -0.319445, -0.298402,
		0.374729, -0.914919, -0.150007,
		34.861130, 37.373207, 44.220306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020142, 37.516602, 44.526966>,  <34.598820, 38.013649, 44.325310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020142, 37.516602, 44.526966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351601, 37.293655, 44.547707>,  <34.550476, 37.159889, 44.560150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351601, 37.293655, 44.547707>,  <34.020142, 37.516602, 44.526966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351601, 37.293655, 44.547707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356389, -0.453869, 0.816695,
		-0.431657, -0.695235, -0.574735,
		0.828649, -0.557361, 0.051859,
		34.600197, 37.126446, 44.563263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.773071, 36.932014, 44.790470>,  <34.020142, 37.516602, 44.526966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.773071, 36.932014, 44.790470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167603, 36.880367, 44.831432>,  <34.404320, 36.849380, 44.856010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167603, 36.880367, 44.831432>,  <33.773071, 36.932014, 44.790470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167603, 36.880367, 44.831432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158781, -0.578191, 0.800302,
		-0.044123, -0.805620, -0.590787,
		0.986328, -0.129118, 0.102406,
		34.463501, 36.841633, 44.862152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873909, 36.258568, 45.077957>,  <33.773071, 36.932014, 44.790470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873909, 36.258568, 45.077957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228130, 36.433498, 45.140625>,  <34.440662, 36.538456, 45.178226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228130, 36.433498, 45.140625>,  <33.873909, 36.258568, 45.077957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228130, 36.433498, 45.140625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077559, -0.471711, 0.878335,
		0.458019, -0.765661, -0.451644,
		0.885552, 0.437324, 0.156669,
		34.493797, 36.564697, 45.187626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379459, 35.723038, 45.171654>,  <33.873909, 36.258568, 45.077957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379459, 35.723038, 45.171654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482365, 36.057854, 45.364807>,  <34.544106, 36.258743, 45.480698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482365, 36.057854, 45.364807>,  <34.379459, 35.723038, 45.171654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482365, 36.057854, 45.364807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062837, -0.513135, 0.856005,
		0.964297, -0.189872, -0.184607,
		0.257260, 0.837043, 0.482884,
		34.559544, 36.308968, 45.509674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811749, 35.482422, 45.770191>,  <34.379459, 35.723038, 45.171654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811749, 35.482422, 45.770191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724148, 35.858284, 45.875332>,  <34.671585, 36.083801, 45.938416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724148, 35.858284, 45.875332>,  <34.811749, 35.482422, 45.770191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724148, 35.858284, 45.875332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166834, -0.229359, 0.958937,
		0.961355, 0.253864, -0.106535,
		-0.219005, 0.939653, 0.262849,
		34.658447, 36.140179, 45.954185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266106, 35.636101, 46.351524>,  <34.811749, 35.482422, 45.770191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266106, 35.636101, 46.351524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.962826, 35.896492, 46.366295>,  <34.780857, 36.052727, 46.375156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.962826, 35.896492, 46.366295>,  <35.266106, 35.636101, 46.351524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962826, 35.896492, 46.366295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076897, -0.145511, 0.986364,
		0.647470, 0.745023, 0.160384,
		-0.758202, 0.650974, 0.036924,
		34.735367, 36.091785, 46.377373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014988, 35.721737, 46.310516>,  <35.266106, 35.636101, 46.351524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014988, 35.721737, 46.310516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.315826, 35.477383, 46.409443>,  <36.496330, 35.330769, 46.468800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.315826, 35.477383, 46.409443>,  <36.014988, 35.721737, 46.310516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315826, 35.477383, 46.409443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131549, -0.228555, -0.964602,
		0.645789, 0.758009, -0.091534,
		0.752098, -0.610889, 0.247313,
		36.541454, 35.294117, 46.483635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.617226, 35.941219, 45.922932>,  <36.014988, 35.721737, 46.310516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.617226, 35.941219, 45.922932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.668278, 35.557995, 46.025566>,  <36.698910, 35.328060, 46.087147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.668278, 35.557995, 46.025566>,  <36.617226, 35.941219, 45.922932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668278, 35.557995, 46.025566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382060, -0.191244, -0.904133,
		0.915282, 0.213422, 0.341628,
		0.127627, -0.958059, 0.256583,
		36.706566, 35.270576, 46.102539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174927, 35.754311, 45.575577>,  <36.617226, 35.941219, 45.922932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174927, 35.754311, 45.575577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970795, 35.418453, 45.649948>,  <36.848316, 35.216938, 45.694572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970795, 35.418453, 45.649948>,  <37.174927, 35.754311, 45.575577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970795, 35.418453, 45.649948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123886, -0.285726, -0.950270,
		0.851009, -0.461916, 0.249834,
		-0.510329, -0.839639, 0.185931,
		36.817696, 35.166561, 45.705727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567661, 35.254448, 45.277287>,  <37.174927, 35.754311, 45.575577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567661, 35.254448, 45.277287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.216675, 35.068981, 45.326374>,  <37.006081, 34.957699, 45.355827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.216675, 35.068981, 45.326374>,  <37.567661, 35.254448, 45.277287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216675, 35.068981, 45.326374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178574, -0.553291, -0.813622,
		0.445153, -0.692012, 0.568294,
		-0.877468, -0.463669, 0.122724,
		36.953434, 34.929882, 45.363190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675694, 34.505459, 45.280399>,  <37.567661, 35.254448, 45.277287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675694, 34.505459, 45.280399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.301277, 34.600792, 45.176849>,  <37.076626, 34.657990, 45.114719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.301277, 34.600792, 45.176849>,  <37.675694, 34.505459, 45.280399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301277, 34.600792, 45.176849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082871, -0.565701, -0.820436,
		-0.341982, -0.789418, 0.509771,
		-0.936046, 0.238330, -0.258879,
		37.020462, 34.672291, 45.099186>
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
