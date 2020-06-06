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
	<24.583250, 34.897839, 34.654144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.243633, 34.949738, 34.859001>,  <24.039864, 34.980877, 34.981915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.243633, 34.949738, 34.859001>,  <24.583250, 34.897839, 34.654144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.243633, 34.949738, 34.859001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509059, 0.460285, 0.727322,
		-0.141366, 0.878239, -0.456850,
		-0.849043, 0.129744, 0.512144,
		23.988920, 34.988663, 35.012646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.496010, 35.560455, 34.701164>,  <24.583250, 34.897839, 34.654144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.496010, 35.560455, 34.701164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.343475, 35.378277, 35.022949>,  <24.251955, 35.268970, 35.216019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.343475, 35.378277, 35.022949>,  <24.496010, 35.560455, 34.701164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.343475, 35.378277, 35.022949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490032, 0.638306, 0.593662,
		-0.783870, 0.620595, -0.020228,
		-0.381336, -0.455442, 0.804460,
		24.229074, 35.241646, 35.264286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.390100, 36.207100, 35.154537>,  <24.496010, 35.560455, 34.701164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.390100, 36.207100, 35.154537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.432850, 35.883183, 35.385296>,  <24.458500, 35.688831, 35.523750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.432850, 35.883183, 35.385296>,  <24.390100, 36.207100, 35.154537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.432850, 35.883183, 35.385296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359769, 0.572402, 0.736832,
		-0.926900, 0.128802, 0.352514,
		0.106874, -0.809794, 0.576899,
		24.464912, 35.640244, 35.558365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.897596, 36.299114, 35.827332>,  <24.390100, 36.207100, 35.154537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.897596, 36.299114, 35.827332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.245220, 36.103386, 35.856434>,  <24.453794, 35.985947, 35.873894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.245220, 36.103386, 35.856434>,  <23.897596, 36.299114, 35.827332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.245220, 36.103386, 35.856434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276078, 0.601759, 0.749444,
		-0.410504, -0.631227, 0.658057,
		0.869061, -0.489325, 0.072757,
		24.505939, 35.956589, 35.878262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.017366, 36.175686, 36.512001>,  <23.897596, 36.299114, 35.827332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.017366, 36.175686, 36.512001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.349417, 36.196861, 36.289978>,  <24.548647, 36.209568, 36.156765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.349417, 36.196861, 36.289978>,  <24.017366, 36.175686, 36.512001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.349417, 36.196861, 36.289978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414955, 0.606267, 0.678419,
		0.372426, -0.793497, 0.481312,
		0.830127, 0.052938, -0.555055,
		24.598455, 36.212742, 36.123463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.624880, 36.047764, 36.940144>,  <24.017366, 36.175686, 36.512001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.624880, 36.047764, 36.940144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.746616, 36.240829, 36.611652>,  <24.819658, 36.356670, 36.414558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.746616, 36.240829, 36.611652>,  <24.624880, 36.047764, 36.940144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.746616, 36.240829, 36.611652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589675, 0.581613, 0.560366,
		0.748103, -0.654800, -0.107604,
		0.304344, 0.482663, -0.821226,
		24.837919, 36.385628, 36.365284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.491615, 36.080952, 36.870476>,  <24.624880, 36.047764, 36.940144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.491615, 36.080952, 36.870476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.341602, 36.391205, 36.667400>,  <25.251595, 36.577358, 36.545555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.341602, 36.391205, 36.667400>,  <25.491615, 36.080952, 36.870476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.341602, 36.391205, 36.667400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612638, 0.618392, 0.492206,
		0.695721, -0.126436, -0.707097,
		-0.375030, 0.775632, -0.507687,
		25.229094, 36.623894, 36.515095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.041761, 36.453369, 36.681404>,  <25.491615, 36.080952, 36.870476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.041761, 36.453369, 36.681404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.744038, 36.716461, 36.635094>,  <25.565403, 36.874317, 36.607307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.744038, 36.716461, 36.635094>,  <26.041761, 36.453369, 36.681404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.744038, 36.716461, 36.635094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570752, 0.716488, 0.401106,
		0.346769, 0.232468, -0.908686,
		-0.744307, 0.657726, -0.115774,
		25.520746, 36.913780, 36.600361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.307991, 37.066456, 36.472263>,  <26.041761, 36.453369, 36.681404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.307991, 37.066456, 36.472263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.944464, 37.194942, 36.578747>,  <25.726347, 37.272034, 36.642639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.944464, 37.194942, 36.578747>,  <26.307991, 37.066456, 36.472263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.944464, 37.194942, 36.578747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401585, 0.846477, 0.349581,
		-0.113048, 0.424612, -0.898290,
		-0.908818, 0.321220, 0.266210,
		25.671818, 37.291309, 36.658611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.301519, 37.675274, 36.202663>,  <26.307991, 37.066456, 36.472263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.301519, 37.675274, 36.202663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.027992, 37.695236, 36.493839>,  <25.863876, 37.707214, 36.668545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.027992, 37.695236, 36.493839>,  <26.301519, 37.675274, 36.202663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.027992, 37.695236, 36.493839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513515, 0.741673, 0.431536,
		-0.518358, 0.668902, -0.532799,
		-0.683818, 0.049910, 0.727944,
		25.822847, 37.710209, 36.712223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.077675, 38.364559, 36.232201>,  <26.301519, 37.675274, 36.202663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.077675, 38.364559, 36.232201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.023560, 38.180126, 36.582993>,  <25.991091, 38.069466, 36.793468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.023560, 38.180126, 36.582993>,  <26.077675, 38.364559, 36.232201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.023560, 38.180126, 36.582993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493338, 0.736250, 0.463199,
		-0.859253, 0.495313, 0.127866,
		-0.135287, -0.461086, 0.876981,
		25.982973, 38.041801, 36.846088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.982216, 38.900623, 36.686237>,  <26.077675, 38.364559, 36.232201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.982216, 38.900623, 36.686237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.067463, 38.586777, 36.919117>,  <26.118610, 38.398468, 37.058846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.067463, 38.586777, 36.919117>,  <25.982216, 38.900623, 36.686237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.067463, 38.586777, 36.919117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620041, 0.569133, 0.540034,
		-0.755070, 0.245900, 0.607784,
		0.213115, -0.784615, 0.582204,
		26.131397, 38.351391, 37.093777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.923899, 39.201714, 37.383041>,  <25.982216, 38.900623, 36.686237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.923899, 39.201714, 37.383041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.139555, 38.868431, 37.432175>,  <26.268950, 38.668461, 37.461655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.139555, 38.868431, 37.432175>,  <25.923899, 39.201714, 37.383041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.139555, 38.868431, 37.432175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568780, 0.467771, 0.676520,
		-0.621140, -0.294877, 0.726108,
		0.539143, -0.833209, 0.122832,
		26.301298, 38.618469, 37.469025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.956945, 39.108219, 38.095009>,  <25.923899, 39.201714, 37.383041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.956945, 39.108219, 38.095009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.258146, 38.876759, 37.969696>,  <26.438868, 38.737881, 37.894508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.258146, 38.876759, 37.969696>,  <25.956945, 39.108219, 38.095009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.258146, 38.876759, 37.969696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579089, 0.356668, 0.733106,
		-0.312476, -0.733450, 0.603664,
		0.753003, -0.578654, -0.313283,
		26.484047, 38.703163, 37.875710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.143169, 38.675831, 38.607426>,  <25.956945, 39.108219, 38.095009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.143169, 38.675831, 38.607426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.452000, 38.740246, 38.361511>,  <26.637299, 38.778896, 38.213963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.452000, 38.740246, 38.361511>,  <26.143169, 38.675831, 38.607426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.452000, 38.740246, 38.361511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500387, 0.442346, 0.744273,
		0.391802, -0.882268, 0.260946,
		0.772077, 0.161034, -0.614788,
		26.683622, 38.788555, 38.177074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.566507, 38.195232, 38.946480>,  <26.143169, 38.675831, 38.607426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.566507, 38.195232, 38.946480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.777308, 38.476364, 38.755356>,  <26.903788, 38.645042, 38.640682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.777308, 38.476364, 38.755356>,  <26.566507, 38.195232, 38.946480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.777308, 38.476364, 38.755356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573172, 0.121182, 0.810425,
		0.627492, -0.700961, -0.338980,
		0.526998, 0.702829, -0.477812,
		26.935408, 38.687214, 38.612011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.210794, 38.143246, 39.294060>,  <26.566507, 38.195232, 38.946480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.210794, 38.143246, 39.294060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.210438, 38.480206, 39.078522>,  <27.210224, 38.682381, 38.949200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.210438, 38.480206, 39.078522>,  <27.210794, 38.143246, 39.294060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.210438, 38.480206, 39.078522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587617, 0.436445, 0.681339,
		0.809139, -0.316026, -0.495400,
		-0.000894, 0.842403, -0.538847,
		27.210169, 38.732925, 38.916866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.854801, 38.268196, 39.193977>,  <27.210794, 38.143246, 39.294060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.854801, 38.268196, 39.193977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.681786, 38.626183, 39.150253>,  <27.577976, 38.840973, 39.124020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.681786, 38.626183, 39.150253>,  <27.854801, 38.268196, 39.193977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.681786, 38.626183, 39.150253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619071, 0.382948, 0.685640,
		0.655483, 0.228894, -0.719687,
		-0.432541, 0.894963, -0.109314,
		27.552023, 38.894672, 39.117458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.495070, 38.650497, 39.252491>,  <27.854801, 38.268196, 39.193977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.495070, 38.650497, 39.252491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.202404, 38.922363, 39.273376>,  <28.026804, 39.085484, 39.285908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.202404, 38.922363, 39.273376>,  <28.495070, 38.650497, 39.252491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.202404, 38.922363, 39.273376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543418, 0.535318, 0.646631,
		0.411541, 0.501490, -0.761014,
		-0.731663, 0.679664, 0.052214,
		27.982904, 39.126263, 39.289040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.829180, 39.280365, 39.227371>,  <28.495070, 38.650497, 39.252491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.829180, 39.280365, 39.227371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.471636, 39.383678, 39.373962>,  <28.257109, 39.445667, 39.461918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.471636, 39.383678, 39.373962>,  <28.829180, 39.280365, 39.227371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.471636, 39.383678, 39.373962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447557, 0.562552, 0.695146,
		-0.026614, 0.785381, -0.618440,
		-0.893859, 0.258287, 0.366475,
		28.203478, 39.461166, 39.483906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.841145, 40.027721, 39.318447>,  <28.829180, 39.280365, 39.227371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.841145, 40.027721, 39.318447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.555220, 39.864933, 39.545925>,  <28.383665, 39.767258, 39.682411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.555220, 39.864933, 39.545925>,  <28.841145, 40.027721, 39.318447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.555220, 39.864933, 39.545925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372618, 0.466508, 0.802201,
		-0.591776, 0.785330, -0.181820,
		-0.714813, -0.406973, 0.568696,
		28.340776, 39.742840, 39.716534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.639748, 40.592194, 39.839512>,  <28.841145, 40.027721, 39.318447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.639748, 40.592194, 39.839512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.516527, 40.243050, 39.990891>,  <28.442595, 40.033562, 40.081718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.516527, 40.243050, 39.990891>,  <28.639748, 40.592194, 39.839512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.516527, 40.243050, 39.990891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422374, 0.230964, 0.876502,
		-0.852470, 0.429853, 0.297525,
		-0.308049, -0.872859, 0.378448,
		28.424112, 39.981194, 40.104424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.375366, 40.836170, 40.391094>,  <28.639748, 40.592194, 39.839512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.375366, 40.836170, 40.391094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.456490, 40.451496, 40.464890>,  <28.505163, 40.220692, 40.509167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.456490, 40.451496, 40.464890>,  <28.375366, 40.836170, 40.391094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.456490, 40.451496, 40.464890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534125, 0.266550, 0.802285,
		-0.820719, -0.064170, 0.567717,
		0.202808, -0.961683, 0.184488,
		28.517332, 40.162991, 40.520237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.999571, 40.655262, 41.003704>,  <28.375366, 40.836170, 40.391094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.999571, 40.655262, 41.003704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.302769, 40.397758, 40.961712>,  <28.484688, 40.243256, 40.936516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.302769, 40.397758, 40.961712>,  <27.999571, 40.655262, 41.003704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.302769, 40.397758, 40.961712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372779, 0.295489, 0.879615,
		-0.535240, -0.705876, 0.463959,
		0.757993, -0.643759, -0.104978,
		28.530167, 40.204632, 40.930218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.008781, 40.339722, 41.684158>,  <27.999571, 40.655262, 41.003704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.008781, 40.339722, 41.684158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.356329, 40.292904, 41.491756>,  <28.564857, 40.264812, 41.376316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.356329, 40.292904, 41.491756>,  <28.008781, 40.339722, 41.684158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.356329, 40.292904, 41.491756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494997, 0.217907, 0.841127,
		0.006368, -0.968926, 0.247268,
		0.868871, -0.117041, -0.481004,
		28.616991, 40.257793, 41.347454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.378021, 39.804626, 42.044346>,  <28.008781, 40.339722, 41.684158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.378021, 39.804626, 42.044346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.630960, 40.055637, 41.862644>,  <28.782724, 40.206245, 41.753624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.630960, 40.055637, 41.862644>,  <28.378021, 39.804626, 42.044346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.630960, 40.055637, 41.862644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465213, 0.161266, 0.870385,
		0.619445, -0.761712, -0.189957,
		0.632349, 0.627526, -0.454253,
		28.820665, 40.243896, 41.726368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.036570, 39.592548, 42.212555>,  <28.378021, 39.804626, 42.044346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.036570, 39.592548, 42.212555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.049498, 39.977489, 42.104610>,  <29.057255, 40.208454, 42.039845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.049498, 39.977489, 42.104610>,  <29.036570, 39.592548, 42.212555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.049498, 39.977489, 42.104610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612652, 0.194255, 0.766108,
		0.789691, -0.190094, -0.583311,
		0.032321, 0.962356, -0.269863,
		29.059195, 40.266197, 42.023651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.657652, 39.043285, 42.610100>,  <29.036570, 39.592548, 42.212555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.657652, 39.043285, 42.610100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.447523, 39.054199, 42.269913>,  <28.321445, 39.060749, 42.065800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.447523, 39.054199, 42.269913>,  <28.657652, 39.043285, 42.610100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.447523, 39.054199, 42.269913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230972, 0.966532, -0.111659,
		0.818955, -0.255091, -0.514044,
		-0.525324, 0.027286, -0.850465,
		28.289927, 39.062386, 42.014774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.099823, 39.056595, 43.215614>,  <28.657652, 39.043285, 42.610100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.099823, 39.056595, 43.215614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.973743, 39.213905, 43.561096>,  <27.898096, 39.308292, 43.768383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.973743, 39.213905, 43.561096>,  <28.099823, 39.056595, 43.215614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.973743, 39.213905, 43.561096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739158, 0.469075, -0.483338,
		-0.595227, -0.790759, 0.142844,
		-0.315199, 0.393280, 0.863702,
		27.879183, 39.331890, 43.820206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.354980, 39.320019, 43.153477>,  <28.099823, 39.056595, 43.215614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.354980, 39.320019, 43.153477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.526905, 39.499981, 43.466614>,  <27.630060, 39.607956, 43.654495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.526905, 39.499981, 43.466614>,  <27.354980, 39.320019, 43.153477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.526905, 39.499981, 43.466614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506926, 0.837717, -0.203115,
		-0.747185, -0.309543, 0.588130,
		0.429813, 0.449903, 0.782845,
		27.655849, 39.634953, 43.701466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.972977, 39.419704, 43.843616>,  <27.354980, 39.320019, 43.153477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.972977, 39.419704, 43.843616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.907045, 39.059914, 44.005489>,  <26.867487, 38.844040, 44.102615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.907045, 39.059914, 44.005489>,  <26.972977, 39.419704, 43.843616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.907045, 39.059914, 44.005489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956351, 0.246126, 0.157527,
		-0.241296, -0.361057, -0.900786,
		-0.164830, -0.899477, 0.404686,
		26.857595, 38.790070, 44.126896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.211721, 39.320526, 43.820400>,  <26.972977, 39.419704, 43.843616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.211721, 39.320526, 43.820400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.373518, 39.134369, 44.135311>,  <26.470596, 39.022675, 44.324257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.373518, 39.134369, 44.135311>,  <26.211721, 39.320526, 43.820400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.373518, 39.134369, 44.135311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808885, 0.219609, 0.545415,
		-0.426723, -0.857429, -0.287617,
		0.404491, -0.465390, 0.787273,
		26.494865, 38.994751, 44.371494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.040440, 38.761936, 43.437469>,  <26.211721, 39.320526, 43.820400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.040440, 38.761936, 43.437469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.326048, 38.560829, 43.632362>,  <26.497414, 38.440163, 43.749298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.326048, 38.560829, 43.632362>,  <26.040440, 38.761936, 43.437469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.326048, 38.560829, 43.632362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052494, -0.655517, -0.753354,
		0.698152, 0.563489, -0.441661,
		0.714022, -0.502771, 0.487230,
		26.540255, 38.409996, 43.778530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.624489, 38.673092, 42.998093>,  <26.040440, 38.761936, 43.437469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.624489, 38.673092, 42.998093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.602055, 38.383301, 43.272900>,  <26.588594, 38.209427, 43.437782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.602055, 38.383301, 43.272900>,  <26.624489, 38.673092, 42.998093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.602055, 38.383301, 43.272900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018050, -0.688720, -0.724803,
		0.998263, -0.028252, 0.051705,
		-0.056088, -0.724477, 0.687014,
		26.585228, 38.165958, 43.479004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.223623, 38.147545, 42.952736>,  <26.624489, 38.673092, 42.998093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.223623, 38.147545, 42.952736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.858471, 38.035004, 43.071049>,  <26.639380, 37.967480, 43.142036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.858471, 38.035004, 43.071049>,  <27.223623, 38.147545, 42.952736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.858471, 38.035004, 43.071049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050940, -0.640390, -0.766359,
		0.405031, -0.714663, 0.570269,
		-0.912883, -0.281350, 0.295782,
		26.584606, 37.950600, 43.159782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.130651, 37.408066, 42.995411>,  <27.223623, 38.147545, 42.952736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.130651, 37.408066, 42.995411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.785696, 37.582333, 42.892273>,  <26.578722, 37.686893, 42.830391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.785696, 37.582333, 42.892273>,  <27.130651, 37.408066, 42.995411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.785696, 37.582333, 42.892273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093483, -0.637612, -0.764665,
		-0.497540, -0.635334, 0.590596,
		-0.862389, 0.435662, -0.257845,
		26.526979, 37.713032, 42.814919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.611622, 36.868942, 42.960472>,  <27.130651, 37.408066, 42.995411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.611622, 36.868942, 42.960472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.532314, 37.186073, 42.729958>,  <26.484730, 37.376354, 42.591648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.532314, 37.186073, 42.729958>,  <26.611622, 36.868942, 42.960472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.532314, 37.186073, 42.729958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137079, -0.604613, -0.784635,
		-0.970515, -0.076573, 0.228557,
		-0.198270, 0.792830, -0.576289,
		26.472834, 37.423923, 42.557072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.991306, 36.761410, 42.658588>,  <26.611622, 36.868942, 42.960472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.991306, 36.761410, 42.658588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.209034, 37.001686, 42.424362>,  <26.339670, 37.145851, 42.283829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.209034, 37.001686, 42.424362>,  <25.991306, 36.761410, 42.658588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.209034, 37.001686, 42.424362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069499, -0.663339, -0.745085,
		-0.835995, 0.446260, -0.319321,
		0.544319, 0.600694, -0.585563,
		26.372330, 37.181896, 42.248692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.743053, 36.663837, 42.024658>,  <25.991306, 36.761410, 42.658588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.743053, 36.663837, 42.024658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.086502, 36.832401, 41.907909>,  <26.292570, 36.933540, 41.837860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.086502, 36.832401, 41.907909>,  <25.743053, 36.663837, 42.024658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.086502, 36.832401, 41.907909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064033, -0.653091, -0.754568,
		-0.508597, 0.629197, -0.587740,
		0.858620, 0.421406, -0.291871,
		26.344088, 36.958824, 41.820347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.728064, 36.555519, 41.277576>,  <25.743053, 36.663837, 42.024658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.728064, 36.555519, 41.277576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.105469, 36.653297, 41.367046>,  <26.331911, 36.711964, 41.420731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.105469, 36.653297, 41.367046>,  <25.728064, 36.555519, 41.277576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.105469, 36.653297, 41.367046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301545, -0.353711, -0.885415,
		-0.137318, 0.902848, -0.407442,
		0.943512, 0.244445, 0.223678,
		26.388523, 36.726631, 41.434151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.001461, 36.974216, 40.725185>,  <25.728064, 36.555519, 41.277576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.001461, 36.974216, 40.725185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.330841, 36.845463, 40.912086>,  <26.528469, 36.768211, 41.024227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.330841, 36.845463, 40.912086>,  <26.001461, 36.974216, 40.725185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.330841, 36.845463, 40.912086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399802, -0.255169, -0.880367,
		0.402601, 0.911746, -0.081431,
		0.823450, -0.321881, 0.467250,
		26.577877, 36.748898, 41.052261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.583710, 37.275993, 40.415146>,  <26.001461, 36.974216, 40.725185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.583710, 37.275993, 40.415146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.753662, 36.950413, 40.573620>,  <26.855633, 36.755066, 40.668705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.753662, 36.950413, 40.573620>,  <26.583710, 37.275993, 40.415146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.753662, 36.950413, 40.573620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414384, -0.214227, -0.884530,
		0.804837, 0.539991, 0.246267,
		0.424881, -0.813951, 0.396182,
		26.881126, 36.706226, 40.692474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.288191, 37.299160, 40.314049>,  <26.583710, 37.275993, 40.415146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.288191, 37.299160, 40.314049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.233534, 36.906086, 40.364094>,  <27.200739, 36.670242, 40.394119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.233534, 36.906086, 40.364094>,  <27.288191, 37.299160, 40.314049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.233534, 36.906086, 40.364094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279990, -0.159458, -0.946667,
		0.950229, -0.094324, 0.296932,
		-0.136642, -0.982688, 0.125112,
		27.192541, 36.611279, 40.401627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.744257, 36.891891, 39.950005>,  <27.288191, 37.299160, 40.314049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.744257, 36.891891, 39.950005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.451149, 36.624466, 40.000710>,  <27.275284, 36.464012, 40.031132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.451149, 36.624466, 40.000710>,  <27.744257, 36.891891, 39.950005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.451149, 36.624466, 40.000710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143589, -0.334007, -0.931569,
		0.665154, -0.664425, 0.340750,
		-0.732771, -0.668565, 0.126762,
		27.231318, 36.423897, 40.038738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.041775, 36.321297, 39.751667>,  <27.744257, 36.891891, 39.950005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.041775, 36.321297, 39.751667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.649208, 36.262009, 39.702923>,  <27.413668, 36.226437, 39.673676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.649208, 36.262009, 39.702923>,  <28.041775, 36.321297, 39.751667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.649208, 36.262009, 39.702923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172263, -0.400854, -0.899801,
		0.084524, -0.904072, 0.418939,
		-0.981418, -0.148222, -0.121857,
		27.354782, 36.217541, 39.666367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.068651, 35.642178, 39.347809>,  <28.041775, 36.321297, 39.751667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.068651, 35.642178, 39.347809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.718397, 35.827133, 39.292007>,  <27.508245, 35.938107, 39.258526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.718397, 35.827133, 39.292007>,  <28.068651, 35.642178, 39.347809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.718397, 35.827133, 39.292007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034980, -0.227364, -0.973182,
		-0.481708, -0.857030, 0.182913,
		-0.875634, 0.462391, -0.139502,
		27.455708, 35.965851, 39.250156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.874624, 35.158363, 38.782780>,  <28.068651, 35.642178, 39.347809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.874624, 35.158363, 38.782780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.615618, 35.462803, 38.798035>,  <27.460215, 35.645466, 38.807186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.615618, 35.462803, 38.798035>,  <27.874624, 35.158363, 38.782780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.615618, 35.462803, 38.798035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131505, -0.062305, -0.989356,
		-0.750621, -0.645637, 0.140432,
		-0.647514, 0.761098, 0.038137,
		27.421364, 35.691132, 38.809475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.261198, 34.894608, 38.545082>,  <27.874624, 35.158363, 38.782780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.261198, 34.894608, 38.545082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.258757, 35.292065, 38.500126>,  <27.257292, 35.530540, 38.473152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.258757, 35.292065, 38.500126>,  <27.261198, 34.894608, 38.545082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.258757, 35.292065, 38.500126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224603, -0.110881, -0.968121,
		-0.974431, 0.019335, 0.223853,
		-0.006102, 0.993646, -0.112389,
		27.256926, 35.590157, 38.466408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.709398, 35.033749, 38.202267>,  <27.261198, 34.894608, 38.545082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.709398, 35.033749, 38.202267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.965694, 35.332939, 38.132999>,  <27.119473, 35.512451, 38.091438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.965694, 35.332939, 38.132999>,  <26.709398, 35.033749, 38.202267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.965694, 35.332939, 38.132999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168472, -0.083070, -0.982200,
		-0.749045, 0.658509, 0.072787,
		0.640741, 0.747974, -0.173164,
		27.157917, 35.557331, 38.081051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.438791, 35.380104, 37.680065>,  <26.709398, 35.033749, 38.202267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.438791, 35.380104, 37.680065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.794012, 35.563770, 37.689228>,  <27.007145, 35.673969, 37.694725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.794012, 35.563770, 37.689228>,  <26.438791, 35.380104, 37.680065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.794012, 35.563770, 37.689228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029873, -0.007921, -0.999522,
		-0.458767, 0.888314, -0.020751,
		0.888054, 0.459168, 0.022903,
		27.060429, 35.701519, 37.696098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.364723, 36.061539, 37.347084>,  <26.438791, 35.380104, 37.680065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.364723, 36.061539, 37.347084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.756128, 35.980972, 37.329468>,  <26.990973, 35.932632, 37.318897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.756128, 35.980972, 37.329468>,  <26.364723, 36.061539, 37.347084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.756128, 35.980972, 37.329468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006268, 0.184441, -0.982824,
		0.206083, 0.961983, 0.179215,
		0.978514, -0.201420, -0.044040,
		27.049683, 35.920547, 37.316257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.630667, 36.716240, 37.069668>,  <26.364723, 36.061539, 37.347084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.630667, 36.716240, 37.069668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.905676, 36.430813, 37.015808>,  <27.070681, 36.259556, 36.983490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.905676, 36.430813, 37.015808>,  <26.630667, 36.716240, 37.069668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.905676, 36.430813, 37.015808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200503, 0.364764, -0.909256,
		0.697934, 0.598135, 0.393856,
		0.687522, -0.713570, -0.134653,
		27.111933, 36.216743, 36.975410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.040766, 37.172817, 36.765015>,  <26.630667, 36.716240, 37.069668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.040766, 37.172817, 36.765015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.136841, 36.796215, 36.670464>,  <27.194487, 36.570251, 36.613731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.136841, 36.796215, 36.670464>,  <27.040766, 37.172817, 36.765015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.136841, 36.796215, 36.670464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185757, 0.283583, -0.940784,
		0.952788, 0.182055, 0.243005,
		0.240187, -0.941508, -0.236376,
		27.208897, 36.513763, 36.599552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.699068, 37.233833, 36.444843>,  <27.040766, 37.172817, 36.765015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.699068, 37.233833, 36.444843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.540073, 36.880478, 36.345547>,  <27.444675, 36.668465, 36.285969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.540073, 36.880478, 36.345547>,  <27.699068, 37.233833, 36.444843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.540073, 36.880478, 36.345547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098562, 0.227861, -0.968693,
		0.912299, -0.409510, -0.003503,
		-0.397488, -0.883392, -0.248239,
		27.420828, 36.615459, 36.271076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.209846, 36.840115, 36.074966>,  <27.699068, 37.233833, 36.444843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.209846, 36.840115, 36.074966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.850559, 36.700794, 35.967716>,  <27.634987, 36.617203, 35.903366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.850559, 36.700794, 35.967716>,  <28.209846, 36.840115, 36.074966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.850559, 36.700794, 35.967716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234619, 0.135923, -0.962538,
		0.371697, -0.927476, -0.040370,
		-0.898218, -0.348301, -0.268126,
		27.581093, 36.596306, 35.887280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.339279, 36.824909, 35.352539>,  <28.209846, 36.840115, 36.074966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.339279, 36.824909, 35.352539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.950813, 36.736542, 35.388382>,  <27.717733, 36.683521, 35.409889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.950813, 36.736542, 35.388382>,  <28.339279, 36.824909, 35.352539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.950813, 36.736542, 35.388382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123810, 0.146159, -0.981483,
		0.203732, -0.964278, -0.169297,
		-0.971166, -0.220921, 0.089610,
		27.659464, 36.670265, 35.415264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.119007, 36.283787, 34.879478>,  <28.339279, 36.824909, 35.352539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.119007, 36.283787, 34.879478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.811167, 36.523319, 34.968128>,  <27.626463, 36.667038, 35.021317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.811167, 36.523319, 34.968128>,  <28.119007, 36.283787, 34.879478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.811167, 36.523319, 34.968128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144253, 0.175052, -0.973934,
		-0.622016, -0.781511, -0.048337,
		-0.769602, 0.598830, 0.221621,
		27.580286, 36.702969, 35.034615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.437021, 35.630486, 35.110550>,  <28.119007, 36.283787, 34.879478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.437021, 35.630486, 35.110550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.667545, 35.459175, 34.832142>,  <28.805861, 35.356388, 34.665096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.667545, 35.459175, 34.832142>,  <28.437021, 35.630486, 35.110550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.667545, 35.459175, 34.832142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006868, 0.849113, -0.528167,
		0.817201, 0.309169, 0.486413,
		0.576312, -0.428277, -0.696019,
		28.840439, 35.330692, 34.623337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.088718, 36.183910, 35.664310>,  <28.437021, 35.630486, 35.110550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.088718, 36.183910, 35.664310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.221510, 35.808270, 35.699821>,  <28.301186, 35.582886, 35.721127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.221510, 35.808270, 35.699821>,  <28.088718, 36.183910, 35.664310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.221510, 35.808270, 35.699821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837052, 0.249892, -0.486722,
		0.434895, 0.235893, 0.869034,
		0.331979, -0.939100, 0.088778,
		28.321104, 35.526539, 35.726456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.693459, 36.264240, 35.877377>,  <28.088718, 36.183910, 35.664310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.693459, 36.264240, 35.877377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.694372, 35.884865, 35.750591>,  <28.694920, 35.657242, 35.674519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.694372, 35.884865, 35.750591>,  <28.693459, 36.264240, 35.877377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.694372, 35.884865, 35.750591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821047, 0.182719, -0.540828,
		0.570856, -0.259009, 0.779127,
		0.002282, -0.948435, -0.316965,
		28.695057, 35.600334, 35.655502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.350084, 36.013092, 35.804070>,  <28.693459, 36.264240, 35.877377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.350084, 36.013092, 35.804070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.147497, 35.780197, 35.549671>,  <29.025946, 35.640461, 35.397034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.147497, 35.780197, 35.549671>,  <29.350084, 36.013092, 35.804070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.147497, 35.780197, 35.549671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745345, 0.075228, -0.662421,
		0.433534, -0.809528, 0.395870,
		-0.506467, -0.582242, -0.635991,
		28.995558, 35.605526, 35.358875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.418743, 35.932968, 36.507828>,  <29.350084, 36.013092, 35.804070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.418743, 35.932968, 36.507828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.775248, 35.751976, 36.495712>,  <29.989151, 35.643379, 36.488445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.775248, 35.751976, 36.495712>,  <29.418743, 35.932968, 36.507828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.775248, 35.751976, 36.495712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445833, 0.886475, -0.124073,
		0.082986, 0.097079, 0.991811,
		0.891261, -0.452479, -0.030284,
		30.042625, 35.616234, 36.486626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.848680, 36.539219, 36.568470>,  <29.418743, 35.932968, 36.507828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.848680, 36.539219, 36.568470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.093128, 36.241001, 36.462116>,  <30.239798, 36.062069, 36.398304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.093128, 36.241001, 36.462116>,  <29.848680, 36.539219, 36.568470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.093128, 36.241001, 36.462116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727052, 0.661518, -0.183818,
		0.312933, -0.080979, 0.946317,
		0.611120, -0.745545, -0.265887,
		30.276464, 36.017338, 36.382351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.372456, 36.762169, 36.862770>,  <29.848680, 36.539219, 36.568470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.372456, 36.762169, 36.862770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.487963, 36.490067, 36.593292>,  <30.557268, 36.326805, 36.431606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.487963, 36.490067, 36.593292>,  <30.372456, 36.762169, 36.862770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.487963, 36.490067, 36.593292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777863, 0.576939, -0.249138,
		0.558159, -0.452099, 0.695748,
		0.288769, -0.680255, -0.673695,
		30.574593, 36.285992, 36.391182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.336679, 36.955547, 37.740852>,  <30.372456, 36.762169, 36.862770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.336679, 36.955547, 37.740852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.732683, 36.900394, 37.752674>,  <30.970285, 36.867302, 37.759769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.732683, 36.900394, 37.752674>,  <30.336679, 36.955547, 37.740852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.732683, 36.900394, 37.752674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016106, 0.097673, 0.995088,
		-0.140096, -0.985620, 0.094477,
		0.990007, -0.137886, 0.029558,
		31.029686, 36.859028, 37.761543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.446693, 36.710209, 38.441402>,  <30.336679, 36.955547, 37.740852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.446693, 36.710209, 38.441402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.812536, 36.813774, 38.317173>,  <31.032042, 36.875912, 38.242634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.812536, 36.813774, 38.317173>,  <30.446693, 36.710209, 38.441402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.812536, 36.813774, 38.317173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272330, 0.173307, 0.946468,
		0.298878, -0.950225, 0.087998,
		0.914609, 0.258913, -0.310572,
		31.086920, 36.891449, 38.224003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.984127, 36.301262, 38.860092>,  <30.446693, 36.710209, 38.441402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.984127, 36.301262, 38.860092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.196339, 36.612335, 38.725185>,  <31.323666, 36.798981, 38.644241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.196339, 36.612335, 38.725185>,  <30.984127, 36.301262, 38.860092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.196339, 36.612335, 38.725185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519540, 0.016068, 0.854295,
		0.669789, -0.628452, -0.395513,
		0.530528, 0.777683, -0.337268,
		31.355497, 36.845638, 38.624004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746582, 36.160709, 38.936852>,  <30.984127, 36.301262, 38.860092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746582, 36.160709, 38.936852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.665443, 36.552109, 38.921944>,  <31.616760, 36.786949, 38.912998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.665443, 36.552109, 38.921944>,  <31.746582, 36.160709, 38.936852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.665443, 36.552109, 38.921944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563707, 0.147809, 0.812642,
		0.800679, 0.143836, -0.581570,
		-0.202849, 0.978501, -0.037266,
		31.604589, 36.845657, 38.910763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342484, 36.419624, 39.127422>,  <31.746582, 36.160709, 38.936852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342484, 36.419624, 39.127422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113201, 36.739216, 39.200157>,  <31.975632, 36.930969, 39.243797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113201, 36.739216, 39.200157>,  <32.342484, 36.419624, 39.127422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113201, 36.739216, 39.200157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499278, 0.164592, 0.850665,
		0.649734, 0.578396, -0.493258,
		-0.573207, 0.798979, 0.181840,
		31.941238, 36.978909, 39.254707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.792149, 36.927990, 39.339012>,  <32.342484, 36.419624, 39.127422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.792149, 36.927990, 39.339012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430847, 37.036091, 39.472336>,  <32.214066, 37.100952, 39.552330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430847, 37.036091, 39.472336>,  <32.792149, 36.927990, 39.339012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430847, 37.036091, 39.472336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407460, 0.296634, 0.863704,
		0.134545, 0.915955, -0.378053,
		-0.903257, 0.270249, 0.333305,
		32.159870, 37.117165, 39.572327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.841602, 37.525612, 39.602116>,  <32.792149, 36.927990, 39.339012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.841602, 37.525612, 39.602116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514912, 37.395073, 39.792465>,  <32.318897, 37.316750, 39.906677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514912, 37.395073, 39.792465>,  <32.841602, 37.525612, 39.602116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514912, 37.395073, 39.792465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376813, 0.322941, 0.868171,
		-0.437007, 0.888373, -0.140782,
		-0.816723, -0.326348, 0.475878,
		32.269894, 37.297169, 39.935230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785400, 37.993187, 40.233261>,  <32.841602, 37.525612, 39.602116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785400, 37.993187, 40.233261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561916, 37.667538, 40.296566>,  <32.427826, 37.472149, 40.334549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561916, 37.667538, 40.296566>,  <32.785400, 37.993187, 40.233261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561916, 37.667538, 40.296566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311895, -0.029432, 0.949660,
		-0.768481, 0.579949, 0.270364,
		-0.558712, -0.814121, 0.158266,
		32.394302, 37.423302, 40.344048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.614922, 38.011772, 40.967052>,  <32.785400, 37.993187, 40.233261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.614922, 38.011772, 40.967052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497234, 37.642914, 40.866589>,  <32.426624, 37.421597, 40.806313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497234, 37.642914, 40.866589>,  <32.614922, 38.011772, 40.967052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.497234, 37.642914, 40.866589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117980, -0.295819, 0.947930,
		-0.948430, 0.249263, 0.195829,
		-0.294214, -0.922149, -0.251155,
		32.408970, 37.366268, 40.791241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.157776, 37.889137, 41.479244>,  <32.614922, 38.011772, 40.967052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.157776, 37.889137, 41.479244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.269115, 37.529667, 41.343651>,  <32.335918, 37.313984, 41.262295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.269115, 37.529667, 41.343651>,  <32.157776, 37.889137, 41.479244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.269115, 37.529667, 41.343651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034901, -0.362162, 0.931462,
		-0.959846, -0.247441, -0.132172,
		0.278349, -0.898672, -0.338983,
		32.352619, 37.260067, 41.241955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.608324, 37.491875, 41.775513>,  <32.157776, 37.889137, 41.479244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.608324, 37.491875, 41.775513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.940992, 37.292797, 41.677021>,  <32.140594, 37.173351, 41.617928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.940992, 37.292797, 41.677021>,  <31.608324, 37.491875, 41.775513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.940992, 37.292797, 41.677021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006925, -0.434102, 0.900837,
		-0.555229, -0.750903, -0.357583,
		0.831669, -0.497694, -0.246227,
		32.190495, 37.143490, 41.603153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471754, 36.728283, 41.916809>,  <31.608324, 37.491875, 41.775513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471754, 36.728283, 41.916809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870365, 36.761555, 41.918358>,  <32.109531, 36.781517, 41.919285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870365, 36.761555, 41.918358>,  <31.471754, 36.728283, 41.916809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.870365, 36.761555, 41.918358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036674, -0.480092, 0.876451,
		0.074764, -0.873265, -0.481475,
		0.996527, 0.083184, 0.003867,
		32.169323, 36.786510, 41.919518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.729195, 36.089600, 42.251774>,  <31.471754, 36.728283, 41.916809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.729195, 36.089600, 42.251774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.037025, 36.344921, 42.244591>,  <32.221725, 36.498112, 42.240280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.037025, 36.344921, 42.244591>,  <31.729195, 36.089600, 42.251774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037025, 36.344921, 42.244591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292683, -0.327599, 0.898340,
		0.567528, -0.696599, -0.438932,
		0.769577, 0.638301, -0.017961,
		32.267899, 36.536411, 42.239201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373825, 35.663807, 42.496990>,  <31.729195, 36.089600, 42.251774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373825, 35.663807, 42.496990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.423397, 36.057030, 42.551018>,  <32.453140, 36.292965, 42.583435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.423397, 36.057030, 42.551018>,  <32.373825, 35.663807, 42.496990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.423397, 36.057030, 42.551018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292310, -0.166240, 0.941764,
		0.948260, -0.077228, -0.307959,
		0.123925, 0.983056, 0.135064,
		32.460575, 36.351948, 42.591537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019791, 35.734562, 42.766224>,  <32.373825, 35.663807, 42.496990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019791, 35.734562, 42.766224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.870342, 36.090729, 42.870193>,  <32.780674, 36.304428, 42.932575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.870342, 36.090729, 42.870193>,  <33.019791, 35.734562, 42.766224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870342, 36.090729, 42.870193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299510, -0.149406, 0.942322,
		0.877897, 0.429919, -0.210869,
		-0.373617, 0.890420, 0.259928,
		32.758259, 36.357853, 42.948174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531982, 36.088551, 43.161774>,  <33.019791, 35.734562, 42.766224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531982, 36.088551, 43.161774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180672, 36.239338, 43.279434>,  <32.969887, 36.329811, 43.350029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180672, 36.239338, 43.279434>,  <33.531982, 36.088551, 43.161774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180672, 36.239338, 43.279434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231149, -0.203792, 0.951335,
		0.418572, 0.903527, 0.091849,
		-0.878276, 0.376971, 0.294151,
		32.917191, 36.352428, 43.367680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630341, 36.301224, 43.790451>,  <33.531982, 36.088551, 43.161774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.630341, 36.301224, 43.790451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.231808, 36.273098, 43.809971>,  <32.992687, 36.256222, 43.821682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.231808, 36.273098, 43.809971>,  <33.630341, 36.301224, 43.790451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.231808, 36.273098, 43.809971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046646, 0.031920, 0.998401,
		-0.071760, 0.997014, -0.028523,
		-0.996331, -0.070315, 0.048798,
		32.932907, 36.252003, 43.824612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407799, 36.898880, 44.155373>,  <33.630341, 36.301224, 43.790451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407799, 36.898880, 44.155373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.090637, 36.658665, 44.196655>,  <32.900341, 36.514534, 44.221424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.090637, 36.658665, 44.196655>,  <33.407799, 36.898880, 44.155373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.090637, 36.658665, 44.196655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027864, 0.204928, 0.978380,
		-0.608706, 0.772888, -0.179222,
		-0.792906, -0.600540, 0.103205,
		32.852764, 36.478504, 44.227615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080162, 37.208546, 44.688007>,  <33.407799, 36.898880, 44.155373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080162, 37.208546, 44.688007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.928936, 36.840736, 44.645042>,  <32.838200, 36.620049, 44.619263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.928936, 36.840736, 44.645042>,  <33.080162, 37.208546, 44.688007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928936, 36.840736, 44.645042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021990, -0.124906, 0.991925,
		-0.925518, 0.372650, 0.067443,
		-0.378065, -0.919527, -0.107408,
		32.815517, 36.564877, 44.612820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356632, 37.177528, 45.033035>,  <33.080162, 37.208546, 44.688007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356632, 37.177528, 45.033035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.462837, 36.793148, 45.001873>,  <32.526562, 36.562519, 44.983177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.462837, 36.793148, 45.001873>,  <32.356632, 37.177528, 45.033035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.462837, 36.793148, 45.001873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161114, -0.123892, 0.979129,
		-0.950549, -0.247422, -0.187718,
		0.265514, -0.960954, -0.077903,
		32.542492, 36.504860, 44.978500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.169006, 36.898014, 45.675907>,  <32.356632, 37.177528, 45.033035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.169006, 36.898014, 45.675907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.370575, 36.578072, 45.545494>,  <32.491516, 36.386105, 45.467247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.370575, 36.578072, 45.545494>,  <32.169006, 36.898014, 45.675907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370575, 36.578072, 45.545494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094825, -0.426405, 0.899548,
		-0.858529, -0.422385, -0.290721,
		0.503920, -0.799856, -0.326028,
		32.521751, 36.338116, 45.447685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.710386, 36.171391, 45.578602>,  <32.169006, 36.898014, 45.675907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.710386, 36.171391, 45.578602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.094074, 36.142975, 45.688038>,  <32.324287, 36.125927, 45.753700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.094074, 36.142975, 45.688038>,  <31.710386, 36.171391, 45.578602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.094074, 36.142975, 45.688038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280322, -0.363363, 0.888475,
		0.036299, -0.928936, -0.368458,
		0.959220, -0.071036, 0.273591,
		32.381840, 36.121662, 45.770115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774605, 35.716202, 46.244278>,  <31.710386, 36.171391, 45.578602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774605, 35.716202, 46.244278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140831, 35.876404, 46.229668>,  <32.360565, 35.972527, 46.220901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140831, 35.876404, 46.229668>,  <31.774605, 35.716202, 46.244278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140831, 35.876404, 46.229668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149920, -0.255610, 0.955085,
		0.373184, -0.879918, -0.294072,
		0.915564, 0.400509, -0.036528,
		32.415501, 35.996555, 46.218708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.210117, 35.238438, 46.556683>,  <31.774605, 35.716202, 46.244278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.210117, 35.238438, 46.556683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417389, 35.580513, 46.561398>,  <32.541752, 35.785759, 46.564224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417389, 35.580513, 46.561398>,  <32.210117, 35.238438, 46.556683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417389, 35.580513, 46.561398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169465, -0.116168, 0.978666,
		0.838314, -0.505130, -0.205121,
		0.518182, 0.855190, 0.011783,
		32.572842, 35.837070, 46.564934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847595, 35.050915, 46.913170>,  <32.210117, 35.238438, 46.556683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847595, 35.050915, 46.913170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811687, 35.447430, 46.951740>,  <32.790142, 35.685337, 46.974884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811687, 35.447430, 46.951740>,  <32.847595, 35.050915, 46.913170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811687, 35.447430, 46.951740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100240, -0.087334, 0.991123,
		0.990905, 0.098641, -0.091526,
		-0.089772, 0.991283, 0.096427,
		32.784756, 35.744816, 46.980667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434982, 35.322449, 47.360336>,  <32.847595, 35.050915, 46.913170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434982, 35.322449, 47.360336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150280, 35.602428, 47.383900>,  <32.979458, 35.770416, 47.398037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150280, 35.602428, 47.383900>,  <33.434982, 35.322449, 47.360336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150280, 35.602428, 47.383900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034208, -0.118309, 0.992387,
		0.701590, 0.704325, 0.108151,
		-0.711759, 0.699949, 0.058910,
		32.936752, 35.812412, 47.401573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675476, 35.745239, 47.920238>,  <33.434982, 35.322449, 47.360336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675476, 35.745239, 47.920238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289173, 35.845577, 47.893749>,  <33.057392, 35.905781, 47.877857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289173, 35.845577, 47.893749>,  <33.675476, 35.745239, 47.920238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289173, 35.845577, 47.893749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034190, 0.129965, 0.990929,
		0.257172, 0.959264, -0.116938,
		-0.965761, 0.250841, -0.066221,
		32.999443, 35.920830, 47.873882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639023, 36.431980, 48.074234>,  <33.675476, 35.745239, 47.920238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639023, 36.431980, 48.074234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.285477, 36.261967, 48.152340>,  <33.073349, 36.159958, 48.199203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.285477, 36.261967, 48.152340>,  <33.639023, 36.431980, 48.074234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285477, 36.261967, 48.152340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135960, 0.165980, 0.976712,
		-0.447543, 0.889831, -0.088917,
		-0.883866, -0.425031, 0.195265,
		33.020317, 36.134457, 48.210918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510315, 36.660580, 48.647995>,  <33.639023, 36.431980, 48.074234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510315, 36.660580, 48.647995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223133, 36.382656, 48.664856>,  <33.050823, 36.215900, 48.674973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223133, 36.382656, 48.664856>,  <33.510315, 36.660580, 48.647995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223133, 36.382656, 48.664856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112441, -0.056000, 0.992079,
		-0.686946, 0.717009, 0.118331,
		-0.717957, -0.694810, 0.042152,
		33.007748, 36.174213, 48.677502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092411, 36.827374, 49.195038>,  <33.510315, 36.660580, 48.647995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092411, 36.827374, 49.195038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021351, 36.440781, 49.120911>,  <32.978714, 36.208824, 49.076435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021351, 36.440781, 49.120911>,  <33.092411, 36.827374, 49.195038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021351, 36.440781, 49.120911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237930, -0.224913, 0.944883,
		-0.954897, 0.123769, 0.269913,
		-0.177654, -0.966486, -0.185321,
		32.968056, 36.150833, 49.065315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796154, 36.499218, 49.839306>,  <33.092411, 36.827374, 49.195038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.796154, 36.499218, 49.839306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946587, 36.181633, 49.648228>,  <33.036846, 35.991081, 49.533581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946587, 36.181633, 49.648228>,  <32.796154, 36.499218, 49.839306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946587, 36.181633, 49.648228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132796, -0.464036, 0.875806,
		-0.917021, -0.392811, -0.069081,
		0.376083, -0.793958, -0.477695,
		33.059410, 35.943447, 49.504921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536999, 36.010548, 50.316132>,  <32.796154, 36.499218, 49.839306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536999, 36.010548, 50.316132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817287, 35.831615, 50.093822>,  <32.985462, 35.724258, 49.960438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817287, 35.831615, 50.093822>,  <32.536999, 36.010548, 50.316132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817287, 35.831615, 50.093822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126208, -0.689002, 0.713686,
		-0.702186, -0.570236, -0.426340,
		0.700718, -0.447332, -0.555776,
		33.027504, 35.697418, 49.927090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418808, 35.316998, 50.462234>,  <32.536999, 36.010548, 50.316132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418808, 35.316998, 50.462234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.782722, 35.315659, 50.296204>,  <33.001072, 35.314854, 50.196587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.782722, 35.315659, 50.296204>,  <32.418808, 35.316998, 50.462234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782722, 35.315659, 50.296204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345402, -0.548473, 0.761495,
		-0.230204, -0.836162, -0.497835,
		0.909782, -0.003346, -0.415073,
		33.055656, 35.314655, 50.171680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627197, 34.610378, 50.534752>,  <32.418808, 35.316998, 50.462234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627197, 34.610378, 50.534752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.954742, 34.838730, 50.510887>,  <33.151272, 34.975739, 50.496567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.954742, 34.838730, 50.510887>,  <32.627197, 34.610378, 50.534752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954742, 34.838730, 50.510887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376715, -0.456097, 0.806264,
		0.433066, -0.682697, -0.588540,
		0.818865, 0.570877, -0.059662,
		33.200401, 35.009995, 50.492989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145676, 34.150108, 50.347122>,  <32.627197, 34.610378, 50.534752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145676, 34.150108, 50.347122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327469, 34.465866, 50.512192>,  <33.436546, 34.655319, 50.611233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327469, 34.465866, 50.512192>,  <33.145676, 34.150108, 50.347122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327469, 34.465866, 50.512192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307122, -0.573746, 0.759270,
		0.836135, -0.218335, -0.503199,
		0.454483, 0.789396, 0.412674,
		33.463814, 34.702686, 50.635994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.772526, 33.880756, 50.620544>,  <33.145676, 34.150108, 50.347122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.772526, 33.880756, 50.620544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758430, 34.217751, 50.835575>,  <33.749973, 34.419945, 50.964592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758430, 34.217751, 50.835575>,  <33.772526, 33.880756, 50.620544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758430, 34.217751, 50.835575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418698, -0.475977, 0.773393,
		0.907442, 0.252331, -0.335974,
		-0.035235, 0.842481, 0.537572,
		33.747860, 34.470493, 50.996845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450249, 33.967495, 50.963161>,  <33.772526, 33.880756, 50.620544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450249, 33.967495, 50.963161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205196, 34.199280, 51.178162>,  <34.058167, 34.338352, 51.307159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205196, 34.199280, 51.178162>,  <34.450249, 33.967495, 50.963161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205196, 34.199280, 51.178162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416760, -0.340992, 0.842636,
		0.671560, 0.740233, -0.032596,
		-0.612632, 0.579465, 0.537496,
		34.021408, 34.373119, 51.339409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816582, 34.344299, 51.487461>,  <34.450249, 33.967495, 50.963161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816582, 34.344299, 51.487461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447079, 34.391037, 51.633343>,  <34.225376, 34.419079, 51.720871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447079, 34.391037, 51.633343>,  <34.816582, 34.344299, 51.487461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447079, 34.391037, 51.633343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332626, -0.227187, 0.915285,
		0.189803, 0.966816, 0.171001,
		-0.923761, 0.116844, 0.364709,
		34.169949, 34.426090, 51.742756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864719, 34.735420, 52.204361>,  <34.816582, 34.344299, 51.487461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864719, 34.735420, 52.204361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526222, 34.522305, 52.205353>,  <34.323124, 34.394436, 52.205948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526222, 34.522305, 52.205353>,  <34.864719, 34.735420, 52.204361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526222, 34.522305, 52.205353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300905, -0.474084, 0.827466,
		-0.439685, 0.700987, 0.561510,
		-0.846246, -0.532786, 0.002483,
		34.272346, 34.362469, 52.206097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623779, 34.839626, 52.867546>,  <34.864719, 34.735420, 52.204361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623779, 34.839626, 52.867546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456650, 34.491188, 52.764309>,  <34.356373, 34.282124, 52.702366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456650, 34.491188, 52.764309>,  <34.623779, 34.839626, 52.867546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456650, 34.491188, 52.764309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011848, -0.289275, 0.957172,
		-0.908450, 0.396874, 0.131188,
		-0.417827, -0.871097, -0.258090,
		34.331303, 34.229858, 52.686882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167221, 34.644966, 53.412960>,  <34.623779, 34.839626, 52.867546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167221, 34.644966, 53.412960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.209595, 34.291874, 53.229843>,  <34.235020, 34.080021, 53.119972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.209595, 34.291874, 53.229843>,  <34.167221, 34.644966, 53.412960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209595, 34.291874, 53.229843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125344, -0.468562, 0.874493,
		-0.986441, -0.035259, -0.160281,
		0.105935, -0.882727, -0.457790,
		34.241375, 34.027058, 53.092506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613811, 34.085587, 53.729725>,  <34.167221, 34.644966, 53.412960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.613811, 34.085587, 53.729725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.963417, 33.946548, 53.593910>,  <34.173180, 33.863125, 53.512421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.963417, 33.946548, 53.593910>,  <33.613811, 34.085587, 53.729725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.963417, 33.946548, 53.593910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039756, -0.645266, 0.762923,
		-0.484274, -0.680303, -0.550151,
		0.874013, -0.347592, -0.339532,
		34.225620, 33.842270, 53.492050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625309, 33.362560, 53.480480>,  <33.613811, 34.085587, 53.729725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625309, 33.362560, 53.480480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996498, 33.422779, 53.616837>,  <34.219212, 33.458912, 53.698650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996498, 33.422779, 53.616837>,  <33.625309, 33.362560, 53.480480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996498, 33.422779, 53.616837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055832, -0.848272, 0.526610,
		0.368446, -0.507711, -0.778766,
		0.927971, 0.150547, 0.340889,
		34.274891, 33.467941, 53.719105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060341, 32.812756, 53.260231>,  <33.625309, 33.362560, 53.480480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060341, 32.812756, 53.260231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.195084, 32.965111, 53.604660>,  <34.275928, 33.056522, 53.811317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.195084, 32.965111, 53.604660>,  <34.060341, 32.812756, 53.260231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195084, 32.965111, 53.604660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020130, -0.911402, 0.411024,
		0.941340, -0.155791, -0.299346,
		0.336859, 0.380888, 0.861076,
		34.296143, 33.079376, 53.862984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478928, 32.299160, 53.538483>,  <34.060341, 32.812756, 53.260231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478928, 32.299160, 53.538483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367748, 32.542526, 53.835823>,  <34.301041, 32.688545, 54.014225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367748, 32.542526, 53.835823>,  <34.478928, 32.299160, 53.538483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367748, 32.542526, 53.835823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290822, -0.790825, 0.538534,
		0.915514, -0.066495, 0.396754,
		-0.277953, 0.608419, 0.743349,
		34.284363, 32.725052, 54.058826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804535, 32.160686, 54.228065>,  <34.478928, 32.299160, 53.538483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804535, 32.160686, 54.228065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.440567, 32.322407, 54.265114>,  <34.222187, 32.419437, 54.287342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.440567, 32.322407, 54.265114>,  <34.804535, 32.160686, 54.228065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440567, 32.322407, 54.265114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221726, -0.662850, 0.715169,
		0.350536, 0.630214, 0.692788,
		-0.909924, 0.404301, 0.092618,
		34.167591, 32.443699, 54.292900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718544, 32.247490, 54.908394>,  <34.804535, 32.160686, 54.228065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718544, 32.247490, 54.908394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363228, 32.169422, 54.742096>,  <34.150040, 32.122581, 54.642315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363228, 32.169422, 54.742096>,  <34.718544, 32.247490, 54.908394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363228, 32.169422, 54.742096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145485, -0.739026, 0.657780,
		-0.435629, 0.644785, 0.628076,
		-0.888291, -0.195173, -0.415748,
		34.096741, 32.110870, 54.617371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.307133, 31.793039, 54.780800>,  <34.718544, 32.247490, 54.908394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.307133, 31.793039, 54.780800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045376, 31.491186, 54.799980>,  <34.888321, 31.310074, 54.811489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045376, 31.491186, 54.799980>,  <35.307133, 31.793039, 54.780800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045376, 31.491186, 54.799980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325620, 0.223999, -0.918584,
		0.682452, -0.616729, -0.392307,
		-0.654394, -0.754632, 0.047951,
		34.849056, 31.264797, 54.814365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386368, 31.351652, 54.175682>,  <35.307133, 31.793039, 54.780800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386368, 31.351652, 54.175682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.015156, 31.283554, 54.308216>,  <34.792431, 31.242695, 54.387737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.015156, 31.283554, 54.308216>,  <35.386368, 31.351652, 54.175682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015156, 31.283554, 54.308216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346329, 0.066732, -0.935737,
		0.137199, -0.983139, -0.120892,
		-0.928026, -0.170250, 0.331334,
		34.736748, 31.232479, 54.407616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984131, 30.761314, 53.811623>,  <35.386368, 31.351652, 54.175682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984131, 30.761314, 53.811623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.710720, 31.022484, 53.942146>,  <34.546673, 31.179186, 54.020458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.710720, 31.022484, 53.942146>,  <34.984131, 30.761314, 53.811623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.710720, 31.022484, 53.942146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271169, 0.187901, -0.944013,
		-0.677682, -0.733746, 0.048616,
		-0.683531, 0.652924, 0.326306,
		34.505661, 31.218361, 54.040039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330578, 30.621662, 53.559566>,  <34.984131, 30.761314, 53.811623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330578, 30.621662, 53.559566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413300, 31.010069, 53.607494>,  <34.462933, 31.243113, 53.636250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413300, 31.010069, 53.607494>,  <34.330578, 30.621662, 53.559566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413300, 31.010069, 53.607494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031164, 0.128940, -0.991163,
		-0.977885, 0.201247, 0.056926,
		0.206809, 0.971017, 0.119817,
		34.475342, 31.301374, 53.643440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439499, 30.731844, 52.812832>,  <34.330578, 30.621662, 53.559566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.439499, 30.731844, 52.812832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490257, 31.089821, 52.983932>,  <34.520710, 31.304607, 53.086594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490257, 31.089821, 52.983932>,  <34.439499, 30.731844, 52.812832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490257, 31.089821, 52.983932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040534, 0.435559, -0.899247,
		-0.991088, 0.096770, 0.091545,
		0.126893, 0.894943, 0.427755,
		34.528324, 31.358303, 53.112259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.895466, 31.186405, 52.771088>,  <34.439499, 30.731844, 52.812832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.895466, 31.186405, 52.771088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224491, 31.413443, 52.785114>,  <34.421906, 31.549665, 52.793530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224491, 31.413443, 52.785114>,  <33.895466, 31.186405, 52.771088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224491, 31.413443, 52.785114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229221, 0.387360, -0.892978,
		-0.520432, 0.726492, 0.448732,
		0.822562, 0.567593, 0.035068,
		34.471260, 31.583721, 52.795635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699623, 31.747383, 52.445957>,  <33.895466, 31.186405, 52.771088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699623, 31.747383, 52.445957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.096184, 31.797577, 52.431160>,  <34.334122, 31.827692, 52.422279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.096184, 31.797577, 52.431160>,  <33.699623, 31.747383, 52.445957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096184, 31.797577, 52.431160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058891, 0.175549, -0.982708,
		-0.116818, 0.976441, 0.181430,
		0.991406, 0.125483, -0.036997,
		34.393604, 31.835222, 52.420059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887943, 32.175201, 51.928638>,  <33.699623, 31.747383, 52.445957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887943, 32.175201, 51.928638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261635, 32.033367, 51.944046>,  <34.485851, 31.948267, 51.953289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261635, 32.033367, 51.944046>,  <33.887943, 32.175201, 51.928638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261635, 32.033367, 51.944046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151943, 0.297964, -0.942407,
		0.322688, 0.886277, 0.332244,
		0.934230, -0.354585, 0.038514,
		34.541904, 31.926992, 51.955601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407555, 32.646339, 51.637875>,  <33.887943, 32.175201, 51.928638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407555, 32.646339, 51.637875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.613426, 32.303467, 51.630466>,  <34.736950, 32.097744, 51.626022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.613426, 32.303467, 51.630466>,  <34.407555, 32.646339, 51.637875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613426, 32.303467, 51.630466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232745, 0.160471, -0.959207,
		0.825188, 0.489374, 0.282096,
		0.514679, -0.857183, -0.018520,
		34.767830, 32.046310, 51.624912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139343, 32.733219, 51.249371>,  <34.407555, 32.646339, 51.637875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139343, 32.733219, 51.249371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049809, 32.343525, 51.238274>,  <34.996090, 32.109711, 51.231617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049809, 32.343525, 51.238274>,  <35.139343, 32.733219, 51.249371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049809, 32.343525, 51.238274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142400, -0.004531, -0.989799,
		0.964168, -0.225500, 0.139745,
		-0.223833, -0.974233, -0.027743,
		34.982658, 32.051254, 51.229950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627346, 32.404327, 50.764111>,  <35.139343, 32.733219, 51.249371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627346, 32.404327, 50.764111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.312370, 32.158630, 50.784664>,  <35.123383, 32.011211, 50.796997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.312370, 32.158630, 50.784664>,  <35.627346, 32.404327, 50.764111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312370, 32.158630, 50.784664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094851, -0.203116, -0.974550,
		0.609046, -0.762528, 0.218204,
		-0.787443, -0.614242, 0.051381,
		35.076138, 31.974358, 50.800079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837826, 31.824924, 50.365421>,  <35.627346, 32.404327, 50.764111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837826, 31.824924, 50.365421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439724, 31.808355, 50.400639>,  <35.200863, 31.798414, 50.421768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439724, 31.808355, 50.400639>,  <35.837826, 31.824924, 50.365421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439724, 31.808355, 50.400639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072100, -0.293707, -0.953173,
		0.065345, -0.954998, 0.289326,
		-0.995254, -0.041425, 0.088047,
		35.141148, 31.795929, 50.427052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652340, 31.151609, 50.077690>,  <35.837826, 31.824924, 50.365421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652340, 31.151609, 50.077690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.350407, 31.413855, 50.069721>,  <35.169247, 31.571201, 50.064941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.350407, 31.413855, 50.069721>,  <35.652340, 31.151609, 50.077690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350407, 31.413855, 50.069721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071586, -0.112534, -0.991066,
		-0.651999, -0.746663, 0.131877,
		-0.754832, 0.655615, -0.019922,
		35.123959, 31.610538, 50.063744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241989, 30.898993, 49.499733>,  <35.652340, 31.151609, 50.077690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241989, 30.898993, 49.499733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104649, 31.266850, 49.576015>,  <35.022243, 31.487564, 49.621784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104649, 31.266850, 49.576015>,  <35.241989, 30.898993, 49.499733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104649, 31.266850, 49.576015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132666, 0.153522, -0.979199,
		-0.929789, -0.361511, 0.069293,
		-0.343353, 0.919642, 0.190703,
		35.001644, 31.542742, 49.633228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.842575, 30.999615, 48.824661>,  <35.241989, 30.898993, 49.499733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.842575, 30.999615, 48.824661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.870369, 31.351643, 49.012554>,  <34.887047, 31.562859, 49.125290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.870369, 31.351643, 49.012554>,  <34.842575, 30.999615, 48.824661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.870369, 31.351643, 49.012554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004749, 0.470574, -0.882348,
		-0.997572, 0.063540, 0.028518,
		0.069485, 0.880070, 0.469733,
		34.891212, 31.615664, 49.153473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316257, 31.410765, 48.491264>,  <34.842575, 30.999615, 48.824661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316257, 31.410765, 48.491264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.592514, 31.666828, 48.625851>,  <34.758270, 31.820467, 48.706600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.592514, 31.666828, 48.625851>,  <34.316257, 31.410765, 48.491264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592514, 31.666828, 48.625851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078353, 0.528741, -0.845159,
		-0.718937, 0.557342, 0.415330,
		0.690645, 0.640159, 0.336462,
		34.799706, 31.858875, 48.726788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011787, 32.061340, 48.375610>,  <34.316257, 31.410765, 48.491264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011787, 32.061340, 48.375610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.403721, 32.128571, 48.418835>,  <34.638882, 32.168907, 48.444767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.403721, 32.128571, 48.418835>,  <34.011787, 32.061340, 48.375610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403721, 32.128571, 48.418835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027567, 0.649338, -0.760000,
		-0.197901, 0.741695, 0.640876,
		0.979834, 0.168072, 0.108059,
		34.697670, 32.178993, 48.451252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054913, 32.736145, 48.423786>,  <34.011787, 32.061340, 48.375610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.054913, 32.736145, 48.423786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.415466, 32.592606, 48.326847>,  <34.631798, 32.506481, 48.268684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.415466, 32.592606, 48.326847>,  <34.054913, 32.736145, 48.423786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415466, 32.592606, 48.326847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034758, 0.617818, -0.785553,
		0.431622, 0.699661, 0.569364,
		0.901384, -0.358852, -0.242345,
		34.685883, 32.484951, 48.254143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502182, 33.339581, 48.277561>,  <34.054913, 32.736145, 48.423786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.502182, 33.339581, 48.277561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.657101, 33.014538, 48.103355>,  <34.750053, 32.819511, 47.998833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.657101, 33.014538, 48.103355>,  <34.502182, 33.339581, 48.277561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657101, 33.014538, 48.103355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209623, 0.537621, -0.816714,
		0.897807, 0.225019, 0.378561,
		0.387299, -0.812607, -0.435511,
		34.773289, 32.770756, 47.972702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108257, 33.531860, 47.949284>,  <34.502182, 33.339581, 48.277561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108257, 33.531860, 47.949284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.986645, 33.204918, 47.753529>,  <34.913677, 33.008751, 47.636078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.986645, 33.204918, 47.753529>,  <35.108257, 33.531860, 47.949284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.986645, 33.204918, 47.753529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041113, 0.501965, -0.863910,
		0.951776, -0.282773, -0.119008,
		-0.304028, -0.817356, -0.489383,
		34.895435, 32.959709, 47.606712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376793, 33.652660, 47.396675>,  <35.108257, 33.531860, 47.949284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376793, 33.652660, 47.396675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.169540, 33.329731, 47.283707>,  <35.045189, 33.135971, 47.215927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.169540, 33.329731, 47.283707>,  <35.376793, 33.652660, 47.396675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.169540, 33.329731, 47.283707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063251, 0.293125, -0.953979,
		0.852956, -0.512154, -0.100814,
		-0.518136, -0.807327, -0.282417,
		35.014099, 33.087532, 47.198982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650257, 33.319794, 46.808136>,  <35.376793, 33.652660, 47.396675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.650257, 33.319794, 46.808136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.260937, 33.227982, 46.808380>,  <35.027344, 33.172894, 46.808529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.260937, 33.227982, 46.808380>,  <35.650257, 33.319794, 46.808136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.260937, 33.227982, 46.808380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108506, 0.457756, -0.882432,
		0.202264, -0.858939, -0.470440,
		-0.973302, -0.229529, 0.000612,
		34.968945, 33.159122, 46.808563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530418, 33.391220, 46.167912>,  <35.650257, 33.319794, 46.808136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530418, 33.391220, 46.167912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157131, 33.319908, 46.292698>,  <34.933159, 33.277122, 46.367569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157131, 33.319908, 46.292698>,  <35.530418, 33.391220, 46.167912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157131, 33.319908, 46.292698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351710, 0.275576, -0.894627,
		0.073521, -0.944603, -0.319874,
		-0.933217, -0.178277, 0.311966,
		34.877167, 33.266426, 46.386288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207901, 32.953861, 45.690136>,  <35.530418, 33.391220, 46.167912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207901, 32.953861, 45.690136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939903, 33.175209, 45.888084>,  <34.779106, 33.308018, 46.006851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939903, 33.175209, 45.888084>,  <35.207901, 32.953861, 45.690136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939903, 33.175209, 45.888084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445380, 0.233691, -0.864306,
		-0.593928, -0.799480, 0.089890,
		-0.669989, 0.553371, 0.494868,
		34.738907, 33.341221, 46.036545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531746, 32.771416, 45.530258>,  <35.207901, 32.953861, 45.690136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531746, 32.771416, 45.530258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437759, 33.135098, 45.667747>,  <34.381367, 33.353306, 45.750240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437759, 33.135098, 45.667747>,  <34.531746, 32.771416, 45.530258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437759, 33.135098, 45.667747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580764, 0.152244, -0.799709,
		-0.779426, -0.387526, 0.492259,
		-0.234965, 0.909200, 0.343724,
		34.367271, 33.407856, 45.770866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782288, 32.780331, 45.544312>,  <34.531746, 32.771416, 45.530258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782288, 32.780331, 45.544312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.872005, 33.170025, 45.553791>,  <33.925835, 33.403839, 45.559479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.872005, 33.170025, 45.553791>,  <33.782288, 32.780331, 45.544312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872005, 33.170025, 45.553791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471752, 0.129824, -0.872122,
		-0.852727, 0.184431, 0.488715,
		0.224294, 0.974234, 0.023699,
		33.939293, 33.462296, 45.560902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156593, 33.164413, 45.538445>,  <33.782288, 32.780331, 45.544312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.156593, 33.164413, 45.538445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.455158, 33.397293, 45.409496>,  <33.634296, 33.537022, 45.332127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.455158, 33.397293, 45.409496>,  <33.156593, 33.164413, 45.538445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455158, 33.397293, 45.409496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520194, 0.208299, -0.828257,
		-0.415059, 0.785912, 0.458331,
		0.746407, 0.582197, -0.322371,
		33.679081, 33.571953, 45.312786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.870667, 33.767506, 45.240448>,  <33.156593, 33.164413, 45.538445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.870667, 33.767506, 45.240448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.238567, 33.825008, 45.094360>,  <33.459309, 33.859509, 45.006710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.238567, 33.825008, 45.094360>,  <32.870667, 33.767506, 45.240448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.238567, 33.825008, 45.094360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371147, 0.621218, -0.690173,
		0.127665, 0.770340, 0.624722,
		0.919756, 0.143753, -0.365217,
		33.514496, 33.868134, 44.984795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936737, 34.466679, 44.851494>,  <32.870667, 33.767506, 45.240448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936737, 34.466679, 44.851494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.243385, 34.267963, 44.688770>,  <33.427372, 34.148735, 44.591137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.243385, 34.267963, 44.688770>,  <32.936737, 34.466679, 44.851494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.243385, 34.267963, 44.688770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214536, 0.398981, -0.891509,
		0.605206, 0.770721, 0.199285,
		0.766616, -0.496793, -0.406813,
		33.473370, 34.118927, 44.566727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250191, 34.940948, 44.363525>,  <32.936737, 34.466679, 44.851494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250191, 34.940948, 44.363525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.377880, 34.580936, 44.244835>,  <33.454494, 34.364929, 44.173622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.377880, 34.580936, 44.244835>,  <33.250191, 34.940948, 44.363525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.377880, 34.580936, 44.244835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153074, 0.260025, -0.953392,
		0.935236, 0.349763, -0.054766,
		0.319220, -0.900029, -0.296724,
		33.473644, 34.310928, 44.155819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756721, 35.027634, 43.758411>,  <33.250191, 34.940948, 44.363525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756721, 35.027634, 43.758411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640663, 34.646461, 43.723209>,  <33.571030, 34.417759, 43.702087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640663, 34.646461, 43.723209>,  <33.756721, 35.027634, 43.758411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640663, 34.646461, 43.723209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052287, 0.076034, -0.995733,
		0.955553, -0.293509, 0.027765,
		-0.290146, -0.952928, -0.088001,
		33.553619, 34.360584, 43.696808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.911579, 34.859943, 43.115444>,  <33.756721, 35.027634, 43.758411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.911579, 34.859943, 43.115444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701214, 34.531738, 43.205044>,  <33.574993, 34.334816, 43.258804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701214, 34.531738, 43.205044>,  <33.911579, 34.859943, 43.115444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701214, 34.531738, 43.205044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008646, -0.258189, -0.966056,
		0.850493, -0.510000, 0.128691,
		-0.525915, -0.820511, 0.223997,
		33.543438, 34.285583, 43.272243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333591, 34.110161, 42.875191>,  <33.911579, 34.859943, 43.115444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333591, 34.110161, 42.875191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934414, 34.087074, 42.886395>,  <33.694908, 34.073223, 42.893116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934414, 34.087074, 42.886395>,  <34.333591, 34.110161, 42.875191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934414, 34.087074, 42.886395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003113, -0.479707, -0.877423,
		0.064079, -0.875528, 0.478898,
		-0.997940, -0.057715, 0.028014,
		33.635033, 34.069759, 42.894798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100933, 33.578087, 42.432365>,  <34.333591, 34.110161, 42.875191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100933, 33.578087, 42.432365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.754196, 33.776890, 42.448250>,  <33.546154, 33.896172, 42.457783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.754196, 33.776890, 42.448250>,  <34.100933, 33.578087, 42.432365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.754196, 33.776890, 42.448250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157577, -0.197521, -0.967551,
		-0.473033, -0.844968, 0.249535,
		-0.866838, 0.497005, 0.039714,
		33.494144, 33.925991, 42.460163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.643436, 33.141129, 42.074757>,  <34.100933, 33.578087, 42.432365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.643436, 33.141129, 42.074757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469849, 33.501499, 42.075462>,  <33.365696, 33.717720, 42.075886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469849, 33.501499, 42.075462>,  <33.643436, 33.141129, 42.074757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.469849, 33.501499, 42.075462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202879, -0.095819, -0.974504,
		-0.877786, -0.423265, 0.224362,
		-0.433972, 0.900925, 0.001763,
		33.339657, 33.771778, 42.075993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058792, 33.086678, 41.599510>,  <33.643436, 33.141129, 42.074757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058792, 33.086678, 41.599510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079529, 33.482307, 41.654720>,  <33.091969, 33.719685, 41.687847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079529, 33.482307, 41.654720>,  <33.058792, 33.086678, 41.599510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079529, 33.482307, 41.654720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401700, 0.147191, -0.903865,
		-0.914303, -0.008589, 0.404940,
		0.051840, 0.989071, 0.138027,
		33.095081, 33.779030, 41.696129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.490067, 33.209602, 41.415470>,  <33.058792, 33.086678, 41.599510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.490067, 33.209602, 41.415470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666981, 33.567425, 41.389698>,  <32.773129, 33.782120, 41.374237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666981, 33.567425, 41.389698>,  <32.490067, 33.209602, 41.415470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666981, 33.567425, 41.389698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442526, 0.155182, -0.883227,
		-0.780099, 0.419149, 0.464499,
		0.442285, 0.894557, -0.064427,
		32.799667, 33.835793, 41.370369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.993454, 33.757572, 41.224506>,  <32.490067, 33.209602, 41.415470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.993454, 33.757572, 41.224506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.354542, 33.902603, 41.131870>,  <32.571194, 33.989624, 41.076286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.354542, 33.902603, 41.131870>,  <31.993454, 33.757572, 41.224506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.354542, 33.902603, 41.131870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291832, 0.120513, -0.948847,
		-0.316124, 0.924128, 0.214602,
		0.902718, 0.362581, -0.231593,
		32.625359, 34.011379, 41.062393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784706, 34.368656, 40.781590>,  <31.993454, 33.757572, 41.224506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784706, 34.368656, 40.781590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.167946, 34.267128, 40.728493>,  <32.397888, 34.206211, 40.696632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.167946, 34.267128, 40.728493>,  <31.784706, 34.368656, 40.781590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.167946, 34.267128, 40.728493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125627, 0.044126, -0.991096,
		0.257420, 0.966244, 0.010390,
		0.958098, -0.253823, -0.132745,
		32.455376, 34.190983, 40.688671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.936796, 34.882000, 40.326565>,  <31.784706, 34.368656, 40.781590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.936796, 34.882000, 40.326565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.200371, 34.586151, 40.271763>,  <32.358517, 34.408642, 40.238880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.200371, 34.586151, 40.271763>,  <31.936796, 34.882000, 40.326565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200371, 34.586151, 40.271763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011364, 0.172333, -0.984973,
		0.752115, 0.650590, 0.105151,
		0.658934, -0.739618, -0.137007,
		32.398052, 34.364265, 40.230659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.621281, 35.165638, 40.036068>,  <31.936796, 34.882000, 40.326565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.621281, 35.165638, 40.036068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588772, 34.776093, 39.951233>,  <32.569267, 34.542366, 39.900333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588772, 34.776093, 39.951233>,  <32.621281, 35.165638, 40.036068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.588772, 34.776093, 39.951233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006870, 0.212238, -0.977194,
		0.996668, -0.080878, -0.010559,
		-0.081275, -0.973866, -0.212086,
		32.564388, 34.483932, 39.887608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146912, 35.023033, 39.515442>,  <32.621281, 35.165638, 40.036068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146912, 35.023033, 39.515442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.852024, 34.754269, 39.487038>,  <32.675091, 34.593010, 39.469994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.852024, 34.754269, 39.487038>,  <33.146912, 35.023033, 39.515442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.852024, 34.754269, 39.487038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097918, 0.210244, -0.972733,
		0.668523, -0.710162, -0.220788,
		-0.737217, -0.671914, -0.071015,
		32.630859, 34.552696, 39.465733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205627, 34.812752, 38.826828>,  <33.146912, 35.023033, 39.515442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.205627, 34.812752, 38.826828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.847412, 34.661713, 38.921005>,  <32.632484, 34.571087, 38.977512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.847412, 34.661713, 38.921005>,  <33.205627, 34.812752, 38.826828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847412, 34.661713, 38.921005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247340, -0.017444, -0.968772,
		0.369917, -0.925804, -0.077774,
		-0.895536, -0.377602, 0.235441,
		32.578751, 34.548431, 38.991638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672958, 35.132149, 38.194405>,  <33.205627, 34.812752, 38.826828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672958, 35.132149, 38.194405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.987701, 34.985306, 37.995972>,  <34.176548, 34.897202, 37.876911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.987701, 34.985306, 37.995972>,  <33.672958, 35.132149, 38.194405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.987701, 34.985306, 37.995972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108842, -0.708684, 0.697079,
		-0.607466, -0.602494, -0.517674,
		0.786854, -0.367107, -0.496078,
		34.223759, 34.875175, 37.847149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596737, 34.488190, 38.271038>,  <33.672958, 35.132149, 38.194405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596737, 34.488190, 38.271038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.991230, 34.528885, 38.218895>,  <34.227924, 34.553303, 38.187611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.991230, 34.528885, 38.218895>,  <33.596737, 34.488190, 38.271038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991230, 34.528885, 38.218895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164699, -0.534040, 0.829262,
		0.014748, -0.839316, -0.543443,
		0.986234, 0.101734, -0.130358,
		34.287102, 34.559406, 38.179787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956993, 33.854538, 38.372578>,  <33.596737, 34.488190, 38.271038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956993, 33.854538, 38.372578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266426, 34.105541, 38.407913>,  <34.452087, 34.256142, 38.429115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266426, 34.105541, 38.407913>,  <33.956993, 33.854538, 38.372578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266426, 34.105541, 38.407913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361042, -0.551012, 0.752353,
		0.520782, -0.550114, -0.652810,
		0.773586, 0.627504, 0.088342,
		34.498501, 34.293793, 38.434418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577564, 33.429256, 38.463665>,  <33.956993, 33.854538, 38.372578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577564, 33.429256, 38.463665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.702591, 33.778301, 38.613785>,  <34.777607, 33.987728, 38.703857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.702591, 33.778301, 38.613785>,  <34.577564, 33.429256, 38.463665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702591, 33.778301, 38.613785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481626, -0.486132, 0.729186,
		0.818743, -0.047161, -0.572220,
		0.312564, 0.872612, 0.375303,
		34.796360, 34.040085, 38.726376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288628, 33.342690, 38.605534>,  <34.577564, 33.429256, 38.463665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288628, 33.342690, 38.605534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177967, 33.656113, 38.828064>,  <35.111572, 33.844166, 38.961582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177967, 33.656113, 38.828064>,  <35.288628, 33.342690, 38.605534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177967, 33.656113, 38.828064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562096, -0.337609, 0.755029,
		0.779431, 0.521586, -0.347038,
		-0.276649, 0.783561, 0.556324,
		35.094971, 33.891182, 38.994961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908215, 33.506382, 38.921913>,  <35.288628, 33.342690, 38.605534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908215, 33.506382, 38.921913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.617725, 33.684135, 39.131721>,  <35.443432, 33.790787, 39.257607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.617725, 33.684135, 39.131721>,  <35.908215, 33.506382, 38.921913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617725, 33.684135, 39.131721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523067, -0.137928, 0.841057,
		0.446099, 0.885155, -0.132276,
		-0.726221, 0.444384, 0.524525,
		35.399860, 33.817451, 39.289078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307259, 33.981945, 39.451534>,  <35.908215, 33.506382, 38.921913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307259, 33.981945, 39.451534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.937809, 33.888309, 39.572941>,  <35.716141, 33.832127, 39.645782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.937809, 33.888309, 39.572941>,  <36.307259, 33.981945, 39.451534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937809, 33.888309, 39.572941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340623, -0.138162, 0.929993,
		-0.175770, 0.962347, 0.207347,
		-0.923624, -0.234092, 0.303513,
		35.660721, 33.818081, 39.663994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195415, 34.324581, 40.090614>,  <36.307259, 33.981945, 39.451534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195415, 34.324581, 40.090614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.896912, 34.058475, 40.081478>,  <35.717812, 33.898811, 40.075996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.896912, 34.058475, 40.081478>,  <36.195415, 34.324581, 40.090614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.896912, 34.058475, 40.081478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154611, -0.206600, 0.966133,
		-0.647453, 0.717453, 0.257034,
		-0.746257, -0.665266, -0.022837,
		35.673035, 33.858894, 40.074627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752953, 34.427395, 40.764900>,  <36.195415, 34.324581, 40.090614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752953, 34.427395, 40.764900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.660286, 34.065819, 40.621113>,  <35.604687, 33.848873, 40.534840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.660286, 34.065819, 40.621113>,  <35.752953, 34.427395, 40.764900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660286, 34.065819, 40.621113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165481, -0.400760, 0.901115,
		-0.958617, 0.149273, 0.242428,
		-0.231668, -0.903941, -0.359473,
		35.590786, 33.794636, 40.513271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422695, 34.076900, 41.355038>,  <35.752953, 34.427395, 40.764900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422695, 34.076900, 41.355038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537479, 33.765099, 41.132317>,  <35.606350, 33.578018, 40.998684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537479, 33.765099, 41.132317>,  <35.422695, 34.076900, 41.355038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537479, 33.765099, 41.132317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346077, -0.457633, 0.819025,
		-0.893243, -0.427727, 0.138443,
		0.286963, -0.779500, -0.556805,
		35.623569, 33.531250, 40.965275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235535, 33.684132, 41.772957>,  <35.422695, 34.076900, 41.355038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235535, 33.684132, 41.772957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.489174, 33.487942, 41.533840>,  <35.641357, 33.370228, 41.390369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.489174, 33.487942, 41.533840>,  <35.235535, 33.684132, 41.772957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489174, 33.487942, 41.533840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444557, -0.401307, 0.800826,
		-0.632682, -0.773555, -0.036425,
		0.634100, -0.490475, -0.597789,
		35.679405, 33.340801, 41.354504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288586, 33.076740, 42.018734>,  <35.235535, 33.684132, 41.772957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288586, 33.076740, 42.018734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.625191, 33.086262, 41.802849>,  <35.827152, 33.091976, 41.673317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.625191, 33.086262, 41.802849>,  <35.288586, 33.076740, 42.018734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625191, 33.086262, 41.802849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443205, -0.601676, 0.664497,
		-0.308912, -0.798386, -0.516869,
		0.841512, 0.023808, -0.539713,
		35.877644, 33.093403, 41.640934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545502, 32.373791, 41.961269>,  <35.288586, 33.076740, 42.018734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545502, 32.373791, 41.961269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.858727, 32.606907, 41.874401>,  <36.046661, 32.746777, 41.822281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.858727, 32.606907, 41.874401>,  <35.545502, 32.373791, 41.961269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858727, 32.606907, 41.874401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572689, -0.539483, 0.617240,
		0.242567, -0.607707, -0.756210,
		0.783064, 0.582795, -0.217166,
		36.093647, 32.781746, 41.809250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056614, 31.954311, 41.910622>,  <35.545502, 32.373791, 41.961269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056614, 31.954311, 41.910622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185452, 32.318150, 42.015610>,  <36.262756, 32.536453, 42.078602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185452, 32.318150, 42.015610>,  <36.056614, 31.954311, 41.910622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185452, 32.318150, 42.015610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275974, -0.355421, 0.893036,
		0.905589, -0.215209, -0.365505,
		0.322097, 0.909594, 0.262474,
		36.282082, 32.591026, 42.094353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718296, 31.818768, 42.185726>,  <36.056614, 31.954311, 41.910622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718296, 31.818768, 42.185726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.613750, 32.182198, 42.316067>,  <36.551022, 32.400257, 42.394272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.613750, 32.182198, 42.316067>,  <36.718296, 31.818768, 42.185726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.613750, 32.182198, 42.316067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419186, -0.197249, 0.886214,
		0.869466, 0.368220, -0.329308,
		-0.261366, 0.908574, 0.325854,
		36.535339, 32.454769, 42.413822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234779, 31.997114, 42.572353>,  <36.718296, 31.818768, 42.185726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234779, 31.997114, 42.572353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.934483, 32.228043, 42.700783>,  <36.754307, 32.366600, 42.777840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.934483, 32.228043, 42.700783>,  <37.234779, 31.997114, 42.572353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934483, 32.228043, 42.700783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232943, -0.223459, 0.946469,
		0.618165, 0.785344, 0.033276,
		-0.750739, 0.577322, 0.321075,
		36.709259, 32.401237, 42.797104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560532, 32.390888, 43.155769>,  <37.234779, 31.997114, 42.572353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560532, 32.390888, 43.155769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.166912, 32.456303, 43.183807>,  <36.930740, 32.495552, 43.200630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.166912, 32.456303, 43.183807>,  <37.560532, 32.390888, 43.155769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166912, 32.456303, 43.183807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060126, -0.065126, 0.996064,
		0.167453, 0.984386, 0.054254,
		-0.984045, 0.163532, 0.070093,
		36.871700, 32.505363, 43.204834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410248, 33.042297, 43.588093>,  <37.560532, 32.390888, 43.155769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410248, 33.042297, 43.588093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098473, 32.791706, 43.587395>,  <36.911407, 32.641354, 43.586975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098473, 32.791706, 43.587395>,  <37.410248, 33.042297, 43.588093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098473, 32.791706, 43.587395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048554, -0.063181, 0.996820,
		-0.624592, 0.776878, 0.079663,
		-0.779441, -0.626473, -0.001742,
		36.864639, 32.603764, 43.586872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908669, 33.345989, 44.056320>,  <37.410248, 33.042297, 43.588093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908669, 33.345989, 44.056320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830807, 32.954975, 44.023975>,  <36.784092, 32.720367, 44.004570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830807, 32.954975, 44.023975>,  <36.908669, 33.345989, 44.056320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830807, 32.954975, 44.023975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158182, -0.050071, 0.986139,
		-0.968034, 0.204744, -0.144882,
		-0.194651, -0.977534, -0.080858,
		36.772411, 32.661716, 43.999718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366089, 33.239079, 44.555321>,  <36.908669, 33.345989, 44.056320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366089, 33.239079, 44.555321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488808, 32.863209, 44.494804>,  <36.562439, 32.637688, 44.458496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488808, 32.863209, 44.494804>,  <36.366089, 33.239079, 44.555321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488808, 32.863209, 44.494804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230356, -0.227541, 0.946129,
		-0.923476, -0.255423, -0.286269,
		0.306802, -0.939672, -0.151291,
		36.580849, 32.581306, 44.449417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978367, 32.792480, 45.021049>,  <36.366089, 33.239079, 44.555321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978367, 32.792480, 45.021049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.288883, 32.555805, 44.934067>,  <36.475193, 32.413799, 44.881878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.288883, 32.555805, 44.934067>,  <35.978367, 32.792480, 45.021049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288883, 32.555805, 44.934067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065910, -0.266888, 0.961471,
		-0.626925, -0.760710, -0.168184,
		0.776287, -0.591685, -0.217458,
		36.521770, 32.378300, 44.868828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889618, 32.055660, 45.302914>,  <35.978367, 32.792480, 45.021049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889618, 32.055660, 45.302914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.283638, 32.105377, 45.255184>,  <36.520050, 32.135208, 45.226547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.283638, 32.105377, 45.255184>,  <35.889618, 32.055660, 45.302914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283638, 32.105377, 45.255184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155010, -0.336992, 0.928660,
		0.075214, -0.933268, -0.351218,
		0.985046, 0.124290, -0.119319,
		36.579151, 32.142666, 45.219387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253521, 31.487011, 45.678825>,  <35.889618, 32.055660, 45.302914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.253521, 31.487011, 45.678825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.513718, 31.789188, 45.647427>,  <36.669838, 31.970495, 45.628586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.513718, 31.789188, 45.647427>,  <36.253521, 31.487011, 45.678825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.513718, 31.789188, 45.647427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307205, -0.167177, 0.936844,
		0.694610, -0.633526, -0.340824,
		0.650493, 0.755445, -0.078500,
		36.708866, 32.015823, 45.623878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709660, 31.181293, 46.107506>,  <36.253521, 31.487011, 45.678825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709660, 31.181293, 46.107506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769985, 31.573862, 46.060066>,  <36.806179, 31.809404, 46.031601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769985, 31.573862, 46.060066>,  <36.709660, 31.181293, 46.107506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769985, 31.573862, 46.060066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247590, 0.078648, 0.965668,
		0.957055, -0.174999, -0.231129,
		0.150813, 0.981423, -0.118598,
		36.815228, 31.868288, 46.024487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359791, 31.273830, 46.401440>,  <36.709660, 31.181293, 46.107506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.359791, 31.273830, 46.401440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.155373, 31.617388, 46.387939>,  <37.032722, 31.823523, 46.379841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.155373, 31.617388, 46.387939>,  <37.359791, 31.273830, 46.401440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155373, 31.617388, 46.387939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143664, 0.124060, 0.981820,
		0.847464, 0.496904, -0.186792,
		-0.511043, 0.858892, -0.033749,
		37.002060, 31.875055, 46.377815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784260, 31.710928, 46.847847>,  <37.359791, 31.273830, 46.401440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784260, 31.710928, 46.847847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439331, 31.910868, 46.815475>,  <37.232372, 32.030830, 46.796051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439331, 31.910868, 46.815475>,  <37.784260, 31.710928, 46.847847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439331, 31.910868, 46.815475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156380, 0.414903, 0.896326,
		0.481606, 0.760267, -0.435947,
		-0.862323, 0.499849, -0.080929,
		37.180634, 32.060822, 46.791195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022549, 32.439335, 46.982372>,  <37.784260, 31.710928, 46.847847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022549, 32.439335, 46.982372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.627483, 32.412247, 47.038849>,  <37.390446, 32.395992, 47.072735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.627483, 32.412247, 47.038849>,  <38.022549, 32.439335, 46.982372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627483, 32.412247, 47.038849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104295, 0.388077, 0.915707,
		-0.116807, 0.919135, -0.376226,
		-0.987663, -0.067723, 0.141192,
		37.331184, 32.391930, 47.081207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766006, 33.075523, 47.209209>,  <38.022549, 32.439335, 46.982372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766006, 33.075523, 47.209209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.527893, 32.784637, 47.345909>,  <37.385025, 32.610104, 47.427929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.527893, 32.784637, 47.345909>,  <37.766006, 33.075523, 47.209209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527893, 32.784637, 47.345909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077306, 0.371506, 0.925206,
		-0.799787, 0.577180, -0.164934,
		-0.595285, -0.727218, 0.341745,
		37.349308, 32.566471, 47.448433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547798, 33.301151, 47.787888>,  <37.766006, 33.075523, 47.209209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547798, 33.301151, 47.787888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.371403, 32.953362, 47.876926>,  <37.265568, 32.744690, 47.930351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.371403, 32.953362, 47.876926>,  <37.547798, 33.301151, 47.787888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371403, 32.953362, 47.876926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152129, 0.172015, 0.973277,
		-0.884527, 0.463065, 0.056415,
		-0.440986, -0.869472, 0.222597,
		37.239105, 32.692520, 47.943707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923912, 33.441711, 48.205536>,  <37.547798, 33.301151, 47.787888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923912, 33.441711, 48.205536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.049850, 33.067776, 48.271198>,  <37.125412, 32.843414, 48.310596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.049850, 33.067776, 48.271198>,  <36.923912, 33.441711, 48.205536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049850, 33.067776, 48.271198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009840, 0.176160, 0.984312,
		-0.949091, -0.308293, 0.064662,
		0.314847, -0.934839, 0.164159,
		37.144306, 32.787323, 48.320446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467209, 33.116291, 48.699604>,  <36.923912, 33.441711, 48.205536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467209, 33.116291, 48.699604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.800446, 32.899124, 48.741947>,  <37.000385, 32.768826, 48.767353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.800446, 32.899124, 48.741947>,  <36.467209, 33.116291, 48.699604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800446, 32.899124, 48.741947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002261, 0.194719, 0.980856,
		-0.553133, -0.816902, 0.163446,
		0.833089, -0.542914, 0.105858,
		37.050373, 32.736252, 48.773705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391941, 32.605530, 49.217064>,  <36.467209, 33.116291, 48.699604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391941, 32.605530, 49.217064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787106, 32.666271, 49.204620>,  <37.024204, 32.702717, 49.197155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787106, 32.666271, 49.204620>,  <36.391941, 32.605530, 49.217064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787106, 32.666271, 49.204620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022770, 0.056338, 0.998152,
		0.153329, -0.986795, 0.052199,
		0.987913, 0.151858, -0.031108,
		37.083481, 32.711826, 49.195290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576324, 32.295837, 49.765930>,  <36.391941, 32.605530, 49.217064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576324, 32.295837, 49.765930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.912506, 32.499035, 49.690479>,  <37.114216, 32.620953, 49.645210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.912506, 32.499035, 49.690479>,  <36.576324, 32.295837, 49.765930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912506, 32.499035, 49.690479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078553, 0.230206, 0.969966,
		0.536162, -0.830028, 0.153573,
		0.840453, 0.507995, -0.188629,
		37.164642, 32.651432, 49.633892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030209, 32.048050, 50.208576>,  <36.576324, 32.295837, 49.765930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030209, 32.048050, 50.208576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.166740, 32.407875, 50.099564>,  <37.248661, 32.623772, 50.034157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.166740, 32.407875, 50.099564>,  <37.030209, 32.048050, 50.208576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166740, 32.407875, 50.099564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041409, 0.304059, 0.951753,
		0.939031, -0.313577, 0.141035,
		0.341330, 0.899565, -0.272535,
		37.269138, 32.677746, 50.017803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704601, 32.103470, 50.539143>,  <37.030209, 32.048050, 50.208576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704601, 32.103470, 50.539143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.554779, 32.465221, 50.457352>,  <37.464886, 32.682274, 50.408276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.554779, 32.465221, 50.457352>,  <37.704601, 32.103470, 50.539143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554779, 32.465221, 50.457352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037100, 0.205737, 0.977904,
		0.926464, 0.373862, -0.043507,
		-0.374552, 0.904378, -0.204478,
		37.442413, 32.736534, 50.396008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115051, 32.503544, 50.962597>,  <37.704601, 32.103470, 50.539143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115051, 32.503544, 50.962597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788574, 32.714798, 50.868866>,  <37.592690, 32.841549, 50.812626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788574, 32.714798, 50.868866>,  <38.115051, 32.503544, 50.962597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788574, 32.714798, 50.868866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111095, 0.254550, 0.960657,
		0.567005, 0.810110, -0.149088,
		-0.816188, 0.528134, -0.234331,
		37.543716, 32.873238, 50.798565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176918, 33.187607, 51.313911>,  <38.115051, 32.503544, 50.962597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.176918, 33.187607, 51.313911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785580, 33.172138, 51.232582>,  <37.550777, 33.162857, 51.183784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785580, 33.172138, 51.232582>,  <38.176918, 33.187607, 51.313911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785580, 33.172138, 51.232582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197928, 0.461995, 0.864514,
		0.060505, 0.886039, -0.459646,
		-0.978347, -0.038670, -0.203325,
		37.492077, 33.160538, 51.171585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949993, 33.808018, 51.418568>,  <38.176918, 33.187607, 51.313911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949993, 33.808018, 51.418568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.648445, 33.550430, 51.470699>,  <37.467518, 33.395878, 51.501980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.648445, 33.550430, 51.470699>,  <37.949993, 33.808018, 51.418568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648445, 33.550430, 51.470699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054773, 0.259274, 0.964249,
		-0.654738, 0.719778, -0.230730,
		-0.753868, -0.643969, 0.130332,
		37.422283, 33.357239, 51.509800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219654, 33.781651, 52.149231>,  <37.949993, 33.808018, 51.418568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219654, 33.781651, 52.149231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.508286, 34.017246, 52.294788>,  <38.681465, 34.158604, 52.382122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.508286, 34.017246, 52.294788>,  <38.219654, 33.781651, 52.149231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508286, 34.017246, 52.294788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161972, 0.367396, -0.915852,
		-0.673122, 0.719797, 0.169704,
		0.721576, 0.588993, 0.363889,
		38.724758, 34.193943, 52.403954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208004, 34.410553, 51.778934>,  <38.219654, 33.781651, 52.149231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208004, 34.410553, 51.778934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585533, 34.392223, 51.909843>,  <38.812050, 34.381226, 51.988388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585533, 34.392223, 51.909843>,  <38.208004, 34.410553, 51.778934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585533, 34.392223, 51.909843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330081, 0.083241, -0.940275,
		0.015848, 0.995475, 0.093691,
		0.943820, -0.045828, 0.327268,
		38.868679, 34.378475, 52.008022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557129, 35.096409, 51.642597>,  <38.208004, 34.410553, 51.778934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557129, 35.096409, 51.642597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.827705, 34.803139, 51.670574>,  <38.990051, 34.627178, 51.687359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.827705, 34.803139, 51.670574>,  <38.557129, 35.096409, 51.642597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827705, 34.803139, 51.670574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225167, 0.115454, -0.967456,
		0.701237, 0.670171, 0.243183,
		0.676437, -0.733172, 0.069939,
		39.030636, 34.583187, 51.691555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161644, 35.362659, 51.286434>,  <38.557129, 35.096409, 51.642597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161644, 35.362659, 51.286434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.186398, 34.963444, 51.290100>,  <39.201248, 34.723915, 51.292301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.186398, 34.963444, 51.290100>,  <39.161644, 35.362659, 51.286434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186398, 34.963444, 51.290100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268634, 0.007813, -0.963211,
		0.961252, 0.062069, 0.268592,
		0.061884, -0.998041, 0.009164,
		39.204964, 34.664032, 51.292850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764912, 35.176579, 50.903648>,  <39.161644, 35.362659, 51.286434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.764912, 35.176579, 50.903648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.560997, 34.832500, 50.909031>,  <39.438648, 34.626053, 50.912262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.560997, 34.832500, 50.909031>,  <39.764912, 35.176579, 50.903648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560997, 34.832500, 50.909031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150865, -0.104788, -0.982985,
		0.846970, -0.499081, 0.183193,
		-0.509785, -0.860196, 0.013458,
		39.408062, 34.574440, 50.913067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079132, 34.741619, 50.483398>,  <39.764912, 35.176579, 50.903648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079132, 34.741619, 50.483398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.752647, 34.514648, 50.526882>,  <39.556755, 34.378468, 50.552975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.752647, 34.514648, 50.526882>,  <40.079132, 34.741619, 50.483398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752647, 34.514648, 50.526882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020642, -0.159406, -0.986997,
		0.577380, -0.807846, 0.118396,
		-0.816215, -0.567429, 0.108713,
		39.507782, 34.344421, 50.559498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242321, 34.197441, 50.069572>,  <40.079132, 34.741619, 50.483398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.242321, 34.197441, 50.069572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.842648, 34.211380, 50.061329>,  <39.602844, 34.219746, 50.056381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.842648, 34.211380, 50.061329>,  <40.242321, 34.197441, 50.069572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.842648, 34.211380, 50.061329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017046, -0.099717, -0.994870,
		-0.036724, -0.994405, 0.099042,
		-0.999180, 0.034847, -0.020612,
		39.542892, 34.221836, 50.055145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.157375, 33.725266, 49.601849>,  <40.242321, 34.197441, 50.069572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.157375, 33.725266, 49.601849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.823982, 33.944992, 49.625675>,  <39.623947, 34.076828, 49.639973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.823982, 33.944992, 49.625675>,  <40.157375, 33.725266, 49.601849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823982, 33.944992, 49.625675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112972, -0.063886, -0.991542,
		-0.540869, -0.833166, 0.115306,
		-0.833485, 0.549321, 0.059570,
		39.573936, 34.109787, 49.643547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543850, 33.319267, 49.303547>,  <40.157375, 33.725266, 49.601849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.543850, 33.319267, 49.303547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.448875, 33.707394, 49.285160>,  <39.391891, 33.940269, 49.274128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.448875, 33.707394, 49.285160>,  <39.543850, 33.319267, 49.303547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448875, 33.707394, 49.285160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122843, -0.076937, -0.989439,
		-0.963604, -0.229282, 0.137464,
		-0.237437, 0.970315, -0.045971,
		39.377644, 33.998489, 49.271370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110077, 33.351093, 48.826710>,  <39.543850, 33.319267, 49.303547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.110077, 33.351093, 48.826710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192554, 33.740238, 48.868698>,  <39.242043, 33.973724, 48.893890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192554, 33.740238, 48.868698>,  <39.110077, 33.351093, 48.826710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192554, 33.740238, 48.868698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020600, 0.102938, -0.994474,
		-0.978294, 0.207219, 0.001184,
		0.206196, 0.972864, 0.104973,
		39.254414, 34.032097, 48.900188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846466, 33.580215, 48.235073>,  <39.110077, 33.351093, 48.826710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846466, 33.580215, 48.235073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.071819, 33.880711, 48.372623>,  <39.207031, 34.061008, 48.455154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.071819, 33.880711, 48.372623>,  <38.846466, 33.580215, 48.235073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071819, 33.880711, 48.372623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007706, 0.411416, -0.911415,
		-0.826160, 0.516125, 0.225995,
		0.563382, 0.751234, 0.343873,
		39.240833, 34.106079, 48.475784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488590, 34.249371, 48.273293>,  <38.846466, 33.580215, 48.235073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.488590, 34.249371, 48.273293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875229, 34.324959, 48.204041>,  <39.107212, 34.370312, 48.162491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875229, 34.324959, 48.204041>,  <38.488590, 34.249371, 48.273293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875229, 34.324959, 48.204041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207520, 0.180663, -0.961403,
		-0.150400, 0.965220, 0.213845,
		0.966600, 0.188973, -0.173131,
		39.165207, 34.381649, 48.152100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445362, 34.764149, 47.814533>,  <38.488590, 34.249371, 48.273293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445362, 34.764149, 47.814533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.823402, 34.638542, 47.778374>,  <39.050228, 34.563179, 47.756680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.823402, 34.638542, 47.778374>,  <38.445362, 34.764149, 47.814533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823402, 34.638542, 47.778374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005204, 0.291068, -0.956688,
		0.326728, 0.903699, 0.276724,
		0.945104, -0.314017, -0.090397,
		39.106934, 34.544338, 47.751255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630634, 35.281994, 47.285721>,  <38.445362, 34.764149, 47.814533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.630634, 35.281994, 47.285721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.919216, 35.005180, 47.295410>,  <39.092365, 34.839092, 47.301224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.919216, 35.005180, 47.295410>,  <38.630634, 35.281994, 47.285721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919216, 35.005180, 47.295410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093944, 0.063160, -0.993572,
		0.686057, 0.719095, 0.110580,
		0.721457, -0.692036, 0.024223,
		39.135654, 34.797569, 47.302677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256081, 35.631618, 46.945709>,  <38.630634, 35.281994, 47.285721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256081, 35.631618, 46.945709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.244007, 35.232250, 46.926743>,  <39.236763, 34.992630, 46.915363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.244007, 35.232250, 46.926743>,  <39.256081, 35.631618, 46.945709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244007, 35.232250, 46.926743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031670, 0.046463, -0.998418,
		0.999043, -0.031634, 0.030218,
		-0.030180, -0.998419, -0.047420,
		39.234955, 34.932724, 46.912518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705338, 35.415707, 46.344933>,  <39.256081, 35.631618, 46.945709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.705338, 35.415707, 46.344933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.485744, 35.087120, 46.406666>,  <39.353989, 34.889969, 46.443707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.485744, 35.087120, 46.406666>,  <39.705338, 35.415707, 46.344933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485744, 35.087120, 46.406666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133822, -0.095881, -0.986356,
		0.825054, -0.562142, -0.057294,
		-0.548979, -0.821464, 0.154334,
		39.321053, 34.840679, 46.452965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933216, 34.954624, 45.901451>,  <39.705338, 35.415707, 46.344933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933216, 34.954624, 45.901451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573048, 34.811127, 45.999882>,  <39.356949, 34.725029, 46.058941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573048, 34.811127, 45.999882>,  <39.933216, 34.954624, 45.901451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573048, 34.811127, 45.999882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142775, -0.290629, -0.946124,
		0.410932, -0.887039, 0.210468,
		-0.900417, -0.358743, 0.246076,
		39.302921, 34.703503, 46.073704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.773006, 34.203320, 45.667557>,  <39.933216, 34.954624, 45.901451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.773006, 34.203320, 45.667557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401134, 34.341274, 45.719334>,  <39.178013, 34.424046, 45.750401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401134, 34.341274, 45.719334>,  <39.773006, 34.203320, 45.667557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401134, 34.341274, 45.719334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306273, -0.528396, -0.791830,
		-0.204694, -0.775790, 0.596867,
		-0.929676, 0.344887, 0.129443,
		39.122231, 34.444740, 45.758167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369984, 33.750595, 45.187412>,  <39.773006, 34.203320, 45.667557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369984, 33.750595, 45.187412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.123005, 34.053112, 45.273930>,  <38.974819, 34.234623, 45.325840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.123005, 34.053112, 45.273930>,  <39.369984, 33.750595, 45.187412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123005, 34.053112, 45.273930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425063, -0.089430, -0.900735,
		-0.661875, -0.648094, 0.376691,
		-0.617448, 0.756291, 0.216289,
		38.937771, 34.279999, 45.338818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673889, 33.499805, 44.841488>,  <39.369984, 33.750595, 45.187412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673889, 33.499805, 44.841488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.669334, 33.895645, 44.898857>,  <38.666603, 34.133148, 44.933277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.669334, 33.895645, 44.898857>,  <38.673889, 33.499805, 44.841488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669334, 33.895645, 44.898857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394143, 0.127376, -0.910179,
		-0.918978, -0.066893, 0.388592,
		-0.011387, 0.989596, 0.143421,
		38.665916, 34.192524, 44.941883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055504, 33.653572, 44.641834>,  <38.673889, 33.499805, 44.841488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055504, 33.653572, 44.641834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.286621, 33.978230, 44.607471>,  <38.425293, 34.173023, 44.586853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.286621, 33.978230, 44.607471>,  <38.055504, 33.653572, 44.641834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.286621, 33.978230, 44.607471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404653, 0.193468, -0.893771,
		-0.708806, 0.551180, 0.440221,
		0.577797, 0.811647, -0.085905,
		38.459961, 34.221725, 44.581699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637863, 34.204742, 44.379513>,  <38.055504, 33.653572, 44.641834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637863, 34.204742, 44.379513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.009434, 34.293812, 44.261181>,  <38.232376, 34.347256, 44.190182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.009434, 34.293812, 44.261181>,  <37.637863, 34.204742, 44.379513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009434, 34.293812, 44.261181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358749, 0.343469, -0.867945,
		-0.091663, 0.912383, 0.398942,
		0.928923, 0.222678, -0.295833,
		38.288109, 34.360615, 44.172432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462284, 34.593632, 43.812721>,  <37.637863, 34.204742, 44.379513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462284, 34.593632, 43.812721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.860134, 34.557632, 43.792244>,  <38.098843, 34.536034, 43.779957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.860134, 34.557632, 43.792244>,  <37.462284, 34.593632, 43.812721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860134, 34.557632, 43.792244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020921, 0.309573, -0.950645,
		0.101408, 0.946607, 0.306027,
		0.994625, -0.090001, -0.051198,
		38.158520, 34.530632, 43.776886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729416, 35.203358, 43.517174>,  <37.462284, 34.593632, 43.812721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729416, 35.203358, 43.517174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020031, 34.934620, 43.459522>,  <38.194401, 34.773376, 43.424931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020031, 34.934620, 43.459522>,  <37.729416, 35.203358, 43.517174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020031, 34.934620, 43.459522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101804, 0.102192, -0.989542,
		0.679545, 0.733611, 0.005850,
		0.726536, -0.671842, -0.144129,
		38.237991, 34.733067, 43.416283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191608, 35.379852, 42.868050>,  <37.729416, 35.203358, 43.517174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191608, 35.379852, 42.868050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.271133, 34.991009, 42.917801>,  <38.318848, 34.757702, 42.947651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.271133, 34.991009, 42.917801>,  <38.191608, 35.379852, 42.868050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271133, 34.991009, 42.917801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115117, -0.102870, -0.988011,
		0.973253, 0.210750, 0.091455,
		0.198815, -0.972112, 0.124380,
		38.330776, 34.699375, 42.955116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767921, 35.256649, 42.479145>,  <38.191608, 35.379852, 42.868050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767921, 35.256649, 42.479145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.579746, 34.906239, 42.521595>,  <38.466843, 34.695992, 42.547066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.579746, 34.906239, 42.521595>,  <38.767921, 35.256649, 42.479145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579746, 34.906239, 42.521595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083572, -0.163954, -0.982922,
		0.878467, -0.453534, 0.150342,
		-0.470437, -0.876029, 0.106125,
		38.438614, 34.643429, 42.553432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163818, 34.845329, 42.071041>,  <38.767921, 35.256649, 42.479145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.163818, 34.845329, 42.071041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.821732, 34.642765, 42.115143>,  <38.616482, 34.521225, 42.141602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.821732, 34.642765, 42.115143>,  <39.163818, 34.845329, 42.071041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821732, 34.642765, 42.115143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064597, -0.106918, -0.992167,
		0.514234, -0.855637, 0.058725,
		-0.855214, -0.506412, 0.110252,
		38.565166, 34.490841, 42.148220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232063, 34.339569, 41.554348>,  <39.163818, 34.845329, 42.071041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232063, 34.339569, 41.554348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.840778, 34.361019, 41.634575>,  <38.606007, 34.373890, 41.682713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.840778, 34.361019, 41.634575>,  <39.232063, 34.339569, 41.554348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840778, 34.361019, 41.634575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207430, -0.212026, -0.954996,
		-0.008683, -0.975792, 0.218529,
		-0.978211, 0.053622, 0.200568,
		38.547314, 34.377106, 41.694744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930279, 33.729271, 41.273022>,  <39.232063, 34.339569, 41.554348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930279, 33.729271, 41.273022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.625191, 33.985958, 41.305168>,  <38.442139, 34.139973, 41.324455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.625191, 33.985958, 41.305168>,  <38.930279, 33.729271, 41.273022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625191, 33.985958, 41.305168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227474, -0.149862, -0.962184,
		-0.605408, -0.752155, 0.260276,
		-0.762717, 0.641720, 0.080368,
		38.396378, 34.178474, 41.329277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380150, 33.422840, 40.823566>,  <38.930279, 33.729271, 41.273022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380150, 33.422840, 40.823566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.258846, 33.802288, 40.859688>,  <38.186066, 34.029957, 40.881363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.258846, 33.802288, 40.859688>,  <38.380150, 33.422840, 40.823566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258846, 33.802288, 40.859688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203803, 0.028009, -0.978611,
		-0.930860, -0.315174, 0.184838,
		-0.303255, 0.948621, 0.090306,
		38.167870, 34.086876, 40.886780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659843, 33.467216, 40.572300>,  <38.380150, 33.422840, 40.823566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659843, 33.467216, 40.572300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.783596, 33.847538, 40.565975>,  <37.857849, 34.075733, 40.562180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.783596, 33.847538, 40.565975>,  <37.659843, 33.467216, 40.572300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783596, 33.847538, 40.565975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174466, 0.040409, -0.983834,
		-0.934796, 0.307141, 0.178385,
		0.309384, 0.950806, -0.015812,
		37.876411, 34.132778, 40.561234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179230, 33.776085, 40.047451>,  <37.659843, 33.467216, 40.572300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179230, 33.776085, 40.047451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.480007, 34.035717, 40.093536>,  <37.660473, 34.191498, 40.121185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.480007, 34.035717, 40.093536>,  <37.179230, 33.776085, 40.047451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480007, 34.035717, 40.093536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104663, 0.055001, -0.992986,
		-0.650866, 0.758728, -0.026577,
		0.751944, 0.649082, 0.115209,
		37.705589, 34.230442, 40.128098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054970, 34.220814, 39.618820>,  <37.179230, 33.776085, 40.047451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054970, 34.220814, 39.618820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.449528, 34.274921, 39.656208>,  <37.686260, 34.307384, 39.678642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.449528, 34.274921, 39.656208>,  <37.054970, 34.220814, 39.618820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449528, 34.274921, 39.656208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053968, 0.270621, -0.961172,
		-0.155311, 0.953135, 0.259638,
		0.986390, 0.135269, 0.093469,
		37.745445, 34.315502, 39.684250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171722, 34.895809, 39.345673>,  <37.054970, 34.220814, 39.618820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171722, 34.895809, 39.345673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.506790, 34.677589, 39.335152>,  <37.707829, 34.546658, 39.328838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.506790, 34.677589, 39.335152>,  <37.171722, 34.895809, 39.345673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506790, 34.677589, 39.335152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132514, 0.249714, -0.959210,
		0.529864, 0.800011, 0.281470,
		0.837666, -0.545550, -0.026302,
		37.758091, 34.513924, 39.327263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643368, 35.356899, 39.060856>,  <37.171722, 34.895809, 39.345673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643368, 35.356899, 39.060856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.810219, 34.997654, 39.005142>,  <37.910332, 34.782108, 38.971714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.810219, 34.997654, 39.005142>,  <37.643368, 35.356899, 39.060856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.810219, 34.997654, 39.005142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197458, 0.239146, -0.950694,
		0.887137, 0.369063, 0.277094,
		0.417132, -0.898110, -0.139281,
		37.935360, 34.728222, 38.963360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196724, 35.520527, 38.779480>,  <37.643368, 35.356899, 39.060856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196724, 35.520527, 38.779480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132599, 35.134239, 38.697815>,  <38.094124, 34.902466, 38.648815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132599, 35.134239, 38.697815>,  <38.196724, 35.520527, 38.779480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132599, 35.134239, 38.697815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447043, 0.113377, -0.887298,
		0.880029, -0.233516, 0.413543,
		-0.160312, -0.965720, -0.204167,
		38.084507, 34.844524, 38.636566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811947, 35.311554, 38.535244>,  <38.196724, 35.520527, 38.779480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811947, 35.311554, 38.535244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.536201, 35.074192, 38.369038>,  <38.370754, 34.931774, 38.269314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.536201, 35.074192, 38.369038>,  <38.811947, 35.311554, 38.535244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536201, 35.074192, 38.369038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458080, 0.087270, -0.884616,
		0.561197, -0.800159, 0.211666,
		-0.689362, -0.593405, -0.415513,
		38.329391, 34.896172, 38.244385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224998, 34.802032, 38.169567>,  <38.811947, 35.311554, 38.535244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224998, 34.802032, 38.169567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.866077, 34.736889, 38.005455>,  <38.650726, 34.697803, 37.906990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.866077, 34.736889, 38.005455>,  <39.224998, 34.802032, 38.169567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866077, 34.736889, 38.005455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390574, 0.140155, -0.909840,
		0.205682, -0.976644, -0.062151,
		-0.897300, -0.162863, -0.410279,
		38.596886, 34.688030, 37.882370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.405602, 34.332989, 37.731445>,  <39.224998, 34.802032, 38.169567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.405602, 34.332989, 37.731445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.056511, 34.487396, 37.611885>,  <38.847057, 34.580040, 37.540150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.056511, 34.487396, 37.611885>,  <39.405602, 34.332989, 37.731445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056511, 34.487396, 37.611885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366796, 0.114380, -0.923243,
		-0.322205, -0.915371, -0.241413,
		-0.872723, 0.386023, -0.298900,
		38.794693, 34.603203, 37.522217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293255, 34.034840, 37.219177>,  <39.405602, 34.332989, 37.731445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.293255, 34.034840, 37.219177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.048149, 34.347973, 37.175922>,  <38.901085, 34.535854, 37.149971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.048149, 34.347973, 37.175922>,  <39.293255, 34.034840, 37.219177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.048149, 34.347973, 37.175922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496551, 0.274953, -0.823309,
		-0.614781, -0.558189, -0.557197,
		-0.612765, 0.782832, -0.108133,
		38.864319, 34.582821, 37.143482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047226, 34.035702, 36.479748>,  <39.293255, 34.034840, 37.219177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047226, 34.035702, 36.479748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.010101, 34.416714, 36.595722>,  <38.987827, 34.645321, 36.665306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.010101, 34.416714, 36.595722>,  <39.047226, 34.035702, 36.479748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.010101, 34.416714, 36.595722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449069, 0.299944, -0.841647,
		-0.888663, 0.052088, -0.455592,
		-0.092813, 0.952534, 0.289940,
		38.982258, 34.702473, 36.682705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831909, 34.419525, 35.888611>,  <39.047226, 34.035702, 36.479748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831909, 34.419525, 35.888611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016785, 34.685131, 36.123718>,  <39.127708, 34.844494, 36.264782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016785, 34.685131, 36.123718>,  <38.831909, 34.419525, 35.888611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016785, 34.685131, 36.123718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298963, 0.507335, -0.808228,
		-0.834868, 0.549273, 0.035968,
		0.462186, 0.664011, 0.587770,
		39.155441, 34.884335, 36.300049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582729, 35.179821, 35.816570>,  <38.831909, 34.419525, 35.888611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582729, 35.179821, 35.816570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.971741, 35.155144, 35.906353>,  <39.205147, 35.140339, 35.960220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.971741, 35.155144, 35.906353>,  <38.582729, 35.179821, 35.816570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971741, 35.155144, 35.906353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225429, 0.489980, -0.842082,
		-0.058029, 0.869548, 0.490427,
		0.972530, -0.061691, 0.224454,
		39.263500, 35.136635, 35.973690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808529, 35.864883, 35.898273>,  <38.582729, 35.179821, 35.816570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808529, 35.864883, 35.898273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069405, 35.595314, 35.759438>,  <39.225929, 35.433571, 35.676136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069405, 35.595314, 35.759438>,  <38.808529, 35.864883, 35.898273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069405, 35.595314, 35.759438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021717, 0.474288, -0.880102,
		0.757741, 0.566459, 0.323963,
		0.652194, -0.673925, -0.347085,
		39.265064, 35.393135, 35.655312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404938, 36.165550, 35.644291>,  <38.808529, 35.864883, 35.898273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404938, 36.165550, 35.644291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.328739, 35.839535, 35.425415>,  <39.283020, 35.643925, 35.294090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.328739, 35.839535, 35.425415>,  <39.404938, 36.165550, 35.644291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328739, 35.839535, 35.425415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096160, 0.539225, -0.836654,
		0.976966, -0.212000, -0.024348,
		-0.190500, -0.815041, -0.547191,
		39.271591, 35.595024, 35.261257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922726, 36.096889, 35.129707>,  <39.404938, 36.165550, 35.644291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.922726, 36.096889, 35.129707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.606552, 35.898178, 34.986359>,  <39.416847, 35.778950, 34.900349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.606552, 35.898178, 34.986359>,  <39.922726, 36.096889, 35.129707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.606552, 35.898178, 34.986359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055320, 0.524756, -0.849453,
		0.610050, -0.691258, -0.387301,
		-0.790430, -0.496783, -0.358368,
		39.369423, 35.749142, 34.878849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956474, 36.758278, 35.537235>,  <39.922726, 36.096889, 35.129707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956474, 36.758278, 35.537235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.113964, 37.095150, 35.389881>,  <40.208458, 37.297276, 35.301468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.113964, 37.095150, 35.389881>,  <39.956474, 36.758278, 35.537235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.113964, 37.095150, 35.389881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628775, 0.045591, 0.776250,
		0.670539, -0.537261, -0.511593,
		0.393725, 0.842183, -0.368387,
		40.232082, 37.347805, 35.279366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697418, 36.718292, 35.265503>,  <39.956474, 36.758278, 35.537235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.697418, 36.718292, 35.265503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.583233, 37.070595, 35.416645>,  <40.514721, 37.281979, 35.507328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.583233, 37.070595, 35.416645>,  <40.697418, 36.718292, 35.265503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.583233, 37.070595, 35.416645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698525, -0.078728, 0.711242,
		0.656180, 0.466974, -0.592758,
		-0.285465, 0.880759, 0.377853,
		40.497593, 37.334824, 35.530003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.934174, 35.978294, 35.439594>,  <40.697418, 36.718292, 35.265503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.934174, 35.978294, 35.439594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.283146, 35.787674, 35.396198>,  <41.492527, 35.673302, 35.370159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.283146, 35.787674, 35.396198>,  <40.934174, 35.978294, 35.439594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.283146, 35.787674, 35.396198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485779, 0.821098, 0.299694,
		-0.053737, -0.314164, 0.947847,
		0.872428, -0.476549, -0.108491,
		41.544876, 35.644711, 35.363651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.359531, 36.212097, 35.988972>,  <40.934174, 35.978294, 35.439594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.359531, 36.212097, 35.988972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.647705, 36.045116, 35.767448>,  <41.820610, 35.944927, 35.634533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.647705, 36.045116, 35.767448>,  <41.359531, 36.212097, 35.988972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.647705, 36.045116, 35.767448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614357, 0.754653, 0.230359,
		0.321769, -0.506194, 0.800145,
		0.720438, -0.417452, -0.553807,
		41.863838, 35.919880, 35.601307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.921272, 36.195583, 36.390202>,  <41.359531, 36.212097, 35.988972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.921272, 36.195583, 36.390202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.061432, 36.204918, 36.015678>,  <42.145527, 36.210518, 35.790962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.061432, 36.204918, 36.015678>,  <41.921272, 36.195583, 36.390202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.061432, 36.204918, 36.015678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722715, 0.629131, 0.286143,
		0.595739, -0.776949, 0.203580,
		0.350397, 0.023337, -0.936310,
		42.166550, 36.211918, 35.734787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.623573, 36.479580, 36.540054>,  <41.921272, 36.195583, 36.390202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.623573, 36.479580, 36.540054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.596489, 36.505508, 36.141815>,  <42.580238, 36.521065, 35.902870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.596489, 36.505508, 36.141815>,  <42.623573, 36.479580, 36.540054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.596489, 36.505508, 36.141815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635384, 0.772164, 0.007062,
		0.769222, -0.632108, -0.093466,
		-0.067707, 0.064819, -0.995597,
		42.576176, 36.524956, 35.843136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.366474, 36.630333, 36.338291>,  <42.623573, 36.479580, 36.540054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.366474, 36.630333, 36.338291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.139473, 36.725220, 36.022907>,  <43.003273, 36.782150, 35.833675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.139473, 36.725220, 36.022907>,  <43.366474, 36.630333, 36.338291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.139473, 36.725220, 36.022907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541325, 0.829043, -0.140199,
		0.620409, -0.506376, -0.598896,
		-0.567504, 0.237217, -0.788459,
		42.969223, 36.796383, 35.786369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.815422, 36.790913, 35.822071>,  <43.366474, 36.630333, 36.338291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.815422, 36.790913, 35.822071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.467571, 36.971615, 35.742405>,  <43.258862, 37.080036, 35.694603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.467571, 36.971615, 35.742405>,  <43.815422, 36.790913, 35.822071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.467571, 36.971615, 35.742405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474789, 0.875839, -0.086499,
		0.135364, -0.169785, -0.976140,
		-0.869627, 0.451752, -0.199169,
		43.206684, 37.107140, 35.682655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.983688, 37.235916, 35.301754>,  <43.815422, 36.790913, 35.822071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.983688, 37.235916, 35.301754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.647934, 37.375473, 35.468472>,  <43.446484, 37.459206, 35.568501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.647934, 37.375473, 35.468472>,  <43.983688, 37.235916, 35.301754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.647934, 37.375473, 35.468472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356401, 0.932234, -0.062595,
		-0.410386, 0.096004, -0.906844,
		-0.839382, 0.348888, 0.416792,
		43.396118, 37.480141, 35.593510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.683060, 37.845078, 34.807438>,  <43.983688, 37.235916, 35.301754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.683060, 37.845078, 34.807438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.553589, 37.880478, 35.184246>,  <43.475906, 37.901718, 35.410332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.553589, 37.880478, 35.184246>,  <43.683060, 37.845078, 34.807438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.553589, 37.880478, 35.184246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285707, 0.958282, 0.008144,
		-0.902000, 0.271778, -0.335459,
		-0.323678, 0.088497, 0.942020,
		43.456486, 37.907028, 35.466850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.334503, 38.461880, 34.655937>,  <43.683060, 37.845078, 34.807438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.334503, 38.461880, 34.655937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.365826, 38.443382, 35.054279>,  <43.384621, 38.432285, 35.293285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.365826, 38.443382, 35.054279>,  <43.334503, 38.461880, 34.655937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.365826, 38.443382, 35.054279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118056, 0.992325, 0.036792,
		-0.989914, 0.114686, 0.083165,
		0.078307, -0.046239, 0.995856,
		43.389317, 38.429512, 35.353035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.835407, 38.884800, 34.793709>,  <43.334503, 38.461880, 34.655937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.835407, 38.884800, 34.793709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.096226, 38.836514, 35.093113>,  <43.252716, 38.807541, 35.272755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.096226, 38.836514, 35.093113>,  <42.835407, 38.884800, 34.793709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.096226, 38.836514, 35.093113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127223, 0.955824, 0.264980,
		-0.747432, -0.268006, 0.607881,
		0.652043, -0.120718, 0.748510,
		43.291840, 38.800297, 35.317665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.587082, 39.337318, 35.389011>,  <42.835407, 38.884800, 34.793709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.587082, 39.337318, 35.389011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.970242, 39.268379, 35.480854>,  <43.200138, 39.227016, 35.535961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.970242, 39.268379, 35.480854>,  <42.587082, 39.337318, 35.389011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.970242, 39.268379, 35.480854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055668, 0.896084, 0.440380,
		-0.281646, -0.409059, 0.867955,
		0.957902, -0.172348, 0.229607,
		43.257614, 39.216675, 35.549736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.737392, 39.753380, 36.056931>,  <42.587082, 39.337318, 35.389011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.737392, 39.753380, 36.056931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.096310, 39.678646, 35.896950>,  <43.311661, 39.633804, 35.800961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.096310, 39.678646, 35.896950>,  <42.737392, 39.753380, 36.056931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.096310, 39.678646, 35.896950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269353, 0.949536, 0.160719,
		0.349743, -0.251940, 0.902333,
		0.897289, -0.186836, -0.399955,
		43.365498, 39.622597, 35.776962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.134583, 40.193993, 36.379963>,  <42.737392, 39.753380, 36.056931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.134583, 40.193993, 36.379963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.381176, 40.075241, 36.088261>,  <43.529133, 40.003990, 35.913239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.381176, 40.075241, 36.088261>,  <43.134583, 40.193993, 36.379963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.381176, 40.075241, 36.088261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331294, 0.938019, -0.101810,
		0.714278, -0.178832, 0.676628,
		0.616483, -0.296884, -0.729253,
		43.566120, 39.986176, 35.869484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.878460, 40.517239, 36.550716>,  <43.134583, 40.193993, 36.379963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.878460, 40.517239, 36.550716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.884087, 40.443382, 36.157635>,  <43.887463, 40.399071, 35.921783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.884087, 40.443382, 36.157635>,  <43.878460, 40.517239, 36.550716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.884087, 40.443382, 36.157635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533031, 0.832898, -0.148859,
		0.845979, -0.521718, 0.110138,
		0.014071, -0.184638, -0.982706,
		43.888309, 40.387989, 35.862823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.580883, 40.665051, 36.322483>,  <43.878460, 40.517239, 36.550716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.580883, 40.665051, 36.322483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.355747, 40.662201, 35.991867>,  <44.220665, 40.660492, 35.793499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.355747, 40.662201, 35.991867>,  <44.580883, 40.665051, 36.322483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.355747, 40.662201, 35.991867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487072, 0.805045, -0.338620,
		0.667813, -0.593171, -0.449638,
		-0.562838, -0.007129, -0.826537,
		44.186897, 40.660061, 35.743908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.139019, 40.711765, 35.756920>,  <44.580883, 40.665051, 36.322483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.139019, 40.711765, 35.756920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.778423, 40.838825, 35.639339>,  <44.562065, 40.915062, 35.568790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.778423, 40.838825, 35.639339>,  <45.139019, 40.711765, 35.756920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.778423, 40.838825, 35.639339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405735, 0.856683, -0.318550,
		0.150634, -0.406437, -0.901176,
		-0.901492, 0.317654, -0.293952,
		44.507977, 40.934120, 35.551155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.264332, 40.953487, 35.082165>,  <45.139019, 40.711765, 35.756920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.264332, 40.953487, 35.082165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.921490, 41.144886, 35.158489>,  <44.715782, 41.259724, 35.204285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.921490, 41.144886, 35.158489>,  <45.264332, 40.953487, 35.082165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.921490, 41.144886, 35.158489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310321, 0.775256, -0.550163,
		-0.411176, -0.412337, -0.812965,
		-0.857108, 0.478494, 0.190810,
		44.664356, 41.288433, 35.215733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.169254, 41.225914, 34.458279>,  <45.264332, 40.953487, 35.082165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.169254, 41.225914, 34.458279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.905495, 41.405491, 34.699490>,  <44.747238, 41.513237, 34.844215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.905495, 41.405491, 34.699490>,  <45.169254, 41.225914, 34.458279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.905495, 41.405491, 34.699490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111014, 0.851469, -0.512519,
		-0.743551, -0.271011, -0.611298,
		-0.659400, 0.448947, 0.603025,
		44.707676, 41.540176, 34.880398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.603237, 41.468136, 34.101475>,  <45.169254, 41.225914, 34.458279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.603237, 41.468136, 34.101475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.589840, 41.717808, 34.413700>,  <44.581802, 41.867611, 34.601036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.589840, 41.717808, 34.413700>,  <44.603237, 41.468136, 34.101475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.589840, 41.717808, 34.413700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022818, 0.780318, -0.624967,
		-0.999178, -0.038745, -0.011895,
		-0.033496, 0.624182, 0.780561,
		44.579792, 41.905064, 34.647869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.243786, 41.947735, 33.862362>,  <44.603237, 41.468136, 34.101475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.243786, 41.947735, 33.862362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.439693, 42.121872, 34.164516>,  <44.557236, 42.226357, 34.345810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.439693, 42.121872, 34.164516>,  <44.243786, 41.947735, 33.862362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.439693, 42.121872, 34.164516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064562, 0.845921, -0.529386,
		-0.869460, 0.308044, 0.386196,
		0.489766, 0.435346, 0.755383,
		44.586624, 42.252476, 34.391132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.044739, 42.649002, 33.751297>,  <44.243786, 41.947735, 33.862362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.044739, 42.649002, 33.751297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.371006, 42.669682, 33.981777>,  <44.566769, 42.682091, 34.120064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.371006, 42.669682, 33.981777>,  <44.044739, 42.649002, 33.751297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.371006, 42.669682, 33.981777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332123, 0.773665, -0.539571,
		-0.473683, 0.631482, 0.613885,
		0.815671, 0.051700, 0.576202,
		44.615707, 42.685192, 34.154636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.123489, 43.322777, 34.027275>,  <44.044739, 42.649002, 33.751297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.123489, 43.322777, 34.027275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.483181, 43.150921, 33.994305>,  <44.698997, 43.047810, 33.974522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.483181, 43.150921, 33.994305>,  <44.123489, 43.322777, 34.027275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.483181, 43.150921, 33.994305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350929, 0.820919, -0.450489,
		0.261210, 0.376169, 0.888969,
		0.899232, -0.429638, -0.082424,
		44.752949, 43.022030, 33.969578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.729225, 43.793648, 34.267715>,  <44.123489, 43.322777, 34.027275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.729225, 43.793648, 34.267715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.778179, 43.545216, 33.958065>,  <44.807552, 43.396156, 33.772274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.778179, 43.545216, 33.958065>,  <44.729225, 43.793648, 34.267715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.778179, 43.545216, 33.958065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285039, 0.769130, -0.572006,
		0.950670, -0.150650, 0.271165,
		0.122389, -0.621082, -0.774130,
		44.814896, 43.358891, 33.725826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.269180, 44.011147, 33.832108>,  <44.729225, 43.793648, 34.267715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.269180, 44.011147, 33.832108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.063900, 43.780067, 33.578213>,  <44.940731, 43.641418, 33.425877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.063900, 43.780067, 33.578213>,  <45.269180, 44.011147, 33.832108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.063900, 43.780067, 33.578213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172027, 0.655307, -0.735513,
		0.840852, -0.486657, -0.236924,
		-0.513201, -0.577700, -0.634734,
		44.909939, 43.606758, 33.387791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.408951, 44.065189, 33.173908>,  <45.269180, 44.011147, 33.832108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.408951, 44.065189, 33.173908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.354988, 43.953468, 32.793636>,  <45.322609, 43.886436, 32.565475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.354988, 43.953468, 32.793636>,  <45.408951, 44.065189, 33.173908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.354988, 43.953468, 32.793636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882315, 0.470479, -0.013017,
		0.450910, 0.837041, -0.309908,
		-0.134910, -0.279306, -0.950677,
		45.314514, 43.869678, 32.508434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.718906, 44.162228, 32.397930>,  <45.408951, 44.065189, 33.173908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.718906, 44.162228, 32.397930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.009151, 44.024628, 32.636311>,  <46.183300, 43.942066, 32.779339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.009151, 44.024628, 32.636311>,  <45.718906, 44.162228, 32.397930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.009151, 44.024628, 32.636311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609351, -0.723562, 0.324268,
		0.319656, -0.598433, -0.734641,
		0.725611, -0.344000, 0.595947,
		46.226833, 43.921429, 32.815094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.753048, 43.509018, 32.269840>,  <45.718906, 44.162228, 32.397930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.753048, 43.509018, 32.269840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.907906, 43.545750, 32.636814>,  <46.000820, 43.567787, 32.856998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.907906, 43.545750, 32.636814>,  <45.753048, 43.509018, 32.269840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.907906, 43.545750, 32.636814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548855, -0.776574, 0.309338,
		0.740860, -0.623298, -0.250251,
		0.387148, 0.091825, 0.917433,
		46.024052, 43.573296, 32.912045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.871773, 42.897850, 32.725224>,  <45.753048, 43.509018, 32.269840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.871773, 42.897850, 32.725224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.803524, 43.199734, 32.978615>,  <45.762573, 43.380863, 33.130650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.803524, 43.199734, 32.978615>,  <45.871773, 42.897850, 32.725224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.803524, 43.199734, 32.978615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761871, -0.508749, 0.400909,
		0.624853, -0.414224, 0.661798,
		-0.170623, 0.754713, 0.633479,
		45.752338, 43.426147, 33.168659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.792381, 42.387627, 32.094017>,  <45.871773, 42.897850, 32.725224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.792381, 42.387627, 32.094017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.068382, 42.452454, 32.376186>,  <46.233982, 42.491348, 32.545490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.068382, 42.452454, 32.376186>,  <45.792381, 42.387627, 32.094017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.068382, 42.452454, 32.376186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051693, -0.961087, 0.271366,
		0.721955, -0.223710, -0.654778,
		0.690006, 0.162067, 0.705426,
		46.275383, 42.501072, 32.587814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.303219, 41.838760, 32.066677>,  <45.792381, 42.387627, 32.094017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.303219, 41.838760, 32.066677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.273983, 41.990219, 32.435738>,  <46.256439, 42.081093, 32.657173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.273983, 41.990219, 32.435738>,  <46.303219, 41.838760, 32.066677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.273983, 41.990219, 32.435738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236356, -0.905348, 0.352819,
		0.968913, -0.192285, 0.155671,
		-0.073094, 0.378645, 0.922651,
		46.252056, 42.103813, 32.712532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.815918, 41.432823, 32.498547>,  <46.303219, 41.838760, 32.066677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.815918, 41.432823, 32.498547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.482929, 41.574268, 32.669170>,  <46.283138, 41.659134, 32.771545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.482929, 41.574268, 32.669170>,  <46.815918, 41.432823, 32.498547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.482929, 41.574268, 32.669170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194634, -0.907433, 0.372403,
		0.518761, 0.226991, 0.824235,
		-0.832469, 0.353612, 0.426560,
		46.233189, 41.680351, 32.797138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.715042, 41.149666, 33.185642>,  <46.815918, 41.432823, 32.498547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.715042, 41.149666, 33.185642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.344593, 41.247223, 33.070538>,  <46.122322, 41.305756, 33.001472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.344593, 41.247223, 33.070538>,  <46.715042, 41.149666, 33.185642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.344593, 41.247223, 33.070538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350631, -0.837901, 0.418305,
		-0.139100, 0.488303, 0.861517,
		-0.926126, 0.243888, -0.287766,
		46.066753, 41.320389, 32.984207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.402031, 40.987720, 33.744759>,  <46.715042, 41.149666, 33.185642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.402031, 40.987720, 33.744759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.129211, 40.951733, 33.454460>,  <45.965519, 40.930141, 33.280281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.129211, 40.951733, 33.454460>,  <46.402031, 40.987720, 33.744759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.129211, 40.951733, 33.454460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290738, -0.877249, 0.381976,
		-0.671028, 0.471530, 0.572171,
		-0.682050, -0.089965, -0.725751,
		45.924595, 40.924744, 33.236736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.779003, 40.842922, 34.028633>,  <46.402031, 40.987720, 33.744759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.779003, 40.842922, 34.028633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.739735, 40.689735, 33.661221>,  <45.716175, 40.597824, 33.440773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.739735, 40.689735, 33.661221>,  <45.779003, 40.842922, 34.028633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.739735, 40.689735, 33.661221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394185, -0.832534, 0.389238,
		-0.913773, 0.400284, -0.069228,
		-0.098171, -0.382963, -0.918532,
		45.710285, 40.574848, 33.385662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.185322, 40.533688, 33.948154>,  <45.779003, 40.842922, 34.028633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.185322, 40.533688, 33.948154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.337994, 40.348034, 33.628429>,  <45.429596, 40.236641, 33.436596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.337994, 40.348034, 33.628429>,  <45.185322, 40.533688, 33.948154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.337994, 40.348034, 33.628429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394525, -0.863853, 0.313222,
		-0.835864, 0.195797, -0.512830,
		0.381682, -0.464135, -0.799310,
		45.452499, 40.208794, 33.388638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.757725, 39.986088, 33.822796>,  <45.185322, 40.533688, 33.948154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.757725, 39.986088, 33.822796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.072433, 39.881687, 33.599056>,  <45.261257, 39.819046, 33.464813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.072433, 39.881687, 33.599056>,  <44.757725, 39.986088, 33.822796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.072433, 39.881687, 33.599056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238217, -0.964388, 0.114927,
		-0.569428, 0.042826, -0.820925,
		0.786769, -0.261001, -0.559351,
		45.308464, 39.803387, 33.431252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.524216, 39.473545, 33.432529>,  <44.757725, 39.986088, 33.822796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.524216, 39.473545, 33.432529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.921677, 39.435387, 33.456402>,  <45.160152, 39.412491, 33.470726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.921677, 39.435387, 33.456402>,  <44.524216, 39.473545, 33.432529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.921677, 39.435387, 33.456402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105701, -0.973188, 0.204286,
		0.038597, -0.209297, -0.977090,
		0.993649, -0.095394, 0.059685,
		45.219772, 39.406769, 33.474308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.742882, 38.818123, 32.999573>,  <44.524216, 39.473545, 33.432529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.742882, 38.818123, 32.999573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.026543, 38.896378, 33.270519>,  <45.196739, 38.943333, 33.433086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.026543, 38.896378, 33.270519>,  <44.742882, 38.818123, 32.999573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.026543, 38.896378, 33.270519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008433, -0.958308, 0.285611,
		0.705003, -0.208255, -0.677938,
		0.709154, 0.195640, 0.677367,
		45.239288, 38.955070, 33.473728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.291416, 38.270535, 32.900841>,  <44.742882, 38.818123, 32.999573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.291416, 38.270535, 32.900841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.369331, 38.410175, 33.267487>,  <45.416080, 38.493961, 33.487473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.369331, 38.410175, 33.267487>,  <45.291416, 38.270535, 32.900841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.369331, 38.410175, 33.267487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247733, -0.921729, 0.298403,
		0.949044, 0.168949, -0.266030,
		0.194793, 0.349102, 0.916616,
		45.427769, 38.514904, 33.542473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.842770, 37.876343, 33.153061>,  <45.291416, 38.270535, 32.900841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.842770, 37.876343, 33.153061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.665974, 38.031067, 33.476795>,  <45.559898, 38.123901, 33.671036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.665974, 38.031067, 33.476795>,  <45.842770, 37.876343, 33.153061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.665974, 38.031067, 33.476795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151111, -0.857249, 0.492229,
		0.884201, 0.339860, 0.320443,
		-0.441988, 0.386807, 0.809337,
		45.533379, 38.147110, 33.719597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.226318, 37.561077, 33.608734>,  <45.842770, 37.876343, 33.153061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.226318, 37.561077, 33.608734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.920200, 37.706066, 33.821507>,  <45.736530, 37.793060, 33.949169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.920200, 37.706066, 33.821507>,  <46.226318, 37.561077, 33.608734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.920200, 37.706066, 33.821507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080361, -0.873715, 0.479755,
		0.638649, 0.324406, 0.697774,
		-0.765291, 0.362469, 0.531927,
		45.690613, 37.814808, 33.981083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.403763, 37.581287, 34.396778>,  <46.226318, 37.561077, 33.608734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.403763, 37.581287, 34.396778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.017735, 37.526909, 34.307198>,  <45.786118, 37.494282, 34.253448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.017735, 37.526909, 34.307198>,  <46.403763, 37.581287, 34.396778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.017735, 37.526909, 34.307198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051782, -0.738997, 0.671716,
		-0.256817, 0.659851, 0.706146,
		-0.965072, -0.135942, -0.223955,
		45.728214, 37.486126, 34.240009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.176212, 37.241764, 34.978275>,  <46.403763, 37.581287, 34.396778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.176212, 37.241764, 34.978275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.840248, 37.196671, 34.765919>,  <45.638668, 37.169613, 34.638504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.840248, 37.196671, 34.765919>,  <46.176212, 37.241764, 34.978275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.840248, 37.196671, 34.765919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154023, -0.888458, 0.432342,
		-0.520412, 0.444897, 0.728861,
		-0.839910, -0.112734, -0.530888,
		45.588276, 37.162849, 34.606651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.613014, 37.116444, 35.487583>,  <46.176212, 37.241764, 34.978275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.613014, 37.116444, 35.487583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.464775, 36.961319, 35.150002>,  <45.375832, 36.868244, 34.947453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.464775, 36.961319, 35.150002>,  <45.613014, 37.116444, 35.487583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.464775, 36.961319, 35.150002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332300, -0.793147, 0.510387,
		-0.867316, 0.469592, 0.165064,
		-0.370593, -0.387816, -0.843955,
		45.353596, 36.844975, 34.896816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.823933, 36.921249, 35.572678>,  <45.613014, 37.116444, 35.487583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.823933, 36.921249, 35.572678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.940632, 36.694210, 35.264725>,  <45.010651, 36.557987, 35.079952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.940632, 36.694210, 35.264725>,  <44.823933, 36.921249, 35.572678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.940632, 36.694210, 35.264725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374238, -0.808466, 0.454234,
		-0.880245, 0.155597, -0.448284,
		0.291745, -0.567602, -0.769878,
		45.028156, 36.523930, 35.033760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.308670, 36.472569, 35.437809>,  <44.823933, 36.921249, 35.572678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.308670, 36.472569, 35.437809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.612221, 36.287037, 35.254951>,  <44.794350, 36.175720, 35.145237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.612221, 36.287037, 35.254951>,  <44.308670, 36.472569, 35.437809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.612221, 36.287037, 35.254951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379090, -0.885389, 0.269029,
		-0.529530, -0.030862, -0.847730,
		0.758873, -0.463825, -0.457141,
		44.839882, 36.147888, 35.117809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.970772, 36.016914, 35.029591>,  <44.308670, 36.472569, 35.437809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.970772, 36.016914, 35.029591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.348652, 35.888615, 35.056900>,  <44.575378, 35.811634, 35.073284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.348652, 35.888615, 35.056900>,  <43.970772, 36.016914, 35.029591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.348652, 35.888615, 35.056900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317836, -0.844279, 0.431478,
		-0.080752, -0.429318, -0.899536,
		0.944701, -0.320748, 0.068275,
		44.632061, 35.792389, 35.077381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.002499, 35.459579, 34.636620>,  <43.970772, 36.016914, 35.029591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.002499, 35.459579, 34.636620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.317680, 35.403564, 34.876461>,  <44.506790, 35.369953, 35.020367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.317680, 35.403564, 34.876461>,  <44.002499, 35.459579, 34.636620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.317680, 35.403564, 34.876461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378162, -0.878561, 0.291759,
		0.485928, -0.456638, -0.745222,
		0.787951, -0.140041, 0.599601,
		44.554066, 35.361553, 35.056343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.326637, 34.783577, 34.426094>,  <44.002499, 35.459579, 34.636620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.326637, 34.783577, 34.426094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.414230, 34.888237, 34.802090>,  <44.466785, 34.951035, 35.027687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.414230, 34.888237, 34.802090>,  <44.326637, 34.783577, 34.426094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.414230, 34.888237, 34.802090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223643, -0.924268, 0.309374,
		0.949754, -0.277970, -0.143879,
		0.218979, 0.261652, 0.939993,
		44.479923, 34.966732, 35.084087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.510056, 34.160786, 34.597095>,  <44.326637, 34.783577, 34.426094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.510056, 34.160786, 34.597095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.474102, 34.322254, 34.961288>,  <44.452530, 34.419136, 35.179802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.474102, 34.322254, 34.961288>,  <44.510056, 34.160786, 34.597095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.474102, 34.322254, 34.961288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064607, -0.914617, 0.399126,
		0.993854, -0.022946, 0.108293,
		-0.089888, 0.403670, 0.910478,
		44.447136, 34.443356, 35.234432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.002647, 33.946377, 35.076355>,  <44.510056, 34.160786, 34.597095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.002647, 33.946377, 35.076355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.669731, 34.035061, 35.279583>,  <44.469982, 34.088272, 35.401520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.669731, 34.035061, 35.279583>,  <45.002647, 33.946377, 35.076355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.669731, 34.035061, 35.279583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026877, -0.931599, 0.362493,
		0.553682, 0.288045, 0.781323,
		-0.832294, 0.221706, 0.508068,
		44.420044, 34.101574, 35.432003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.697781, 33.884224, 35.447025>,  <45.002647, 33.946377, 35.076355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.697781, 33.884224, 35.447025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.691956, 33.668514, 35.783829>,  <45.688461, 33.539089, 35.985909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.691956, 33.668514, 35.783829>,  <45.697781, 33.884224, 35.447025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.691956, 33.668514, 35.783829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339063, -0.794864, -0.503217,
		0.940651, 0.278167, 0.194419,
		-0.014558, -0.539272, 0.842006,
		45.687588, 33.506733, 36.036430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.335384, 34.127018, 35.121891>,  <45.697781, 33.884224, 35.447025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.335384, 34.127018, 35.121891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.308891, 34.256695, 35.499359>,  <46.292995, 34.334499, 35.725842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.308891, 34.256695, 35.499359>,  <46.335384, 34.127018, 35.121891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.308891, 34.256695, 35.499359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036902, 0.944305, -0.326997,
		-0.997121, -0.056482, -0.050584,
		-0.066237, 0.324189, 0.943671,
		46.289021, 34.353951, 35.782459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.991302, 33.953571, 35.602280>,  <46.335384, 34.127018, 35.121891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.991302, 33.953571, 35.602280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.011356, 34.099689, 35.230465>,  <47.023388, 34.187363, 35.007374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.011356, 34.099689, 35.230465>,  <46.991302, 33.953571, 35.602280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.011356, 34.099689, 35.230465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111392, 0.922858, 0.368680,
		0.992511, -0.122027, 0.005576,
		0.050135, 0.365298, -0.929540,
		47.026398, 34.209278, 34.951603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.620064, 34.448650, 35.571686>,  <46.991302, 33.953571, 35.602280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.620064, 34.448650, 35.571686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.360981, 34.526981, 35.277168>,  <47.205532, 34.573982, 35.100460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.360981, 34.526981, 35.277168>,  <47.620064, 34.448650, 35.571686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.360981, 34.526981, 35.277168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055461, 0.975958, 0.210786,
		0.759867, 0.095693, -0.642997,
		-0.647709, 0.195830, -0.736291,
		47.166668, 34.585732, 35.056282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.922966, 35.013943, 35.046684>,  <47.620064, 34.448650, 35.571686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.922966, 35.013943, 35.046684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.524033, 34.996101, 35.069775>,  <47.284672, 34.985397, 35.083630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.524033, 34.996101, 35.069775>,  <47.922966, 35.013943, 35.046684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.524033, 34.996101, 35.069775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034733, 0.986196, 0.161901,
		-0.064149, 0.159465, -0.985117,
		-0.997336, -0.044602, 0.057724,
		47.224831, 34.982719, 35.087093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.859760, 38.154987, 46.315987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.470772, 38.127960, 46.405193>,  <35.237381, 38.111744, 46.458717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.470772, 38.127960, 46.405193>,  <35.859760, 38.154987, 46.315987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470772, 38.127960, 46.405193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222584, -0.014017, -0.974813,
		0.069000, -0.997616, -0.001410,
		-0.972469, -0.067576, 0.223021,
		35.179031, 38.107689, 46.472099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506577, 37.586910, 45.939468>,  <35.859760, 38.154987, 46.315987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506577, 37.586910, 45.939468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.231388, 37.866524, 46.017490>,  <35.066277, 38.034290, 46.064304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.231388, 37.866524, 46.017490>,  <35.506577, 37.586910, 45.939468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231388, 37.866524, 46.017490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306294, -0.036009, -0.951256,
		-0.657936, -0.714182, 0.238883,
		-0.687972, 0.699033, 0.195058,
		35.024998, 38.076233, 46.076008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859650, 37.360786, 45.653099>,  <35.506577, 37.586910, 45.939468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859650, 37.360786, 45.653099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.817383, 37.755432, 45.702774>,  <34.792023, 37.992222, 45.732578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.817383, 37.755432, 45.702774>,  <34.859650, 37.360786, 45.653099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817383, 37.755432, 45.702774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396261, 0.072766, -0.915250,
		-0.912038, -0.145918, 0.383269,
		-0.105663, 0.986617, 0.124187,
		34.785683, 38.051418, 45.740028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190228, 37.428726, 45.385693>,  <34.859650, 37.360786, 45.653099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.190228, 37.428726, 45.385693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.362240, 37.789829, 45.389801>,  <34.465446, 38.006493, 45.392265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.362240, 37.789829, 45.389801>,  <34.190228, 37.428726, 45.385693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362240, 37.789829, 45.389801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324072, 0.164972, -0.931537,
		-0.842645, 0.397260, 0.363501,
		0.430030, 0.902756, 0.010272,
		34.491249, 38.060658, 45.392883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665749, 37.848820, 45.019150>,  <34.190228, 37.428726, 45.385693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665749, 37.848820, 45.019150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.990864, 38.081306, 45.003319>,  <34.185932, 38.220798, 44.993820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.990864, 38.081306, 45.003319>,  <33.665749, 37.848820, 45.019150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990864, 38.081306, 45.003319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243823, 0.277697, -0.929212,
		-0.529083, 0.764900, 0.367422,
		0.812786, 0.581216, -0.039575,
		34.234699, 38.255672, 44.991447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400661, 38.395531, 44.575428>,  <33.665749, 37.848820, 45.019150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400661, 38.395531, 44.575428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.800056, 38.400467, 44.596848>,  <34.039692, 38.403427, 44.609699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.800056, 38.400467, 44.596848>,  <33.400661, 38.395531, 44.575428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.800056, 38.400467, 44.596848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044762, 0.382703, -0.922787,
		-0.031880, 0.923789, 0.381572,
		0.998489, 0.012339, 0.053551,
		34.099602, 38.404167, 44.612911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472488, 38.947418, 44.139832>,  <33.400661, 38.395531, 44.575428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472488, 38.947418, 44.139832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.808838, 38.733490, 44.173042>,  <34.010647, 38.605133, 44.192966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.808838, 38.733490, 44.173042>,  <33.472488, 38.947418, 44.139832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.808838, 38.733490, 44.173042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166898, 0.110309, -0.979784,
		0.514853, 0.837733, 0.182017,
		0.840875, -0.534823, 0.083023,
		34.061100, 38.573044, 44.197948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936672, 39.258839, 43.735397>,  <33.472488, 38.947418, 44.139832>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936672, 39.258839, 43.735397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.084335, 38.889820, 43.780350>,  <34.172932, 38.668407, 43.807320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.084335, 38.889820, 43.780350>,  <33.936672, 39.258839, 43.735397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084335, 38.889820, 43.780350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384380, 0.041468, -0.922243,
		0.846153, 0.383649, 0.369917,
		0.369157, -0.922548, 0.112379,
		34.195084, 38.613056, 43.814064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629108, 39.254097, 43.364624>,  <33.936672, 39.258839, 43.735397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629108, 39.254097, 43.364624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.517063, 38.870804, 43.387680>,  <34.449837, 38.640827, 43.401512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.517063, 38.870804, 43.387680>,  <34.629108, 39.254097, 43.364624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517063, 38.870804, 43.387680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326728, -0.151621, -0.932877,
		0.902655, -0.242480, 0.355553,
		-0.280113, -0.958235, 0.057636,
		34.433029, 38.583332, 43.404972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143425, 38.899906, 43.081539>,  <34.629108, 39.254097, 43.364624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143425, 38.899906, 43.081539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.868568, 38.609356, 43.075661>,  <34.703655, 38.435024, 43.072136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.868568, 38.609356, 43.075661>,  <35.143425, 38.899906, 43.081539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868568, 38.609356, 43.075661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315956, -0.280558, -0.906344,
		0.654224, -0.627428, 0.422285,
		-0.687141, -0.726376, -0.014692,
		34.662426, 38.391445, 43.071255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474167, 38.154018, 43.010162>,  <35.143425, 38.899906, 43.081539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474167, 38.154018, 43.010162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.098442, 38.147232, 42.873104>,  <34.873009, 38.143162, 42.790867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.098442, 38.147232, 42.873104>,  <35.474167, 38.154018, 43.010162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098442, 38.147232, 42.873104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342895, -0.078269, -0.936107,
		-0.010938, -0.996788, 0.079336,
		-0.939310, -0.016965, -0.342650,
		34.816650, 38.142143, 42.770309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371147, 37.530586, 42.583916>,  <35.474167, 38.154018, 43.010162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371147, 37.530586, 42.583916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.084610, 37.784775, 42.468655>,  <34.912689, 37.937290, 42.399498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.084610, 37.784775, 42.468655>,  <35.371147, 37.530586, 42.583916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084610, 37.784775, 42.468655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146546, -0.266738, -0.952562,
		-0.682189, -0.724586, 0.097949,
		-0.716340, 0.635473, -0.288150,
		34.869709, 37.975418, 42.382210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097492, 37.098537, 42.046310>,  <35.371147, 37.530586, 42.583916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097492, 37.098537, 42.046310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.945637, 37.461800, 41.975746>,  <34.854523, 37.679756, 41.933407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.945637, 37.461800, 41.975746>,  <35.097492, 37.098537, 42.046310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945637, 37.461800, 41.975746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010295, -0.194822, -0.980785,
		-0.925078, -0.370526, 0.083312,
		-0.379637, 0.908160, -0.176411,
		34.831745, 37.734249, 41.922821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586823, 37.023739, 41.623142>,  <35.097492, 37.098537, 42.046310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586823, 37.023739, 41.623142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.714439, 37.400139, 41.577995>,  <34.791008, 37.625977, 41.550907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.714439, 37.400139, 41.577995>,  <34.586823, 37.023739, 41.623142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714439, 37.400139, 41.577995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043043, -0.133352, -0.990134,
		-0.946762, 0.311037, -0.083049,
		0.319043, 0.940996, -0.112865,
		34.810154, 37.682438, 41.544136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271767, 37.178200, 41.013687>,  <34.586823, 37.023739, 41.623142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271767, 37.178200, 41.013687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.549461, 37.461479, 41.065041>,  <34.716080, 37.631447, 41.095852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.549461, 37.461479, 41.065041>,  <34.271767, 37.178200, 41.013687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.549461, 37.461479, 41.065041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026496, 0.153107, -0.987854,
		-0.719257, 0.689209, 0.087528,
		0.694239, 0.708202, 0.128385,
		34.757732, 37.673939, 41.103558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080765, 37.855087, 40.653656>,  <34.271767, 37.178200, 41.013687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080765, 37.855087, 40.653656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.477497, 37.877987, 40.699245>,  <34.715538, 37.891727, 40.726601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.477497, 37.877987, 40.699245>,  <34.080765, 37.855087, 40.653656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477497, 37.877987, 40.699245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087686, 0.342850, -0.935289,
		-0.092623, 0.937644, 0.335029,
		0.991833, 0.057252, 0.113974,
		34.775047, 37.895161, 40.733437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357845, 38.594151, 40.245228>,  <34.080765, 37.855087, 40.653656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357845, 38.594151, 40.245228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.662598, 38.335865, 40.265606>,  <34.845448, 38.180893, 40.277832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.662598, 38.335865, 40.265606>,  <34.357845, 38.594151, 40.245228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662598, 38.335865, 40.265606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204734, 0.165449, -0.964733,
		0.614513, 0.745439, 0.258251,
		0.761878, -0.645714, 0.050946,
		34.891159, 38.142151, 40.280891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868923, 38.882732, 39.832745>,  <34.357845, 38.594151, 40.245228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868923, 38.882732, 39.832745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.977440, 38.499596, 39.870571>,  <35.042549, 38.269714, 39.893269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.977440, 38.499596, 39.870571>,  <34.868923, 38.882732, 39.832745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.977440, 38.499596, 39.870571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369837, 0.013028, -0.929005,
		0.888608, 0.287003, 0.357779,
		0.271288, -0.957841, 0.094567,
		35.058826, 38.212242, 39.898941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464962, 38.852604, 39.520855>,  <34.868923, 38.882732, 39.832745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464962, 38.852604, 39.520855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.397087, 38.458466, 39.527706>,  <35.356361, 38.221981, 39.531818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.397087, 38.458466, 39.527706>,  <35.464962, 38.852604, 39.520855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397087, 38.458466, 39.527706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265312, -0.062416, -0.962140,
		0.949114, -0.158716, 0.272016,
		-0.169685, -0.985350, 0.017131,
		35.346180, 38.162861, 39.532845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912605, 38.567646, 39.163280>,  <35.464962, 38.852604, 39.520855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912605, 38.567646, 39.163280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.629707, 38.286079, 39.137032>,  <35.459969, 38.117138, 39.121284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.629707, 38.286079, 39.137032>,  <35.912605, 38.567646, 39.163280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629707, 38.286079, 39.137032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295002, -0.209495, -0.932248,
		0.642477, -0.678686, 0.355822,
		-0.707246, -0.703916, -0.065618,
		35.417534, 38.074905, 39.117348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257141, 38.048920, 38.939842>,  <35.912605, 38.567646, 39.163280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257141, 38.048920, 38.939842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.871544, 38.002007, 38.844379>,  <35.640186, 37.973858, 38.787102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.871544, 38.002007, 38.844379>,  <36.257141, 38.048920, 38.939842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871544, 38.002007, 38.844379> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240489, -0.001507, -0.970651,
		0.113481, -0.993097, 0.029658,
		-0.963995, -0.117283, -0.238658,
		35.582344, 37.966824, 38.772781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291145, 37.636421, 38.347233>,  <36.257141, 38.048920, 38.939842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291145, 37.636421, 38.347233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.924404, 37.796097, 38.349449>,  <35.704361, 37.891903, 38.350780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.924404, 37.796097, 38.349449>,  <36.291145, 37.636421, 38.347233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924404, 37.796097, 38.349449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004483, 0.003584, -0.999984,
		-0.399207, -0.916860, -0.001496,
		-0.916850, 0.399194, 0.005541,
		35.649349, 37.915855, 38.351112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971462, 37.235134, 38.198715>,  <36.291145, 37.636421, 38.347233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971462, 37.235134, 38.198715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.361141, 37.297760, 38.133686>,  <37.594948, 37.335335, 38.094669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.361141, 37.297760, 38.133686>,  <36.971462, 37.235134, 38.198715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361141, 37.297760, 38.133686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196247, -0.231806, 0.952761,
		0.111482, -0.960081, -0.256549,
		0.974197, 0.156563, -0.162571,
		37.653400, 37.344730, 38.084915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290390, 36.646431, 38.467735>,  <36.971462, 37.235134, 38.198715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290390, 36.646431, 38.467735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.574104, 36.927467, 38.444790>,  <37.744331, 37.096088, 38.431023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.574104, 36.927467, 38.444790>,  <37.290390, 36.646431, 38.467735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574104, 36.927467, 38.444790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187474, -0.109563, 0.976140,
		0.679540, -0.703112, -0.209427,
		0.709281, 0.702588, -0.057363,
		37.786888, 37.138245, 38.427582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833591, 36.325851, 38.957817>,  <37.290390, 36.646431, 38.467735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833591, 36.325851, 38.957817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.924603, 36.712143, 38.907848>,  <37.979210, 36.943916, 38.877865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.924603, 36.712143, 38.907848>,  <37.833591, 36.325851, 38.957817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924603, 36.712143, 38.907848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302700, 0.051792, 0.951678,
		0.925529, -0.254348, -0.280541,
		0.227527, 0.965725, -0.124926,
		37.992859, 37.001862, 38.870369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552406, 36.443840, 39.227276>,  <37.833591, 36.325851, 38.957817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552406, 36.443840, 39.227276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.391251, 36.809917, 39.231102>,  <38.294556, 37.029564, 39.233398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.391251, 36.809917, 39.231102>,  <38.552406, 36.443840, 39.227276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391251, 36.809917, 39.231102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148295, 0.054960, 0.987415,
		0.903154, 0.399239, -0.157863,
		-0.402890, 0.915198, 0.009568,
		38.270382, 37.084476, 39.233971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952961, 36.841290, 39.667435>,  <38.552406, 36.443840, 39.227276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952961, 36.841290, 39.667435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.629974, 37.077251, 39.665752>,  <38.436184, 37.218826, 39.664742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.629974, 37.077251, 39.665752>,  <38.952961, 36.841290, 39.667435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629974, 37.077251, 39.665752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267676, 0.372734, 0.888493,
		0.525693, 0.716299, -0.458872,
		-0.807463, 0.589903, -0.004207,
		38.387737, 37.254223, 39.664490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146282, 37.542404, 39.719601>,  <38.952961, 36.841290, 39.667435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.146282, 37.542404, 39.719601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.768364, 37.549210, 39.850483>,  <38.541611, 37.553291, 39.929012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.768364, 37.549210, 39.850483>,  <39.146282, 37.542404, 39.719601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768364, 37.549210, 39.850483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317461, 0.294671, 0.901326,
		-0.081084, 0.955447, -0.283806,
		-0.944799, 0.017015, 0.327210,
		38.484924, 37.554314, 39.948647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120117, 38.127926, 40.205048>,  <39.146282, 37.542404, 39.719601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120117, 38.127926, 40.205048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.790314, 37.921551, 40.297993>,  <38.592430, 37.797726, 40.353760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.790314, 37.921551, 40.297993>,  <39.120117, 38.127926, 40.205048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.790314, 37.921551, 40.297993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125017, 0.234408, 0.964066,
		-0.551867, 0.823930, -0.128771,
		-0.824508, -0.515938, 0.232367,
		38.542961, 37.766769, 40.367702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638592, 38.573280, 40.552536>,  <39.120117, 38.127926, 40.205048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638592, 38.573280, 40.552536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.531693, 38.202137, 40.656582>,  <38.467552, 37.979450, 40.719009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.531693, 38.202137, 40.656582>,  <38.638592, 38.573280, 40.552536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531693, 38.202137, 40.656582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033063, 0.278606, 0.959836,
		-0.963060, 0.247915, -0.105134,
		-0.267248, -0.927856, 0.260117,
		38.451519, 37.923779, 40.734615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164394, 38.643555, 41.039482>,  <38.638592, 38.573280, 40.552536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.164394, 38.643555, 41.039482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.248409, 38.256691, 41.096733>,  <38.298817, 38.024570, 41.131084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.248409, 38.256691, 41.096733>,  <38.164394, 38.643555, 41.039482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248409, 38.256691, 41.096733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155959, 0.111373, 0.981465,
		-0.965175, -0.228462, -0.127445,
		0.210034, -0.967161, 0.143125,
		38.311420, 37.966541, 41.139671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712440, 38.418781, 41.499161>,  <38.164394, 38.643555, 41.039482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712440, 38.418781, 41.499161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.991615, 38.132431, 41.507160>,  <38.159119, 37.960621, 41.511959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.991615, 38.132431, 41.507160>,  <37.712440, 38.418781, 41.499161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991615, 38.132431, 41.507160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246303, -0.213717, 0.945336,
		-0.672472, -0.664711, -0.325484,
		0.697937, -0.715880, 0.020002,
		38.200996, 37.917667, 41.513161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400795, 37.915051, 41.810848>,  <37.712440, 38.418781, 41.499161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400795, 37.915051, 41.810848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.788155, 37.834431, 41.869617>,  <38.020569, 37.786060, 41.904881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.788155, 37.834431, 41.869617>,  <37.400795, 37.915051, 41.810848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788155, 37.834431, 41.869617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178588, -0.149104, 0.972561,
		-0.174122, -0.968061, -0.180388,
		0.968395, -0.201559, 0.146922,
		38.078674, 37.773964, 41.913696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334774, 37.484386, 42.238594>,  <37.400795, 37.915051, 41.810848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334774, 37.484386, 42.238594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.716518, 37.596191, 42.280689>,  <37.945564, 37.663273, 42.305946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.716518, 37.596191, 42.280689>,  <37.334774, 37.484386, 42.238594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716518, 37.596191, 42.280689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058997, -0.168977, 0.983853,
		0.292783, -0.945155, -0.144774,
		0.954357, 0.279514, 0.105235,
		38.002827, 37.680046, 42.312260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651524, 36.932133, 42.576145>,  <37.334774, 37.484386, 42.238594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.651524, 36.932133, 42.576145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.891094, 37.243332, 42.652046>,  <38.034836, 37.430050, 42.697586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.891094, 37.243332, 42.652046>,  <37.651524, 36.932133, 42.576145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891094, 37.243332, 42.652046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053284, -0.197714, 0.978811,
		0.799031, -0.596344, -0.076961,
		0.598925, 0.777999, 0.189755,
		38.070770, 37.476730, 42.708973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183403, 36.885895, 42.955654>,  <37.651524, 36.932133, 42.576145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183403, 36.885895, 42.955654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.135113, 37.280499, 42.999886>,  <38.106136, 37.517262, 43.026424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.135113, 37.280499, 42.999886>,  <38.183403, 36.885895, 42.955654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135113, 37.280499, 42.999886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044409, -0.116645, 0.992180,
		0.991692, 0.114874, 0.057892,
		-0.120729, 0.986508, 0.110575,
		38.098896, 37.576450, 43.033058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582989, 37.124317, 43.437260>,  <38.183403, 36.885895, 42.955654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582989, 37.124317, 43.437260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.326092, 37.430515, 43.452930>,  <38.171955, 37.614235, 43.462334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.326092, 37.430515, 43.452930>,  <38.582989, 37.124317, 43.437260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326092, 37.430515, 43.452930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032417, -0.023943, 0.999188,
		0.765816, 0.642991, -0.009438,
		-0.642242, 0.765500, 0.039180,
		38.133419, 37.660164, 43.464684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739861, 37.478928, 44.009579>,  <38.582989, 37.124317, 43.437260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739861, 37.478928, 44.009579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.379074, 37.638000, 43.942280>,  <38.162601, 37.733444, 43.901901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.379074, 37.638000, 43.942280>,  <38.739861, 37.478928, 44.009579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379074, 37.638000, 43.942280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153510, 0.068870, 0.985744,
		0.403604, 0.914933, -0.001069,
		-0.901963, 0.397686, -0.168248,
		38.108486, 37.757305, 43.891804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748890, 38.117043, 44.429733>,  <38.739861, 37.478928, 44.009579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748890, 38.117043, 44.429733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.373955, 38.005047, 44.346779>,  <38.148994, 37.937851, 44.297009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.373955, 38.005047, 44.346779>,  <38.748890, 38.117043, 44.429733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373955, 38.005047, 44.346779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191218, -0.084186, 0.977931,
		-0.291266, 0.956305, 0.025372,
		-0.937336, -0.279986, -0.207383,
		38.092754, 37.921051, 44.284565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239548, 38.494625, 44.878262>,  <38.748890, 38.117043, 44.429733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239548, 38.494625, 44.878262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.045250, 38.169987, 44.748425>,  <37.928669, 37.975204, 44.670521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.045250, 38.169987, 44.748425>,  <38.239548, 38.494625, 44.878262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045250, 38.169987, 44.748425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178916, -0.271172, 0.945756,
		-0.855592, 0.517475, -0.013486,
		-0.485748, -0.811594, -0.324597,
		37.899525, 37.926510, 44.651047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.528587, 38.507103, 45.102856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.581573, 38.116131, 45.037018>,  <37.613365, 37.881550, 44.997517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.581573, 38.116131, 45.037018>,  <37.528587, 38.507103, 45.102856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581573, 38.116131, 45.037018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286924, -0.196759, 0.937529,
		-0.948751, -0.076963, -0.306510,
		0.132464, -0.977427, -0.164593,
		37.621311, 37.822903, 44.987640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933369, 38.197765, 45.175426>,  <37.528587, 38.507103, 45.102856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933369, 38.197765, 45.175426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.199238, 37.907654, 45.247181>,  <37.358761, 37.733585, 45.290234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.199238, 37.907654, 45.247181>,  <36.933369, 38.197765, 45.175426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199238, 37.907654, 45.247181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258343, 0.002176, 0.966051,
		-0.701047, -0.688451, -0.185925,
		0.664674, -0.725280, 0.179382,
		37.398640, 37.690071, 45.300995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565224, 37.741276, 45.653484>,  <36.933369, 38.197765, 45.175426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565224, 37.741276, 45.653484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.944107, 37.617718, 45.687840>,  <37.171436, 37.543583, 45.708454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.944107, 37.617718, 45.687840>,  <36.565224, 37.741276, 45.653484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944107, 37.617718, 45.687840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159605, -0.221972, 0.961901,
		-0.278064, -0.924830, -0.259556,
		0.947210, -0.308896, 0.085886,
		37.228271, 37.525051, 45.713604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515129, 37.116489, 46.080631>,  <36.565224, 37.741276, 45.653484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515129, 37.116489, 46.080631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.886280, 37.264023, 46.102592>,  <37.108971, 37.352543, 46.115768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.886280, 37.264023, 46.102592>,  <36.515129, 37.116489, 46.080631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886280, 37.264023, 46.102592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031472, -0.224159, 0.974044,
		0.371562, -0.902063, -0.219600,
		0.927874, 0.368829, 0.054899,
		37.164642, 37.374672, 46.119061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832611, 36.591282, 46.356819>,  <36.515129, 37.116489, 46.080631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832611, 36.591282, 46.356819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.022972, 36.934231, 46.435230>,  <37.137188, 37.139999, 46.482277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.022972, 36.934231, 46.435230>,  <36.832611, 36.591282, 46.356819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022972, 36.934231, 46.435230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103698, -0.276029, 0.955539,
		0.873364, -0.434414, -0.220270,
		0.475901, 0.857375, 0.196026,
		37.165741, 37.191444, 46.494038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338654, 36.397575, 46.868694>,  <36.832611, 36.591282, 46.356819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338654, 36.397575, 46.868694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.355209, 36.796570, 46.891697>,  <37.365143, 37.035965, 46.905499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.355209, 36.796570, 46.891697>,  <37.338654, 36.397575, 46.868694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355209, 36.796570, 46.891697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170556, -0.063761, 0.983283,
		0.984478, -0.030889, -0.172766,
		0.041389, 0.997487, 0.057503,
		37.367626, 37.095818, 46.908947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906036, 36.550560, 47.425159>,  <37.338654, 36.397575, 46.868694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906036, 36.550560, 47.425159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.708267, 36.897095, 47.396866>,  <37.589607, 37.105015, 47.379890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.708267, 36.897095, 47.396866>,  <37.906036, 36.550560, 47.425159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708267, 36.897095, 47.396866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057249, 0.048748, 0.997169,
		0.867334, 0.497072, 0.025494,
		-0.494422, 0.866339, -0.070738,
		37.559940, 37.156998, 47.375645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309578, 37.111027, 47.763599>,  <37.906036, 36.550560, 47.425159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309578, 37.111027, 47.763599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.936768, 37.255554, 47.774773>,  <37.713081, 37.342270, 47.781479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.936768, 37.255554, 47.774773>,  <38.309578, 37.111027, 47.763599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936768, 37.255554, 47.774773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071279, 0.107191, 0.991680,
		0.355321, 0.926259, -0.125659,
		-0.932023, 0.361322, 0.027936,
		37.657162, 37.363953, 47.783154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278416, 37.798073, 48.067200>,  <38.309578, 37.111027, 47.763599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.278416, 37.798073, 48.067200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.920151, 37.628651, 48.121441>,  <37.705193, 37.526997, 48.153984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.920151, 37.628651, 48.121441>,  <38.278416, 37.798073, 48.067200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920151, 37.628651, 48.121441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049910, 0.207250, 0.977014,
		-0.441924, 0.881843, -0.164487,
		-0.895663, -0.423557, 0.135602,
		37.651451, 37.501583, 48.162121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993530, 38.219234, 48.508839>,  <38.278416, 37.798073, 48.067200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.993530, 38.219234, 48.508839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.743912, 37.906914, 48.521000>,  <37.594143, 37.719521, 48.528297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.743912, 37.906914, 48.521000>,  <37.993530, 38.219234, 48.508839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743912, 37.906914, 48.521000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190115, 0.189454, 0.963309,
		-0.757909, 0.595367, -0.266669,
		-0.624044, -0.780798, 0.030401,
		37.556698, 37.672676, 48.530121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386974, 38.509365, 48.918644>,  <37.993530, 38.219234, 48.508839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386974, 38.509365, 48.918644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.422215, 38.111088, 48.930130>,  <37.443359, 37.872120, 48.937023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.422215, 38.111088, 48.930130>,  <37.386974, 38.509365, 48.918644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422215, 38.111088, 48.930130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086578, 0.021064, 0.996022,
		-0.992342, -0.090240, -0.084349,
		0.088104, -0.995697, 0.028715,
		37.448647, 37.812378, 48.938744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015114, 38.306633, 49.453918>,  <37.386974, 38.509365, 48.918644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015114, 38.306633, 49.453918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.229904, 37.977589, 49.379116>,  <37.358780, 37.780163, 49.334236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.229904, 37.977589, 49.379116>,  <37.015114, 38.306633, 49.453918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229904, 37.977589, 49.379116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182462, -0.103173, 0.977785,
		-0.823627, -0.559172, 0.094692,
		0.536980, -0.822607, -0.187003,
		37.390999, 37.730808, 49.323013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712101, 37.737064, 49.861343>,  <37.015114, 38.306633, 49.453918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712101, 37.737064, 49.861343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.097893, 37.649731, 49.801865>,  <37.329369, 37.597332, 49.766178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.097893, 37.649731, 49.801865>,  <36.712101, 37.737064, 49.861343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097893, 37.649731, 49.801865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115514, -0.157655, 0.980715,
		-0.237565, -0.963055, -0.126835,
		0.964479, -0.218332, -0.148700,
		37.387238, 37.584232, 49.757256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797150, 37.143578, 50.205070>,  <36.712101, 37.737064, 49.861343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797150, 37.143578, 50.205070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.172207, 37.279446, 50.175533>,  <37.397240, 37.360966, 50.157810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.172207, 37.279446, 50.175533>,  <36.797150, 37.143578, 50.205070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172207, 37.279446, 50.175533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131468, -0.149867, 0.979927,
		0.321781, -0.928529, -0.185177,
		0.937642, 0.339667, -0.073847,
		37.453499, 37.381344, 50.153378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162930, 36.636803, 50.521622>,  <36.797150, 37.143578, 50.205070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162930, 36.636803, 50.521622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.448780, 36.915806, 50.542759>,  <37.620289, 37.083206, 50.555443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.448780, 36.915806, 50.542759>,  <37.162930, 36.636803, 50.521622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448780, 36.915806, 50.542759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216279, -0.292164, 0.931592,
		0.665233, -0.654310, -0.359644,
		0.714625, 0.697509, 0.052844,
		37.663166, 37.125057, 50.558613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759480, 36.299633, 50.652248>,  <37.162930, 36.636803, 50.521622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759480, 36.299633, 50.652248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.843349, 36.674488, 50.763824>,  <37.893673, 36.899403, 50.830769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.843349, 36.674488, 50.763824>,  <37.759480, 36.299633, 50.652248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843349, 36.674488, 50.763824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251894, -0.327422, 0.910683,
		0.944768, -0.120683, -0.304712,
		0.209673, 0.937140, 0.278938,
		37.906250, 36.955631, 50.847507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243298, 36.122574, 51.083496>,  <37.759480, 36.299633, 50.652248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243298, 36.122574, 51.083496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.153034, 36.499332, 51.183025>,  <38.098877, 36.725388, 51.242741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.153034, 36.499332, 51.183025>,  <38.243298, 36.122574, 51.083496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153034, 36.499332, 51.183025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209306, -0.202570, 0.956638,
		0.951457, 0.267952, -0.151433,
		-0.225657, 0.941895, 0.248821,
		38.085339, 36.781902, 51.257671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778355, 36.391655, 51.354343>,  <38.243298, 36.122574, 51.083496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778355, 36.391655, 51.354343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.458225, 36.574055, 51.510063>,  <38.266148, 36.683495, 51.603493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.458225, 36.574055, 51.510063>,  <38.778355, 36.391655, 51.354343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458225, 36.574055, 51.510063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203491, -0.404173, 0.891760,
		0.563981, 0.792914, 0.230678,
		-0.800323, 0.455995, 0.389297,
		38.218128, 36.710854, 51.626854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060886, 36.710468, 51.963928>,  <38.778355, 36.391655, 51.354343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060886, 36.710468, 51.963928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.665154, 36.718727, 52.021622>,  <38.427715, 36.723682, 52.056240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.665154, 36.718727, 52.021622>,  <39.060886, 36.710468, 51.963928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665154, 36.718727, 52.021622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139766, -0.145361, 0.979457,
		0.041189, 0.989163, 0.140924,
		-0.989328, 0.020647, 0.144238,
		38.368355, 36.724922, 52.064892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896786, 37.265022, 52.421696>,  <39.060886, 36.710468, 51.963928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.896786, 37.265022, 52.421696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.581852, 37.024799, 52.477478>,  <38.392891, 36.880665, 52.510948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.581852, 37.024799, 52.477478>,  <38.896786, 37.265022, 52.421696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.581852, 37.024799, 52.477478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185240, -0.014688, 0.982584,
		-0.588045, 0.799450, 0.122811,
		-0.787330, -0.600553, 0.139453,
		38.345654, 36.844635, 52.519314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439850, 37.593880, 53.001118>,  <38.896786, 37.265022, 52.421696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439850, 37.593880, 53.001118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.344994, 37.207378, 52.960869>,  <38.288078, 36.975479, 52.936722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.344994, 37.207378, 52.960869>,  <38.439850, 37.593880, 53.001118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344994, 37.207378, 52.960869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033075, -0.095482, 0.994882,
		-0.970912, 0.239256, -0.009316,
		-0.237142, -0.966250, -0.100618,
		38.273849, 36.917503, 52.930683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840538, 37.445976, 53.397919>,  <38.439850, 37.593880, 53.001118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840538, 37.445976, 53.397919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.000835, 37.081306, 53.361576>,  <38.097012, 36.862503, 53.339771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.000835, 37.081306, 53.361576>,  <37.840538, 37.445976, 53.397919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000835, 37.081306, 53.361576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081322, -0.134171, 0.987616,
		-0.912576, -0.388388, -0.127907,
		0.400739, -0.911676, -0.090857,
		38.121056, 36.807804, 53.334320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370384, 36.961632, 53.707779>,  <37.840538, 37.445976, 53.397919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370384, 36.961632, 53.707779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.743706, 36.818047, 53.703835>,  <37.967697, 36.731895, 53.701469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.743706, 36.818047, 53.703835>,  <37.370384, 36.961632, 53.707779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743706, 36.818047, 53.703835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120277, -0.338357, 0.933300,
		-0.338357, -0.869862, -0.358963,
		-0.933300, 0.358963, 0.009862,
		38.023697, 36.710358, 53.700874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188488, 36.303295, 54.094299>,  <37.370384, 36.961632, 53.707779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188488, 36.303295, 54.094299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.550037, 36.455956, 54.171600>,  <37.766968, 36.547554, 54.217983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.550037, 36.455956, 54.171600>,  <37.188488, 36.303295, 54.094299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.550037, 36.455956, 54.171600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095633, -0.260054, 0.960847,
		0.416968, -0.886968, -0.198558,
		0.903876, 0.381653, 0.193257,
		37.821201, 36.570450, 54.229576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640667, 36.060215, 53.631344>,  <37.188488, 36.303295, 54.094299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640667, 36.060215, 53.631344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.266285, 36.032841, 53.769501>,  <36.041656, 36.016415, 53.852394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.266285, 36.032841, 53.769501>,  <36.640667, 36.060215, 53.631344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266285, 36.032841, 53.769501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352107, 0.177419, -0.918990,
		0.001614, -0.981753, -0.190154,
		-0.935958, -0.068438, 0.345396,
		35.985497, 36.012310, 53.873119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377026, 35.617123, 53.149956>,  <36.640667, 36.060215, 53.631344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377026, 35.617123, 53.149956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.076996, 35.812595, 53.328205>,  <35.896976, 35.929878, 53.435154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.076996, 35.812595, 53.328205>,  <36.377026, 35.617123, 53.149956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076996, 35.812595, 53.328205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459296, 0.099905, -0.882647,
		-0.475851, -0.866725, 0.149512,
		-0.750075, 0.488679, 0.445624,
		35.851974, 35.959198, 53.461891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.844082, 35.557308, 52.629757>,  <36.377026, 35.617123, 53.149956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.844082, 35.557308, 52.629757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.650917, 35.798569, 52.883690>,  <35.535019, 35.943325, 53.036049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.650917, 35.798569, 52.883690>,  <35.844082, 35.557308, 52.629757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650917, 35.798569, 52.883690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569942, 0.333901, -0.750784,
		-0.664805, -0.724377, 0.182516,
		-0.482908, 0.603148, 0.634832,
		35.506046, 35.979511, 53.074139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192459, 35.511539, 52.516129>,  <35.844082, 35.557308, 52.629757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192459, 35.511539, 52.516129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.232674, 35.877949, 52.671463>,  <35.256802, 36.097794, 52.764664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.232674, 35.877949, 52.671463>,  <35.192459, 35.511539, 52.516129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232674, 35.877949, 52.671463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406894, 0.394032, -0.824121,
		-0.907926, -0.075157, 0.412337,
		0.100536, 0.916019, 0.388333,
		35.262833, 36.152756, 52.787964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.572788, 35.888409, 52.344357>,  <35.192459, 35.511539, 52.516129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.572788, 35.888409, 52.344357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.858280, 36.156185, 52.426750>,  <35.029575, 36.316853, 52.476189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.858280, 36.156185, 52.426750>,  <34.572788, 35.888409, 52.344357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858280, 36.156185, 52.426750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254851, 0.522143, -0.813891,
		-0.652410, 0.528403, 0.543279,
		0.713732, 0.669445, 0.205987,
		35.072399, 36.357018, 52.488544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286209, 36.585587, 52.437439>,  <34.572788, 35.888409, 52.344357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286209, 36.585587, 52.437439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.674843, 36.621193, 52.349705>,  <34.908024, 36.642559, 52.297066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.674843, 36.621193, 52.349705>,  <34.286209, 36.585587, 52.437439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674843, 36.621193, 52.349705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232441, 0.533935, -0.812948,
		0.044742, 0.840826, 0.539453,
		0.971581, 0.089018, -0.219332,
		34.966316, 36.647900, 52.283905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433922, 37.393852, 52.299843>,  <34.286209, 36.585587, 52.437439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433922, 37.393852, 52.299843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.704952, 37.164089, 52.116131>,  <34.867573, 37.026230, 52.005901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.704952, 37.164089, 52.116131>,  <34.433922, 37.393852, 52.299843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704952, 37.164089, 52.116131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150759, 0.502747, -0.851186,
		0.719832, 0.645986, 0.254053,
		0.677579, -0.574410, -0.459282,
		34.908226, 36.991768, 51.978348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517185, 37.745079, 51.689266>,  <34.433922, 37.393852, 52.299843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517185, 37.745079, 51.689266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.749622, 37.430752, 51.604588>,  <34.889084, 37.242153, 51.553780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.749622, 37.430752, 51.604588>,  <34.517185, 37.745079, 51.689266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749622, 37.430752, 51.604588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041549, 0.288423, -0.956601,
		0.812776, 0.547079, 0.200251,
		0.581093, -0.785822, -0.211693,
		34.923950, 37.195004, 51.541080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285076, 37.901772, 51.373573>,  <34.517185, 37.745079, 51.689266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.285076, 37.901772, 51.373573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.168861, 37.536556, 51.259064>,  <35.099133, 37.317429, 51.190357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.168861, 37.536556, 51.259064>,  <35.285076, 37.901772, 51.373573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168861, 37.536556, 51.259064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253522, 0.215030, -0.943127,
		0.922667, -0.346590, 0.169001,
		-0.290538, -0.913037, -0.286270,
		35.081699, 37.262646, 51.173183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799889, 37.626110, 50.937908>,  <35.285076, 37.901772, 51.373573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799889, 37.626110, 50.937908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.459854, 37.433910, 50.851681>,  <35.255833, 37.318588, 50.799946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.459854, 37.433910, 50.851681>,  <35.799889, 37.626110, 50.937908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459854, 37.433910, 50.851681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214016, 0.058809, -0.975058,
		0.481196, -0.875019, 0.052843,
		-0.850087, -0.480503, -0.215567,
		35.204826, 37.289761, 50.787010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020416, 37.338169, 50.390118>,  <35.799889, 37.626110, 50.937908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020416, 37.338169, 50.390118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.623695, 37.310619, 50.347076>,  <35.385662, 37.294090, 50.321251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.623695, 37.310619, 50.347076>,  <36.020416, 37.338169, 50.390118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623695, 37.310619, 50.347076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109002, -0.016841, -0.993899,
		0.066642, -0.997483, 0.024210,
		-0.991805, -0.068874, -0.107606,
		35.326153, 37.289959, 50.314796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970692, 37.013123, 49.807137>,  <36.020416, 37.338169, 50.390118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970692, 37.013123, 49.807137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.602543, 37.158279, 49.865417>,  <35.381653, 37.245373, 49.900387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.602543, 37.158279, 49.865417>,  <35.970692, 37.013123, 49.807137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602543, 37.158279, 49.865417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105749, 0.127743, -0.986154,
		-0.376484, -0.923032, -0.079195,
		-0.920368, 0.362896, 0.145703,
		35.326431, 37.267147, 49.909130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514572, 36.641251, 49.350124>,  <35.970692, 37.013123, 49.807137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514572, 36.641251, 49.350124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.338451, 36.990353, 49.434437>,  <35.232780, 37.199814, 49.485023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.338451, 36.990353, 49.434437>,  <35.514572, 36.641251, 49.350124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338451, 36.990353, 49.434437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049787, 0.210671, -0.976288,
		-0.896468, -0.440357, -0.049307,
		-0.440303, 0.872756, 0.210784,
		35.206360, 37.252178, 49.497673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793221, 36.685009, 49.001911>,  <35.514572, 36.641251, 49.350124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793221, 36.685009, 49.001911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.892830, 37.063309, 49.085381>,  <34.952595, 37.290291, 49.135460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.892830, 37.063309, 49.085381>,  <34.793221, 36.685009, 49.001911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892830, 37.063309, 49.085381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066991, 0.231762, -0.970463,
		-0.966179, 0.227684, 0.121070,
		0.249019, 0.945752, 0.208671,
		34.967537, 37.347034, 49.147984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379711, 37.022179, 48.555981>,  <34.793221, 36.685009, 49.001911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379711, 37.022179, 48.555981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.636917, 37.305592, 48.672272>,  <34.791241, 37.475639, 48.742046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.636917, 37.305592, 48.672272>,  <34.379711, 37.022179, 48.555981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636917, 37.305592, 48.672272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151394, 0.489712, -0.858640,
		-0.750742, 0.508103, 0.422158,
		0.643013, 0.708529, 0.290723,
		34.829823, 37.518150, 48.759487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091236, 37.659279, 48.301918>,  <34.379711, 37.022179, 48.555981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.091236, 37.659279, 48.301918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.483887, 37.709343, 48.359524>,  <34.719479, 37.739380, 48.394085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.483887, 37.709343, 48.359524>,  <34.091236, 37.659279, 48.301918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483887, 37.709343, 48.359524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057924, 0.523675, -0.849946,
		-0.181795, 0.842674, 0.506805,
		0.981629, 0.125160, 0.144013,
		34.778374, 37.746891, 48.402729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285595, 38.445232, 48.331219>,  <34.091236, 37.659279, 48.301918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285595, 38.445232, 48.331219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.579369, 38.204609, 48.205532>,  <34.755634, 38.060234, 48.130119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.579369, 38.204609, 48.205532>,  <34.285595, 38.445232, 48.331219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579369, 38.204609, 48.205532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046678, 0.506652, -0.860886,
		0.677074, 0.617596, 0.400182,
		0.734433, -0.601563, -0.314213,
		34.799698, 38.024139, 48.111267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762024, 38.882153, 47.809303>,  <34.285595, 38.445232, 48.331219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762024, 38.882153, 47.809303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.873474, 38.501274, 47.759201>,  <34.940346, 38.272747, 47.729137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.873474, 38.501274, 47.759201>,  <34.762024, 38.882153, 47.809303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873474, 38.501274, 47.759201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071928, 0.150745, -0.985952,
		0.957702, 0.265702, 0.110492,
		0.278626, -0.952196, -0.125257,
		34.957062, 38.215614, 47.721622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394241, 38.847927, 47.483543>,  <34.762024, 38.882153, 47.809303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394241, 38.847927, 47.483543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.217903, 38.499218, 47.398064>,  <35.112099, 38.289993, 47.346775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.217903, 38.499218, 47.398064>,  <35.394241, 38.847927, 47.483543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217903, 38.499218, 47.398064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059156, 0.209352, -0.976049,
		0.895632, -0.442928, -0.040721,
		-0.440845, -0.871772, -0.213704,
		35.085651, 38.237686, 47.333954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742592, 38.656078, 46.804207>,  <35.394241, 38.847927, 47.483543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.742592, 38.656078, 46.804207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.414040, 38.429230, 46.828556>,  <35.216908, 38.293121, 46.843166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.414040, 38.429230, 46.828556>,  <35.742592, 38.656078, 46.804207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414040, 38.429230, 46.828556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136774, 0.092235, -0.986299,
		0.553738, -0.818453, -0.153328,
		-0.821382, -0.567122, 0.060870,
		35.167625, 38.259094, 46.846817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.643356, 42.665821, 34.893452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.300716, 42.709030, 34.691631>,  <45.095135, 42.734955, 34.570538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.300716, 42.709030, 34.691631>,  <45.643356, 42.665821, 34.893452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.300716, 42.709030, 34.691631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463139, -0.592051, 0.659528,
		-0.227473, 0.798627, 0.557181,
		-0.856596, 0.108027, -0.504552,
		45.043739, 42.741440, 34.540264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.144123, 42.828537, 35.375862>,  <45.643356, 42.665821, 34.893452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.144123, 42.828537, 35.375862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.951317, 42.657780, 35.069809>,  <44.835632, 42.555325, 34.886177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.951317, 42.657780, 35.069809>,  <45.144123, 42.828537, 35.375862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.951317, 42.657780, 35.069809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380528, -0.684613, 0.621694,
		-0.789214, 0.590820, 0.167549,
		-0.482015, -0.426892, -0.765130,
		44.806713, 42.529713, 34.840271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.551498, 42.686764, 35.626656>,  <45.144123, 42.828537, 35.375862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.551498, 42.686764, 35.626656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.573502, 42.441753, 35.311241>,  <44.586704, 42.294746, 35.121994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.573502, 42.441753, 35.311241>,  <44.551498, 42.686764, 35.626656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.573502, 42.441753, 35.311241> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402382, -0.736363, 0.543928,
		-0.913817, 0.287369, -0.286979,
		0.055012, -0.612526, -0.788534,
		44.590004, 42.257996, 35.074680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.896698, 42.318493, 35.647533>,  <44.551498, 42.686764, 35.626656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.896698, 42.318493, 35.647533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.140102, 42.092922, 35.424213>,  <44.286144, 41.957581, 35.290222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.140102, 42.092922, 35.424213>,  <43.896698, 42.318493, 35.647533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.140102, 42.092922, 35.424213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528395, -0.812844, 0.245120,
		-0.592037, 0.145842, -0.792604,
		0.608515, -0.563928, -0.558296,
		44.322659, 41.923744, 35.256725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.515270, 41.889462, 35.150738>,  <43.896698, 42.318493, 35.647533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.515270, 41.889462, 35.150738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.862183, 41.690884, 35.165524>,  <44.070332, 41.571735, 35.174393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.862183, 41.690884, 35.165524>,  <43.515270, 41.889462, 35.150738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.862183, 41.690884, 35.165524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488849, -0.835266, 0.251706,
		-0.094085, -0.236369, -0.967098,
		0.867280, -0.496447, 0.036962,
		44.122368, 41.541950, 35.176613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.412319, 41.217087, 34.950150>,  <43.515270, 41.889462, 35.150738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.412319, 41.217087, 34.950150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.748692, 41.155403, 35.157627>,  <43.950516, 41.118393, 35.282116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.748692, 41.155403, 35.157627>,  <43.412319, 41.217087, 34.950150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.748692, 41.155403, 35.157627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294125, -0.934839, 0.198913,
		0.454223, -0.319835, -0.831497,
		0.840935, -0.154213, 0.518697,
		44.000973, 41.109138, 35.313236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.624691, 40.686344, 34.552162>,  <43.412319, 41.217087, 34.950150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.624691, 40.686344, 34.552162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.802231, 40.659660, 34.909607>,  <43.908756, 40.643650, 35.124073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.802231, 40.659660, 34.909607>,  <43.624691, 40.686344, 34.552162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.802231, 40.659660, 34.909607> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352769, -0.929708, 0.105816,
		0.823741, -0.362206, -0.436185,
		0.443852, -0.066708, 0.893614,
		43.935387, 40.639648, 35.177692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.791935, 40.039921, 34.596478>,  <43.624691, 40.686344, 34.552162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.791935, 40.039921, 34.596478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.842987, 40.141640, 34.979946>,  <43.873619, 40.202671, 35.210026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.842987, 40.141640, 34.979946>,  <43.791935, 40.039921, 34.596478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.842987, 40.141640, 34.979946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077326, -0.961080, 0.265227,
		0.988804, -0.107980, -0.102995,
		0.127626, 0.254293, 0.958669,
		43.881275, 40.217926, 35.267548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.335785, 39.587349, 34.931217>,  <43.791935, 40.039921, 34.596478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.335785, 39.587349, 34.931217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.110355, 39.723278, 35.232391>,  <43.975098, 39.804836, 35.413094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.110355, 39.723278, 35.232391>,  <44.335785, 39.587349, 34.931217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.110355, 39.723278, 35.232391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107287, -0.933859, 0.341171,
		0.819070, 0.111495, 0.562755,
		-0.563573, 0.339819, 0.752934,
		43.941284, 39.825222, 35.458271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.617825, 39.341492, 35.528381>,  <44.335785, 39.587349, 34.931217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.617825, 39.341492, 35.528381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.225342, 39.399506, 35.579277>,  <43.989853, 39.434315, 35.609814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.225342, 39.399506, 35.579277>,  <44.617825, 39.341492, 35.528381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.225342, 39.399506, 35.579277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109743, -0.961961, 0.250174,
		0.158686, 0.231509, 0.959803,
		-0.981211, 0.145031, 0.127243,
		43.930977, 39.443016, 35.617451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.456257, 38.960258, 36.067684>,  <44.617825, 39.341492, 35.528381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.456257, 38.960258, 36.067684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.089970, 39.030537, 35.923138>,  <43.870197, 39.072704, 35.836411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.089970, 39.030537, 35.923138>,  <44.456257, 38.960258, 36.067684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.089970, 39.030537, 35.923138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176906, -0.983770, -0.030030,
		-0.360775, 0.036429, 0.931941,
		-0.915721, 0.175700, -0.361364,
		43.815254, 39.083248, 35.814728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.068401, 38.591103, 36.462223>,  <44.456257, 38.960258, 36.067684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.068401, 38.591103, 36.462223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.824131, 38.661915, 36.153488>,  <43.677567, 38.704403, 35.968246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.824131, 38.661915, 36.153488>,  <44.068401, 38.591103, 36.462223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.824131, 38.661915, 36.153488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358165, -0.931043, 0.069834,
		-0.706249, 0.319091, 0.631976,
		-0.610681, 0.177031, -0.771835,
		43.640926, 38.715023, 35.921936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.421459, 38.327663, 36.709545>,  <44.068401, 38.591103, 36.462223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.421459, 38.327663, 36.709545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.396645, 38.355076, 36.311256>,  <43.381756, 38.371521, 36.072285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.396645, 38.355076, 36.311256>,  <43.421459, 38.327663, 36.709545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.396645, 38.355076, 36.311256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470531, -0.881825, -0.031375,
		-0.880199, 0.466571, 0.086950,
		-0.062036, 0.068529, -0.995719,
		43.378033, 38.375633, 36.012543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.712639, 38.224491, 36.485157>,  <43.421459, 38.327663, 36.709545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.712639, 38.224491, 36.485157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.942360, 38.108738, 36.178841>,  <43.080193, 38.039288, 35.995049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.942360, 38.108738, 36.178841>,  <42.712639, 38.224491, 36.485157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.942360, 38.108738, 36.178841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614650, -0.770292, -0.169871,
		-0.540728, 0.568252, -0.620244,
		0.574299, -0.289379, -0.765794,
		43.114651, 38.021923, 35.949100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.288452, 38.028572, 36.000980>,  <42.712639, 38.224491, 36.485157>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.288452, 38.028572, 36.000980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.625816, 37.853436, 35.876431>,  <42.828236, 37.748352, 35.801701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.625816, 37.853436, 35.876431>,  <42.288452, 38.028572, 36.000980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.625816, 37.853436, 35.876431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496772, -0.856262, -0.141541,
		-0.204646, 0.274059, -0.939687,
		0.843409, -0.437844, -0.311375,
		42.878838, 37.722084, 35.783016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.056347, 37.751328, 35.439175>,  <42.288452, 38.028572, 36.000980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.056347, 37.751328, 35.439175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.398609, 37.548244, 35.479336>,  <42.603966, 37.426395, 35.503433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.398609, 37.548244, 35.479336>,  <42.056347, 37.751328, 35.439175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.398609, 37.548244, 35.479336> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423641, -0.798547, -0.427610,
		0.297277, 0.323353, -0.898370,
		0.855660, -0.507705, 0.100404,
		42.655308, 37.395931, 35.509457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.115971, 37.259346, 35.005493>,  <42.056347, 37.751328, 35.439175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.115971, 37.259346, 35.005493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.390083, 37.120548, 35.261612>,  <42.554550, 37.037270, 35.415283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.390083, 37.120548, 35.261612>,  <42.115971, 37.259346, 35.005493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.390083, 37.120548, 35.261612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538468, -0.833371, 0.124680,
		0.490341, -0.430220, -0.757942,
		0.685286, -0.346992, 0.640296,
		42.595669, 37.016449, 35.453701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.395657, 36.742718, 34.584591>,  <42.115971, 37.259346, 35.005493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.395657, 36.742718, 34.584591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.467434, 36.643513, 34.965389>,  <42.510502, 36.583988, 35.193867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.467434, 36.643513, 34.965389>,  <42.395657, 36.742718, 34.584591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.467434, 36.643513, 34.965389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350464, -0.920327, -0.173705,
		0.919225, -0.302468, -0.252069,
		0.179446, -0.248015, 0.951992,
		42.521267, 36.569107, 35.250988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.659969, 36.094021, 34.553257>,  <42.395657, 36.742718, 34.584591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.659969, 36.094021, 34.553257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.489368, 36.142265, 34.911819>,  <42.387009, 36.171211, 35.126957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.489368, 36.142265, 34.911819>,  <42.659969, 36.094021, 34.553257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.489368, 36.142265, 34.911819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552655, -0.819301, -0.152704,
		0.716011, -0.560533, 0.416089,
		-0.426498, 0.120616, 0.896410,
		42.361420, 36.178452, 35.180744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.753723, 35.404858, 34.816574>,  <42.659969, 36.094021, 34.553257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.753723, 35.404858, 34.816574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.474628, 35.576443, 35.046062>,  <42.307171, 35.679394, 35.183754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.474628, 35.576443, 35.046062>,  <42.753723, 35.404858, 34.816574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.474628, 35.576443, 35.046062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514218, -0.857515, 0.015774,
		0.498737, -0.284009, 0.818902,
		-0.697740, 0.428961, 0.573717,
		42.265305, 35.705132, 35.218178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.589954, 34.900848, 35.353676>,  <42.753723, 35.404858, 34.816574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.589954, 34.900848, 35.353676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.289371, 35.163643, 35.329399>,  <42.109024, 35.321320, 35.314831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.289371, 35.163643, 35.329399>,  <42.589954, 34.900848, 35.353676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.289371, 35.163643, 35.329399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643839, -0.750287, -0.150138,
		-0.144176, -0.073745, 0.986800,
		-0.751455, 0.656986, -0.060694,
		42.063934, 35.360741, 35.311192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.323780, 34.862320, 35.541290>,  <42.589954, 34.900848, 35.353676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.323780, 34.862320, 35.541290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.284637, 35.081223, 35.873779>,  <43.261150, 35.212566, 36.073273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.284637, 35.081223, 35.873779>,  <43.323780, 34.862320, 35.541290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.284637, 35.081223, 35.873779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196738, -0.808111, 0.555203,
		0.975560, 0.217865, -0.028586,
		-0.097858, 0.547258, 0.831223,
		43.255280, 35.245399, 36.123146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.644932, 34.708935, 36.245182>,  <43.323780, 34.862320, 35.541290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.644932, 34.708935, 36.245182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.955753, 34.527699, 36.070415>,  <44.142246, 34.418957, 35.965553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.955753, 34.527699, 36.070415>,  <43.644932, 34.708935, 36.245182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.955753, 34.527699, 36.070415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294450, 0.875173, -0.383891,
		0.556316, 0.169653, 0.813468,
		0.777053, -0.453090, -0.436919,
		44.188869, 34.391773, 35.939339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.302311, 35.084297, 36.414162>,  <43.644932, 34.708935, 36.245182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.302311, 35.084297, 36.414162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.349880, 34.894234, 36.065430>,  <44.378422, 34.780197, 35.856190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.349880, 34.894234, 36.065430>,  <44.302311, 35.084297, 36.414162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.349880, 34.894234, 36.065430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457871, 0.805366, -0.376483,
		0.881029, -0.354413, 0.313335,
		0.118919, -0.475159, -0.871827,
		44.385555, 34.751686, 35.803883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.986420, 35.143909, 36.309616>,  <44.302311, 35.084297, 36.414162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.986420, 35.143909, 36.309616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.831757, 35.090870, 35.944561>,  <44.738960, 35.059048, 35.725529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.831757, 35.090870, 35.944561>,  <44.986420, 35.143909, 36.309616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.831757, 35.090870, 35.944561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627117, 0.687784, -0.365619,
		0.676180, -0.713702, -0.182784,
		-0.386659, -0.132597, -0.912641,
		44.715759, 35.051090, 35.670769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.556015, 35.170605, 35.814793>,  <44.986420, 35.143909, 36.309616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.556015, 35.170605, 35.814793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.238010, 35.226223, 35.578613>,  <45.047207, 35.259594, 35.436905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.238010, 35.226223, 35.578613>,  <45.556015, 35.170605, 35.814793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.238010, 35.226223, 35.578613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423595, 0.823989, -0.376310,
		0.434199, -0.549281, -0.713976,
		-0.795008, 0.139043, -0.590448,
		44.999508, 35.267937, 35.401478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.886879, 35.371872, 35.216190>,  <45.556015, 35.170605, 35.814793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.886879, 35.371872, 35.216190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.513386, 35.505253, 35.164108>,  <45.289291, 35.585281, 35.132858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.513386, 35.505253, 35.164108>,  <45.886879, 35.371872, 35.216190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.513386, 35.505253, 35.164108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344840, 0.740242, -0.577172,
		-0.096075, -0.583824, -0.806176,
		-0.933732, 0.333454, -0.130207,
		45.233265, 35.605289, 35.125046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.880291, 35.592381, 34.559299>,  <45.886879, 35.371872, 35.216190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.880291, 35.592381, 34.559299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.541805, 35.749168, 34.703678>,  <45.338715, 35.843243, 34.790306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.541805, 35.749168, 34.703678>,  <45.880291, 35.592381, 34.559299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.541805, 35.749168, 34.703678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194000, 0.857546, -0.476424,
		-0.496275, -0.333131, -0.801707,
		-0.846212, 0.391968, 0.360951,
		45.287941, 35.866760, 34.811962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.577301, 35.994450, 33.961540>,  <45.880291, 35.592381, 34.559299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.577301, 35.994450, 33.961540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.397076, 36.123867, 34.294361>,  <45.288940, 36.201519, 34.494053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.397076, 36.123867, 34.294361>,  <45.577301, 35.994450, 33.961540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.397076, 36.123867, 34.294361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044807, 0.939038, -0.340882,
		-0.891617, -0.116309, -0.437598,
		-0.450568, 0.323544, 0.832050,
		45.261906, 36.220932, 34.543976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.988224, 36.321682, 33.771606>,  <45.577301, 35.994450, 33.961540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.988224, 36.321682, 33.771606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.094292, 36.495518, 34.115891>,  <45.157932, 36.599819, 34.322460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.094292, 36.495518, 34.115891>,  <44.988224, 36.321682, 33.771606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.094292, 36.495518, 34.115891> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054474, 0.897989, -0.436632,
		-0.962662, 0.068895, 0.261793,
		0.265169, 0.434590, 0.860707,
		45.173843, 36.625896, 34.374104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.671963, 37.004395, 33.651939>,  <44.988224, 36.321682, 33.771606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.671963, 37.004395, 33.651939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.924290, 37.045177, 33.959621>,  <45.075687, 37.069649, 34.144230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.924290, 37.045177, 33.959621>,  <44.671963, 37.004395, 33.651939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.924290, 37.045177, 33.959621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018453, 0.989078, -0.146236,
		-0.775712, 0.106443, 0.622046,
		0.630818, 0.101958, 0.769203,
		45.113537, 37.075764, 34.190384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.422462, 37.539963, 34.149590>,  <44.671963, 37.004395, 33.651939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.422462, 37.539963, 34.149590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.819145, 37.512466, 34.193024>,  <45.057156, 37.495968, 34.219086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.819145, 37.512466, 34.193024>,  <44.422462, 37.539963, 34.149590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.819145, 37.512466, 34.193024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074068, 0.996199, -0.045830,
		-0.105024, 0.053492, 0.993030,
		0.991707, -0.068739, 0.108587,
		45.116657, 37.491844, 34.225601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.581955, 38.164719, 34.543369>,  <44.422462, 37.539963, 34.149590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.581955, 38.164719, 34.543369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.933247, 38.057747, 34.384777>,  <45.144020, 37.993565, 34.289623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.933247, 38.057747, 34.384777>,  <44.581955, 38.164719, 34.543369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.933247, 38.057747, 34.384777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166887, 0.948294, -0.269976,
		0.448180, 0.170933, 0.877449,
		0.878227, -0.267433, -0.396480,
		45.196716, 37.977516, 34.265835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.051041, 38.658649, 34.801739>,  <44.581955, 38.164719, 34.543369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.051041, 38.658649, 34.801739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.206852, 38.501095, 34.468723>,  <45.300339, 38.406563, 34.268913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.206852, 38.501095, 34.468723>,  <45.051041, 38.658649, 34.801739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.206852, 38.501095, 34.468723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214354, 0.917886, -0.333973,
		0.895723, -0.048365, 0.441975,
		0.389530, -0.393886, -0.832538,
		45.323711, 38.382931, 34.218964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.789516, 38.951599, 34.740353>,  <45.051041, 38.658649, 34.801739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.789516, 38.951599, 34.740353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.669792, 38.833397, 34.377453>,  <45.597958, 38.762478, 34.159714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.669792, 38.833397, 34.377453>,  <45.789516, 38.951599, 34.740353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.669792, 38.833397, 34.377453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291245, 0.877163, -0.381786,
		0.908620, -0.378503, -0.176479,
		-0.299308, -0.295500, -0.907245,
		45.580002, 38.744747, 34.105278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.239868, 39.276054, 34.227997>,  <45.789516, 38.951599, 34.740353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.239868, 39.276054, 34.227997> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.920349, 39.169159, 34.012402>,  <45.728638, 39.105022, 33.883045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.920349, 39.169159, 34.012402>,  <46.239868, 39.276054, 34.227997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.920349, 39.169159, 34.012402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024032, 0.881036, -0.472439,
		0.601123, -0.390335, -0.697345,
		-0.798795, -0.267235, -0.538991,
		45.680710, 39.088989, 33.850704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.490574, 39.395451, 33.625721>,  <46.239868, 39.276054, 34.227997>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.490574, 39.395451, 33.625721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.094227, 39.389862, 33.572063>,  <45.856419, 39.386509, 33.539867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.094227, 39.389862, 33.572063>,  <46.490574, 39.395451, 33.625721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.094227, 39.389862, 33.572063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037386, 0.927193, -0.372713,
		0.129586, -0.374323, -0.918199,
		-0.990863, -0.013970, -0.134146,
		45.796967, 39.385670, 33.531818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.438103, 39.474545, 32.869904>,  <46.490574, 39.395451, 33.625721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.438103, 39.474545, 32.869904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.093548, 39.583130, 33.041634>,  <45.886814, 39.648281, 33.144672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.093548, 39.583130, 33.041634>,  <46.438103, 39.474545, 32.869904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.093548, 39.583130, 33.041634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085828, 0.910847, -0.403722,
		-0.500648, -0.310912, -0.807889,
		-0.861385, 0.271462, 0.429329,
		45.835133, 39.664570, 33.170433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.897404, 39.591320, 32.281048>,  <46.438103, 39.474545, 32.869904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.897404, 39.591320, 32.281048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.816296, 39.786911, 32.620407>,  <45.767632, 39.904266, 32.824024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.816296, 39.786911, 32.620407>,  <45.897404, 39.591320, 32.281048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.816296, 39.786911, 32.620407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042351, 0.869966, -0.491290,
		-0.978310, -0.063690, -0.197115,
		-0.202773, 0.488982, 0.848399,
		45.755463, 39.933605, 32.874928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.587826, 40.311089, 32.129803>,  <45.897404, 39.591320, 32.281048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.587826, 40.311089, 32.129803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.621822, 40.367756, 32.524307>,  <45.642220, 40.401756, 32.761009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.621822, 40.367756, 32.524307>,  <45.587826, 40.311089, 32.129803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.621822, 40.367756, 32.524307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132927, 0.979379, -0.152140,
		-0.987475, 0.144031, 0.064408,
		0.084993, 0.141673, 0.986258,
		45.647320, 40.410259, 32.820183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.150906, 40.785416, 32.232582>,  <45.587826, 40.311089, 32.129803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.150906, 40.785416, 32.232582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.389397, 40.839252, 32.549164>,  <45.532490, 40.871555, 32.739113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.389397, 40.839252, 32.549164>,  <45.150906, 40.785416, 32.232582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.389397, 40.839252, 32.549164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014827, 0.983832, -0.178482,
		-0.802678, 0.118150, 0.584592,
		0.596228, 0.134596, 0.791452,
		45.568264, 40.879631, 32.786598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.842838, 41.338612, 32.610550>,  <45.150906, 40.785416, 32.232582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.842838, 41.338612, 32.610550> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.228195, 41.314365, 32.715004>,  <45.459412, 41.299820, 32.777676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.228195, 41.314365, 32.715004>,  <44.842838, 41.338612, 32.610550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.228195, 41.314365, 32.715004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116525, 0.971950, -0.204292,
		-0.241431, 0.227243, 0.943436,
		0.963396, -0.060611, 0.261139,
		45.517216, 41.296181, 32.793346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.193542, 38.171219, 42.540714> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.830936, 38.022400, 42.460911>,  <38.613373, 37.933109, 42.413029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.830936, 38.022400, 42.460911>,  <39.193542, 38.171219, 42.540714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830936, 38.022400, 42.460911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280356, -0.177223, -0.943394,
		0.315630, -0.911138, 0.264962,
		-0.906520, -0.372047, -0.199506,
		38.558979, 37.910786, 42.401058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369198, 37.680897, 42.025177>,  <39.193542, 38.171219, 42.540714>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369198, 37.680897, 42.025177> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969917, 37.693615, 42.004845>,  <38.730350, 37.701244, 41.992645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969917, 37.693615, 42.004845>,  <39.369198, 37.680897, 42.025177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969917, 37.693615, 42.004845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040522, -0.267005, -0.962843,
		-0.044181, -0.963171, 0.265237,
		-0.998201, 0.031792, -0.050826,
		38.670456, 37.703152, 41.989597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215324, 37.081432, 41.629623>,  <39.369198, 37.680897, 42.025177>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215324, 37.081432, 41.629623> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902191, 37.328342, 41.598282>,  <38.714310, 37.476490, 41.579475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902191, 37.328342, 41.598282>,  <39.215324, 37.081432, 41.629623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902191, 37.328342, 41.598282> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060167, -0.200431, -0.977858,
		-0.619314, -0.760787, 0.194044,
		-0.782835, 0.617277, -0.078355,
		38.667339, 37.513527, 41.574776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670616, 36.755692, 41.341084>,  <39.215324, 37.081432, 41.629623>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.670616, 36.755692, 41.341084> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580486, 37.140194, 41.277569>,  <38.526409, 37.370895, 41.239460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580486, 37.140194, 41.277569>,  <38.670616, 36.755692, 41.341084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580486, 37.140194, 41.277569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053015, -0.174839, -0.983169,
		-0.972840, -0.213118, 0.090357,
		-0.225328, 0.961256, -0.158791,
		38.512886, 37.428570, 41.229931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060303, 36.740124, 41.114868>,  <38.670616, 36.755692, 41.341084>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060303, 36.740124, 41.114868> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202999, 37.092751, 40.991211>,  <38.288616, 37.304329, 40.917019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202999, 37.092751, 40.991211>,  <38.060303, 36.740124, 41.114868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.202999, 37.092751, 40.991211> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431957, -0.137756, -0.891311,
		-0.828340, 0.451505, 0.331657,
		0.356744, 0.881570, -0.309139,
		38.310020, 37.357224, 40.898468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582897, 36.915409, 40.654819>,  <38.060303, 36.740124, 41.114868>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582897, 36.915409, 40.654819> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843124, 37.213001, 40.593815>,  <37.999260, 37.391556, 40.557213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843124, 37.213001, 40.593815>,  <37.582897, 36.915409, 40.654819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843124, 37.213001, 40.593815> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375419, 0.140481, -0.916147,
		-0.660169, 0.653270, 0.370696,
		0.650567, 0.743978, -0.152509,
		38.038296, 37.436195, 40.548061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274143, 37.437000, 40.229385>,  <37.582897, 36.915409, 40.654819>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274143, 37.437000, 40.229385> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666355, 37.471268, 40.158699>,  <37.901680, 37.491829, 40.116287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666355, 37.471268, 40.158699>,  <37.274143, 37.437000, 40.229385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666355, 37.471268, 40.158699> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183095, 0.073363, -0.980354,
		-0.071021, 0.993619, 0.087620,
		0.980527, 0.085668, -0.176716,
		37.960514, 37.496967, 40.105682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316837, 37.970886, 39.667583>,  <37.274143, 37.437000, 40.229385>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316837, 37.970886, 39.667583> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645206, 37.742706, 39.657249>,  <37.842228, 37.605797, 39.651047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645206, 37.742706, 39.657249>,  <37.316837, 37.970886, 39.667583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645206, 37.742706, 39.657249> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010689, 0.029892, -0.999496,
		0.570935, 0.820788, 0.018442,
		0.820926, -0.570450, -0.025840,
		37.891483, 37.571571, 39.649498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702843, 38.219059, 39.173962>,  <37.316837, 37.970886, 39.667583>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702843, 38.219059, 39.173962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903931, 37.874744, 39.205750>,  <38.024582, 37.668156, 39.224823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903931, 37.874744, 39.205750>,  <37.702843, 38.219059, 39.173962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903931, 37.874744, 39.205750> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093998, -0.036949, -0.994887,
		0.859325, 0.507617, 0.062337,
		0.502718, -0.860790, 0.079466,
		38.054745, 37.616508, 39.229588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367760, 38.296864, 38.874187>,  <37.702843, 38.219059, 39.173962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367760, 38.296864, 38.874187> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235367, 37.919861, 38.855736>,  <38.155933, 37.693657, 38.844666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235367, 37.919861, 38.855736>,  <38.367760, 38.296864, 38.874187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235367, 37.919861, 38.855736> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126044, 0.004287, -0.992016,
		0.935182, -0.334152, 0.117379,
		-0.330980, -0.942510, -0.046127,
		38.136074, 37.637108, 38.841896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710178, 38.029938, 38.283176>,  <38.367760, 38.296864, 38.874187>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710178, 38.029938, 38.283176> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441845, 37.736534, 38.326885>,  <38.280846, 37.560493, 38.353111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441845, 37.736534, 38.326885>,  <38.710178, 38.029938, 38.283176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441845, 37.736534, 38.326885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042504, -0.109080, -0.993124,
		0.740386, -0.670869, 0.041998,
		-0.670837, -0.733510, 0.109276,
		38.240593, 37.516479, 38.359669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897282, 37.496235, 37.901287>,  <38.710178, 38.029938, 38.283176>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897282, 37.496235, 37.901287> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501514, 37.461567, 37.947834>,  <38.264053, 37.440765, 37.975761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501514, 37.461567, 37.947834>,  <38.897282, 37.496235, 37.901287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501514, 37.461567, 37.947834> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106196, -0.113927, -0.987797,
		0.098869, -0.989702, 0.103518,
		-0.989418, -0.086670, 0.116367,
		38.204689, 37.435566, 37.982742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819096, 37.053944, 37.424290>,  <38.897282, 37.496235, 37.901287>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819096, 37.053944, 37.424290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443047, 37.174759, 37.487457>,  <38.217415, 37.247250, 37.525360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443047, 37.174759, 37.487457>,  <38.819096, 37.053944, 37.424290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.443047, 37.174759, 37.487457> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262828, -0.347453, -0.900110,
		-0.216994, -0.887722, 0.406033,
		-0.940125, 0.302035, 0.157923,
		38.161011, 37.265369, 37.534832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359253, 36.522060, 37.345253>,  <38.819096, 37.053944, 37.424290>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359253, 36.522060, 37.345253> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193340, 36.870857, 37.241268>,  <38.093792, 37.080135, 37.178879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193340, 36.870857, 37.241268>,  <38.359253, 36.522060, 37.345253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193340, 36.870857, 37.241268> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583866, -0.474184, -0.658976,
		-0.697895, -0.121547, 0.705811,
		-0.414781, 0.871996, -0.259963,
		38.068905, 37.132458, 37.163280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779575, 35.921295, 37.050659>,  <38.359253, 36.522060, 37.345253>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.779575, 35.921295, 37.050659> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832619, 35.536659, 36.954521>,  <38.864445, 35.305878, 36.896839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832619, 35.536659, 36.954521>,  <38.779575, 35.921295, 37.050659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832619, 35.536659, 36.954521> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663620, -0.266254, 0.699083,
		-0.736222, 0.066796, -0.673435,
		0.132609, -0.961586, -0.240349,
		38.872402, 35.248184, 36.882416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098221, 35.670956, 37.091091>,  <38.779575, 35.921295, 37.050659>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098221, 35.670956, 37.091091> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319923, 35.338017, 37.090446>,  <38.452946, 35.138252, 37.090061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319923, 35.338017, 37.090446>,  <38.098221, 35.670956, 37.091091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319923, 35.338017, 37.090446> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593726, -0.396714, 0.700077,
		-0.583346, -0.387063, -0.714066,
		0.554253, -0.832347, -0.001612,
		38.486198, 35.088314, 37.089962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624039, 35.126816, 37.139328>,  <38.098221, 35.670956, 37.091091>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624039, 35.126816, 37.139328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977924, 34.971653, 37.242714>,  <38.190258, 34.878555, 37.304745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977924, 34.971653, 37.242714>,  <37.624039, 35.126816, 37.139328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977924, 34.971653, 37.242714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432902, -0.478173, 0.764164,
		-0.172830, -0.787960, -0.590973,
		0.884718, -0.387904, 0.258466,
		38.243340, 34.855282, 37.320255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469193, 34.503349, 37.265541>,  <37.624039, 35.126816, 37.139328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469193, 34.503349, 37.265541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815071, 34.558350, 37.458786>,  <38.022598, 34.591351, 37.574734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815071, 34.558350, 37.458786>,  <37.469193, 34.503349, 37.265541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815071, 34.558350, 37.458786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434076, -0.279401, 0.856454,
		0.252741, -0.950279, -0.181913,
		0.864697, 0.137496, 0.483109,
		38.074482, 34.599598, 37.603718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501534, 33.992275, 37.793369>,  <37.469193, 34.503349, 37.265541>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501534, 33.992275, 37.793369> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769474, 34.262321, 37.916996>,  <37.930237, 34.424347, 37.991173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769474, 34.262321, 37.916996>,  <37.501534, 33.992275, 37.793369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769474, 34.262321, 37.916996> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303757, -0.130662, 0.943747,
		0.677519, -0.726052, 0.117546,
		0.669851, 0.675113, 0.309069,
		37.970428, 34.464855, 38.009716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857399, 33.619843, 38.325497>,  <37.501534, 33.992275, 37.793369>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857399, 33.619843, 38.325497> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930828, 34.001610, 38.419632>,  <37.974884, 34.230671, 38.476112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930828, 34.001610, 38.419632>,  <37.857399, 33.619843, 38.325497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930828, 34.001610, 38.419632> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032880, -0.245239, 0.968905,
		0.982456, -0.170127, -0.076400,
		0.183573, 0.954419, 0.235343,
		37.985901, 34.287937, 38.490234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413090, 33.573055, 38.792019>,  <37.857399, 33.619843, 38.325497>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413090, 33.573055, 38.792019> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273144, 33.944180, 38.843811>,  <38.189175, 34.166855, 38.874886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273144, 33.944180, 38.843811>,  <38.413090, 33.573055, 38.792019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273144, 33.944180, 38.843811> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087476, -0.105251, 0.990591,
		0.932706, 0.357901, -0.044337,
		-0.349867, 0.927809, 0.129476,
		38.168182, 34.222523, 38.882652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903954, 33.907665, 39.290409>,  <38.413090, 33.573055, 38.792019>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.903954, 33.907665, 39.290409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565140, 34.119640, 39.306866>,  <38.361851, 34.246826, 39.316738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565140, 34.119640, 39.306866>,  <38.903954, 33.907665, 39.290409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.565140, 34.119640, 39.306866> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085027, 0.058684, 0.994649,
		0.524692, 0.846001, -0.094766,
		-0.847036, 0.529942, 0.041142,
		38.311028, 34.278622, 39.319210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020573, 34.490849, 39.719334>,  <38.903954, 33.907665, 39.290409>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.020573, 34.490849, 39.719334> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623116, 34.446091, 39.724312>,  <38.384640, 34.419235, 39.727299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623116, 34.446091, 39.724312>,  <39.020573, 34.490849, 39.719334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623116, 34.446091, 39.724312> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007988, 0.180359, 0.983569,
		-0.112302, 0.977216, -0.180106,
		-0.993642, -0.111896, 0.012449,
		38.325024, 34.412521, 39.728046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739063, 35.078411, 40.130001>,  <39.020573, 34.490849, 39.719334>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739063, 35.078411, 40.130001> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438599, 34.814442, 40.123653>,  <38.258320, 34.656059, 40.119843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438599, 34.814442, 40.123653>,  <38.739063, 35.078411, 40.130001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438599, 34.814442, 40.123653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128249, 0.122312, 0.984171,
		-0.647537, 0.741310, -0.176511,
		-0.751165, -0.659924, -0.015871,
		38.213249, 34.616463, 40.118893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271984, 35.356586, 40.634953>,  <38.739063, 35.078411, 40.130001>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271984, 35.356586, 40.634953> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182911, 34.966995, 40.618080>,  <38.129467, 34.733242, 40.607956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182911, 34.966995, 40.618080>,  <38.271984, 35.356586, 40.634953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182911, 34.966995, 40.618080> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049726, -0.031865, 0.998254,
		-0.973622, 0.224391, -0.041336,
		-0.222683, -0.973978, -0.042183,
		38.116108, 34.674801, 40.605427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703114, 35.291302, 41.069458>,  <38.271984, 35.356586, 40.634953>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.703114, 35.291302, 41.069458> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864403, 34.928207, 41.023117>,  <37.961178, 34.710350, 40.995312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864403, 34.928207, 41.023117>,  <37.703114, 35.291302, 41.069458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864403, 34.928207, 41.023117> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046190, -0.146628, 0.988113,
		-0.913935, -0.393079, -0.101052,
		0.403223, -0.907739, -0.115852,
		37.985371, 34.655888, 40.988361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333546, 34.868488, 41.456902>,  <37.703114, 35.291302, 41.069458>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333546, 34.868488, 41.456902> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674694, 34.662262, 41.423882>,  <37.879383, 34.538528, 41.404072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674694, 34.662262, 41.423882>,  <37.333546, 34.868488, 41.456902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674694, 34.662262, 41.423882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037685, -0.218465, 0.975117,
		-0.520767, -0.828534, -0.205750,
		0.852866, -0.515563, -0.082546,
		37.930553, 34.507595, 41.399117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255749, 34.214931, 41.837513>,  <37.333546, 34.868488, 41.456902>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255749, 34.214931, 41.837513> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645855, 34.295044, 41.800117>,  <37.879921, 34.343109, 41.777679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645855, 34.295044, 41.800117>,  <37.255749, 34.214931, 41.837513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645855, 34.295044, 41.800117> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113999, -0.093416, 0.989079,
		0.189358, -0.975275, -0.113937,
		0.975268, 0.200278, -0.093492,
		37.938435, 34.355125, 41.772072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158962, 33.476719, 41.667660>,  <37.255749, 34.214931, 41.837513>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158962, 33.476719, 41.667660> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821213, 33.264996, 41.700813>,  <36.618565, 33.137962, 41.720707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821213, 33.264996, 41.700813>,  <37.158962, 33.476719, 41.667660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.821213, 33.264996, 41.700813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264487, 0.277282, -0.923667,
		0.465919, -0.801842, -0.374124,
		-0.844373, -0.529305, 0.082885,
		36.567902, 33.106205, 41.725677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980999, 33.210888, 40.958115>,  <37.158962, 33.476719, 41.667660>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980999, 33.210888, 40.958115> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637451, 33.150040, 41.153748>,  <36.431324, 33.113529, 41.271130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637451, 33.150040, 41.153748>,  <36.980999, 33.210888, 40.958115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637451, 33.150040, 41.153748> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507908, 0.129636, -0.851601,
		0.066138, -0.979824, -0.188601,
		-0.858869, -0.152115, 0.489086,
		36.379791, 33.104404, 41.300472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610992, 32.800575, 40.527466>,  <36.980999, 33.210888, 40.958115>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610992, 32.800575, 40.527466> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327049, 32.959930, 40.759808>,  <36.156685, 33.055546, 40.899212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327049, 32.959930, 40.759808>,  <36.610992, 32.800575, 40.527466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327049, 32.959930, 40.759808> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571538, 0.156165, -0.805578,
		-0.411643, -0.903824, 0.116841,
		-0.709855, 0.398390, 0.580854,
		36.114094, 33.079449, 40.934063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935814, 32.511307, 40.263699>,  <36.610992, 32.800575, 40.527466>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935814, 32.511307, 40.263699> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832516, 32.834072, 40.476189>,  <35.770538, 33.027733, 40.603683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832516, 32.834072, 40.476189>,  <35.935814, 32.511307, 40.263699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.832516, 32.834072, 40.476189> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450474, 0.385861, -0.805099,
		-0.854625, -0.447213, 0.263848,
		-0.258242, 0.806915, 0.531224,
		35.755043, 33.076145, 40.635555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205952, 32.512890, 40.273117>,  <35.935814, 32.511307, 40.263699>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205952, 32.512890, 40.273117> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356380, 32.880955, 40.316689>,  <35.446640, 33.101795, 40.342831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356380, 32.880955, 40.316689>,  <35.205952, 32.512890, 40.273117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356380, 32.880955, 40.316689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514103, 0.305021, -0.801661,
		-0.770886, 0.245483, 0.587770,
		0.376077, 0.920163, 0.108933,
		35.469204, 33.157005, 40.349369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.734112, 32.928059, 39.966255>,  <35.205952, 32.512890, 40.273117>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.734112, 32.928059, 39.966255> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019089, 33.203972, 40.017845>,  <35.190075, 33.369518, 40.048798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019089, 33.203972, 40.017845>,  <34.734112, 32.928059, 39.966255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019089, 33.203972, 40.017845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373237, 0.528115, -0.762751,
		-0.594241, 0.495278, 0.633701,
		0.712441, 0.689779, 0.128972,
		35.232822, 33.410904, 40.056538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452614, 33.482559, 39.942402>,  <34.734112, 32.928059, 39.966255>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452614, 33.482559, 39.942402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829849, 33.576111, 39.847843>,  <35.056190, 33.632240, 39.791107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829849, 33.576111, 39.847843>,  <34.452614, 33.482559, 39.942402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.829849, 33.576111, 39.847843> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331398, 0.602211, -0.726304,
		-0.027503, 0.763312, 0.645444,
		0.943090, 0.233875, -0.236398,
		35.112778, 33.646275, 39.776924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.393757, 34.231678, 39.967129>,  <34.452614, 33.482559, 39.942402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.393757, 34.231678, 39.967129> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727043, 34.138561, 39.766506>,  <34.927013, 34.082691, 39.646133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727043, 34.138561, 39.766506>,  <34.393757, 34.231678, 39.967129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.727043, 34.138561, 39.766506> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239246, 0.665983, -0.706561,
		0.498511, 0.708713, 0.499212,
		0.833216, -0.232794, -0.501556,
		34.977009, 34.068722, 39.616039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710182, 34.880032, 39.769348>,  <34.393757, 34.231678, 39.967129>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710182, 34.880032, 39.769348> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835842, 34.586853, 39.527985>,  <34.911240, 34.410946, 39.383167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835842, 34.586853, 39.527985>,  <34.710182, 34.880032, 39.769348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835842, 34.586853, 39.527985> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260478, 0.544653, -0.797185,
		0.912941, 0.407610, -0.019813,
		0.314150, -0.732944, -0.603410,
		34.930088, 34.366970, 39.346962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100697, 35.167789, 39.229137>,  <34.710182, 34.880032, 39.769348>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100697, 35.167789, 39.229137> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991226, 34.818493, 39.067867>,  <34.925545, 34.608913, 38.971104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991226, 34.818493, 39.067867>,  <35.100697, 35.167789, 39.229137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991226, 34.818493, 39.067867> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192233, 0.460381, -0.866658,
		0.942416, -0.159681, -0.293861,
		-0.273677, -0.873242, -0.403175,
		34.909122, 34.556519, 38.946915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374565, 35.194180, 38.567665>,  <35.100697, 35.167789, 39.229137>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374565, 35.194180, 38.567665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092350, 34.912777, 38.533504>,  <34.923019, 34.743935, 38.513008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092350, 34.912777, 38.533504>,  <35.374565, 35.194180, 38.567665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092350, 34.912777, 38.533504> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156450, 0.272154, -0.949450,
		0.691186, -0.656513, -0.302079,
		-0.705538, -0.703507, -0.085398,
		34.880688, 34.701725, 38.507885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567635, 34.900364, 38.012917>,  <35.374565, 35.194180, 38.567665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567635, 34.900364, 38.012917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176353, 34.830959, 38.058556>,  <34.941586, 34.789318, 38.085938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176353, 34.830959, 38.058556>,  <35.567635, 34.900364, 38.012917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176353, 34.830959, 38.058556> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148249, 0.198724, -0.968778,
		0.145413, -0.964575, -0.220114,
		-0.978201, -0.173505, 0.114100,
		34.882893, 34.778908, 38.092785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.829987, 32.208099, 44.981789> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.443668, 32.159409, 45.073368>,  <37.211876, 32.130196, 45.128315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.443668, 32.159409, 45.073368>,  <37.829987, 32.208099, 44.981789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443668, 32.159409, 45.073368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243915, 0.126897, -0.961459,
		0.087972, -0.984420, -0.152245,
		-0.965798, -0.121716, 0.228952,
		37.153931, 32.122890, 45.142052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579922, 31.678873, 44.566975>,  <37.829987, 32.208099, 44.981789>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579922, 31.678873, 44.566975> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.252468, 31.887674, 44.662766>,  <37.055996, 32.012955, 44.720242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.252468, 31.887674, 44.662766>,  <37.579922, 31.678873, 44.566975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252468, 31.887674, 44.662766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236501, 0.073578, -0.968841,
		-0.523358, -0.849764, 0.063220,
		-0.818635, 0.522003, 0.239478,
		37.006878, 32.044273, 44.734608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985470, 31.375156, 44.172527>,  <37.579922, 31.678873, 44.566975>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985470, 31.375156, 44.172527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.864929, 31.749077, 44.247719>,  <36.792606, 31.973429, 44.292831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.864929, 31.749077, 44.247719>,  <36.985470, 31.375156, 44.172527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864929, 31.749077, 44.247719> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060693, 0.177934, -0.982169,
		-0.951580, -0.307386, 0.003115,
		-0.301350, 0.934801, 0.187975,
		36.774525, 32.029518, 44.304111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399349, 31.411963, 43.715435>,  <36.985470, 31.375156, 44.172527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399349, 31.411963, 43.715435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.516510, 31.778559, 43.824432>,  <36.586807, 31.998516, 43.889832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.516510, 31.778559, 43.824432>,  <36.399349, 31.411963, 43.715435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516510, 31.778559, 43.824432> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284199, 0.355559, -0.890398,
		-0.912929, 0.183358, 0.364610,
		0.292902, 0.916492, 0.272490,
		36.604382, 32.053505, 43.906178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829800, 31.812830, 43.563812>,  <36.399349, 31.411963, 43.715435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829800, 31.812830, 43.563812> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.140171, 32.064594, 43.580696>,  <36.326393, 32.215652, 43.590824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.140171, 32.064594, 43.580696>,  <35.829800, 31.812830, 43.563812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140171, 32.064594, 43.580696> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311990, 0.441045, -0.841511,
		-0.548271, 0.639783, 0.538588,
		0.775926, 0.629410, 0.042207,
		36.372948, 32.253418, 43.593357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604454, 32.402042, 43.338158>,  <35.829800, 31.812830, 43.563812>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604454, 32.402042, 43.338158> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.999260, 32.452568, 43.298466>,  <36.236145, 32.482883, 43.274651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.999260, 32.452568, 43.298466>,  <35.604454, 32.402042, 43.338158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999260, 32.452568, 43.298466> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137861, 0.349075, -0.926898,
		-0.082442, 0.928542, 0.361956,
		0.987014, 0.126315, -0.099232,
		36.295364, 32.490463, 43.268696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689007, 33.143040, 43.141651>,  <35.604454, 32.402042, 43.338158>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689007, 33.143040, 43.141651> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.000278, 32.912479, 43.041901>,  <36.187042, 32.774143, 42.982052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.000278, 32.912479, 43.041901>,  <35.689007, 33.143040, 43.141651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000278, 32.912479, 43.041901> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064175, 0.467972, -0.881410,
		0.624750, 0.669895, 0.401159,
		0.778184, -0.576405, -0.249375,
		36.233734, 32.739559, 42.967087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214832, 33.596031, 42.847099>,  <35.689007, 33.143040, 43.141651>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214832, 33.596031, 42.847099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.283646, 33.232754, 42.694473>,  <36.324936, 33.014790, 42.602898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.283646, 33.232754, 42.694473>,  <36.214832, 33.596031, 42.847099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283646, 33.232754, 42.694473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127918, 0.404660, -0.905476,
		0.976750, 0.106967, 0.185790,
		0.172038, -0.908190, -0.381569,
		36.335258, 32.960297, 42.580002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769760, 33.761700, 42.357708>,  <36.214832, 33.596031, 42.847099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769760, 33.761700, 42.357708> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.606762, 33.402664, 42.290428>,  <36.508965, 33.187244, 42.250061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.606762, 33.402664, 42.290428>,  <36.769760, 33.761700, 42.357708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606762, 33.402664, 42.290428> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119257, 0.234911, -0.964673,
		0.905388, -0.373038, -0.202768,
		-0.407492, -0.897586, -0.168199,
		36.484516, 33.133389, 42.239967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496643, 33.706718, 42.265640>,  <36.769760, 33.761700, 42.357708>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496643, 33.706718, 42.265640> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.792427, 33.972076, 42.219856>,  <37.969898, 34.131290, 42.192387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.792427, 33.972076, 42.219856>,  <37.496643, 33.706718, 42.265640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792427, 33.972076, 42.219856> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217702, -0.074768, 0.973147,
		0.637024, -0.744524, -0.199711,
		0.739464, 0.663395, -0.114455,
		38.014267, 34.171097, 42.185520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952888, 33.465889, 42.727112>,  <37.496643, 33.706718, 42.265640>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952888, 33.465889, 42.727112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.121662, 33.821835, 42.657707>,  <38.222927, 34.035404, 42.616062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.121662, 33.821835, 42.657707>,  <37.952888, 33.465889, 42.727112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.121662, 33.821835, 42.657707> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340022, 0.022097, 0.940158,
		0.840450, -0.455684, -0.293251,
		0.421935, 0.889867, -0.173514,
		38.248241, 34.088795, 42.605652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621353, 33.422604, 42.976986>,  <37.952888, 33.465889, 42.727112>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621353, 33.422604, 42.976986> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.505875, 33.805195, 42.993942>,  <38.436588, 34.034752, 43.004116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.505875, 33.805195, 42.993942>,  <38.621353, 33.422604, 42.976986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505875, 33.805195, 42.993942> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472428, 0.103804, 0.875235,
		0.832745, 0.272708, -0.481836,
		-0.288700, 0.956481, 0.042393,
		38.419266, 34.092140, 43.006660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076061, 33.784855, 43.219608>,  <38.621353, 33.422604, 42.976986>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076061, 33.784855, 43.219608> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.831982, 34.095535, 43.282066>,  <38.685532, 34.281944, 43.319542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.831982, 34.095535, 43.282066>,  <39.076061, 33.784855, 43.219608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831982, 34.095535, 43.282066> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356538, 0.093218, 0.929619,
		0.707483, 0.622929, -0.333807,
		-0.610203, 0.776705, 0.156148,
		38.648922, 34.328548, 43.328911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440308, 34.291794, 43.615414>,  <39.076061, 33.784855, 43.219608>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.440308, 34.291794, 43.615414> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.054420, 34.379559, 43.673622>,  <38.822887, 34.432217, 43.708546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.054420, 34.379559, 43.673622>,  <39.440308, 34.291794, 43.615414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054420, 34.379559, 43.673622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181240, 0.152535, 0.971537,
		0.190973, 0.963634, -0.186920,
		-0.964718, 0.219415, 0.145519,
		38.765003, 34.445385, 43.717278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445316, 34.889580, 44.138588>,  <39.440308, 34.291794, 43.615414>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445316, 34.889580, 44.138588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.086025, 34.714432, 44.153866>,  <38.870449, 34.609344, 44.163033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.086025, 34.714432, 44.153866>,  <39.445316, 34.889580, 44.138588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086025, 34.714432, 44.153866> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014194, 0.057963, 0.998218,
		-0.439300, 0.897169, -0.045849,
		-0.898228, -0.437867, 0.038198,
		38.816555, 34.583073, 44.165325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172905, 35.375977, 44.544212>,  <39.445316, 34.889580, 44.138588>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.172905, 35.375977, 44.544212> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.945007, 35.048485, 44.572704>,  <38.808270, 34.851990, 44.589802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.945007, 35.048485, 44.572704>,  <39.172905, 35.375977, 44.544212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945007, 35.048485, 44.572704> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108697, 0.010845, 0.994016,
		-0.814604, 0.574074, 0.082815,
		-0.569741, -0.818731, 0.071235,
		38.774086, 34.802864, 44.594074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789639, 35.509995, 45.165932>,  <39.172905, 35.375977, 44.544212>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789639, 35.509995, 45.165932> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.697327, 35.125023, 45.108704>,  <38.641941, 34.894039, 45.074368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.697327, 35.125023, 45.108704>,  <38.789639, 35.509995, 45.165932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697327, 35.125023, 45.108704> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187585, -0.188284, 0.964034,
		-0.954753, 0.195638, 0.223990,
		-0.230776, -0.962432, -0.143066,
		38.628094, 34.836292, 45.065784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140705, 35.289581, 45.607903>,  <38.789639, 35.509995, 45.165932>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140705, 35.289581, 45.607903> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.378597, 34.979904, 45.521259>,  <38.521332, 34.794098, 45.469273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.378597, 34.979904, 45.521259>,  <38.140705, 35.289581, 45.607903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378597, 34.979904, 45.521259> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075485, -0.214470, 0.973809,
		-0.800373, -0.595506, -0.069112,
		0.594732, -0.774193, -0.216608,
		38.557018, 34.747646, 45.456276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012596, 34.930717, 46.114288>,  <38.140705, 35.289581, 45.607903>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012596, 34.930717, 46.114288> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.362282, 34.780674, 45.990974>,  <38.572094, 34.690647, 45.916985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.362282, 34.780674, 45.990974>,  <38.012596, 34.930717, 46.114288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362282, 34.780674, 45.990974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258117, -0.178747, 0.949434,
		-0.411243, -0.909585, -0.059443,
		0.874217, -0.375105, -0.308289,
		38.624546, 34.668144, 45.898487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098045, 34.224030, 46.449348>,  <38.012596, 34.930717, 46.114288>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098045, 34.224030, 46.449348> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.455315, 34.364624, 46.337139>,  <38.669678, 34.448978, 46.269814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.455315, 34.364624, 46.337139>,  <38.098045, 34.224030, 46.449348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455315, 34.364624, 46.337139> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353149, -0.162005, 0.921434,
		0.278424, -0.922070, -0.268825,
		0.893177, 0.351485, -0.280522,
		38.723267, 34.470070, 46.252983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582394, 33.852325, 46.801361>,  <38.098045, 34.224030, 46.449348>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582394, 33.852325, 46.801361> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.783897, 34.176414, 46.681519>,  <38.904800, 34.370869, 46.609612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.783897, 34.176414, 46.681519>,  <38.582394, 33.852325, 46.801361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783897, 34.176414, 46.681519> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468468, 0.035165, 0.882780,
		0.725782, -0.585069, -0.361848,
		0.503763, 0.810220, -0.299608,
		38.935028, 34.419479, 46.591637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263340, 33.635109, 47.009991>,  <38.582394, 33.852325, 46.801361>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263340, 33.635109, 47.009991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.261963, 34.032513, 46.964500>,  <39.261135, 34.270954, 46.937206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.261963, 34.032513, 46.964500>,  <39.263340, 33.635109, 47.009991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261963, 34.032513, 46.964500> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340333, 0.108102, 0.934070,
		0.940299, -0.035487, -0.338496,
		-0.003445, 0.993506, -0.113726,
		39.260929, 34.330566, 46.930382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868256, 33.744114, 47.299763>,  <39.263340, 33.635109, 47.009991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.868256, 33.744114, 47.299763> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.654991, 34.082478, 47.294628>,  <39.527031, 34.285496, 47.291546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.654991, 34.082478, 47.294628>,  <39.868256, 33.744114, 47.299763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.654991, 34.082478, 47.294628> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300500, 0.203543, 0.931810,
		0.790844, 0.492951, -0.362719,
		-0.533165, 0.845914, -0.012839,
		39.495041, 34.336250, 47.290775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.777031, 36.217239, 47.837631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.164631, 36.120384, 47.857265>,  <32.397190, 36.062271, 47.869045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.164631, 36.120384, 47.857265>,  <31.777031, 36.217239, 47.837631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.164631, 36.120384, 47.857265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104974, 0.223651, -0.969000,
		0.223651, 0.944114, 0.242136,
		0.969000, -0.242136, 0.049088,
		32.455330, 36.047745, 47.871990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.037193, 36.752716, 47.421104>,  <31.777031, 36.217239, 47.837631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.037193, 36.752716, 47.421104> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.318001, 36.467854, 47.421753>,  <32.486485, 36.296936, 47.422142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.318001, 36.467854, 47.421753>,  <32.037193, 36.752716, 47.421104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318001, 36.467854, 47.421753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152961, 0.148560, -0.977002,
		0.695535, 0.686125, 0.213224,
		0.702022, -0.712154, 0.001622,
		32.528606, 36.254208, 47.422241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582840, 37.004490, 47.064285>,  <32.037193, 36.752716, 47.421104>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582840, 37.004490, 47.064285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.676758, 36.616264, 47.042805>,  <32.733109, 36.383331, 47.029915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.676758, 36.616264, 47.042805>,  <32.582840, 37.004490, 47.064285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676758, 36.616264, 47.042805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108376, 0.081041, -0.990801,
		0.965985, 0.226811, 0.124213,
		0.234791, -0.970561, -0.053704,
		32.747196, 36.325096, 47.026695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.251381, 36.894615, 46.632244>,  <32.582840, 37.004490, 47.064285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.251381, 36.894615, 46.632244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.016205, 36.571762, 46.610828>,  <32.875099, 36.378052, 46.597977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.016205, 36.571762, 46.610828>,  <33.251381, 36.894615, 46.632244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016205, 36.571762, 46.610828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138580, -0.035292, -0.989722,
		0.796943, -0.589320, 0.132601,
		-0.587943, -0.807128, -0.053542,
		32.839821, 36.329624, 46.594765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653049, 36.593060, 46.064972>,  <33.251381, 36.894615, 46.632244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653049, 36.593060, 46.064972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.297066, 36.424644, 46.135052>,  <33.083473, 36.323593, 46.177097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.297066, 36.424644, 46.135052>,  <33.653049, 36.593060, 46.064972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297066, 36.424644, 46.135052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095201, -0.204177, -0.974294,
		0.445988, -0.883763, 0.141626,
		-0.889961, -0.421041, 0.175196,
		33.030079, 36.298332, 46.187611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707153, 35.896973, 45.790222>,  <33.653049, 36.593060, 46.064972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707153, 35.896973, 45.790222> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.324554, 36.013367, 45.798576>,  <33.094994, 36.083202, 45.803589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.324554, 36.013367, 45.798576>,  <33.707153, 35.896973, 45.790222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.324554, 36.013367, 45.798576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035185, -0.044008, -0.998411,
		-0.289607, -0.955714, 0.052332,
		-0.956499, 0.290989, 0.020881,
		33.037605, 36.100662, 45.804840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440315, 35.498653, 45.290924>,  <33.707153, 35.896973, 45.790222>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440315, 35.498653, 45.290924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.159489, 35.778378, 45.344681>,  <32.990993, 35.946213, 45.376934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.159489, 35.778378, 45.344681>,  <33.440315, 35.498653, 45.290924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159489, 35.778378, 45.344681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100026, 0.090010, -0.990905,
		-0.705048, -0.709127, 0.006756,
		-0.702070, 0.699312, 0.134392,
		32.948868, 35.988171, 45.384998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.868267, 35.254570, 44.902035>,  <33.440315, 35.498653, 45.290924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.868267, 35.254570, 44.902035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.811859, 35.648815, 44.939285>,  <32.778015, 35.885365, 44.961636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.811859, 35.648815, 44.939285>,  <32.868267, 35.254570, 44.902035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811859, 35.648815, 44.939285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145019, 0.072486, -0.986770,
		-0.979327, -0.152664, 0.132711,
		-0.141024, 0.985616, 0.093127,
		32.769550, 35.944500, 44.967224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.264732, 35.368706, 44.537472>,  <32.868267, 35.254570, 44.902035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.264732, 35.368706, 44.537472> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.451988, 35.721951, 44.549782>,  <32.564342, 35.933899, 44.557167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.451988, 35.721951, 44.549782>,  <32.264732, 35.368706, 44.537472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451988, 35.721951, 44.549782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093417, 0.084098, -0.992069,
		-0.878700, 0.461556, 0.121868,
		0.468144, 0.883116, 0.030780,
		32.592430, 35.986885, 44.559017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.840872, 35.706951, 44.160614>,  <32.264732, 35.368706, 44.537472>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.840872, 35.706951, 44.160614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.159237, 35.947536, 44.188244>,  <32.350254, 36.091888, 44.204823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.159237, 35.947536, 44.188244>,  <31.840872, 35.706951, 44.160614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.159237, 35.947536, 44.188244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135105, 0.287680, -0.948149,
		-0.590147, 0.745309, 0.310227,
		0.795910, 0.601461, 0.069079,
		32.398010, 36.127975, 44.208969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.619631, 36.343475, 43.927067>,  <31.840872, 35.706951, 44.160614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.619631, 36.343475, 43.927067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.015305, 36.313477, 43.876644>,  <32.252708, 36.295479, 43.846390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.015305, 36.313477, 43.876644>,  <31.619631, 36.343475, 43.927067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.015305, 36.313477, 43.876644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077895, 0.459651, -0.884677,
		0.124289, 0.884927, 0.448838,
		0.989184, -0.074994, -0.126061,
		32.312061, 36.290977, 43.838825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.815586, 36.943485, 43.681942>,  <31.619631, 36.343475, 43.927067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.815586, 36.943485, 43.681942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.140327, 36.739468, 43.568279>,  <32.335171, 36.617058, 43.500080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.140327, 36.739468, 43.568279>,  <31.815586, 36.943485, 43.681942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140327, 36.739468, 43.568279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056823, 0.415352, -0.907884,
		0.581089, 0.753216, 0.308223,
		0.811854, -0.510047, -0.284157,
		32.383884, 36.586452, 43.483032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.278736, 37.441120, 43.398323>,  <31.815586, 36.943485, 43.681942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.278736, 37.441120, 43.398323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.404839, 37.106197, 43.219650>,  <32.480499, 36.905243, 43.112446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.404839, 37.106197, 43.219650>,  <32.278736, 37.441120, 43.398323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.404839, 37.106197, 43.219650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152178, 0.419992, -0.894678,
		0.936724, 0.350032, 0.004988,
		0.315261, -0.837307, -0.446684,
		32.499416, 36.855003, 43.085644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755962, 37.687092, 42.788628>,  <32.278736, 37.441120, 43.398323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.755962, 37.687092, 42.788628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.653164, 37.305218, 42.728588>,  <32.591484, 37.076092, 42.692562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.653164, 37.305218, 42.728588>,  <32.755962, 37.687092, 42.788628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653164, 37.305218, 42.728588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103223, 0.181546, -0.977950,
		0.960884, -0.235834, -0.145201,
		-0.256995, -0.954685, -0.150101,
		32.576065, 37.018814, 42.683559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523663, 37.642380, 43.035049>,  <32.755962, 37.687092, 42.788628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523663, 37.642380, 43.035049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.855843, 37.864597, 43.051701>,  <34.055149, 37.997929, 43.061691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.855843, 37.864597, 43.051701>,  <33.523663, 37.642380, 43.035049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855843, 37.864597, 43.051701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111729, 0.092881, 0.989389,
		0.545780, -0.826284, 0.139202,
		0.830446, 0.555542, 0.041627,
		34.104977, 38.031261, 43.064190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967690, 37.372662, 43.534416>,  <33.523663, 37.642380, 43.035049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967690, 37.372662, 43.534416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.106945, 37.746170, 43.501251>,  <34.190498, 37.970276, 43.481354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.106945, 37.746170, 43.501251>,  <33.967690, 37.372662, 43.534416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106945, 37.746170, 43.501251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099143, 0.051271, 0.993751,
		0.932186, -0.354183, -0.074727,
		0.348139, 0.933770, -0.082908,
		34.211388, 38.026302, 43.476379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544777, 37.369606, 44.041252>,  <33.967690, 37.372662, 43.534416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544777, 37.369606, 44.041252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.434971, 37.743225, 43.949863>,  <34.369087, 37.967396, 43.895031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.434971, 37.743225, 43.949863>,  <34.544777, 37.369606, 44.041252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434971, 37.743225, 43.949863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087860, 0.260974, 0.961339,
		0.957561, 0.243827, -0.153707,
		-0.274514, 0.934045, -0.228476,
		34.352615, 38.023438, 43.881321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039673, 37.757538, 44.221985>,  <34.544777, 37.369606, 44.041252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.039673, 37.757538, 44.221985> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.715096, 37.990334, 44.243320>,  <34.520348, 38.130013, 44.256123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.715096, 37.990334, 44.243320>,  <35.039673, 37.757538, 44.221985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715096, 37.990334, 44.243320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239887, 0.248454, 0.938469,
		0.532931, 0.774309, -0.341219,
		-0.811442, 0.581994, 0.053338,
		34.471664, 38.164932, 44.259323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.310669, 38.478302, 44.235779>,  <35.039673, 37.757538, 44.221985>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.310669, 38.478302, 44.235779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.953625, 38.409866, 44.402622>,  <34.739399, 38.368805, 44.502728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.953625, 38.409866, 44.402622>,  <35.310669, 38.478302, 44.235779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953625, 38.409866, 44.402622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427822, -0.029641, 0.903377,
		-0.142198, 0.984809, 0.099655,
		-0.892608, -0.171093, 0.417108,
		34.685841, 38.358540, 44.527756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394485, 38.821774, 44.964012>,  <35.310669, 38.478302, 44.235779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394485, 38.821774, 44.964012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.044048, 38.629120, 44.972870>,  <34.833786, 38.513527, 44.978184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.044048, 38.629120, 44.972870>,  <35.394485, 38.821774, 44.964012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044048, 38.629120, 44.972870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011188, 0.025613, 0.999609,
		-0.482015, 0.875997, -0.017051,
		-0.876092, -0.481635, 0.022147,
		34.781219, 38.484631, 44.979515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959576, 39.268410, 45.441994>,  <35.394485, 38.821774, 44.964012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959576, 39.268410, 45.441994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.819103, 38.893898, 45.444756>,  <34.734821, 38.669189, 45.446415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.819103, 38.893898, 45.444756>,  <34.959576, 39.268410, 45.441994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819103, 38.893898, 45.444756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057269, -0.014115, 0.998259,
		-0.934556, 0.350962, 0.058576,
		-0.351178, -0.936283, 0.006908,
		34.713749, 38.613014, 45.446827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496124, 39.291424, 45.939640>,  <34.959576, 39.268410, 45.441994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496124, 39.291424, 45.939640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.583141, 38.904690, 45.886108>,  <34.635349, 38.672649, 45.853989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.583141, 38.904690, 45.886108>,  <34.496124, 39.291424, 45.939640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583141, 38.904690, 45.886108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003928, -0.137981, 0.990427,
		-0.976044, -0.214932, -0.033814,
		0.217540, -0.966833, -0.133831,
		34.648403, 38.614639, 45.845959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039276, 38.857273, 46.386330>,  <34.496124, 39.291424, 45.939640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039276, 38.857273, 46.386330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.360588, 38.637836, 46.293560>,  <34.553375, 38.506172, 46.237900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.360588, 38.637836, 46.293560>,  <34.039276, 38.857273, 46.386330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360588, 38.637836, 46.293560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004696, -0.383548, 0.923509,
		-0.595587, -0.742923, -0.305519,
		0.803277, -0.548595, -0.231925,
		34.601570, 38.473259, 46.223984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918900, 38.221756, 46.775784>,  <34.039276, 38.857273, 46.386330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918900, 38.221756, 46.775784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.307693, 38.180145, 46.691479>,  <34.540970, 38.155178, 46.640896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.307693, 38.180145, 46.691479>,  <33.918900, 38.221756, 46.775784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307693, 38.180145, 46.691479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147088, -0.430215, 0.890663,
		-0.183323, -0.896713, -0.402863,
		0.971986, -0.104023, -0.210764,
		34.599289, 38.148937, 46.628250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036564, 37.622181, 46.984581>,  <33.918900, 38.221756, 46.775784>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036564, 37.622181, 46.984581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.394428, 37.798637, 46.956333>,  <34.609146, 37.904510, 46.939384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.394428, 37.798637, 46.956333>,  <34.036564, 37.622181, 46.984581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394428, 37.798637, 46.956333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234105, -0.328286, 0.915108,
		0.380505, -0.835240, -0.396976,
		0.894657, 0.441137, -0.070619,
		34.662827, 37.930977, 46.935146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643749, 37.076969, 47.115719>,  <34.036564, 37.622181, 46.984581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643749, 37.076969, 47.115719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.741299, 37.456200, 47.197376>,  <34.799828, 37.683739, 47.246368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.741299, 37.456200, 47.197376>,  <34.643749, 37.076969, 47.115719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.741299, 37.456200, 47.197376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269900, -0.268528, 0.924687,
		0.931494, -0.170408, -0.321373,
		0.243872, 0.948079, 0.204139,
		34.814461, 37.740623, 47.258617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284966, 37.008549, 47.409489>,  <34.643749, 37.076969, 47.115719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284966, 37.008549, 47.409489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.135513, 37.360893, 47.525749>,  <35.045841, 37.572300, 47.595505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.135513, 37.360893, 47.525749>,  <35.284966, 37.008549, 47.409489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135513, 37.360893, 47.525749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316361, -0.173545, 0.932630,
		0.871962, 0.440407, -0.213830,
		-0.373628, 0.880865, 0.290652,
		35.023426, 37.625153, 47.612946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846085, 37.240692, 47.789318>,  <35.284966, 37.008549, 47.409489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846085, 37.240692, 47.789318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.518120, 37.458855, 47.858917>,  <35.321339, 37.589752, 47.900677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.518120, 37.458855, 47.858917>,  <35.846085, 37.240692, 47.789318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518120, 37.458855, 47.858917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146486, -0.093952, 0.984741,
		0.553428, 0.832892, -0.002862,
		-0.819914, 0.545402, 0.174003,
		35.272144, 37.622475, 47.911118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433750, 37.633919, 47.598320>,  <35.846085, 37.240692, 47.789318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433750, 37.633919, 47.598320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.822208, 37.589020, 47.682495>,  <37.055283, 37.562080, 47.733002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.822208, 37.589020, 47.682495>,  <36.433750, 37.633919, 47.598320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822208, 37.589020, 47.682495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221911, 0.101899, -0.969728,
		0.087409, 0.988441, 0.123867,
		0.971141, -0.112251, 0.210439,
		37.113552, 37.555344, 47.745628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865982, 38.243679, 47.402252>,  <36.433750, 37.633919, 47.598320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865982, 38.243679, 47.402252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.076336, 37.904800, 47.372017>,  <37.202549, 37.701473, 47.353874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.076336, 37.904800, 47.372017>,  <36.865982, 38.243679, 47.402252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076336, 37.904800, 47.372017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186120, 0.201332, -0.961678,
		0.829945, 0.491660, 0.263557,
		0.525881, -0.847193, -0.075587,
		37.234100, 37.650642, 47.349342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463184, 38.360447, 47.069958>,  <36.865982, 38.243679, 47.402252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.463184, 38.360447, 47.069958> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.424877, 37.968735, 46.998577>,  <37.401894, 37.733707, 46.955750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.424877, 37.968735, 46.998577>,  <37.463184, 38.360447, 47.069958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424877, 37.968735, 46.998577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182427, 0.158974, -0.970282,
		0.978545, -0.125474, 0.163422,
		-0.095765, -0.979277, -0.178453,
		37.396149, 37.674953, 46.945042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034542, 38.215530, 46.732838>,  <37.463184, 38.360447, 47.069958>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034542, 38.215530, 46.732838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.765797, 37.931561, 46.648357>,  <37.604549, 37.761177, 46.597672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.765797, 37.931561, 46.648357>,  <38.034542, 38.215530, 46.732838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.765797, 37.931561, 46.648357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257390, 0.043585, -0.965324,
		0.694515, -0.702926, 0.153446,
		-0.671863, -0.709927, -0.211196,
		37.564240, 37.718582, 46.584999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379833, 37.778114, 46.301640>,  <38.034542, 38.215530, 46.732838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379833, 37.778114, 46.301640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.017601, 37.627666, 46.223194>,  <37.800262, 37.537395, 46.176125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.017601, 37.627666, 46.223194>,  <38.379833, 37.778114, 46.301640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017601, 37.627666, 46.223194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192787, 0.046884, -0.980120,
		0.377841, -0.925383, 0.030055,
		-0.905577, -0.376124, -0.196117,
		37.745930, 37.514828, 46.164360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459476, 37.149517, 45.814491>,  <38.379833, 37.778114, 46.301640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459476, 37.149517, 45.814491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.081020, 37.273739, 45.777882>,  <37.853947, 37.348270, 45.755917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.081020, 37.273739, 45.777882>,  <38.459476, 37.149517, 45.814491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081020, 37.273739, 45.777882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140848, 0.140291, -0.980041,
		-0.291516, -0.940146, -0.176476,
		-0.946140, 0.310554, -0.091521,
		37.797180, 37.366905, 45.750423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274033, 36.742172, 45.313572>,  <38.459476, 37.149517, 45.814491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274033, 36.742172, 45.313572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.995785, 37.029182, 45.327785>,  <37.828835, 37.201389, 45.336315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.995785, 37.029182, 45.327785>,  <38.274033, 36.742172, 45.313572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995785, 37.029182, 45.327785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074458, 0.121206, -0.989831,
		-0.714539, -0.685902, -0.137739,
		-0.695622, 0.717529, 0.035535,
		37.787098, 37.244442, 45.338448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807861, 36.553543, 44.766407>,  <38.274033, 36.742172, 45.313572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807861, 36.553543, 44.766407> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.776714, 36.946365, 44.835117>,  <37.758026, 37.182056, 44.876343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.776714, 36.946365, 44.835117>,  <37.807861, 36.553543, 44.766407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.776714, 36.946365, 44.835117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081883, 0.165421, -0.982818,
		-0.993595, -0.090599, 0.067532,
		-0.077871, 0.982053, 0.171780,
		37.753353, 37.240982, 44.886650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248352, 36.848495, 44.349857>,  <37.807861, 36.553543, 44.766407>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248352, 36.848495, 44.349857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.466530, 37.171425, 44.439941>,  <37.597439, 37.365181, 44.493992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.466530, 37.171425, 44.439941>,  <37.248352, 36.848495, 44.349857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466530, 37.171425, 44.439941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036789, 0.245384, -0.968728,
		-0.837337, 0.536676, 0.104143,
		0.545448, 0.807320, 0.225213,
		37.630165, 37.413620, 44.507504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939381, 37.464760, 43.930523>,  <37.248352, 36.848495, 44.349857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939381, 37.464760, 43.930523> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.299335, 37.589813, 44.052147>,  <37.515308, 37.664845, 44.125122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.299335, 37.589813, 44.052147>,  <36.939381, 37.464760, 43.930523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299335, 37.589813, 44.052147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143220, 0.446681, -0.883156,
		-0.411926, 0.838292, 0.357189,
		0.899892, 0.312638, 0.304060,
		37.569302, 37.683605, 44.143364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941944, 38.243492, 43.789135>,  <36.939381, 37.464760, 43.930523>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941944, 38.243492, 43.789135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.315979, 38.102776, 43.806347>,  <37.540401, 38.018345, 43.816673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.315979, 38.102776, 43.806347>,  <36.941944, 38.243492, 43.789135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315979, 38.102776, 43.806347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133759, 0.237856, -0.962046,
		0.328201, 0.905356, 0.269472,
		0.935090, -0.351788, 0.043034,
		37.596504, 37.997238, 43.819256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365231, 38.694099, 43.511471>,  <36.941944, 38.243492, 43.789135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365231, 38.694099, 43.511471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.584705, 38.361851, 43.473499>,  <37.716393, 38.162502, 43.450714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.584705, 38.361851, 43.473499>,  <37.365231, 38.694099, 43.511471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584705, 38.361851, 43.473499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314449, 0.310254, -0.897142,
		0.774636, 0.462401, 0.431421,
		0.548689, -0.830619, -0.094933,
		37.749313, 38.112663, 43.445019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064087, 38.876068, 43.229153>,  <37.365231, 38.694099, 43.511471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064087, 38.876068, 43.229153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.036346, 38.483627, 43.156906>,  <38.019703, 38.248161, 43.113556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.036346, 38.483627, 43.156906>,  <38.064087, 38.876068, 43.229153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036346, 38.483627, 43.156906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236508, 0.159724, -0.958411,
		0.969152, -0.109182, 0.220962,
		-0.069349, -0.981105, -0.180619,
		38.015541, 38.189297, 43.102722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650681, 38.649006, 42.842304>,  <38.064087, 38.876068, 43.229153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650681, 38.649006, 42.842304> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.465641, 38.295696, 42.811752>,  <38.354618, 38.083710, 42.793423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.465641, 38.295696, 42.811752>,  <38.650681, 38.649006, 42.842304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465641, 38.295696, 42.811752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321502, -0.086843, -0.942918,
		0.826221, -0.460747, 0.324147,
		-0.462597, -0.883273, -0.076379,
		38.326862, 38.030716, 42.788837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.709192, 39.749958, 40.824245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.387039, 39.889942, 41.015614>,  <29.193747, 39.973934, 41.130436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.387039, 39.889942, 41.015614>,  <29.709192, 39.749958, 40.824245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.387039, 39.889942, 41.015614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590249, -0.399378, -0.701501,
		-0.054426, -0.847364, 0.528215,
		-0.805384, 0.349959, 0.478420,
		29.145424, 39.994930, 41.159138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.356049, 39.188522, 40.958992>,  <29.709192, 39.749958, 40.824245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.356049, 39.188522, 40.958992> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.129520, 39.517204, 40.933453>,  <28.993603, 39.714413, 40.918129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.129520, 39.517204, 40.933453>,  <29.356049, 39.188522, 40.958992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.129520, 39.517204, 40.933453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526080, -0.420030, -0.739469,
		-0.634444, -0.385190, 0.670156,
		-0.566322, 0.821708, -0.063845,
		28.959623, 39.763718, 40.914299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.759563, 38.878033, 40.770584>,  <29.356049, 39.188522, 40.958992>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.759563, 38.878033, 40.770584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.654869, 39.260571, 40.718582>,  <28.592052, 39.490093, 40.687382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.654869, 39.260571, 40.718582>,  <28.759563, 38.878033, 40.770584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.654869, 39.260571, 40.718582> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672558, -0.277339, -0.686111,
		-0.692214, -0.092144, 0.715786,
		-0.261737, 0.956343, -0.130005,
		28.576347, 39.547474, 40.679581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.017864, 38.901798, 40.706882>,  <28.759563, 38.878033, 40.770584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.017864, 38.901798, 40.706882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.132467, 39.241592, 40.529663>,  <28.201229, 39.445469, 40.423332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.132467, 39.241592, 40.529663>,  <28.017864, 38.901798, 40.706882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.132467, 39.241592, 40.529663> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629832, -0.181466, -0.755237,
		-0.721960, 0.495423, 0.483042,
		0.286506, 0.849486, -0.443045,
		28.218418, 39.496437, 40.396751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.344610, 39.214016, 40.424927>,  <28.017864, 38.901798, 40.706882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.344610, 39.214016, 40.424927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.640287, 39.388042, 40.219284>,  <27.817694, 39.492458, 40.095898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.640287, 39.388042, 40.219284>,  <27.344610, 39.214016, 40.424927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.640287, 39.388042, 40.219284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526538, -0.102650, -0.843932,
		-0.419941, 0.894527, 0.153202,
		0.739194, 0.435068, -0.514109,
		27.862045, 39.518562, 40.065052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.994007, 39.600025, 39.958542>,  <27.344610, 39.214016, 40.424927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.994007, 39.600025, 39.958542> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.366699, 39.562096, 39.818321>,  <27.590315, 39.539337, 39.734188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.366699, 39.562096, 39.818321>,  <26.994007, 39.600025, 39.958542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.366699, 39.562096, 39.818321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359537, -0.105098, -0.927193,
		0.051080, 0.989931, -0.132016,
		0.931732, -0.094826, -0.350549,
		27.646219, 39.533649, 39.713158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.064272, 40.102871, 39.383675>,  <26.994007, 39.600025, 39.958542>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.064272, 40.102871, 39.383675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.338028, 39.812721, 39.354172>,  <27.502281, 39.638630, 39.336468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.338028, 39.812721, 39.354172>,  <27.064272, 40.102871, 39.383675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.338028, 39.812721, 39.354172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444925, -0.335347, -0.830412,
		0.577625, 0.601144, -0.552246,
		0.684391, -0.725375, -0.073759,
		27.543344, 39.595108, 39.332043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.146160, 40.076424, 38.705227>,  <27.064272, 40.102871, 39.383675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.146160, 40.076424, 38.705227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.281813, 39.725178, 38.840225>,  <27.363205, 39.514431, 38.921227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.281813, 39.725178, 38.840225>,  <27.146160, 40.076424, 38.705227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.281813, 39.725178, 38.840225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327675, -0.446554, -0.832597,
		0.881826, 0.171772, -0.439177,
		0.339133, -0.878114, 0.337498,
		27.383553, 39.461742, 38.941475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.093946, 39.799126, 38.116753>,  <27.146160, 40.076424, 38.705227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.093946, 39.799126, 38.116753> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.164551, 39.491898, 38.362972>,  <27.206913, 39.307560, 38.510704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.164551, 39.491898, 38.362972>,  <27.093946, 39.799126, 38.116753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.164551, 39.491898, 38.362972> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393637, -0.628269, -0.671065,
		0.902161, -0.123855, -0.413238,
		0.176510, -0.768074, 0.615554,
		27.217505, 39.261475, 38.547638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.613852, 39.399166, 37.829044>,  <27.093946, 39.799126, 38.116753>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.613852, 39.399166, 37.829044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.373447, 39.197689, 38.077263>,  <27.229206, 39.076801, 38.226196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.373447, 39.197689, 38.077263>,  <27.613852, 39.399166, 37.829044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.373447, 39.197689, 38.077263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345397, -0.536490, -0.769987,
		0.720756, -0.677104, 0.148461,
		-0.601009, -0.503695, 0.620548,
		27.193144, 39.046581, 38.263428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.635391, 38.768955, 37.371883>,  <27.613852, 39.399166, 37.829044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.635391, 38.768955, 37.371883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.335642, 38.765305, 37.636719>,  <27.155792, 38.763115, 37.795620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.335642, 38.765305, 37.636719>,  <27.635391, 38.768955, 37.371883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.335642, 38.765305, 37.636719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419240, -0.767416, -0.485088,
		0.512520, -0.641085, 0.571256,
		-0.749373, -0.009124, 0.662084,
		27.110830, 38.762566, 37.835342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.515446, 38.035019, 37.500389>,  <27.635391, 38.768955, 37.371883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.515446, 38.035019, 37.500389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.186052, 38.241829, 37.593822>,  <26.988417, 38.365913, 37.649883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.186052, 38.241829, 37.593822>,  <27.515446, 38.035019, 37.500389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.186052, 38.241829, 37.593822> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566755, -0.731006, -0.380025,
		-0.025729, -0.445330, 0.894997,
		-0.823485, 0.517022, 0.233585,
		26.939007, 38.396935, 37.663898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.019711, 37.547432, 37.759159>,  <27.515446, 38.035019, 37.500389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.019711, 37.547432, 37.759159> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.809370, 37.870117, 37.651314>,  <26.683167, 38.063728, 37.586605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.809370, 37.870117, 37.651314>,  <27.019711, 37.547432, 37.759159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.809370, 37.870117, 37.651314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720316, -0.590933, -0.363239,
		-0.452355, 0.003198, 0.891833,
		-0.525852, 0.806714, -0.269615,
		26.651615, 38.112133, 37.570431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.304985, 37.290749, 37.832462>,  <27.019711, 37.547432, 37.759159>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.304985, 37.290749, 37.832462> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.261507, 37.613445, 37.600136>,  <26.235420, 37.807064, 37.460739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.261507, 37.613445, 37.600136>,  <26.304985, 37.290749, 37.832462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.261507, 37.613445, 37.600136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777909, -0.432798, -0.455569,
		-0.618904, 0.402306, 0.674616,
		-0.108694, 0.806744, -0.580818,
		26.228899, 37.855469, 37.425892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.641588, 37.541267, 37.956074>,  <26.304985, 37.290749, 37.832462>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.641588, 37.541267, 37.956074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.740406, 37.715244, 37.609711>,  <25.799696, 37.819630, 37.401894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.740406, 37.715244, 37.609711>,  <25.641588, 37.541267, 37.956074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.740406, 37.715244, 37.609711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838542, -0.351868, -0.415976,
		-0.485610, 0.828865, 0.277788,
		0.247043, 0.434939, -0.865909,
		25.814520, 37.845726, 37.349937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.947361, 37.844330, 37.662277>,  <25.641588, 37.541267, 37.956074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.947361, 37.844330, 37.662277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.223969, 37.795200, 37.377541>,  <25.389933, 37.765724, 37.206699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.223969, 37.795200, 37.377541>,  <24.947361, 37.844330, 37.662277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.223969, 37.795200, 37.377541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650289, -0.534918, -0.539432,
		-0.314520, 0.835929, -0.449778,
		0.691521, -0.122823, -0.711838,
		25.431425, 37.758354, 37.163990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.506727, 37.713715, 37.084167>,  <24.947361, 37.844330, 37.662277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.506727, 37.713715, 37.084167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.866032, 37.587116, 36.962212>,  <25.081614, 37.511158, 36.889038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.866032, 37.587116, 36.962212>,  <24.506727, 37.713715, 37.084167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.866032, 37.587116, 36.962212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439455, -0.642999, -0.627241,
		0.002473, 0.697412, -0.716666,
		0.898261, -0.316493, -0.304891,
		25.135509, 37.492168, 36.870743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.515207, 37.675652, 36.268536>,  <24.506727, 37.713715, 37.084167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.515207, 37.675652, 36.268536> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.805529, 37.445648, 36.419571>,  <24.979721, 37.307644, 36.510193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.805529, 37.445648, 36.419571>,  <24.515207, 37.675652, 36.268536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.805529, 37.445648, 36.419571> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116603, -0.643790, -0.756266,
		0.677946, 0.504874, -0.534314,
		0.725805, -0.575010, 0.377585,
		25.023270, 37.273144, 36.532848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.785282, 37.506115, 35.712490>,  <24.515207, 37.675652, 36.268536>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.785282, 37.506115, 35.712490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.909723, 37.230007, 35.973793>,  <24.984388, 37.064342, 36.130573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.909723, 37.230007, 35.973793>,  <24.785282, 37.506115, 35.712490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.909723, 37.230007, 35.973793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176055, -0.717328, -0.674125,
		0.933927, 0.094713, -0.344688,
		0.311102, -0.690268, 0.653257,
		25.003054, 37.022926, 36.169769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.046467, 37.083923, 35.229774>,  <24.785282, 37.506115, 35.712490>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.046467, 37.083923, 35.229774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.989498, 36.870457, 35.563221>,  <24.955317, 36.742378, 35.763290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.989498, 36.870457, 35.563221>,  <25.046467, 37.083923, 35.229774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.989498, 36.870457, 35.563221> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391375, -0.743205, -0.542653,
		0.909143, -0.403542, -0.103016,
		-0.142421, -0.533668, 0.833616,
		24.946772, 36.710358, 35.813305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.489649, 36.448898, 35.169392>,  <25.046467, 37.083923, 35.229774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.489649, 36.448898, 35.169392> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.194336, 36.388321, 35.432301>,  <25.017147, 36.351974, 35.590046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.194336, 36.388321, 35.432301>,  <25.489649, 36.448898, 35.169392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.194336, 36.388321, 35.432301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393842, -0.694297, -0.602362,
		0.547562, -0.703574, 0.452944,
		-0.738285, -0.151442, 0.657268,
		24.972851, 36.342888, 35.629482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.340998, 36.678783, 35.327793>,  <25.489649, 36.448898, 35.169392>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.340998, 36.678783, 35.327793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.735464, 36.614658, 35.344662>,  <26.972143, 36.576183, 35.354782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.735464, 36.614658, 35.344662>,  <26.340998, 36.678783, 35.327793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.735464, 36.614658, 35.344662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065078, -0.140456, 0.987946,
		-0.152467, -0.977021, -0.148946,
		0.986164, -0.160322, 0.042168,
		27.031313, 36.566566, 35.357311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.399412, 36.071602, 35.702610>,  <26.340998, 36.678783, 35.327793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.399412, 36.071602, 35.702610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.770578, 36.218616, 35.727543>,  <26.993279, 36.306828, 35.742504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.770578, 36.218616, 35.727543>,  <26.399412, 36.071602, 35.702610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.770578, 36.218616, 35.727543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083847, -0.368689, 0.925764,
		0.363236, -0.853805, -0.372930,
		0.927917, 0.367540, 0.062332,
		27.048954, 36.328876, 35.746243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.844280, 35.492245, 35.971703>,  <26.399412, 36.071602, 35.702610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.844280, 35.492245, 35.971703> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.003664, 35.850330, 36.051517>,  <27.099295, 36.065182, 36.099407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.003664, 35.850330, 36.051517>,  <26.844280, 35.492245, 35.971703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.003664, 35.850330, 36.051517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199956, -0.297109, 0.933672,
		0.895125, -0.332130, -0.297390,
		0.398458, 0.895218, 0.199538,
		27.123201, 36.118896, 36.111378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.453447, 35.237854, 36.266266>,  <26.844280, 35.492245, 35.971703>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.453447, 35.237854, 36.266266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.392439, 35.622852, 36.356007>,  <27.355833, 35.853851, 36.409851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.392439, 35.622852, 36.356007>,  <27.453447, 35.237854, 36.266266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.392439, 35.622852, 36.356007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136532, -0.204313, 0.969337,
		0.978824, 0.178477, -0.100250,
		-0.152522, 0.962498, 0.224355,
		27.346682, 35.911602, 36.423313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.020376, 35.280762, 36.748688>,  <27.453447, 35.237854, 36.266266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.020376, 35.280762, 36.748688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.745892, 35.564407, 36.813519>,  <27.581200, 35.734596, 36.852417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.745892, 35.564407, 36.813519>,  <28.020376, 35.280762, 36.748688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.745892, 35.564407, 36.813519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217910, -0.012184, 0.975893,
		0.693993, 0.704990, -0.146162,
		-0.686214, 0.709112, 0.162080,
		27.540028, 35.777142, 36.862144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.264198, 35.860771, 37.104137>,  <28.020376, 35.280762, 36.748688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.264198, 35.860771, 37.104137> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.874798, 35.842060, 37.193676>,  <27.641157, 35.830833, 37.247398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.874798, 35.842060, 37.193676>,  <28.264198, 35.860771, 37.104137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.874798, 35.842060, 37.193676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218034, 0.105337, 0.970240,
		-0.068961, 0.993336, -0.092347,
		-0.973502, -0.046774, 0.223845,
		27.582747, 35.828030, 37.260830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.274691, 36.177975, 37.754765>,  <28.264198, 35.860771, 37.104137>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.274691, 36.177975, 37.754765> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.901037, 36.035767, 37.742100>,  <27.676846, 35.950443, 37.734501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.901037, 36.035767, 37.742100>,  <28.274691, 36.177975, 37.754765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.901037, 36.035767, 37.742100> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053322, 0.051277, 0.997260,
		-0.352919, 0.933262, -0.066856,
		-0.934133, -0.355517, -0.031666,
		27.620798, 35.929111, 37.732601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.896065, 36.668049, 38.106201>,  <28.274691, 36.177975, 37.754765>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.896065, 36.668049, 38.106201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.651325, 36.352367, 38.085014>,  <27.504482, 36.162960, 38.072304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.651325, 36.352367, 38.085014>,  <27.896065, 36.668049, 38.106201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.651325, 36.352367, 38.085014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137316, 0.040035, 0.989718,
		-0.778966, 0.612829, -0.132865,
		-0.611847, -0.789201, -0.052965,
		27.467772, 36.115608, 38.069126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.274193, 36.886883, 38.266552>,  <27.896065, 36.668049, 38.106201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.274193, 36.886883, 38.266552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.263037, 36.491741, 38.327694>,  <27.256344, 36.254654, 38.364380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.263037, 36.491741, 38.327694>,  <27.274193, 36.886883, 38.266552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.263037, 36.491741, 38.327694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132783, 0.155216, 0.978916,
		-0.990753, 0.007005, -0.135499,
		-0.027889, -0.987856, 0.152850,
		27.254669, 36.195385, 38.373550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.606447, 36.669765, 38.602444>,  <27.274193, 36.886883, 38.266552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.606447, 36.669765, 38.602444> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.854342, 36.366756, 38.684502>,  <27.003078, 36.184952, 38.733738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.854342, 36.366756, 38.684502>,  <26.606447, 36.669765, 38.602444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.854342, 36.366756, 38.684502> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279091, 0.031586, 0.959745,
		-0.733509, -0.652043, -0.191843,
		0.619736, -0.757524, 0.205148,
		27.040262, 36.139500, 38.746044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.184315, 36.096779, 39.007427>,  <26.606447, 36.669765, 38.602444>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.184315, 36.096779, 39.007427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.572264, 36.056835, 39.096313>,  <26.805033, 36.032871, 39.149643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.572264, 36.056835, 39.096313>,  <26.184315, 36.096779, 39.007427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.572264, 36.056835, 39.096313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201936, 0.180715, 0.962582,
		-0.136277, -0.978453, 0.155106,
		0.969871, -0.099857, 0.222212,
		26.863226, 36.026878, 39.162975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.154818, 35.819141, 39.662582>,  <26.184315, 36.096779, 39.007427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.154818, 35.819141, 39.662582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.533710, 35.946926, 39.652020>,  <26.761045, 36.023598, 39.645679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.533710, 35.946926, 39.652020>,  <26.154818, 35.819141, 39.662582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.533710, 35.946926, 39.652020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103116, 0.381683, 0.918523,
		0.303509, -0.867332, 0.394484,
		0.947232, 0.319458, -0.026408,
		26.817881, 36.042763, 39.644096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.410973, 35.444782, 40.191601>,  <26.154818, 35.819141, 39.662582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.410973, 35.444782, 40.191601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.658308, 35.755585, 40.144398>,  <26.806709, 35.942066, 40.116077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.658308, 35.755585, 40.144398>,  <26.410973, 35.444782, 40.191601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.658308, 35.755585, 40.144398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086377, 0.216434, 0.972469,
		0.781152, -0.591121, 0.200944,
		0.618337, 0.777002, -0.118008,
		26.843809, 35.988686, 40.108994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.935472, 35.318741, 40.689995>,  <26.410973, 35.444782, 40.191601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.935472, 35.318741, 40.689995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.984062, 35.703262, 40.591087>,  <27.013216, 35.933975, 40.531742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.984062, 35.703262, 40.591087>,  <26.935472, 35.318741, 40.689995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.984062, 35.703262, 40.591087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125479, 0.261990, 0.956879,
		0.984631, -0.085210, 0.152448,
		0.121475, 0.961302, -0.247271,
		27.020504, 35.991653, 40.516907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.169199, 35.625175, 41.322628>,  <26.935472, 35.318741, 40.689995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.169199, 35.625175, 41.322628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.089602, 35.964153, 41.125759>,  <27.041843, 36.167542, 41.007637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.089602, 35.964153, 41.125759>,  <27.169199, 35.625175, 41.322628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.089602, 35.964153, 41.125759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132578, 0.474318, 0.870314,
		0.970991, 0.238439, 0.017966,
		-0.198995, 0.847449, -0.492170,
		27.029903, 36.218388, 40.978107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.459442, 36.161873, 41.732449>,  <27.169199, 35.625175, 41.322628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.459442, 36.161873, 41.732449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.210070, 36.361843, 41.491978>,  <27.060446, 36.481823, 41.347694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.210070, 36.361843, 41.491978>,  <27.459442, 36.161873, 41.732449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.210070, 36.361843, 41.491978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237643, 0.611356, 0.754831,
		0.744889, 0.613450, -0.262335,
		-0.623431, 0.499923, -0.601175,
		27.023041, 36.511822, 41.311626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.572325, 36.926483, 41.843670>,  <27.459442, 36.161873, 41.732449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.572325, 36.926483, 41.843670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.209105, 36.872997, 41.684891>,  <26.991173, 36.840904, 41.589622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.209105, 36.872997, 41.684891>,  <27.572325, 36.926483, 41.843670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.209105, 36.872997, 41.684891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328999, 0.814224, 0.478329,
		0.259242, 0.564941, -0.783349,
		-0.908049, -0.133718, -0.396947,
		26.936689, 36.832882, 41.565807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.483349, 37.484333, 41.439198>,  <27.572325, 36.926483, 41.843670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.483349, 37.484333, 41.439198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.148157, 37.326180, 41.589645>,  <26.947042, 37.231289, 41.679913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.148157, 37.326180, 41.589645>,  <27.483349, 37.484333, 41.439198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.148157, 37.326180, 41.589645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251220, 0.891361, 0.377312,
		-0.484438, 0.221691, -0.846270,
		-0.837978, -0.395384, 0.376116,
		26.896763, 37.207565, 41.702480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.991137, 38.024845, 41.434551>,  <27.483349, 37.484333, 41.439198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.991137, 38.024845, 41.434551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.820095, 37.768589, 41.689651>,  <26.717470, 37.614834, 41.842712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.820095, 37.768589, 41.689651>,  <26.991137, 38.024845, 41.434551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.820095, 37.768589, 41.689651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406314, 0.766435, 0.497480,
		-0.807504, -0.046404, -0.588034,
		-0.427605, -0.640644, 0.637754,
		26.691814, 37.576397, 41.880978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.296741, 38.284779, 41.597984>,  <26.991137, 38.024845, 41.434551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.296741, 38.284779, 41.597984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.333418, 38.029526, 41.903763>,  <26.355425, 37.876373, 42.087231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.333418, 38.029526, 41.903763>,  <26.296741, 38.284779, 41.597984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.333418, 38.029526, 41.903763> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424060, 0.669567, 0.609798,
		-0.900980, -0.380085, -0.209213,
		0.091693, -0.638135, 0.764445,
		26.360926, 37.838085, 42.133095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.609541, 38.126408, 41.977394>,  <26.296741, 38.284779, 41.597984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.609541, 38.126408, 41.977394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.944225, 38.106625, 42.195557>,  <26.145035, 38.094753, 42.326454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.944225, 38.106625, 42.195557>,  <25.609541, 38.126408, 41.977394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.944225, 38.106625, 42.195557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318716, 0.765909, 0.558393,
		-0.445352, -0.641043, 0.625080,
		0.836709, -0.049458, 0.545410,
		26.195238, 38.091785, 42.359180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.379803, 34.448868, 47.505547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.991611, 34.480850, 47.596573>,  <39.758698, 34.500038, 47.651188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.991611, 34.480850, 47.596573>,  <40.379803, 34.448868, 47.505547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.991611, 34.480850, 47.596573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238200, 0.169215, 0.956361,
		0.037956, 0.982331, -0.183264,
		-0.970474, 0.079953, 0.227569,
		39.700470, 34.504837, 47.664845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431084, 34.664604, 48.235142>,  <40.379803, 34.448868, 47.505547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.431084, 34.664604, 48.235142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.040672, 34.582420, 48.206425>,  <39.806427, 34.533112, 48.189194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.040672, 34.582420, 48.206425>,  <40.431084, 34.664604, 48.235142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.040672, 34.582420, 48.206425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014857, -0.266215, 0.963799,
		-0.217133, 0.941763, 0.256781,
		-0.976029, -0.205457, -0.071795,
		39.747864, 34.520782, 48.184887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.135601, 34.991714, 48.854836>,  <40.431084, 34.664604, 48.235142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.135601, 34.991714, 48.854836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.861221, 34.729969, 48.727539>,  <39.696594, 34.572922, 48.651161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.861221, 34.729969, 48.727539>,  <40.135601, 34.991714, 48.854836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861221, 34.729969, 48.727539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343531, -0.094312, 0.934394,
		-0.641451, 0.750272, -0.160103,
		-0.685950, -0.654368, -0.318238,
		39.655437, 34.533657, 48.632069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484409, 35.316509, 48.897778>,  <40.135601, 34.991714, 48.854836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484409, 35.316509, 48.897778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.402897, 34.925232, 48.913864>,  <39.353989, 34.690468, 48.923515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.402897, 34.925232, 48.913864>,  <39.484409, 35.316509, 48.897778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402897, 34.925232, 48.913864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188502, 0.079510, 0.978849,
		-0.960697, 0.191894, -0.200594,
		-0.203784, -0.978190, 0.040212,
		39.341763, 34.631775, 48.925926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972546, 35.246380, 49.356987>,  <39.484409, 35.316509, 48.897778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972546, 35.246380, 49.356987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.099758, 34.867737, 49.335869>,  <39.176086, 34.640549, 49.323200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.099758, 34.867737, 49.335869>,  <38.972546, 35.246380, 49.356987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099758, 34.867737, 49.335869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145643, -0.103801, 0.983877,
		-0.936828, -0.305211, -0.170878,
		0.318027, -0.946610, -0.052792,
		39.195168, 34.583755, 49.320030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516434, 34.880894, 49.704292>,  <38.972546, 35.246380, 49.356987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516434, 34.880894, 49.704292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.837639, 34.642536, 49.700600>,  <39.030361, 34.499523, 49.698383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.837639, 34.642536, 49.700600>,  <38.516434, 34.880894, 49.704292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837639, 34.642536, 49.700600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172315, -0.246985, 0.953575,
		-0.570510, -0.764140, -0.301014,
		0.803010, -0.595893, -0.009235,
		39.078541, 34.463768, 49.697830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310677, 34.525276, 50.162533>,  <38.516434, 34.880894, 49.704292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310677, 34.525276, 50.162533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.691383, 34.404774, 50.139282>,  <38.919807, 34.332474, 50.125332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.691383, 34.404774, 50.139282>,  <38.310677, 34.525276, 50.162533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691383, 34.404774, 50.139282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017940, -0.134485, 0.990753,
		-0.306285, -0.944013, -0.122594,
		0.951771, -0.301254, -0.058126,
		38.976913, 34.314400, 50.121845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327866, 33.872646, 50.569931>,  <38.310677, 34.525276, 50.162533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.327866, 33.872646, 50.569931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.700184, 34.018459, 50.559036>,  <38.923573, 34.105946, 50.552502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.700184, 34.018459, 50.559036>,  <38.327866, 33.872646, 50.569931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700184, 34.018459, 50.559036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006587, 0.091214, 0.995810,
		0.365491, -0.926712, 0.087303,
		0.930792, 0.364534, -0.027234,
		38.979420, 34.127819, 50.550865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776810, 33.449104, 50.956608>,  <38.327866, 33.872646, 50.569931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776810, 33.449104, 50.956608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.972992, 33.796829, 50.932110>,  <39.090702, 34.005463, 50.917412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.972992, 33.796829, 50.932110>,  <38.776810, 33.449104, 50.956608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972992, 33.796829, 50.932110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020677, 0.058649, 0.998065,
		0.871223, -0.490770, 0.010790,
		0.490453, 0.869313, -0.061244,
		39.120129, 34.057625, 50.913738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252796, 33.334301, 51.344284>,  <38.776810, 33.449104, 50.956608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252796, 33.334301, 51.344284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.246418, 33.734245, 51.342690>,  <39.242592, 33.974213, 51.341732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.246418, 33.734245, 51.342690>,  <39.252796, 33.334301, 51.344284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246418, 33.734245, 51.342690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170651, 0.006647, 0.985309,
		0.985202, 0.015033, -0.170734,
		-0.015947, 0.999865, -0.003983,
		39.241634, 34.034206, 51.341496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796921, 33.598614, 51.750793>,  <39.252796, 33.334301, 51.344284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796921, 33.598614, 51.750793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.538769, 33.904137, 51.747150>,  <39.383877, 34.087452, 51.744965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.538769, 33.904137, 51.747150>,  <39.796921, 33.598614, 51.750793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538769, 33.904137, 51.747150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061729, 0.064041, 0.996036,
		0.761364, 0.642259, -0.088479,
		-0.645380, 0.763808, -0.009112,
		39.345154, 34.133278, 51.744415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.093597, 34.077309, 52.315830>,  <39.796921, 33.598614, 51.750793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.093597, 34.077309, 52.315830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.710285, 34.155704, 52.232609>,  <39.480297, 34.202744, 52.182674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.710285, 34.155704, 52.232609>,  <40.093597, 34.077309, 52.315830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710285, 34.155704, 52.232609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196479, 0.076989, 0.977481,
		0.207596, 0.977579, -0.035269,
		-0.958280, 0.195991, -0.208057,
		39.422802, 34.214500, 52.170193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.849220, 34.808479, 52.651031>,  <40.093597, 34.077309, 52.315830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.849220, 34.808479, 52.651031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.570087, 34.526497, 52.600342>,  <39.402607, 34.357307, 52.569927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.570087, 34.526497, 52.600342>,  <39.849220, 34.808479, 52.651031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570087, 34.526497, 52.600342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335240, 0.165119, 0.927551,
		-0.632961, 0.689759, -0.351556,
		-0.697836, -0.704959, -0.126721,
		39.360737, 34.315010, 52.562325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.174377, 35.085991, 52.943005>,  <39.849220, 34.808479, 52.651031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.174377, 35.085991, 52.943005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.149460, 34.688835, 52.902431>,  <39.134510, 34.450542, 52.878090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.149460, 34.688835, 52.902431>,  <39.174377, 35.085991, 52.943005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149460, 34.688835, 52.902431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376904, -0.070700, 0.923550,
		-0.924155, 0.095759, -0.369820,
		-0.062292, -0.992891, -0.101430,
		39.130772, 34.390968, 52.872002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642174, 35.669868, 53.073353>,  <39.174377, 35.085991, 52.943005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.642174, 35.669868, 53.073353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.460423, 36.014507, 53.163853>,  <38.351372, 36.221291, 53.218155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.460423, 36.014507, 53.163853>,  <38.642174, 35.669868, 53.073353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460423, 36.014507, 53.163853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183197, 0.158177, -0.970267,
		-0.871769, -0.482316, 0.085970,
		-0.454377, 0.861598, 0.226253,
		38.324108, 36.272987, 53.231728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968826, 35.652977, 52.865871>,  <38.642174, 35.669868, 53.073353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968826, 35.652977, 52.865871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.046993, 36.044876, 52.883301>,  <38.093891, 36.280018, 52.893761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.046993, 36.044876, 52.883301>,  <37.968826, 35.652977, 52.865871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046993, 36.044876, 52.883301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401937, 0.120539, -0.907699,
		-0.894573, 0.159862, 0.417353,
		0.195414, 0.979752, 0.043577,
		38.105618, 36.338802, 52.896374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286694, 36.094433, 52.598743>,  <37.968826, 35.652977, 52.865871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286694, 36.094433, 52.598743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.634048, 36.287014, 52.551239>,  <37.842461, 36.402561, 52.522736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.634048, 36.287014, 52.551239>,  <37.286694, 36.094433, 52.598743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634048, 36.287014, 52.551239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294687, 0.308417, -0.904455,
		-0.398822, 0.820417, 0.409704,
		0.868389, 0.481451, -0.118762,
		37.894566, 36.431450, 52.515610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104393, 36.677399, 52.282986>,  <37.286694, 36.094433, 52.598743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104393, 36.677399, 52.282986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.498089, 36.707760, 52.219093>,  <37.734306, 36.725975, 52.180759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.498089, 36.707760, 52.219093>,  <37.104393, 36.677399, 52.282986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498089, 36.707760, 52.219093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172954, 0.601632, -0.779824,
		0.036907, 0.795159, 0.605277,
		0.984238, 0.075904, -0.159731,
		37.793362, 36.730530, 52.171173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219887, 37.383907, 51.982849>,  <37.104393, 36.677399, 52.282986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219887, 37.383907, 51.982849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.563713, 37.201180, 51.891235>,  <37.770008, 37.091541, 51.836266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.563713, 37.201180, 51.891235>,  <37.219887, 37.383907, 51.982849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.563713, 37.201180, 51.891235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079838, 0.562740, -0.822769,
		0.504745, 0.688941, 0.520185,
		0.859569, -0.456820, -0.229036,
		37.821583, 37.064133, 51.822525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722507, 37.923317, 51.657574>,  <37.219887, 37.383907, 51.982849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722507, 37.923317, 51.657574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.843140, 37.575237, 51.501720>,  <37.915520, 37.366390, 51.408211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.843140, 37.575237, 51.501720>,  <37.722507, 37.923317, 51.657574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843140, 37.575237, 51.501720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112892, 0.438371, -0.891676,
		0.946735, 0.224924, 0.230441,
		0.301577, -0.870196, -0.389629,
		37.933613, 37.314178, 51.384830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360741, 38.091866, 51.296547>,  <37.722507, 37.923317, 51.657574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360741, 38.091866, 51.296547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.207733, 37.754097, 51.146542>,  <38.115929, 37.551437, 51.056538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.207733, 37.754097, 51.146542>,  <38.360741, 38.091866, 51.296547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.207733, 37.754097, 51.146542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144707, 0.455624, -0.878332,
		0.912547, -0.281708, -0.296476,
		-0.382514, -0.844422, -0.375013,
		38.092979, 37.500771, 51.034039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599007, 38.003185, 50.553905>,  <38.360741, 38.091866, 51.296547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599007, 38.003185, 50.553905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.302799, 37.734921, 50.536709>,  <38.125076, 37.573963, 50.526390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.302799, 37.734921, 50.536709>,  <38.599007, 38.003185, 50.553905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302799, 37.734921, 50.536709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165688, 0.244199, -0.955465,
		0.651295, -0.700413, -0.291954,
		-0.740515, -0.670663, -0.042996,
		38.080643, 37.533722, 50.523811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676590, 37.713291, 49.924927>,  <38.599007, 38.003185, 50.553905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676590, 37.713291, 49.924927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.302208, 37.600101, 50.008755>,  <38.077579, 37.532188, 50.059052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.302208, 37.600101, 50.008755>,  <38.676590, 37.713291, 49.924927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302208, 37.600101, 50.008755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192493, -0.087184, -0.977418,
		0.294859, -0.955156, 0.027128,
		-0.935951, -0.282979, 0.209568,
		38.021423, 37.515209, 50.071625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507145, 37.121838, 49.400761>,  <38.676590, 37.713291, 49.924927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507145, 37.121838, 49.400761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.159668, 37.279572, 49.520683>,  <37.951183, 37.374210, 49.592636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.159668, 37.279572, 49.520683>,  <38.507145, 37.121838, 49.400761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159668, 37.279572, 49.520683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381137, -0.145480, -0.913001,
		-0.316412, -0.907379, 0.276672,
		-0.868688, 0.394334, 0.299804,
		37.899063, 37.397873, 49.610626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964596, 36.636360, 49.252918>,  <38.507145, 37.121838, 49.400761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964596, 36.636360, 49.252918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.782291, 36.992229, 49.263947>,  <37.672909, 37.205753, 49.270565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.782291, 36.992229, 49.263947>,  <37.964596, 36.636360, 49.252918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782291, 36.992229, 49.263947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475688, -0.217269, -0.852358,
		-0.752332, -0.401586, 0.522231,
		-0.455759, 0.889676, 0.027572,
		37.645565, 37.259132, 49.272217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391655, 36.411392, 48.906517>,  <37.964596, 36.636360, 49.252918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391655, 36.411392, 48.906517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.421185, 36.810299, 48.906219>,  <37.438904, 37.049644, 48.906040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.421185, 36.810299, 48.906219>,  <37.391655, 36.411392, 48.906517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421185, 36.810299, 48.906219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657265, 0.048093, -0.752124,
		-0.750035, 0.056015, 0.659021,
		0.073825, 0.997271, -0.000745,
		37.443333, 37.109482, 48.905994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763428, 36.676876, 48.770493>,  <37.391655, 36.411392, 48.906517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763428, 36.676876, 48.770493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.025536, 36.962627, 48.672287>,  <37.182800, 37.134079, 48.613365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.025536, 36.962627, 48.672287>,  <36.763428, 36.676876, 48.770493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025536, 36.962627, 48.672287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441633, 0.098616, -0.891760,
		-0.612845, 0.692772, 0.380115,
		0.655272, 0.714382, -0.245514,
		37.222118, 37.176941, 48.598633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383064, 37.205421, 48.413460>,  <36.763428, 36.676876, 48.770493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.383064, 37.205421, 48.413460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.764568, 37.271034, 48.312710>,  <36.993469, 37.310402, 48.252258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.764568, 37.271034, 48.312710>,  <36.383064, 37.205421, 48.413460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764568, 37.271034, 48.312710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269604, 0.096354, -0.958139,
		-0.132892, 0.981739, 0.136120,
		0.953758, 0.164027, -0.251876,
		37.050697, 37.320244, 48.237148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045891, 37.998165, 48.488140>,  <36.383064, 37.205421, 48.413460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045891, 37.998165, 48.488140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.647179, 37.966385, 48.492611>,  <35.407951, 37.947315, 48.495293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.647179, 37.966385, 48.492611>,  <36.045891, 37.998165, 48.488140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647179, 37.966385, 48.492611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043766, -0.421629, 0.905712,
		-0.067248, 0.903281, 0.423747,
		-0.996776, -0.079453, 0.011180,
		35.348145, 37.942551, 48.495964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793053, 38.379421, 49.016510>,  <36.045891, 37.998165, 48.488140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793053, 38.379421, 49.016510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.494617, 38.119492, 48.958427>,  <35.315556, 37.963535, 48.923580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.494617, 38.119492, 48.958427>,  <35.793053, 38.379421, 49.016510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494617, 38.119492, 48.958427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129415, -0.072391, 0.988944,
		-0.653152, 0.756629, -0.030088,
		-0.746086, -0.649825, -0.145202,
		35.270790, 37.924545, 48.914867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.301319, 38.498722, 49.599007>,  <35.793053, 38.379421, 49.016510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.301319, 38.498722, 49.599007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.190998, 38.148830, 49.439617>,  <35.124805, 37.938896, 49.343983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.190998, 38.148830, 49.439617>,  <35.301319, 38.498722, 49.599007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190998, 38.148830, 49.439617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352343, -0.293699, 0.888591,
		-0.894308, 0.385477, -0.227201,
		-0.275803, -0.874727, -0.398478,
		35.108257, 37.886414, 49.320072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564098, 38.349560, 49.865940>,  <35.301319, 38.498722, 49.599007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.564098, 38.349560, 49.865940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.773540, 38.030415, 49.746433>,  <34.899204, 37.838928, 49.674728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.773540, 38.030415, 49.746433>,  <34.564098, 38.349560, 49.865940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.773540, 38.030415, 49.746433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109838, -0.410972, 0.905007,
		-0.844852, -0.441049, -0.302821,
		0.523603, -0.797859, -0.298766,
		34.930622, 37.791058, 49.656803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112827, 37.790020, 49.984951>,  <34.564098, 38.349560, 49.865940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112827, 37.790020, 49.984951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.482235, 37.637096, 49.972595>,  <34.703880, 37.545341, 49.965183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.482235, 37.637096, 49.972595>,  <34.112827, 37.790020, 49.984951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482235, 37.637096, 49.972595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202329, -0.553992, 0.807562,
		-0.325849, -0.739549, -0.588974,
		0.923518, -0.382310, -0.030886,
		34.759289, 37.522404, 49.963329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073910, 37.096455, 50.154381>,  <34.112827, 37.790020, 49.984951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073910, 37.096455, 50.154381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.461258, 37.162228, 50.229458>,  <34.693665, 37.201691, 50.274502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.461258, 37.162228, 50.229458>,  <34.073910, 37.096455, 50.154381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461258, 37.162228, 50.229458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086686, -0.483639, 0.870964,
		0.233994, -0.859682, -0.454086,
		0.968366, 0.164437, 0.187691,
		34.751766, 37.211559, 50.285767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150909, 36.574333, 50.576111>,  <34.073910, 37.096455, 50.154381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150909, 36.574333, 50.576111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.478539, 36.795959, 50.635616>,  <34.675117, 36.928936, 50.671318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.478539, 36.795959, 50.635616>,  <34.150909, 36.574333, 50.576111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478539, 36.795959, 50.635616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063710, -0.345553, 0.936234,
		0.570136, -0.757370, -0.318333,
		0.819076, 0.554062, 0.148761,
		34.724262, 36.962177, 50.680244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231007, 35.772522, 50.440834>,  <34.150909, 36.574333, 50.576111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231007, 35.772522, 50.440834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.914539, 35.528080, 50.430969>,  <33.724659, 35.381416, 50.425049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.914539, 35.528080, 50.430969>,  <34.231007, 35.772522, 50.440834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.914539, 35.528080, 50.430969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151523, 0.234918, -0.960132,
		0.592532, -0.755889, -0.278456,
		-0.791168, -0.611101, -0.024662,
		33.677189, 35.344749, 50.423573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263916, 35.313416, 49.770889>,  <34.231007, 35.772522, 50.440834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263916, 35.313416, 49.770889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.888622, 35.325092, 49.908798>,  <33.663448, 35.332100, 49.991543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.888622, 35.325092, 49.908798>,  <34.263916, 35.313416, 49.770889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888622, 35.325092, 49.908798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319478, 0.309548, -0.895608,
		-0.132872, -0.950436, -0.281100,
		-0.938232, 0.029196, 0.344774,
		33.607151, 35.333851, 50.012230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868477, 34.918724, 49.329826>,  <34.263916, 35.313416, 49.770889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868477, 34.918724, 49.329826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.616402, 35.188114, 49.484383>,  <33.465157, 35.349747, 49.577114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.616402, 35.188114, 49.484383>,  <33.868477, 34.918724, 49.329826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.616402, 35.188114, 49.484383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366060, 0.181154, -0.912789,
		-0.684733, -0.716673, 0.132369,
		-0.630191, 0.673471, 0.386388,
		33.427345, 35.390156, 49.600300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.547943, 35.068344, 48.736820>,  <33.868477, 34.918724, 49.329826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.547943, 35.068344, 48.736820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.357498, 35.326267, 48.975998>,  <33.243233, 35.481022, 49.119507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.357498, 35.326267, 48.975998>,  <33.547943, 35.068344, 48.736820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.357498, 35.326267, 48.975998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597863, 0.261293, -0.757817,
		-0.644886, -0.718296, 0.261102,
		-0.476112, 0.644808, 0.597946,
		33.214664, 35.519711, 49.155380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890968, 34.853745, 48.725071>,  <33.547943, 35.068344, 48.736820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890968, 34.853745, 48.725071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.916321, 35.238064, 48.833035>,  <32.931530, 35.468655, 48.897812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.916321, 35.238064, 48.833035>,  <32.890968, 34.853745, 48.725071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916321, 35.238064, 48.833035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592980, 0.253793, -0.764176,
		-0.802719, -0.111620, 0.585818,
		0.063379, 0.960797, 0.269913,
		32.935333, 35.526302, 48.914009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205978, 35.153843, 48.601372>,  <32.890968, 34.853745, 48.725071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205978, 35.153843, 48.601372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.447575, 35.472179, 48.618488>,  <32.592533, 35.663181, 48.628757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.447575, 35.472179, 48.618488>,  <32.205978, 35.153843, 48.601372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447575, 35.472179, 48.618488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392610, 0.343829, -0.853017,
		-0.693577, 0.498417, 0.520126,
		0.603993, 0.795840, 0.042789,
		32.628773, 35.710930, 48.631325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805000, 35.653667, 48.370987>,  <32.205978, 35.153843, 48.601372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805000, 35.653667, 48.370987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.196388, 35.730675, 48.341228>,  <32.431221, 35.776878, 48.323372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.196388, 35.730675, 48.341228>,  <31.805000, 35.653667, 48.370987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.196388, 35.730675, 48.341228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132739, 0.310932, -0.941117,
		-0.158052, 0.930729, 0.329792,
		0.978468, 0.192522, -0.074401,
		32.489929, 35.788433, 48.318909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.642788, 32.345215, 51.913475> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.721390, 32.735165, 51.871502>,  <36.768551, 32.969135, 51.846317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.721390, 32.735165, 51.871502>,  <36.642788, 32.345215, 51.913475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.721390, 32.735165, 51.871502> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021054, -0.111188, -0.993576,
		-0.980277, 0.193035, -0.042374,
		0.196507, 0.974872, -0.104931,
		36.780342, 33.027626, 51.840023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315201, 32.609440, 51.322445>,  <36.642788, 32.345215, 51.913475>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315201, 32.609440, 51.322445> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.599968, 32.883698, 51.383186>,  <36.770828, 33.048252, 51.419632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.599968, 32.883698, 51.383186>,  <36.315201, 32.609440, 51.322445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599968, 32.883698, 51.383186> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241116, -0.035565, -0.969845,
		-0.659570, 0.727066, -0.190639,
		0.711921, 0.685646, 0.151850,
		36.813545, 33.089390, 51.428741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208221, 33.190876, 50.910877>,  <36.315201, 32.609440, 51.322445>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208221, 33.190876, 50.910877> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.602154, 33.182285, 50.979744>,  <36.838512, 33.177132, 51.021065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.602154, 33.182285, 50.979744>,  <36.208221, 33.190876, 50.910877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602154, 33.182285, 50.979744> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171741, -0.020291, -0.984933,
		0.024643, 0.999564, -0.016296,
		0.984834, -0.021473, 0.172166,
		36.897602, 33.175842, 51.031395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496712, 33.588913, 50.496498>,  <36.208221, 33.190876, 50.910877>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496712, 33.588913, 50.496498> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.837132, 33.396973, 50.581776>,  <37.041386, 33.281807, 50.632942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.837132, 33.396973, 50.581776>,  <36.496712, 33.588913, 50.496498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.837132, 33.396973, 50.581776> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221505, -0.040031, -0.974337,
		0.476073, 0.876435, 0.072222,
		0.851052, -0.479853, 0.213193,
		37.092445, 33.253017, 50.645733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027096, 33.918156, 50.062771>,  <36.496712, 33.588913, 50.496498>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027096, 33.918156, 50.062771> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.159161, 33.557880, 50.175732>,  <37.238400, 33.341717, 50.243507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.159161, 33.557880, 50.175732>,  <37.027096, 33.918156, 50.062771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159161, 33.557880, 50.175732> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303265, -0.182099, -0.935345,
		0.893879, 0.394462, 0.213024,
		0.330167, -0.900688, 0.282401,
		37.258209, 33.287674, 50.260452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662804, 33.849758, 49.691437>,  <37.027096, 33.918156, 50.062771>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.662804, 33.849758, 49.691437> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.552288, 33.478058, 49.789539>,  <37.485977, 33.255035, 49.848400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.552288, 33.478058, 49.789539>,  <37.662804, 33.849758, 49.691437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552288, 33.478058, 49.789539> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340423, -0.333270, -0.879229,
		0.898764, -0.159429, 0.408418,
		-0.276288, -0.929254, 0.245258,
		37.469402, 33.199280, 49.863117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228298, 33.348465, 49.489254>,  <37.662804, 33.849758, 49.691437>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.228298, 33.348465, 49.489254> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.889111, 33.138184, 49.516365>,  <37.685600, 33.012016, 49.532631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.889111, 33.138184, 49.516365>,  <38.228298, 33.348465, 49.489254>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889111, 33.138184, 49.516365> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252210, -0.512627, -0.820733,
		0.466204, -0.678860, 0.567277,
		-0.847964, -0.525702, 0.067774,
		37.634720, 32.980473, 49.536697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320930, 32.888546, 49.040218>,  <38.228298, 33.348465, 49.489254>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320930, 32.888546, 49.040218> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.928589, 32.826393, 49.087173>,  <37.693184, 32.789101, 49.115345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.928589, 32.826393, 49.087173>,  <38.320930, 32.888546, 49.040218>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928589, 32.826393, 49.087173> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019476, -0.521488, -0.853036,
		0.193761, -0.838991, 0.508478,
		-0.980855, -0.155382, 0.117385,
		37.634331, 32.779778, 49.122387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115730, 32.079208, 48.819508>,  <38.320930, 32.888546, 49.040218>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115730, 32.079208, 48.819508> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.782791, 32.300446, 48.805130>,  <37.583027, 32.433186, 48.796505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.782791, 32.300446, 48.805130>,  <38.115730, 32.079208, 48.819508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782791, 32.300446, 48.805130> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181320, -0.333004, -0.925328,
		-0.523758, -0.763676, 0.377461,
		-0.832347, 0.553089, -0.035944,
		37.533089, 32.466373, 48.794346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507877, 31.567587, 48.715065>,  <38.115730, 32.079208, 48.819508>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507877, 31.567587, 48.715065> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.423409, 31.933844, 48.578239>,  <37.372726, 32.153599, 48.496143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.423409, 31.933844, 48.578239>,  <37.507877, 31.567587, 48.715065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.423409, 31.933844, 48.578239> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198108, -0.382789, -0.902345,
		-0.957162, -0.122787, 0.262231,
		-0.211175, 0.915640, -0.342066,
		37.360054, 32.208534, 48.475620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895798, 31.511690, 48.312237>,  <37.507877, 31.567587, 48.715065>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895798, 31.511690, 48.312237> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.975006, 31.881575, 48.182190>,  <37.022530, 32.103504, 48.104160>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.975006, 31.881575, 48.182190>,  <36.895798, 31.511690, 48.312237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975006, 31.881575, 48.182190> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283957, -0.263345, -0.921964,
		-0.938167, 0.274886, 0.210430,
		0.198020, 0.924709, -0.325117,
		37.034412, 32.158989, 48.084656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521252, 31.653263, 47.749382>,  <36.895798, 31.511690, 48.312237>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521252, 31.653263, 47.749382> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.764549, 31.959087, 47.664078>,  <36.910530, 32.142582, 47.612896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.764549, 31.959087, 47.664078>,  <36.521252, 31.653263, 47.749382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764549, 31.959087, 47.664078> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179255, -0.129427, -0.975252,
		-0.773241, 0.631424, 0.058328,
		0.608248, 0.764561, -0.213264,
		36.947025, 32.188454, 47.600098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834839, 31.913000, 48.031284>,  <36.521252, 31.653263, 47.749382>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834839, 31.913000, 48.031284> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.492447, 32.111759, 48.088413>,  <35.287014, 32.231014, 48.122692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.492447, 32.111759, 48.088413>,  <35.834839, 31.913000, 48.031284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492447, 32.111759, 48.088413> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004537, -0.283455, 0.958975,
		0.516997, 0.820211, 0.244885,
		-0.855975, 0.496898, 0.142824,
		35.235653, 32.260830, 48.131260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975735, 32.389263, 48.542309>,  <35.834839, 31.913000, 48.031284>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975735, 32.389263, 48.542309> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.580002, 32.332607, 48.528694>,  <35.342564, 32.298615, 48.520527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.580002, 32.332607, 48.528694>,  <35.975735, 32.389263, 48.542309>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580002, 32.332607, 48.528694> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020409, -0.366123, 0.930343,
		-0.144233, 0.919724, 0.365108,
		-0.989333, -0.141637, -0.034036,
		35.283203, 32.290115, 48.518482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662651, 32.679443, 49.211231>,  <35.975735, 32.389263, 48.542309>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662651, 32.679443, 49.211231> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.367290, 32.447567, 49.073410>,  <35.190075, 32.308441, 48.990715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.367290, 32.447567, 49.073410>,  <35.662651, 32.679443, 49.211231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367290, 32.447567, 49.073410> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122835, -0.386774, 0.913957,
		-0.663077, 0.717193, 0.214389,
		-0.738403, -0.579690, -0.344557,
		35.145771, 32.273659, 48.970043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083496, 32.816513, 49.640377>,  <35.662651, 32.679443, 49.211231>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083496, 32.816513, 49.640377> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.057320, 32.441597, 49.503441>,  <35.041615, 32.216648, 49.421280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.057320, 32.441597, 49.503441>,  <35.083496, 32.816513, 49.640377>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057320, 32.441597, 49.503441> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206625, -0.322914, 0.923598,
		-0.976229, 0.131182, -0.172535,
		-0.065446, -0.937293, -0.342344,
		35.037685, 32.160408, 49.400738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409210, 32.645191, 49.784977>,  <35.083496, 32.816513, 49.640377>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409210, 32.645191, 49.784977> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.617306, 32.304653, 49.757961>,  <34.742161, 32.100330, 49.741753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.617306, 32.304653, 49.757961>,  <34.409210, 32.645191, 49.784977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.617306, 32.304653, 49.757961> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233774, -0.218024, 0.947531,
		-0.821405, -0.477149, -0.312447,
		0.520235, -0.851348, -0.067541,
		34.773376, 32.049248, 49.737698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966888, 32.193375, 50.056232>,  <34.409210, 32.645191, 49.784977>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966888, 32.193375, 50.056232> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.327850, 32.021099, 50.061665>,  <34.544426, 31.917734, 50.064922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.327850, 32.021099, 50.061665>,  <33.966888, 32.193375, 50.056232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327850, 32.021099, 50.061665> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177193, -0.342173, 0.922778,
		-0.392782, -0.835121, -0.385092,
		0.902399, -0.430686, 0.013578,
		34.598572, 31.891893, 50.065739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904091, 31.583408, 50.363495>,  <33.966888, 32.193375, 50.056232>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904091, 31.583408, 50.363495> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.298073, 31.644241, 50.396317>,  <34.534462, 31.680742, 50.416012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.298073, 31.644241, 50.396317>,  <33.904091, 31.583408, 50.363495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298073, 31.644241, 50.396317> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015224, -0.396640, 0.917848,
		0.172137, -0.905289, -0.388357,
		0.984955, 0.152083, 0.082058,
		34.593559, 31.689867, 50.420933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155823, 31.014015, 50.776852>,  <33.904091, 31.583408, 50.363495>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.155823, 31.014015, 50.776852> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.441696, 31.291792, 50.810272>,  <34.613220, 31.458458, 50.830322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.441696, 31.291792, 50.810272>,  <34.155823, 31.014015, 50.776852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441696, 31.291792, 50.810272> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041431, -0.161267, 0.986041,
		0.698223, -0.701243, -0.144026,
		0.714681, 0.694443, 0.083547,
		34.656101, 31.500124, 50.835335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699177, 30.806156, 51.170685>,  <34.155823, 31.014015, 50.776852>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699177, 30.806156, 51.170685> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.773182, 31.198204, 51.199337>,  <34.817585, 31.433434, 51.216526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.773182, 31.198204, 51.199337>,  <34.699177, 30.806156, 51.170685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.773182, 31.198204, 51.199337> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188086, -0.106854, 0.976323,
		0.964569, -0.167163, -0.204117,
		0.185016, 0.980122, 0.071627,
		34.828686, 31.492241, 51.220825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241112, 30.842373, 51.689743>,  <34.699177, 30.806156, 51.170685>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241112, 30.842373, 51.689743> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.064804, 31.198284, 51.642376>,  <34.959019, 31.411831, 51.613956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.064804, 31.198284, 51.642376>,  <35.241112, 30.842373, 51.689743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064804, 31.198284, 51.642376> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041640, 0.111515, 0.992890,
		0.896655, 0.442563, -0.012102,
		-0.440766, 0.889776, -0.118419,
		34.932575, 31.465218, 51.606850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586014, 31.183077, 52.125988>,  <35.241112, 30.842373, 51.689743>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586014, 31.183077, 52.125988> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.251640, 31.395483, 52.070515>,  <35.051014, 31.522926, 52.037231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.251640, 31.395483, 52.070515>,  <35.586014, 31.183077, 52.125988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251640, 31.395483, 52.070515> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057057, 0.167233, 0.984265,
		0.545852, 0.830695, -0.109498,
		-0.835936, 0.531016, -0.138682,
		35.000858, 31.554789, 52.028912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700768, 31.768103, 52.525707>,  <35.586014, 31.183077, 52.125988>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700768, 31.768103, 52.525707> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.308136, 31.826845, 52.476833>,  <35.072556, 31.862091, 52.447510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.308136, 31.826845, 52.476833>,  <35.700768, 31.768103, 52.525707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308136, 31.826845, 52.476833> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130858, -0.050878, 0.990095,
		0.139187, 0.987848, 0.069158,
		-0.981582, 0.146859, -0.122186,
		35.013660, 31.870903, 52.440178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449509, 32.350937, 52.924545>,  <35.700768, 31.768103, 52.525707>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449509, 32.350937, 52.924545> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.146908, 32.091866, 52.888309>,  <34.965347, 31.936422, 52.866570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.146908, 32.091866, 52.888309>,  <35.449509, 32.350937, 52.924545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146908, 32.091866, 52.888309> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091801, -0.031976, 0.995264,
		-0.647511, 0.761239, -0.035268,
		-0.756506, -0.647682, -0.090587,
		34.919956, 31.897560, 52.861134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859501, 32.918865, 52.876827>,  <35.449509, 32.350937, 52.924545>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859501, 32.918865, 52.876827> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.601070, 33.171875, 53.047707>,  <34.446014, 33.323681, 53.150234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.601070, 33.171875, 53.047707>,  <34.859501, 32.918865, 52.876827>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601070, 33.171875, 53.047707> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047392, 0.591859, -0.804647,
		-0.761803, -0.499615, -0.412361,
		-0.646073, 0.632525, 0.427202,
		34.407249, 33.361633, 53.175869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201527, 32.987888, 52.401230>,  <34.859501, 32.918865, 52.876827>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.201527, 32.987888, 52.401230> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.198689, 33.308949, 52.639793>,  <34.196983, 33.501583, 52.782932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.198689, 33.308949, 52.639793>,  <34.201527, 32.987888, 52.401230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198689, 33.308949, 52.639793> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124067, 0.591113, -0.796990,
		-0.992248, -0.079652, 0.095386,
		-0.007098, 0.802646, 0.596413,
		34.196560, 33.549744, 52.818718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750851, 33.367107, 52.003876>,  <34.201527, 32.987888, 52.401230>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750851, 33.367107, 52.003876> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.929398, 33.623222, 52.253929>,  <34.036526, 33.776890, 52.403961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.929398, 33.623222, 52.253929>,  <33.750851, 33.367107, 52.003876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929398, 33.623222, 52.253929> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189365, 0.750357, -0.633329,
		-0.874585, 0.164318, 0.456181,
		0.446366, 0.640284, 0.625135,
		34.063309, 33.815308, 52.441471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173584, 33.730785, 52.323582>,  <33.750851, 33.367107, 52.003876>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173584, 33.730785, 52.323582> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.531021, 33.901272, 52.267254>,  <33.745483, 34.003563, 52.233456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.531021, 33.901272, 52.267254>,  <33.173584, 33.730785, 52.323582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531021, 33.901272, 52.267254> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390885, 0.584643, -0.710916,
		-0.220674, 0.690315, 0.689035,
		0.893595, 0.426214, -0.140819,
		33.799099, 34.029137, 52.225010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991108, 34.392830, 52.124783>,  <33.173584, 33.730785, 52.323582>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991108, 34.392830, 52.124783> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.376976, 34.388840, 52.019470>,  <33.608498, 34.386444, 51.956284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.376976, 34.388840, 52.019470>,  <32.991108, 34.392830, 52.124783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.376976, 34.388840, 52.019470> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192436, 0.655854, -0.729948,
		0.179957, 0.754822, 0.630761,
		0.964668, -0.009979, -0.263281,
		33.666378, 34.385845, 51.940487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.074394, 35.083580, 51.887493>,  <32.991108, 34.392830, 52.124783>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.074394, 35.083580, 51.887493> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.360500, 34.858406, 51.721844>,  <33.532166, 34.723301, 51.622452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.360500, 34.858406, 51.721844>,  <33.074394, 35.083580, 51.887493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.360500, 34.858406, 51.721844> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028296, 0.615422, -0.787690,
		0.698281, 0.551688, 0.456119,
		0.715265, -0.562935, -0.414127,
		33.575081, 34.689526, 51.597607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516029, 35.555088, 51.576344>,  <33.074394, 35.083580, 51.887493>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516029, 35.555088, 51.576344> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.623508, 35.221981, 51.382721>,  <33.687996, 35.022118, 51.266548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.623508, 35.221981, 51.382721>,  <33.516029, 35.555088, 51.576344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623508, 35.221981, 51.382721> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086706, 0.479583, -0.873202,
		0.959315, 0.276595, 0.056656,
		0.268694, -0.832764, -0.484054,
		33.704117, 34.972153, 51.237503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043606, 35.752491, 51.121620>,  <33.516029, 35.555088, 51.576344>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043606, 35.752491, 51.121620> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.843807, 35.435074, 50.982601>,  <33.723930, 35.244621, 50.899189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.843807, 35.435074, 50.982601>,  <34.043606, 35.752491, 51.121620>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843807, 35.435074, 50.982601> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037724, 0.420723, -0.906405,
		0.865497, -0.439631, -0.240083,
		-0.499492, -0.793547, -0.347549,
		33.693958, 35.197010, 50.878338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719383, 36.045509, 50.900742>,  <34.043606, 35.752491, 51.121620>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719383, 36.045509, 50.900742> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.860332, 36.414055, 50.966381>,  <34.944901, 36.635181, 51.005764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.860332, 36.414055, 50.966381>,  <34.719383, 36.045509, 50.900742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860332, 36.414055, 50.966381> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234214, -0.256588, 0.937713,
		0.906079, -0.291988, -0.306209,
		0.352370, 0.921361, 0.164102,
		34.966045, 36.690464, 51.015610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456303, 36.065842, 51.161015>,  <34.719383, 36.045509, 50.900742>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456303, 36.065842, 51.161015> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.274345, 36.398376, 51.288734>,  <35.165169, 36.597897, 51.365364>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.274345, 36.398376, 51.288734>,  <35.456303, 36.065842, 51.161015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274345, 36.398376, 51.288734> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441780, -0.100654, 0.891459,
		0.773241, 0.546579, -0.321481,
		-0.454895, 0.831336, 0.319298,
		35.137878, 36.647778, 51.384525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953068, 36.500221, 51.519558>,  <35.456303, 36.065842, 51.161015>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.953068, 36.500221, 51.519558> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.607868, 36.643757, 51.661808>,  <35.400749, 36.729877, 51.747158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.607868, 36.643757, 51.661808>,  <35.953068, 36.500221, 51.519558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607868, 36.643757, 51.661808> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325968, -0.142301, 0.934610,
		0.385976, 0.922490, 0.005837,
		-0.862999, 0.358835, 0.355627,
		35.348969, 36.751408, 51.768497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234867, 36.807785, 52.034225>,  <35.953068, 36.500221, 51.519558>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234867, 36.807785, 52.034225> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.841194, 36.761261, 52.087681>,  <35.604992, 36.733345, 52.119755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.841194, 36.761261, 52.087681>,  <36.234867, 36.807785, 52.034225>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841194, 36.761261, 52.087681> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148097, -0.126078, 0.980903,
		-0.097240, 0.985178, 0.141309,
		-0.984181, -0.116311, 0.133642,
		35.545940, 36.726368, 52.127773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055290, 37.195717, 52.623425>,  <36.234867, 36.807785, 52.034225>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055290, 37.195717, 52.623425> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.748314, 36.940704, 52.596333>,  <35.564129, 36.787697, 52.580078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.748314, 36.940704, 52.596333>,  <36.055290, 37.195717, 52.623425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748314, 36.940704, 52.596333> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067147, -0.184993, 0.980443,
		-0.637594, 0.747883, 0.184780,
		-0.767440, -0.637533, -0.067732,
		35.518082, 36.749443, 52.576012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462429, 37.375671, 53.165890>,  <36.055290, 37.195717, 52.623425>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462429, 37.375671, 53.165890> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.436859, 36.991631, 53.056995>,  <35.421516, 36.761204, 52.991661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.436859, 36.991631, 53.056995>,  <35.462429, 37.375671, 53.165890>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436859, 36.991631, 53.056995> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183345, -0.279447, 0.942493,
		-0.980968, 0.010340, 0.193895,
		-0.063929, -0.960105, -0.272233,
		35.417679, 36.703598, 52.975327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157825, 37.091846, 53.847015>,  <35.462429, 37.375671, 53.165890>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157825, 37.091846, 53.847015> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.258347, 36.778469, 53.619663>,  <35.318661, 36.590443, 53.483253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.258347, 36.778469, 53.619663>,  <35.157825, 37.091846, 53.847015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258347, 36.778469, 53.619663> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279639, -0.503416, 0.817542,
		-0.926633, -0.364393, 0.092572,
		0.251305, -0.783448, -0.568380,
		35.333736, 36.543434, 53.449150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866249, 36.537048, 54.157791>,  <35.157825, 37.091846, 53.847015>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866249, 36.537048, 54.157791> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.156940, 36.368599, 53.940712>,  <35.331356, 36.267529, 53.810463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.156940, 36.368599, 53.940712>,  <34.866249, 36.537048, 54.157791>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156940, 36.368599, 53.940712> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293496, -0.523941, 0.799591,
		-0.621069, -0.740365, -0.257165,
		0.726728, -0.421124, -0.542697,
		35.374958, 36.242260, 53.777905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806858, 35.785130, 54.211998>,  <34.866249, 36.537048, 54.157791>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806858, 35.785130, 54.211998> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.183830, 35.883472, 54.121334>,  <35.410015, 35.942478, 54.066936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.183830, 35.883472, 54.121334>,  <34.806858, 35.785130, 54.211998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183830, 35.883472, 54.121334> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306315, -0.362854, 0.880062,
		0.134124, -0.898828, -0.417275,
		0.942434, 0.245855, -0.226657,
		35.466560, 35.957230, 54.053337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.459648, 38.374443, 38.406288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.830349, 38.226223, 38.381546>,  <35.052769, 38.137291, 38.366703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.830349, 38.226223, 38.381546>,  <34.459648, 38.374443, 38.406288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830349, 38.226223, 38.381546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111950, -0.429559, 0.896073,
		-0.358610, -0.823511, -0.439577,
		0.926750, -0.370552, -0.061852,
		35.108376, 38.115059, 38.362991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371048, 37.702244, 38.540386>,  <34.459648, 38.374443, 38.406288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371048, 37.702244, 38.540386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.749397, 37.812996, 38.608097>,  <34.976406, 37.879448, 38.648724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.749397, 37.812996, 38.608097>,  <34.371048, 37.702244, 38.540386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749397, 37.812996, 38.608097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138012, -0.128893, 0.982008,
		0.293719, -0.952220, -0.083704,
		0.945876, 0.276882, 0.169276,
		35.033161, 37.896061, 38.658878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537018, 37.197735, 38.994431>,  <34.371048, 37.702244, 38.540386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537018, 37.197735, 38.994431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819950, 37.474060, 39.054363>,  <34.989712, 37.639854, 39.090324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819950, 37.474060, 39.054363>,  <34.537018, 37.197735, 38.994431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819950, 37.474060, 39.054363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094418, -0.117730, 0.988547,
		0.700544, -0.713381, -0.018049,
		0.707335, 0.690816, 0.149831,
		35.032150, 37.681305, 39.099312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774139, 36.989681, 39.630665>,  <34.537018, 37.197735, 38.994431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774139, 36.989681, 39.630665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981136, 37.330368, 39.597721>,  <35.105335, 37.534779, 39.577957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981136, 37.330368, 39.597721>,  <34.774139, 36.989681, 39.630665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981136, 37.330368, 39.597721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072539, 0.052232, 0.995997,
		0.852610, -0.521390, -0.034754,
		0.517488, 0.851718, -0.082355,
		35.136383, 37.585884, 39.573013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273308, 37.003246, 40.148251>,  <34.774139, 36.989681, 39.630665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273308, 37.003246, 40.148251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.235661, 37.386860, 40.041378>,  <35.213074, 37.617027, 39.977253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.235661, 37.386860, 40.041378>,  <35.273308, 37.003246, 40.148251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.235661, 37.386860, 40.041378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263244, 0.282798, 0.922349,
		0.960127, 0.016473, -0.279077,
		-0.094116, 0.959038, -0.267186,
		35.207424, 37.674572, 39.961224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879967, 37.307213, 40.415436>,  <35.273308, 37.003246, 40.148251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879967, 37.307213, 40.415436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572803, 37.558517, 40.365479>,  <35.388504, 37.709301, 40.335503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572803, 37.558517, 40.365479>,  <35.879967, 37.307213, 40.415436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572803, 37.558517, 40.365479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030697, 0.230845, 0.972506,
		0.639820, 0.742965, -0.196554,
		-0.767911, 0.628263, -0.124892,
		35.342430, 37.746998, 40.328011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066776, 37.917809, 40.802834>,  <35.879967, 37.307213, 40.415436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066776, 37.917809, 40.802834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668972, 37.894299, 40.768196>,  <35.430290, 37.880192, 40.747414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668972, 37.894299, 40.768196>,  <36.066776, 37.917809, 40.802834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668972, 37.894299, 40.768196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101294, 0.332576, 0.937621,
		-0.026308, 0.941243, -0.336704,
		-0.994509, -0.058773, -0.086593,
		35.370621, 37.876667, 40.742218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735336, 38.449760, 41.172558>,  <36.066776, 37.917809, 40.802834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735336, 38.449760, 41.172558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.411629, 38.217155, 41.139278>,  <35.217403, 38.077591, 41.119312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.411629, 38.217155, 41.139278>,  <35.735336, 38.449760, 41.172558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411629, 38.217155, 41.139278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418796, 0.471812, 0.775888,
		-0.411936, 0.662747, -0.625360,
		-0.809271, -0.581514, -0.083199,
		35.168846, 38.042702, 41.114319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106281, 38.903389, 41.339062>,  <35.735336, 38.449760, 41.172558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106281, 38.903389, 41.339062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026951, 38.515957, 41.399094>,  <34.979355, 38.283497, 41.435112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026951, 38.515957, 41.399094>,  <35.106281, 38.903389, 41.339062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026951, 38.515957, 41.399094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439538, 0.224746, 0.869652,
		-0.876056, 0.106509, -0.470300,
		-0.198324, -0.968579, 0.150075,
		34.967453, 38.225384, 41.444115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397247, 38.942562, 41.659023>,  <35.106281, 38.903389, 41.339062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397247, 38.942562, 41.659023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543655, 38.581108, 41.747990>,  <34.631500, 38.364235, 41.801369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543655, 38.581108, 41.747990>,  <34.397247, 38.942562, 41.659023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543655, 38.581108, 41.747990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280277, 0.120863, 0.952280,
		-0.887396, -0.410896, -0.209029,
		0.366024, -0.903635, 0.222418,
		34.653461, 38.310017, 41.814716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851170, 38.547714, 41.971191>,  <34.397247, 38.942562, 41.659023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851170, 38.547714, 41.971191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187447, 38.386448, 42.115803>,  <34.389214, 38.289688, 42.202568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187447, 38.386448, 42.115803>,  <33.851170, 38.547714, 41.971191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187447, 38.386448, 42.115803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407138, -0.030388, 0.912861,
		-0.357047, -0.914623, -0.189690,
		0.840688, -0.403164, 0.361528,
		34.439651, 38.265499, 42.224262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579720, 38.051716, 42.405636>,  <33.851170, 38.547714, 41.971191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579720, 38.051716, 42.405636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962681, 38.087669, 42.515396>,  <34.192459, 38.109241, 42.581253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962681, 38.087669, 42.515396>,  <33.579720, 38.051716, 42.405636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962681, 38.087669, 42.515396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258913, -0.153447, 0.953634,
		0.127823, -0.984060, -0.123639,
		0.957406, 0.089884, 0.274400,
		34.249901, 38.114635, 42.597717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312397, 37.317410, 42.331867>,  <33.579720, 38.051716, 42.405636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312397, 37.317410, 42.331867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995087, 37.075272, 42.305733>,  <32.804699, 36.929989, 42.290051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995087, 37.075272, 42.305733>,  <33.312397, 37.317410, 42.331867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995087, 37.075272, 42.305733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071847, 0.013492, -0.997324,
		0.604607, -0.795849, 0.032789,
		-0.793277, -0.605345, -0.065336,
		32.757103, 36.893669, 42.286133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.414204, 37.041256, 41.703545>,  <33.312397, 37.317410, 42.331867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.414204, 37.041256, 41.703545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.038502, 36.930801, 41.785076>,  <32.813080, 36.864529, 41.833996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.038502, 36.930801, 41.785076>,  <33.414204, 37.041256, 41.703545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.038502, 36.930801, 41.785076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196213, -0.055241, -0.979004,
		0.281601, -0.959529, -0.002297,
		-0.939256, -0.276140, 0.203828,
		32.756725, 36.847961, 41.846226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190453, 36.413437, 41.347378>,  <33.414204, 37.041256, 41.703545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190453, 36.413437, 41.347378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875481, 36.649754, 41.417725>,  <32.686497, 36.791542, 41.459934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875481, 36.649754, 41.417725>,  <33.190453, 36.413437, 41.347378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875481, 36.649754, 41.417725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230714, -0.017898, -0.972857,
		-0.571606, -0.806627, 0.150397,
		-0.787425, 0.590789, 0.175869,
		32.639252, 36.826992, 41.470486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781998, 36.098675, 40.887997>,  <33.190453, 36.413437, 41.347378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.781998, 36.098675, 40.887997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639465, 36.458664, 40.988453>,  <32.553947, 36.674660, 41.048729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639465, 36.458664, 40.988453>,  <32.781998, 36.098675, 40.887997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639465, 36.458664, 40.988453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361011, 0.115305, -0.925406,
		-0.861802, -0.420412, 0.283815,
		-0.356326, 0.899977, 0.251143,
		32.532566, 36.728657, 41.063797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.174294, 36.105499, 40.543655>,  <32.781998, 36.098675, 40.887997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.174294, 36.105499, 40.543655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238392, 36.492992, 40.619431>,  <32.276852, 36.725487, 40.664894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238392, 36.492992, 40.619431>,  <32.174294, 36.105499, 40.543655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238392, 36.492992, 40.619431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420790, 0.240648, -0.874657,
		-0.892893, 0.060443, 0.446193,
		0.160242, 0.968729, 0.189439,
		32.286465, 36.783611, 40.676262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.503033, 36.406845, 40.418224>,  <32.174294, 36.105499, 40.543655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.503033, 36.406845, 40.418224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767347, 36.706932, 40.408905>,  <31.925936, 36.886982, 40.403313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767347, 36.706932, 40.408905>,  <31.503033, 36.406845, 40.418224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.767347, 36.706932, 40.408905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419838, 0.343707, -0.840001,
		-0.622174, 0.564840, 0.542085,
		0.660784, 0.750214, -0.023296,
		31.965582, 36.931995, 40.401917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.086775, 37.055744, 40.355606>,  <31.503033, 36.406845, 40.418224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.086775, 37.055744, 40.355606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.467337, 37.094254, 40.238605>,  <31.695675, 37.117359, 40.168404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.467337, 37.094254, 40.238605>,  <31.086775, 37.055744, 40.355606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.467337, 37.094254, 40.238605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304592, 0.154524, -0.939865,
		-0.045285, 0.983287, 0.176339,
		0.951406, 0.096273, -0.292503,
		31.752758, 37.123135, 40.150856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.972462, 37.575043, 39.897385>,  <31.086775, 37.055744, 40.355606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.972462, 37.575043, 39.897385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.331196, 37.418423, 39.815048>,  <31.546436, 37.324451, 39.765648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.331196, 37.418423, 39.815048>,  <30.972462, 37.575043, 39.897385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.331196, 37.418423, 39.815048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211350, 0.029494, -0.976965,
		0.388605, 0.919682, -0.056304,
		0.896837, -0.391554, -0.205837,
		31.600246, 37.300957, 39.753296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.228117, 38.035610, 39.426765>,  <30.972462, 37.575043, 39.897385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.228117, 38.035610, 39.426765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.442244, 37.700611, 39.382874>,  <31.570719, 37.499611, 39.356537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.442244, 37.700611, 39.382874>,  <31.228117, 38.035610, 39.426765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442244, 37.700611, 39.382874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046187, 0.100696, -0.993845,
		0.843389, 0.537088, 0.015223,
		0.535315, -0.837494, -0.109732,
		31.602839, 37.449364, 39.349953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.668497, 38.130188, 38.800861>,  <31.228117, 38.035610, 39.426765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.668497, 38.130188, 38.800861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641235, 37.732594, 38.835125>,  <31.624878, 37.494038, 38.855682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641235, 37.732594, 38.835125>,  <31.668497, 38.130188, 38.800861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.641235, 37.732594, 38.835125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001266, -0.085945, -0.996299,
		0.997674, -0.067794, 0.007116,
		-0.068155, -0.993990, 0.085660,
		31.620789, 37.434395, 38.860825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.974802, 37.933731, 38.230991>,  <31.668497, 38.130188, 38.800861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.974802, 37.933731, 38.230991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.797800, 37.588966, 38.330029>,  <31.691599, 37.382107, 38.389450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.797800, 37.588966, 38.330029>,  <31.974802, 37.933731, 38.230991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.797800, 37.588966, 38.330029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136625, -0.208073, -0.968524,
		0.886297, -0.462405, -0.025685,
		-0.442506, -0.861909, 0.247590,
		31.665049, 37.330395, 38.404305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.169670, 37.498600, 37.742619>,  <31.974802, 37.933731, 38.230991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.169670, 37.498600, 37.742619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.865223, 37.296841, 37.905727>,  <31.682554, 37.175785, 38.003593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.865223, 37.296841, 37.905727>,  <32.169670, 37.498600, 37.742619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.865223, 37.296841, 37.905727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313766, -0.263894, -0.912092,
		0.567668, -0.822155, 0.042591,
		-0.761120, -0.504402, 0.407768,
		31.636887, 37.145519, 38.028057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291840, 36.832130, 37.635284>,  <32.169670, 37.498600, 37.742619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.291840, 36.832130, 37.635284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904783, 36.918201, 37.687996>,  <31.672548, 36.969845, 37.719624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904783, 36.918201, 37.687996>,  <32.291840, 36.832130, 37.635284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.904783, 36.918201, 37.687996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215571, -0.433591, -0.874945,
		-0.131130, -0.875042, 0.465947,
		-0.967644, 0.215176, 0.131776,
		31.614491, 36.982754, 37.727528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774818, 36.286053, 37.658768>,  <32.291840, 36.832130, 37.635284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774818, 36.286053, 37.658768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610764, 36.607128, 37.485569>,  <31.512331, 36.799774, 37.381649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610764, 36.607128, 37.485569>,  <31.774818, 36.286053, 37.658768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.610764, 36.607128, 37.485569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208573, -0.544731, -0.812259,
		-0.887855, -0.242825, 0.390832,
		-0.410135, 0.802685, -0.432995,
		31.487722, 36.847935, 37.355671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.884954, 35.626652, 37.722050>,  <31.774818, 36.286053, 37.658768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.884954, 35.626652, 37.722050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.988241, 35.928925, 37.962803>,  <32.050213, 36.110291, 38.107254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.988241, 35.928925, 37.962803>,  <31.884954, 35.626652, 37.722050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.988241, 35.928925, 37.962803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868437, -0.091381, 0.487305,
		0.423250, -0.648529, 0.632669,
		0.258218, 0.755685, 0.601884,
		32.065708, 36.155628, 38.143368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.692173, 35.090595, 38.254604>,  <31.884954, 35.626652, 37.722050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.692173, 35.090595, 38.254604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853058, 34.725922, 38.288212>,  <31.949589, 34.507118, 38.308376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853058, 34.725922, 38.288212>,  <31.692173, 35.090595, 38.254604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.853058, 34.725922, 38.288212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298166, -0.043667, 0.953515,
		-0.865634, -0.408568, -0.289396,
		0.402213, -0.911683, 0.084021,
		31.973722, 34.452415, 38.313419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.307819, 34.679310, 38.780167>,  <31.692173, 35.090595, 38.254604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.307819, 34.679310, 38.780167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678667, 34.531803, 38.753460>,  <31.901176, 34.443298, 38.737434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678667, 34.531803, 38.753460>,  <31.307819, 34.679310, 38.780167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678667, 34.531803, 38.753460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001921, -0.173488, 0.984834,
		-0.374759, -0.913188, -0.160136,
		0.927121, -0.368767, -0.066770,
		31.956802, 34.421173, 38.733429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.409283, 34.178577, 39.322433>,  <31.307819, 34.679310, 38.780167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.409283, 34.178577, 39.322433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787636, 34.233120, 39.204647>,  <32.014648, 34.265846, 39.133976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787636, 34.233120, 39.204647>,  <31.409283, 34.178577, 39.322433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.787636, 34.233120, 39.204647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324247, -0.360691, 0.874509,
		0.013033, -0.922664, -0.385385,
		0.945883, 0.136357, -0.294470,
		32.071400, 34.274029, 39.116306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746870, 33.575470, 39.391186>,  <31.409283, 34.178577, 39.322433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746870, 33.575470, 39.391186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.016720, 33.869465, 39.418541>,  <32.178631, 34.045860, 39.434956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.016720, 33.869465, 39.418541>,  <31.746870, 33.575470, 39.391186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.016720, 33.869465, 39.418541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244220, -0.309672, 0.918945,
		0.696591, -0.603240, -0.388411,
		0.674625, 0.734986, 0.068392,
		32.219109, 34.089962, 39.439060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.381771, 33.249283, 39.561821>,  <31.746870, 33.575470, 39.391186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.381771, 33.249283, 39.561821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419830, 33.633675, 39.665718>,  <32.442665, 33.864311, 39.728054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419830, 33.633675, 39.665718>,  <32.381771, 33.249283, 39.561821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419830, 33.633675, 39.665718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358340, -0.276499, 0.891707,
		0.928730, 0.008228, -0.370667,
		0.095152, 0.960979, 0.259741,
		32.448376, 33.921967, 39.743641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090946, 33.275307, 39.972019>,  <32.381771, 33.249283, 39.561821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090946, 33.275307, 39.972019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.886238, 33.609509, 40.052032>,  <32.763412, 33.810032, 40.100040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.886238, 33.609509, 40.052032>,  <33.090946, 33.275307, 39.972019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.886238, 33.609509, 40.052032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250607, -0.077523, 0.964980,
		0.821756, 0.543982, -0.169710,
		-0.511775, 0.835508, 0.200031,
		32.732704, 33.860161, 40.112041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570675, 33.720230, 40.276878>,  <33.090946, 33.275307, 39.972019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570675, 33.720230, 40.276878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215954, 33.840187, 40.417534>,  <33.003120, 33.912163, 40.501926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215954, 33.840187, 40.417534>,  <33.570675, 33.720230, 40.276878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215954, 33.840187, 40.417534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388431, 0.071377, 0.918709,
		0.250418, 0.951298, -0.179785,
		-0.886799, 0.299895, 0.351640,
		32.949913, 33.930157, 40.523026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.810104, 34.280090, 40.601913>,  <33.570675, 33.720230, 40.276878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.810104, 34.280090, 40.601913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441429, 34.209679, 40.740192>,  <33.220226, 34.167431, 40.823158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441429, 34.209679, 40.740192>,  <33.810104, 34.280090, 40.601913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441429, 34.209679, 40.740192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345977, 0.030111, 0.937760,
		-0.175486, 0.983924, 0.033150,
		-0.921686, -0.176032, 0.345699,
		33.164925, 34.156868, 40.843903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657894, 34.820118, 41.095684>,  <33.810104, 34.280090, 40.601913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657894, 34.820118, 41.095684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.408333, 34.526474, 41.202885>,  <33.258598, 34.350288, 41.267204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.408333, 34.526474, 41.202885>,  <33.657894, 34.820118, 41.095684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408333, 34.526474, 41.202885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082414, 0.279220, 0.956684,
		-0.777146, 0.618963, -0.113704,
		-0.623900, -0.734112, 0.268006,
		33.221161, 34.306240, 41.283287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.295803, 35.052536, 41.670097>,  <33.657894, 34.820118, 41.095684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.295803, 35.052536, 41.670097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204582, 34.663078, 41.668510>,  <33.149849, 34.429405, 41.667561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204582, 34.663078, 41.668510>,  <33.295803, 35.052536, 41.670097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204582, 34.663078, 41.668510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001744, -0.003664, 0.999992,
		-0.973648, 0.228057, -0.000862,
		-0.228052, -0.973641, -0.003965,
		33.136166, 34.370987, 41.667320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.732254, 34.935947, 42.169689>,  <33.295803, 35.052536, 41.670097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.732254, 34.935947, 42.169689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.913612, 34.581902, 42.127705>,  <33.022427, 34.369476, 42.102516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.913612, 34.581902, 42.127705>,  <32.732254, 34.935947, 42.169689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913612, 34.581902, 42.127705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007834, -0.121710, 0.992535,
		-0.891277, -0.449184, -0.062116,
		0.453391, -0.885110, -0.104958,
		33.049629, 34.316368, 42.096218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.299896, 34.438972, 42.471985>,  <32.732254, 34.935947, 42.169689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.299896, 34.438972, 42.471985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673851, 34.297001, 42.470306>,  <32.898224, 34.211819, 42.469299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673851, 34.297001, 42.470306>,  <32.299896, 34.438972, 42.471985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.673851, 34.297001, 42.470306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002159, -0.006143, 0.999979,
		-0.354948, -0.934873, -0.004977,
		0.934884, -0.354930, -0.004199,
		32.954315, 34.190521, 42.469048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347557, 34.053009, 43.029224>,  <32.299896, 34.438972, 42.471985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347557, 34.053009, 43.029224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746235, 34.048428, 42.997040>,  <32.985439, 34.045681, 42.977730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746235, 34.048428, 42.997040>,  <32.347557, 34.053009, 43.029224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746235, 34.048428, 42.997040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079583, -0.063111, 0.994828,
		-0.016468, -0.997941, -0.061991,
		0.996692, -0.011450, -0.080458,
		33.045242, 34.044991, 42.972900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583256, 33.428806, 43.420116>,  <32.347557, 34.053009, 43.029224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.583256, 33.428806, 43.420116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896526, 33.674450, 43.381126>,  <33.084488, 33.821838, 43.357735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896526, 33.674450, 43.381126>,  <32.583256, 33.428806, 43.420116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896526, 33.674450, 43.381126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118298, 0.006736, 0.992955,
		0.610444, -0.789189, -0.067373,
		0.783175, 0.614114, -0.097472,
		33.131477, 33.858685, 43.351887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.082050, 33.124111, 43.838688>,  <32.583256, 33.428806, 43.420116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.082050, 33.124111, 43.838688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183182, 33.504276, 43.766247>,  <33.243858, 33.732376, 43.722782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183182, 33.504276, 43.766247>,  <33.082050, 33.124111, 43.838688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183182, 33.504276, 43.766247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325011, 0.092877, 0.941139,
		0.911288, -0.296805, -0.285412,
		0.252826, 0.950411, -0.181103,
		33.259029, 33.789398, 43.711914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871181, 33.161694, 43.808945>,  <33.082050, 33.124111, 43.838688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871181, 33.161694, 43.808945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743614, 33.524250, 43.919762>,  <33.667076, 33.741783, 43.986252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743614, 33.524250, 43.919762>,  <33.871181, 33.161694, 43.808945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743614, 33.524250, 43.919762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533520, -0.069917, 0.842893,
		0.783358, 0.416621, -0.461278,
		-0.318916, 0.906387, 0.277046,
		33.647938, 33.796165, 44.002876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457371, 33.480877, 43.975876>,  <33.871181, 33.161694, 43.808945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457371, 33.480877, 43.975876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153191, 33.672043, 44.151745>,  <33.970684, 33.786743, 44.257267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153191, 33.672043, 44.151745>,  <34.457371, 33.480877, 43.975876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153191, 33.672043, 44.151745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475796, -0.050760, 0.878090,
		0.441974, 0.876936, -0.188791,
		-0.760446, 0.477919, 0.439677,
		33.925056, 33.815418, 44.283649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749157, 33.990746, 44.477142>,  <34.457371, 33.480877, 43.975876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749157, 33.990746, 44.477142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373085, 33.941051, 44.604034>,  <34.147442, 33.911236, 44.680172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373085, 33.941051, 44.604034>,  <34.749157, 33.990746, 44.477142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373085, 33.941051, 44.604034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320357, -0.005492, 0.947281,
		-0.115941, 0.992238, 0.044962,
		-0.940175, -0.124232, 0.317233,
		34.091034, 33.903782, 44.699203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557510, 34.500660, 45.008049>,  <34.749157, 33.990746, 44.477142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557510, 34.500660, 45.008049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.288086, 34.216496, 45.089661>,  <34.126431, 34.045998, 45.138630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.288086, 34.216496, 45.089661>,  <34.557510, 34.500660, 45.008049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288086, 34.216496, 45.089661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210355, 0.080381, 0.974315,
		-0.708566, 0.699180, 0.095297,
		-0.673562, -0.710412, 0.204031,
		34.086018, 34.003372, 45.150871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206543, 34.744068, 45.662670>,  <34.557510, 34.500660, 45.008049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206543, 34.744068, 45.662670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157101, 34.349239, 45.621864>,  <34.127434, 34.112343, 45.597382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157101, 34.349239, 45.621864>,  <34.206543, 34.744068, 45.662670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157101, 34.349239, 45.621864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350225, -0.139579, 0.926207,
		-0.928474, 0.078756, 0.362951,
		-0.123605, -0.987074, -0.102013,
		34.120018, 34.053116, 45.591259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158558, 34.553062, 46.302216>,  <34.206543, 34.744068, 45.662670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158558, 34.553062, 46.302216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.194855, 34.194454, 46.128777>,  <34.216633, 33.979290, 46.024712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.194855, 34.194454, 46.128777>,  <34.158558, 34.553062, 46.302216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.194855, 34.194454, 46.128777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421925, -0.359777, 0.832189,
		-0.902078, -0.258464, 0.345618,
		0.090746, -0.896524, -0.433600,
		34.222080, 33.925495, 45.998695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749729, 33.981384, 46.539215>,  <34.158558, 34.553062, 46.302216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749729, 33.981384, 46.539215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.066216, 33.786339, 46.391590>,  <34.256107, 33.669312, 46.303013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.066216, 33.786339, 46.391590>,  <33.749729, 33.981384, 46.539215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066216, 33.786339, 46.391590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100140, -0.492050, 0.864788,
		-0.603287, -0.721190, -0.340486,
		0.791212, -0.487619, -0.369067,
		34.303581, 33.640053, 46.280869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653366, 33.321495, 46.836685>,  <33.749729, 33.981384, 46.539215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653366, 33.321495, 46.836685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.033241, 33.315556, 46.711552>,  <34.261166, 33.311993, 46.636471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.033241, 33.315556, 46.711552>,  <33.653366, 33.321495, 46.836685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033241, 33.315556, 46.711552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214451, -0.697137, 0.684113,
		-0.228249, -0.716784, -0.658880,
		0.949691, -0.014850, -0.312836,
		34.318150, 33.311100, 46.617702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.781853, 32.648869, 46.711838>,  <33.653366, 33.321495, 46.836685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.781853, 32.648869, 46.711838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152042, 32.798119, 46.737984>,  <34.374157, 32.887669, 46.753670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152042, 32.798119, 46.737984>,  <33.781853, 32.648869, 46.711838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152042, 32.798119, 46.737984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209923, -0.648815, 0.731417,
		0.315315, -0.663189, -0.678791,
		0.925478, 0.373121, 0.065362,
		34.429688, 32.910053, 46.757591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123169, 32.114887, 46.914139>,  <33.781853, 32.648869, 46.711838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123169, 32.114887, 46.914139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.403992, 32.392109, 46.979614>,  <34.572483, 32.558441, 47.018902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.403992, 32.392109, 46.979614>,  <34.123169, 32.114887, 46.914139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403992, 32.392109, 46.979614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297636, -0.494393, 0.816693,
		0.646941, -0.524643, -0.553369,
		0.702054, 0.693055, 0.163691,
		34.614609, 32.600025, 47.028721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715885, 31.774879, 47.190838>,  <34.123169, 32.114887, 46.914139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715885, 31.774879, 47.190838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792267, 32.154438, 47.291344>,  <34.838097, 32.382172, 47.351646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792267, 32.154438, 47.291344>,  <34.715885, 31.774879, 47.190838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792267, 32.154438, 47.291344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386207, -0.307957, 0.869486,
		0.902430, -0.068992, -0.425276,
		0.190954, 0.948896, 0.251265,
		34.849552, 32.439106, 47.366722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409676, 31.766521, 47.415901>,  <34.715885, 31.774879, 47.190838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409676, 31.766521, 47.415901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184597, 32.053333, 47.580460>,  <35.049549, 32.225422, 47.679195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184597, 32.053333, 47.580460>,  <35.409676, 31.766521, 47.415901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184597, 32.053333, 47.580460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246598, -0.329403, 0.911418,
		0.789029, 0.614297, 0.008534,
		-0.562692, 0.717031, 0.411393,
		35.015789, 32.268444, 47.703876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102200, 32.162029, 47.419525>,  <35.409676, 31.766521, 47.415901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102200, 32.162029, 47.419525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477879, 32.227386, 47.298717>,  <36.703285, 32.266602, 47.226234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477879, 32.227386, 47.298717>,  <36.102200, 32.162029, 47.419525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477879, 32.227386, 47.298717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294872, -0.066939, -0.953189,
		-0.175958, 0.984288, -0.014690,
		0.939196, 0.163389, -0.302017,
		36.759636, 32.276402, 47.208111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027786, 32.611305, 46.814217>,  <36.102200, 32.162029, 47.419525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027786, 32.611305, 46.814217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401150, 32.475681, 46.767242>,  <36.625168, 32.394306, 46.739056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401150, 32.475681, 46.767242>,  <36.027786, 32.611305, 46.814217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401150, 32.475681, 46.767242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164128, -0.112383, -0.980016,
		0.319088, 0.934028, -0.160548,
		0.933405, -0.339062, -0.117440,
		36.681171, 32.373962, 46.732010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461571, 33.018681, 46.317032>,  <36.027786, 32.611305, 46.814217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461571, 33.018681, 46.317032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.639099, 32.661201, 46.343346>,  <36.745617, 32.446712, 46.359135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.639099, 32.661201, 46.343346>,  <36.461571, 33.018681, 46.317032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639099, 32.661201, 46.343346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111365, -0.017831, -0.993620,
		0.889170, 0.448312, 0.091613,
		0.443818, -0.893699, 0.065781,
		36.772243, 32.393093, 46.363079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107578, 33.096695, 45.977356>,  <36.461571, 33.018681, 46.317032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107578, 33.096695, 45.977356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010479, 32.708820, 45.966114>,  <36.952221, 32.476097, 45.959370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010479, 32.708820, 45.966114>,  <37.107578, 33.096695, 45.977356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010479, 32.708820, 45.966114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318244, -0.052230, -0.946569,
		0.916403, -0.238723, 0.321274,
		-0.242748, -0.969682, -0.028108,
		36.937653, 32.417915, 45.957680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598839, 32.936440, 45.563869>,  <37.107578, 33.096695, 45.977356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.598839, 32.936440, 45.563869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329842, 32.640999, 45.582726>,  <37.168442, 32.463734, 45.594040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329842, 32.640999, 45.582726>,  <37.598839, 32.936440, 45.563869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329842, 32.640999, 45.582726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013762, -0.051199, -0.998593,
		0.739976, -0.672195, 0.024266,
		-0.672493, -0.738601, 0.047137,
		37.128094, 32.419418, 45.596867>
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
