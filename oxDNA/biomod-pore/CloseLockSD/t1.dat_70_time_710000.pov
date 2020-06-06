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
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<4.532836, 14.938544, 14.808702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.193252, 15.075970, 14.969314>,  <3.989501, 15.158425, 15.065681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.193252, 15.075970, 14.969314>,  <4.532836, 14.938544, 14.808702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.193252, 15.075970, 14.969314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497664, 0.775344, 0.388807,
		-0.177744, 0.529910, -0.829218,
		-0.848963, 0.343564, 0.401530,
		3.938563, 15.179039, 15.089772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.539238, 15.622564, 14.647790>,  <4.532836, 14.938544, 14.808702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.539238, 15.622564, 14.647790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.306968, 15.585578, 14.971336>,  <4.167605, 15.563386, 15.165464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.306968, 15.585578, 14.971336>,  <4.539238, 15.622564, 14.647790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.306968, 15.585578, 14.971336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467454, 0.775569, 0.424239,
		-0.666560, 0.624453, -0.407131,
		-0.580676, -0.092466, 0.808867,
		4.132765, 15.557838, 15.213996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.069206, 16.195457, 14.851563>,  <4.539238, 15.622564, 14.647790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.069206, 16.195457, 14.851563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.217041, 16.007069, 15.171961>,  <4.305742, 15.894034, 15.364199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.217041, 16.007069, 15.171961>,  <4.069206, 16.195457, 14.851563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.217041, 16.007069, 15.171961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414303, 0.855123, 0.311638,
		-0.831720, 0.216676, 0.511168,
		0.369587, -0.470974, 0.800992,
		4.327917, 15.865776, 15.412258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.940673, 16.524912, 15.538909>,  <4.069206, 16.195457, 14.851563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.940673, 16.524912, 15.538909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.285279, 16.324492, 15.571748>,  <4.492043, 16.204239, 15.591451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.285279, 16.324492, 15.571748>,  <3.940673, 16.524912, 15.538909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.285279, 16.324492, 15.571748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401878, 0.771747, 0.492850,
		-0.310301, -0.391604, 0.866233,
		0.861515, -0.501051, 0.082097,
		4.543733, 16.174175, 15.596376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.092373, 16.592806, 16.218639>,  <3.940673, 16.524912, 15.538909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.092373, 16.592806, 16.218639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.427735, 16.539289, 16.007292>,  <4.628953, 16.507179, 15.880483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.427735, 16.539289, 16.007292>,  <4.092373, 16.592806, 16.218639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.427735, 16.539289, 16.007292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445812, 0.726041, 0.523561,
		0.313571, -0.674511, 0.668363,
		0.838406, -0.133791, -0.528370,
		4.679257, 16.499153, 15.848781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.778934, 16.301304, 16.603165>,  <4.092373, 16.592806, 16.218639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.778934, 16.301304, 16.603165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.885886, 16.520819, 16.286346>,  <4.950057, 16.652529, 16.096254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.885886, 16.520819, 16.286346>,  <4.778934, 16.301304, 16.603165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.885886, 16.520819, 16.286346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450188, 0.655606, 0.606227,
		0.851962, -0.518663, -0.071763,
		0.267380, 0.548789, -0.792047,
		4.966100, 16.685455, 16.048733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.503201, 16.415066, 16.677507>,  <4.778934, 16.301304, 16.603165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.503201, 16.415066, 16.677507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.370068, 16.695997, 16.425806>,  <5.290189, 16.864555, 16.274786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.370068, 16.695997, 16.425806>,  <5.503201, 16.415066, 16.677507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.370068, 16.695997, 16.425806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540523, 0.688883, 0.482986,
		0.772695, -0.179372, -0.608907,
		-0.332831, 0.702329, -0.629251,
		5.270219, 16.906696, 16.237030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.119688, 16.894266, 16.497746>,  <5.503201, 16.415066, 16.677507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.119688, 16.894266, 16.497746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.780084, 17.084965, 16.406626>,  <5.576321, 17.199385, 16.351954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.780084, 17.084965, 16.406626>,  <6.119688, 16.894266, 16.497746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.780084, 17.084965, 16.406626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325344, 0.811402, 0.485570,
		0.416333, 0.338140, -0.843996,
		-0.849010, 0.476748, -0.227802,
		5.525381, 17.227989, 16.338285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.455204, 17.559847, 16.423195>,  <6.119688, 16.894266, 16.497746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.455204, 17.559847, 16.423195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.063632, 17.610205, 16.487503>,  <5.828689, 17.640419, 16.526087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.063632, 17.610205, 16.487503>,  <6.455204, 17.559847, 16.423195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.063632, 17.610205, 16.487503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197696, 0.781392, 0.591898,
		-0.051108, 0.611210, -0.789816,
		-0.978930, 0.125893, 0.160770,
		5.769953, 17.647972, 16.535734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.380913, 18.264894, 16.379860>,  <6.455204, 17.559847, 16.423195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.380913, 18.264894, 16.379860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.063637, 18.134682, 16.585724>,  <5.873271, 18.056555, 16.709242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.063637, 18.134682, 16.585724>,  <6.380913, 18.264894, 16.379860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.063637, 18.134682, 16.585724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089116, 0.773984, 0.626903,
		-0.602417, 0.543118, -0.584907,
		-0.793191, -0.325532, 0.514661,
		5.825679, 18.037022, 16.740122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.913080, 18.838482, 16.362488>,  <6.380913, 18.264894, 16.379860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.913080, 18.838482, 16.362488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.850352, 18.585638, 16.666027>,  <5.812715, 18.433931, 16.848150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.850352, 18.585638, 16.666027>,  <5.913080, 18.838482, 16.362488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.850352, 18.585638, 16.666027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045515, 0.762911, 0.644899,
		-0.986578, 0.135672, -0.090869,
		-0.156820, -0.632107, 0.758846,
		5.803306, 18.396006, 16.893681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.653820, 19.263832, 16.887173>,  <5.913080, 18.838482, 16.362488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.653820, 19.263832, 16.887173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.711883, 18.948854, 17.126793>,  <5.746721, 18.759869, 17.270565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.711883, 18.948854, 17.126793>,  <5.653820, 19.263832, 16.887173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.711883, 18.948854, 17.126793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193436, 0.616367, 0.763331,
		-0.970315, 0.005075, 0.241790,
		0.145158, -0.787443, 0.599052,
		5.755431, 18.712622, 17.306509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.343349, 19.468224, 17.562262>,  <5.653820, 19.263832, 16.887173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.343349, 19.468224, 17.562262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.617015, 19.190678, 17.652124>,  <5.781214, 19.024151, 17.706043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.617015, 19.190678, 17.652124>,  <5.343349, 19.468224, 17.562262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.617015, 19.190678, 17.652124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224517, 0.493449, 0.840298,
		-0.693910, -0.524462, 0.493385,
		0.684165, -0.693865, 0.224658,
		5.822264, 18.982519, 17.719522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.187680, 19.352091, 18.327011>,  <5.343349, 19.468224, 17.562262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.187680, 19.352091, 18.327011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.552275, 19.216606, 18.233664>,  <5.771032, 19.135315, 18.177654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.552275, 19.216606, 18.233664>,  <5.187680, 19.352091, 18.327011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.552275, 19.216606, 18.233664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376683, 0.459467, 0.804363,
		-0.165223, -0.821074, 0.546387,
		0.911488, -0.338714, -0.233370,
		5.825722, 19.114992, 18.163652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.536915, 19.200253, 18.966492>,  <5.187680, 19.352091, 18.327011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.536915, 19.200253, 18.966492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.843474, 19.233389, 18.711691>,  <6.027410, 19.253271, 18.558811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.843474, 19.233389, 18.711691>,  <5.536915, 19.200253, 18.966492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.843474, 19.233389, 18.711691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445192, 0.646371, 0.619685,
		0.463075, -0.758513, 0.458497,
		0.766398, 0.082841, -0.637002,
		6.073394, 19.258242, 18.520590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.077048, 19.490578, 19.337643>,  <5.536915, 19.200253, 18.966492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.077048, 19.490578, 19.337643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.245981, 19.548489, 18.979721>,  <6.347340, 19.583235, 18.764967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.245981, 19.548489, 18.979721>,  <6.077048, 19.490578, 19.337643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.245981, 19.548489, 18.979721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354835, 0.881977, 0.310175,
		0.834103, -0.448505, 0.321116,
		0.422332, 0.144775, -0.894805,
		6.372680, 19.591921, 18.711279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.714658, 19.809778, 19.444035>,  <6.077048, 19.490578, 19.337643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.714658, 19.809778, 19.444035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.652350, 19.914434, 19.063030>,  <6.614965, 19.977228, 18.834427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.652350, 19.914434, 19.063030>,  <6.714658, 19.809778, 19.444035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.652350, 19.914434, 19.063030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269427, 0.938975, 0.213859,
		0.950339, -0.223319, -0.216757,
		-0.155771, 0.261639, -0.952513,
		6.605619, 19.992926, 18.777277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.312907, 20.113508, 19.203356>,  <6.714658, 19.809778, 19.444035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.312907, 20.113508, 19.203356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.025836, 20.251608, 18.961449>,  <6.853593, 20.334467, 18.816305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.025836, 20.251608, 18.961449>,  <7.312907, 20.113508, 19.203356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.025836, 20.251608, 18.961449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440809, 0.897537, -0.010726,
		0.539097, -0.274285, -0.796330,
		-0.717678, 0.345247, -0.604767,
		6.810533, 20.355183, 18.780018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.518962, 20.539738, 18.641489>,  <7.312907, 20.113508, 19.203356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.518962, 20.539738, 18.641489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.145144, 20.678249, 18.674273>,  <6.920854, 20.761356, 18.693943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.145144, 20.678249, 18.674273>,  <7.518962, 20.539738, 18.641489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.145144, 20.678249, 18.674273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319539, 0.917988, -0.234933,
		-0.156590, -0.193366, -0.968550,
		-0.934545, 0.346278, 0.081959,
		6.864781, 20.782133, 18.698860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.490696, 21.206987, 18.186760>,  <7.518962, 20.539738, 18.641489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.490696, 21.206987, 18.186760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.146809, 21.225519, 18.390224>,  <6.940476, 21.236639, 18.512302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.146809, 21.225519, 18.390224>,  <7.490696, 21.206987, 18.186760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.146809, 21.225519, 18.390224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021330, 0.998266, -0.054870,
		-0.510321, -0.036323, -0.859216,
		-0.859719, 0.046329, 0.508662,
		6.888893, 21.239418, 18.542824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.060839, 21.677235, 17.799149>,  <7.490696, 21.206987, 18.186760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.060839, 21.677235, 17.799149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.923944, 21.664536, 18.174780>,  <6.841806, 21.656916, 18.400158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.923944, 21.664536, 18.174780>,  <7.060839, 21.677235, 17.799149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.923944, 21.664536, 18.174780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156509, 0.983541, 0.090289,
		-0.926487, 0.177875, -0.331636,
		-0.342237, -0.031747, 0.939077,
		6.821272, 21.655012, 18.456503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.517280, 22.229637, 17.897005>,  <7.060839, 21.677235, 17.799149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.517280, 22.229637, 17.897005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.637605, 22.147684, 18.269571>,  <6.709799, 22.098513, 18.493111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.637605, 22.147684, 18.269571>,  <6.517280, 22.229637, 17.897005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.637605, 22.147684, 18.269571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044309, 0.978598, 0.200954,
		-0.952654, -0.019179, 0.303451,
		0.300811, -0.204885, 0.931415,
		6.727848, 22.086218, 18.548996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.087514, 22.619856, 18.451233>,  <6.517280, 22.229637, 17.897005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.087514, 22.619856, 18.451233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.445539, 22.551910, 18.616163>,  <6.660353, 22.511143, 18.715120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.445539, 22.551910, 18.616163>,  <6.087514, 22.619856, 18.451233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.445539, 22.551910, 18.616163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076636, 0.969448, 0.233019,
		-0.439308, -0.176968, 0.880733,
		0.895062, -0.169863, 0.412324,
		6.714057, 22.500952, 18.739861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.098706, 23.123798, 18.958540>,  <6.087514, 22.619856, 18.451233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.098706, 23.123798, 18.958540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.465891, 22.988274, 18.876024>,  <6.686202, 22.906960, 18.826515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.465891, 22.988274, 18.876024>,  <6.098706, 23.123798, 18.958540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.465891, 22.988274, 18.876024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351581, 0.935750, 0.027611,
		0.183680, -0.097873, 0.978102,
		0.917961, -0.338810, -0.206289,
		6.741279, 22.886631, 18.814138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.528932, 23.652353, 19.296160>,  <6.098706, 23.123798, 18.958540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.528932, 23.652353, 19.296160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.762131, 23.450830, 19.041197>,  <6.902051, 23.329916, 18.888218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.762131, 23.450830, 19.041197>,  <6.528932, 23.652353, 19.296160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.762131, 23.450830, 19.041197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627120, 0.777832, -0.041209,
		0.516558, -0.375706, 0.769424,
		0.582999, -0.503808, -0.637408,
		6.937031, 23.299688, 18.849974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.195064, 23.736082, 19.544933>,  <6.528932, 23.652353, 19.296160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.195064, 23.736082, 19.544933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.274865, 23.602358, 19.176491>,  <7.322745, 23.522123, 18.955425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.274865, 23.602358, 19.176491>,  <7.195064, 23.736082, 19.544933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.274865, 23.602358, 19.176491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653689, 0.745677, -0.129058,
		0.729992, -0.576369, 0.367301,
		0.199503, -0.334312, -0.921105,
		7.334716, 23.502064, 18.900160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.914633, 23.764359, 19.581091>,  <7.195064, 23.736082, 19.544933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.914633, 23.764359, 19.581091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.758007, 23.786871, 19.213720>,  <7.664031, 23.800379, 18.993298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.758007, 23.786871, 19.213720>,  <7.914633, 23.764359, 19.581091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.758007, 23.786871, 19.213720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810150, 0.494329, -0.315111,
		0.436271, -0.867451, -0.239158,
		-0.391566, 0.056280, -0.918427,
		7.640537, 23.803755, 18.938192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.428432, 23.703863, 19.267498>,  <7.914633, 23.764359, 19.581091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.428432, 23.703863, 19.267498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.173060, 23.842718, 18.992718>,  <8.019837, 23.926031, 18.827848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.173060, 23.842718, 18.992718>,  <8.428432, 23.703863, 19.267498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.173060, 23.842718, 18.992718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749148, 0.485038, -0.451126,
		0.176594, -0.802641, -0.569721,
		-0.638429, 0.347139, -0.686952,
		7.981532, 23.946859, 18.786633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.907670, 24.302822, 19.065945>,  <8.428432, 23.703863, 19.267498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.907670, 24.302822, 19.065945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.827840, 24.447186, 18.701546>,  <8.779942, 24.533804, 18.482906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.827840, 24.447186, 18.701546>,  <8.907670, 24.302822, 19.065945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.827840, 24.447186, 18.701546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378149, 0.886048, 0.268182,
		0.903976, -0.290970, -0.313312,
		-0.199576, 0.360908, -0.910996,
		8.767967, 24.555458, 18.428247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.454148, 24.811106, 18.772358>,  <8.907670, 24.302822, 19.065945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.454148, 24.811106, 18.772358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.151480, 24.922333, 18.535671>,  <8.969878, 24.989069, 18.393660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.151480, 24.922333, 18.535671>,  <9.454148, 24.811106, 18.772358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.151480, 24.922333, 18.535671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443572, 0.883226, -0.152172,
		0.480305, -0.377613, -0.791654,
		-0.756672, 0.278066, -0.591716,
		8.924479, 25.005753, 18.358156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.720790, 25.023838, 18.194368>,  <9.454148, 24.811106, 18.772358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.720790, 25.023838, 18.194368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.374748, 25.214540, 18.256720>,  <9.167123, 25.328962, 18.294130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.374748, 25.214540, 18.256720>,  <9.720790, 25.023838, 18.194368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.374748, 25.214540, 18.256720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491935, 0.867126, 0.078050,
		-0.097953, 0.144203, -0.984688,
		-0.865104, 0.476757, 0.155876,
		9.115217, 25.357567, 18.303482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.998025, 25.674692, 17.989571>,  <9.720790, 25.023838, 18.194368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.998025, 25.674692, 17.989571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.641392, 25.705065, 18.168150>,  <9.427412, 25.723288, 18.275297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.641392, 25.705065, 18.168150>,  <9.998025, 25.674692, 17.989571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.641392, 25.705065, 18.168150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241727, 0.913448, 0.327384,
		-0.382947, 0.399808, -0.832769,
		-0.891583, 0.075932, 0.446447,
		9.373917, 25.727844, 18.302084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.193389, 25.266409, 17.397688>,  <9.998025, 25.674692, 17.989571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.193389, 25.266409, 17.397688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.324983, 25.121164, 17.746382>,  <10.403939, 25.034018, 17.955597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.324983, 25.121164, 17.746382>,  <10.193389, 25.266409, 17.397688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.324983, 25.121164, 17.746382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394356, -0.891600, -0.222560,
		0.858051, -0.270555, -0.436518,
		0.328985, -0.363111, 0.871733,
		10.423678, 25.012232, 18.007902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.620283, 24.710314, 17.303957>,  <10.193389, 25.266409, 17.397688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.620283, 24.710314, 17.303957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.445696, 24.663942, 17.660845>,  <10.340943, 24.636120, 17.874977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.445696, 24.663942, 17.660845>,  <10.620283, 24.710314, 17.303957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.445696, 24.663942, 17.660845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223729, -0.946531, -0.232432,
		0.871459, -0.301065, 0.387194,
		-0.436468, -0.115928, 0.892220,
		10.314755, 24.629164, 17.928511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.935068, 24.096952, 17.671505>,  <10.620283, 24.710314, 17.303957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.935068, 24.096952, 17.671505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.569437, 24.149914, 17.824831>,  <10.350059, 24.181690, 17.916826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.569437, 24.149914, 17.824831>,  <10.935068, 24.096952, 17.671505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.569437, 24.149914, 17.824831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219855, -0.956039, -0.194046,
		0.340770, -0.261646, 0.903004,
		-0.914079, 0.132405, 0.383313,
		10.295214, 24.189634, 17.939825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.738276, 23.458902, 17.934647>,  <10.935068, 24.096952, 17.671505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.738276, 23.458902, 17.934647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.394760, 23.655499, 17.876799>,  <10.188650, 23.773457, 17.842089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.394760, 23.655499, 17.876799>,  <10.738276, 23.458902, 17.934647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.394760, 23.655499, 17.876799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405040, -0.824193, -0.395788,
		-0.313722, -0.281321, 0.906883,
		-0.858790, 0.491491, -0.144622,
		10.137123, 23.802946, 17.833412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.147491, 23.050716, 18.167892>,  <10.738276, 23.458902, 17.934647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.147491, 23.050716, 18.167892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.979725, 23.303928, 17.907627>,  <9.879066, 23.455854, 17.751467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.979725, 23.303928, 17.907627>,  <10.147491, 23.050716, 18.167892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.979725, 23.303928, 17.907627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506929, -0.757911, -0.410602,
		-0.753067, 0.157625, 0.638784,
		-0.419421, 0.633028, -0.650663,
		9.853900, 23.493837, 17.712427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.379001, 22.823288, 18.121847>,  <10.147491, 23.050716, 18.167892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.379001, 22.823288, 18.121847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.427306, 23.045582, 17.792830>,  <9.456289, 23.178957, 17.595419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.427306, 23.045582, 17.792830>,  <9.379001, 22.823288, 18.121847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.427306, 23.045582, 17.792830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646933, -0.584417, -0.489830,
		-0.752923, 0.591285, 0.288945,
		0.120765, 0.555733, -0.822543,
		9.463535, 23.212301, 17.546066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.643083, 22.943945, 17.882198>,  <9.379001, 22.823288, 18.121847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.643083, 22.943945, 17.882198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.893296, 23.004084, 17.575970>,  <9.043425, 23.040167, 17.392233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.893296, 23.004084, 17.575970>,  <8.643083, 22.943945, 17.882198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.893296, 23.004084, 17.575970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404086, -0.776957, -0.482755,
		-0.667399, 0.611337, -0.425260,
		0.625535, 0.150349, -0.765573,
		9.080956, 23.049189, 17.346298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.299579, 22.888021, 17.308935>,  <8.643083, 22.943945, 17.882198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.299579, 22.888021, 17.308935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.664809, 22.828695, 17.156990>,  <8.883947, 22.793100, 17.065823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.664809, 22.828695, 17.156990>,  <8.299579, 22.888021, 17.308935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.664809, 22.828695, 17.156990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348205, -0.768387, -0.536968,
		-0.212243, 0.622563, -0.753239,
		0.913075, -0.148314, -0.379864,
		8.938732, 22.784201, 17.043032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.136105, 22.824408, 16.657055>,  <8.299579, 22.888021, 17.308935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.136105, 22.824408, 16.657055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.493020, 22.648308, 16.697052>,  <8.707170, 22.542648, 16.721050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.493020, 22.648308, 16.697052>,  <8.136105, 22.824408, 16.657055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.493020, 22.648308, 16.697052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327532, -0.783701, -0.527765,
		0.310713, 0.438168, -0.843484,
		0.892289, -0.440252, 0.099992,
		8.760707, 22.516232, 16.727049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.253685, 22.420044, 16.008741>,  <8.136105, 22.824408, 16.657055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.253685, 22.420044, 16.008741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.507118, 22.279270, 16.284340>,  <8.659179, 22.194805, 16.449699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.507118, 22.279270, 16.284340>,  <8.253685, 22.420044, 16.008741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.507118, 22.279270, 16.284340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166775, -0.931739, -0.322565,
		0.755485, 0.089465, -0.649029,
		0.633584, -0.351935, 0.688994,
		8.697193, 22.173689, 16.491037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.676678, 21.999300, 15.606969>,  <8.253685, 22.420044, 16.008741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.676678, 21.999300, 15.606969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.705658, 21.878170, 15.987084>,  <8.723046, 21.805492, 16.215153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.705658, 21.878170, 15.987084>,  <8.676678, 21.999300, 15.606969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.705658, 21.878170, 15.987084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055265, -0.952547, -0.299333,
		0.995840, -0.030831, -0.085748,
		0.072450, -0.302826, 0.950288,
		8.727393, 21.787323, 16.272171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.120810, 21.394636, 15.595754>,  <8.676678, 21.999300, 15.606969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.120810, 21.394636, 15.595754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.908230, 21.373192, 15.933910>,  <8.780682, 21.360325, 16.136805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.908230, 21.373192, 15.933910>,  <9.120810, 21.394636, 15.595754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.908230, 21.373192, 15.933910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145182, -0.977464, -0.153251,
		0.834556, -0.204181, 0.511690,
		-0.531449, -0.053609, 0.845392,
		8.748795, 21.357109, 16.187529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.169487, 20.712656, 15.753095>,  <9.120810, 21.394636, 15.595754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.169487, 20.712656, 15.753095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.868620, 20.801495, 16.001261>,  <8.688100, 20.854797, 16.150160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.868620, 20.801495, 16.001261>,  <9.169487, 20.712656, 15.753095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.868620, 20.801495, 16.001261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397666, -0.903719, -0.158601,
		0.525456, -0.366013, 0.768069,
		-0.752168, 0.222097, 0.620416,
		8.642969, 20.868124, 16.187386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.156837, 20.259113, 16.440325>,  <9.169487, 20.712656, 15.753095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.156837, 20.259113, 16.440325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.780524, 20.379541, 16.377995>,  <8.554736, 20.451799, 16.340595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.780524, 20.379541, 16.377995>,  <9.156837, 20.259113, 16.440325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.780524, 20.379541, 16.377995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259017, -0.934918, -0.242564,
		-0.218715, -0.187838, 0.957539,
		-0.940783, 0.301072, -0.155827,
		8.498289, 20.469862, 16.331245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.860792, 19.838474, 16.810930>,  <9.156837, 20.259113, 16.440325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.860792, 19.838474, 16.810930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.560013, 19.973730, 16.584574>,  <8.379545, 20.054884, 16.448761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.560013, 19.973730, 16.584574>,  <8.860792, 19.838474, 16.810930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.560013, 19.973730, 16.584574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373591, -0.925852, -0.056810,
		-0.543141, 0.168693, 0.822521,
		-0.751950, 0.338142, -0.565891,
		8.334428, 20.075172, 16.414806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.290889, 19.503672, 17.054829>,  <8.860792, 19.838474, 16.810930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.290889, 19.503672, 17.054829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.174251, 19.631472, 16.694187>,  <8.104268, 19.708151, 16.477802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.174251, 19.631472, 16.694187>,  <8.290889, 19.503672, 17.054829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.174251, 19.631472, 16.694187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588864, -0.802745, -0.094019,
		-0.753798, 0.503507, 0.422219,
		-0.291595, 0.319500, -0.901605,
		8.086772, 19.727322, 16.423706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.665447, 19.283512, 17.055483>,  <8.290889, 19.503672, 17.054829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.665447, 19.283512, 17.055483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.753264, 19.333010, 16.668394>,  <7.805954, 19.362709, 16.436140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.753264, 19.333010, 16.668394>,  <7.665447, 19.283512, 17.055483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.753264, 19.333010, 16.668394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565420, -0.792210, -0.229574,
		-0.795049, 0.597571, -0.103956,
		0.219541, 0.123744, -0.967724,
		7.819126, 19.370132, 16.378077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.163962, 18.870310, 16.651949>,  <7.665447, 19.283512, 17.055483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.163962, 18.870310, 16.651949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.389860, 18.969690, 16.337158>,  <7.525399, 19.029320, 16.148283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.389860, 18.969690, 16.337158>,  <7.163962, 18.870310, 16.651949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.389860, 18.969690, 16.337158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388166, -0.761567, -0.518983,
		-0.728279, 0.598571, -0.333651,
		0.564745, 0.248452, -0.786978,
		7.559284, 19.044226, 16.101065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.695758, 18.992355, 16.001938>,  <7.163962, 18.870310, 16.651949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.695758, 18.992355, 16.001938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.063909, 18.881971, 15.891123>,  <7.284800, 18.815741, 15.824634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.063909, 18.881971, 15.891123>,  <6.695758, 18.992355, 16.001938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.063909, 18.881971, 15.891123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368688, -0.848473, -0.379689,
		-0.130279, 0.451597, -0.882659,
		0.920378, -0.275961, -0.277037,
		7.340023, 18.799183, 15.808012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.473429, 18.671122, 15.333676>,  <6.695758, 18.992355, 16.001938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.473429, 18.671122, 15.333676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.858143, 18.566076, 15.364661>,  <7.088972, 18.503050, 15.383252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.858143, 18.566076, 15.364661>,  <6.473429, 18.671122, 15.333676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.858143, 18.566076, 15.364661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166244, -0.784912, -0.596889,
		0.217551, 0.561202, -0.798576,
		0.961787, -0.262612, 0.077462,
		7.146679, 18.487293, 15.387899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.727957, 18.662128, 14.625206>,  <6.473429, 18.671122, 15.333676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.727957, 18.662128, 14.625206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.953371, 18.445248, 14.874507>,  <7.088620, 18.315119, 15.024088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.953371, 18.445248, 14.874507>,  <6.727957, 18.662128, 14.625206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.953371, 18.445248, 14.874507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204514, -0.822542, -0.530658,
		0.800376, 0.171581, -0.574420,
		0.563535, -0.542203, 0.623252,
		7.122432, 18.282587, 15.061482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.331022, 18.255232, 14.221006>,  <6.727957, 18.662128, 14.625206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.331022, 18.255232, 14.221006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.273160, 18.060589, 14.565631>,  <7.238442, 17.943804, 14.772406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.273160, 18.060589, 14.565631>,  <7.331022, 18.255232, 14.221006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.273160, 18.060589, 14.565631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058246, -0.865022, -0.498342,
		0.987766, -0.122271, 0.096789,
		-0.144657, -0.486608, 0.861561,
		7.229763, 17.914606, 14.824100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.637560, 17.680988, 14.106865>,  <7.331022, 18.255232, 14.221006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.637560, 17.680988, 14.106865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.389856, 17.605219, 14.411663>,  <7.241233, 17.559757, 14.594542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.389856, 17.605219, 14.411663>,  <7.637560, 17.680988, 14.106865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.389856, 17.605219, 14.411663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149900, -0.924093, -0.351542,
		0.770745, -0.331919, 0.543859,
		-0.619260, -0.189425, 0.761994,
		7.204078, 17.548391, 14.640262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.927330, 17.181017, 14.526870>,  <7.637560, 17.680988, 14.106865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.927330, 17.181017, 14.526870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.530773, 17.129450, 14.536001>,  <7.292839, 17.098511, 14.541480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.530773, 17.129450, 14.536001>,  <7.927330, 17.181017, 14.526870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.530773, 17.129450, 14.536001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092773, -0.814785, -0.572293,
		0.092378, -0.565249, 0.819731,
		-0.991393, -0.128916, 0.022828,
		7.233356, 17.090775, 14.542850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.891232, 16.473679, 14.666458>,  <7.927330, 17.181017, 14.526870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.891232, 16.473679, 14.666458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.541919, 16.598202, 14.516543>,  <7.332331, 16.672916, 14.426595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.541919, 16.598202, 14.516543>,  <7.891232, 16.473679, 14.666458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.541919, 16.598202, 14.516543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121304, -0.883946, -0.451581,
		-0.471872, -0.348895, 0.809697,
		-0.873282, 0.311308, -0.374787,
		7.279934, 16.691595, 14.404107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.286856, 16.159424, 15.035265>,  <7.891232, 16.473679, 14.666458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.286856, 16.159424, 15.035265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.280554, 16.269049, 14.650632>,  <7.276773, 16.334824, 14.419852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.280554, 16.269049, 14.650632>,  <7.286856, 16.159424, 15.035265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.280554, 16.269049, 14.650632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212431, -0.938829, -0.271060,
		-0.977049, -0.208540, -0.043431,
		-0.015753, 0.274065, -0.961582,
		7.275828, 16.351269, 14.362157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.606731, 15.645355, 15.348199>,  <7.286856, 16.159424, 15.035265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.606731, 15.645355, 15.348199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.578496, 15.247127, 15.323358>,  <7.561556, 15.008189, 15.308453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.578496, 15.247127, 15.323358>,  <7.606731, 15.645355, 15.348199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.578496, 15.247127, 15.323358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942736, -0.086927, 0.322012,
		-0.325984, -0.035817, 0.944696,
		-0.070586, -0.995571, -0.062103,
		7.557321, 14.948456, 15.304727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.715390, 15.463496, 16.023928>,  <7.606731, 15.645355, 15.348199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.715390, 15.463496, 16.023928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.830607, 15.217997, 15.729897>,  <7.899738, 15.070697, 15.553477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.830607, 15.217997, 15.729897>,  <7.715390, 15.463496, 16.023928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.830607, 15.217997, 15.729897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956727, 0.151348, 0.248529,
		-0.041282, -0.774858, 0.630786,
		0.288043, -0.613750, -0.735080,
		7.917020, 15.033872, 15.509373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.010391, 14.821522, 16.190754>,  <7.715390, 15.463496, 16.023928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.010391, 14.821522, 16.190754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.185717, 14.962329, 15.859944>,  <8.290912, 15.046813, 15.661459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.185717, 14.962329, 15.859944>,  <8.010391, 14.821522, 16.190754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.185717, 14.962329, 15.859944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876380, 0.036954, 0.480201,
		0.199601, -0.935263, -0.292305,
		0.438312, 0.352019, -0.827022,
		8.317210, 15.067935, 15.611837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.624599, 14.528952, 16.180868>,  <8.010391, 14.821522, 16.190754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.624599, 14.528952, 16.180868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.646315, 14.869608, 15.972344>,  <8.659344, 15.074001, 15.847230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.646315, 14.869608, 15.972344>,  <8.624599, 14.528952, 16.180868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.646315, 14.869608, 15.972344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785096, 0.286188, 0.549291,
		0.616990, -0.439097, -0.653083,
		0.054287, 0.851640, -0.521309,
		8.662601, 15.125100, 15.815951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.327894, 14.594041, 15.928481>,  <8.624599, 14.528952, 16.180868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.327894, 14.594041, 15.928481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.108974, 14.922623, 15.992573>,  <8.977621, 15.119772, 16.031027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.108974, 14.922623, 15.992573>,  <9.327894, 14.594041, 15.928481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.108974, 14.922623, 15.992573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745098, 0.391044, 0.540290,
		0.381167, 0.415088, -0.826084,
		-0.547303, 0.821454, 0.160228,
		8.944782, 15.169059, 16.040642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.937309, 15.024537, 16.077168>,  <9.327894, 14.594041, 15.928481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.937309, 15.024537, 16.077168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.541422, 15.029823, 16.134130>,  <9.303889, 15.032995, 16.168308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.541422, 15.029823, 16.134130>,  <9.937309, 15.024537, 16.077168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.541422, 15.029823, 16.134130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142947, -0.123404, -0.982007,
		0.004594, -0.992268, 0.124025,
		-0.989720, 0.013217, 0.142409,
		9.244506, 15.033788, 16.176853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.564642, 15.436388, 15.959731>,  <9.937309, 15.024537, 16.077168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.564642, 15.436388, 15.959731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.897978, 15.383117, 16.174322>,  <11.097980, 15.351154, 16.303078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.897978, 15.383117, 16.174322>,  <10.564642, 15.436388, 15.959731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.897978, 15.383117, 16.174322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471820, 0.334255, 0.815879,
		-0.287978, -0.933026, 0.215712,
		0.833340, -0.133178, 0.536478,
		11.147980, 15.343163, 16.335266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.380881, 15.134157, 16.618553>,  <10.564642, 15.436388, 15.959731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.380881, 15.134157, 16.618553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.737717, 15.306710, 16.672350>,  <10.951818, 15.410242, 16.704628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.737717, 15.306710, 16.672350>,  <10.380881, 15.134157, 16.618553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.737717, 15.306710, 16.672350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289464, 0.317029, 0.903163,
		0.346974, -0.844630, 0.407688,
		0.892087, 0.431385, 0.134489,
		11.005343, 15.436125, 16.712698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.468376, 15.076182, 17.254093>,  <10.380881, 15.134157, 16.618553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.468376, 15.076182, 17.254093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.767894, 15.337219, 17.207737>,  <10.947604, 15.493841, 17.179924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.767894, 15.337219, 17.207737>,  <10.468376, 15.076182, 17.254093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.767894, 15.337219, 17.207737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161551, 0.349275, 0.922989,
		0.642813, -0.672406, 0.366962,
		0.748794, 0.652592, -0.115891,
		10.992532, 15.532997, 17.172970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.605396, 15.282260, 17.990227>,  <10.468376, 15.076182, 17.254093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.605396, 15.282260, 17.990227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.855290, 15.523834, 17.792250>,  <11.005227, 15.668779, 17.673464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.855290, 15.523834, 17.792250>,  <10.605396, 15.282260, 17.990227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.855290, 15.523834, 17.792250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115075, 0.555729, 0.823361,
		0.772311, -0.571337, 0.277685,
		0.624734, 0.603936, -0.494942,
		11.042711, 15.705015, 17.643766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.351875, 15.200150, 18.226376>,  <10.605396, 15.282260, 17.990227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.351875, 15.200150, 18.226376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.226806, 15.548096, 18.073761>,  <11.151764, 15.756863, 17.982191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.226806, 15.548096, 18.073761>,  <11.351875, 15.200150, 18.226376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.226806, 15.548096, 18.073761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294971, 0.470740, 0.831502,
		0.902899, 0.147447, -0.403773,
		-0.312675, 0.869864, -0.381538,
		11.133003, 15.809055, 17.959299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.906574, 15.702898, 18.352730>,  <11.351875, 15.200150, 18.226376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.906574, 15.702898, 18.352730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.573707, 15.915292, 18.288792>,  <11.373986, 16.042728, 18.250429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.573707, 15.915292, 18.288792>,  <11.906574, 15.702898, 18.352730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.573707, 15.915292, 18.288792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240520, 0.605358, 0.758743,
		0.499646, 0.592956, -0.631472,
		-0.832168, 0.530985, -0.159847,
		11.324056, 16.074587, 18.240837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.108853, 16.498020, 18.426092>,  <11.906574, 15.702898, 18.352730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.108853, 16.498020, 18.426092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.716907, 16.455528, 18.493708>,  <11.481738, 16.430033, 18.534277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.716907, 16.455528, 18.493708>,  <12.108853, 16.498020, 18.426092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.716907, 16.455528, 18.493708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086141, 0.538872, 0.837972,
		-0.180108, 0.835663, -0.518872,
		-0.979868, -0.106229, 0.169040,
		11.422946, 16.423660, 18.544420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.942196, 17.122541, 18.609928>,  <12.108853, 16.498020, 18.426092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.942196, 17.122541, 18.609928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.627468, 16.909386, 18.734472>,  <11.438631, 16.781492, 18.809198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.627468, 16.909386, 18.734472>,  <11.942196, 17.122541, 18.609928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.627468, 16.909386, 18.734472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041933, 0.549478, 0.834455,
		-0.615757, 0.643509, -0.454686,
		-0.786820, -0.532888, 0.311360,
		11.391422, 16.749519, 18.827881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.410534, 17.590019, 18.866682>,  <11.942196, 17.122541, 18.609928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.410534, 17.590019, 18.866682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.352397, 17.234066, 19.039650>,  <11.317514, 17.020494, 19.143431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.352397, 17.234066, 19.039650>,  <11.410534, 17.590019, 18.866682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.352397, 17.234066, 19.039650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002517, 0.437393, 0.899267,
		-0.989378, 0.129613, -0.065812,
		-0.145343, -0.889881, 0.432421,
		11.308794, 16.967102, 19.169376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.891945, 17.767996, 19.444601>,  <11.410534, 17.590019, 18.866682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.891945, 17.767996, 19.444601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.042632, 17.405638, 19.521997>,  <11.133044, 17.188223, 19.568436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.042632, 17.405638, 19.521997>,  <10.891945, 17.767996, 19.444601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.042632, 17.405638, 19.521997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107118, 0.164875, 0.980480,
		-0.920114, -0.390091, -0.034927,
		0.376718, -0.905895, 0.193490,
		11.155647, 17.133869, 19.580044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.548048, 17.513826, 20.037647>,  <10.891945, 17.767996, 19.444601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.548048, 17.513826, 20.037647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.875525, 17.284319, 20.028467>,  <11.072012, 17.146614, 20.022959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.875525, 17.284319, 20.028467>,  <10.548048, 17.513826, 20.037647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.875525, 17.284319, 20.028467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009628, -0.053676, 0.998512,
		-0.574149, -0.817255, -0.049469,
		0.818694, -0.573771, -0.022949,
		11.121134, 17.112188, 20.021582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.315254, 16.850817, 20.469568>,  <10.548048, 17.513826, 20.037647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.315254, 16.850817, 20.469568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.714977, 16.861347, 20.480103>,  <10.954811, 16.867664, 20.486423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.714977, 16.861347, 20.480103>,  <10.315254, 16.850817, 20.469568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.714977, 16.861347, 20.480103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021332, -0.175015, 0.984335,
		0.030521, -0.984214, -0.174332,
		0.999307, 0.026324, 0.026337,
		11.014770, 16.869244, 20.488003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.578872, 16.244102, 20.760174>,  <10.315254, 16.850817, 20.469568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.578872, 16.244102, 20.760174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.873102, 16.509966, 20.812565>,  <11.049641, 16.669483, 20.844000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.873102, 16.509966, 20.812565>,  <10.578872, 16.244102, 20.760174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.873102, 16.509966, 20.812565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055226, -0.251532, 0.966272,
		0.675186, -0.703534, -0.221728,
		0.735577, 0.664659, 0.130978,
		11.093776, 16.709364, 20.851858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.093747, 15.933036, 21.129902>,  <10.578872, 16.244102, 20.760174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.093747, 15.933036, 21.129902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.148040, 16.326235, 21.179371>,  <11.180615, 16.562155, 21.209053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.148040, 16.326235, 21.179371>,  <11.093747, 15.933036, 21.129902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.148040, 16.326235, 21.179371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225461, -0.152199, 0.962290,
		0.964751, -0.102729, -0.242285,
		0.135731, 0.982997, 0.123673,
		11.188759, 16.621134, 21.216473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.560265, 15.927352, 21.669239>,  <11.093747, 15.933036, 21.129902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.560265, 15.927352, 21.669239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.411469, 16.298601, 21.663422>,  <11.322192, 16.521351, 21.659931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.411469, 16.298601, 21.663422>,  <11.560265, 15.927352, 21.669239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.411469, 16.298601, 21.663422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057737, 0.038771, 0.997579,
		0.926440, 0.370248, -0.068010,
		-0.371988, 0.928124, -0.014542,
		11.299873, 16.577038, 21.659060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.034666, 16.327423, 22.138981>,  <11.560265, 15.927352, 21.669239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.034666, 16.327423, 22.138981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.693336, 16.531925, 22.098076>,  <11.488539, 16.654627, 22.073534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.693336, 16.531925, 22.098076>,  <12.034666, 16.327423, 22.138981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.693336, 16.531925, 22.098076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040034, 0.259806, 0.964831,
		0.519841, 0.819220, -0.242166,
		-0.853325, 0.511253, -0.102261,
		11.437339, 16.685301, 22.067398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.069489, 16.916222, 22.601341>,  <12.034666, 16.327423, 22.138981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.069489, 16.916222, 22.601341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.676087, 16.890713, 22.533632>,  <11.440046, 16.875406, 22.493008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.676087, 16.890713, 22.533632>,  <12.069489, 16.916222, 22.601341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.676087, 16.890713, 22.533632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179482, 0.227706, 0.957045,
		-0.022491, 0.971639, -0.235396,
		-0.983504, -0.063774, -0.169270,
		11.381036, 16.871580, 22.482851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.685557, 17.544464, 22.840429>,  <12.069489, 16.916222, 22.601341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.685557, 17.544464, 22.840429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.398195, 17.266218, 22.841791>,  <11.225778, 17.099270, 22.842609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.398195, 17.266218, 22.841791>,  <11.685557, 17.544464, 22.840429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.398195, 17.266218, 22.841791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374971, 0.391371, 0.840372,
		-0.585910, 0.602450, -0.541999,
		-0.718405, -0.695616, 0.003406,
		11.182673, 17.057533, 22.842813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.052778, 17.773882, 23.085157>,  <11.685557, 17.544464, 22.840429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.052778, 17.773882, 23.085157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.022672, 17.378056, 23.134296>,  <11.004608, 17.140560, 23.163780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.022672, 17.378056, 23.134296>,  <11.052778, 17.773882, 23.085157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.022672, 17.378056, 23.134296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347919, 0.141517, 0.926782,
		-0.934498, 0.027014, -0.354941,
		-0.075266, -0.989567, 0.122849,
		11.000092, 17.081186, 23.171150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.385146, 17.670444, 23.391001>,  <11.052778, 17.773882, 23.085157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.385146, 17.670444, 23.391001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.582917, 17.332121, 23.471148>,  <10.701580, 17.129126, 23.519236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.582917, 17.332121, 23.471148>,  <10.385146, 17.670444, 23.391001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.582917, 17.332121, 23.471148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427075, -0.035617, 0.903514,
		-0.757066, -0.532293, -0.378835,
		0.494427, -0.845811, 0.200365,
		10.731245, 17.078377, 23.531258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.894085, 17.232370, 23.706244>,  <10.385146, 17.670444, 23.391001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.894085, 17.232370, 23.706244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.237133, 17.057362, 23.814363>,  <10.442962, 16.952356, 23.879236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.237133, 17.057362, 23.814363>,  <9.894085, 17.232370, 23.706244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.237133, 17.057362, 23.814363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346175, -0.102429, 0.932562,
		-0.380328, -0.893356, -0.239303,
		0.857621, -0.437520, 0.270301,
		10.494419, 16.926105, 23.895454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.618347, 16.680605, 24.047920>,  <9.894085, 17.232370, 23.706244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.618347, 16.680605, 24.047920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.983405, 16.725092, 24.205252>,  <10.202440, 16.751785, 24.299650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.983405, 16.725092, 24.205252>,  <9.618347, 16.680605, 24.047920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.983405, 16.725092, 24.205252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381978, -0.110479, 0.917544,
		0.145504, -0.987636, -0.058344,
		0.912646, 0.111221, 0.393330,
		10.257198, 16.758457, 24.323250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.722804, 16.038420, 24.366644>,  <9.618347, 16.680605, 24.047920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.722804, 16.038420, 24.366644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.961926, 16.314941, 24.528990>,  <10.105400, 16.480854, 24.626398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.961926, 16.314941, 24.528990>,  <9.722804, 16.038420, 24.366644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.961926, 16.314941, 24.528990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390961, -0.190578, 0.900461,
		0.699842, -0.696977, 0.156345,
		0.597805, 0.691305, 0.405865,
		10.141268, 16.522333, 24.650749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.066635, 15.703483, 24.951757>,  <9.722804, 16.038420, 24.366644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.066635, 15.703483, 24.951757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.134691, 16.088739, 25.035099>,  <10.175525, 16.319893, 25.085104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.134691, 16.088739, 25.035099>,  <10.066635, 15.703483, 24.951757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.134691, 16.088739, 25.035099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322902, -0.145273, 0.935216,
		0.931014, -0.226395, 0.286284,
		0.170139, 0.963141, 0.208355,
		10.185733, 16.377682, 25.097605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.446433, 15.707035, 25.638420>,  <10.066635, 15.703483, 24.951757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.446433, 15.707035, 25.638420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.285522, 16.069698, 25.587597>,  <10.188974, 16.287296, 25.557102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.285522, 16.069698, 25.587597>,  <10.446433, 15.707035, 25.638420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.285522, 16.069698, 25.587597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449444, -0.074667, 0.890183,
		0.797604, 0.415207, 0.437529,
		-0.402279, 0.906658, -0.127057,
		10.164838, 16.341696, 25.549480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.627397, 16.173506, 26.243797>,  <10.446433, 15.707035, 25.638420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.627397, 16.173506, 26.243797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.296110, 16.342737, 26.096794>,  <10.097338, 16.444277, 26.008593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.296110, 16.342737, 26.096794>,  <10.627397, 16.173506, 26.243797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.296110, 16.342737, 26.096794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354714, 0.111938, 0.928250,
		0.433860, 0.899152, 0.057363,
		-0.828217, 0.423078, -0.367507,
		10.047645, 16.469660, 25.986542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.543115, 16.690998, 26.635263>,  <10.627397, 16.173506, 26.243797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.543115, 16.690998, 26.635263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.179248, 16.617044, 26.486496>,  <9.960928, 16.572672, 26.397236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.179248, 16.617044, 26.486496>,  <10.543115, 16.690998, 26.635263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.179248, 16.617044, 26.486496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394447, 0.104132, 0.912999,
		-0.130068, 0.977228, -0.167652,
		-0.909667, -0.184882, -0.371921,
		9.906348, 16.561581, 26.374920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.084815, 17.332291, 26.757313>,  <10.543115, 16.690998, 26.635263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.084815, 17.332291, 26.757313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.858443, 17.008131, 26.696674>,  <9.722620, 16.813635, 26.660292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.858443, 17.008131, 26.696674>,  <10.084815, 17.332291, 26.757313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.858443, 17.008131, 26.696674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448281, 0.148151, 0.881530,
		-0.691931, 0.566841, -0.447128,
		-0.565929, -0.810397, -0.151594,
		9.688664, 16.765013, 26.651196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.462535, 17.585718, 26.874466>,  <10.084815, 17.332291, 26.757313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.462535, 17.585718, 26.874466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.449081, 17.186665, 26.898453>,  <9.441010, 16.947233, 26.912846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.449081, 17.186665, 26.898453>,  <9.462535, 17.585718, 26.874466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.449081, 17.186665, 26.898453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455693, 0.068710, 0.887481,
		-0.889501, 0.002522, -0.456926,
		-0.033634, -0.997633, 0.059968,
		9.438992, 16.887375, 26.916443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.835835, 17.366100, 27.164234>,  <9.462535, 17.585718, 26.874466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.835835, 17.366100, 27.164234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.079529, 17.060219, 27.248194>,  <9.225745, 16.876690, 27.298569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.079529, 17.060219, 27.248194>,  <8.835835, 17.366100, 27.164234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.079529, 17.060219, 27.248194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259897, 0.057521, 0.963921,
		-0.749190, -0.641808, -0.163701,
		0.609236, -0.764705, 0.209898,
		9.262300, 16.830807, 27.311163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.621212, 17.130358, 27.727699>,  <8.835835, 17.366100, 27.164234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.621212, 17.130358, 27.727699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.958341, 16.915350, 27.738468>,  <9.160618, 16.786346, 27.744930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.958341, 16.915350, 27.738468>,  <8.621212, 17.130358, 27.727699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.958341, 16.915350, 27.738468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108502, -0.120708, 0.986741,
		-0.527141, -0.834568, -0.160057,
		0.842822, -0.537518, 0.026922,
		9.211187, 16.754095, 27.746544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.434256, 16.427179, 28.075773>,  <8.621212, 17.130358, 27.727699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.434256, 16.427179, 28.075773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.831979, 16.463867, 28.097456>,  <9.070613, 16.485880, 28.110466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.831979, 16.463867, 28.097456>,  <8.434256, 16.427179, 28.075773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.831979, 16.463867, 28.097456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036602, -0.183777, 0.982286,
		0.100056, -0.978680, -0.179374,
		0.994308, 0.091718, 0.054209,
		9.130271, 16.491383, 28.113718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.760927, 15.926765, 28.600456>,  <8.434256, 16.427179, 28.075773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.760927, 15.926765, 28.600456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.031131, 16.217072, 28.548378>,  <9.193253, 16.391256, 28.517130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.031131, 16.217072, 28.548378>,  <8.760927, 15.926765, 28.600456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.031131, 16.217072, 28.548378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205466, -0.015695, 0.978538,
		0.708147, -0.687762, -0.159722,
		0.675508, 0.725766, -0.130197,
		9.233784, 16.434801, 28.509319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.350654, 15.588281, 28.943922>,  <8.760927, 15.926765, 28.600456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.350654, 15.588281, 28.943922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.405643, 15.984183, 28.928532>,  <9.438638, 16.221725, 28.919298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.405643, 15.984183, 28.928532>,  <9.350654, 15.588281, 28.943922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.405643, 15.984183, 28.928532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284245, -0.002210, 0.958749,
		0.948844, -0.142741, -0.281637,
		0.137476, 0.989758, -0.038476,
		9.446886, 16.281111, 28.916988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.925303, 15.674332, 29.300339>,  <9.350654, 15.588281, 28.943922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.925303, 15.674332, 29.300339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.769500, 16.042652, 29.308403>,  <9.676018, 16.263645, 29.313242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.769500, 16.042652, 29.308403>,  <9.925303, 15.674332, 29.300339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.769500, 16.042652, 29.308403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139284, 0.037254, 0.989551,
		0.910429, 0.388248, -0.142764,
		-0.389510, 0.920801, 0.020159,
		9.652647, 16.318893, 29.314451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.297632, 16.154783, 29.722166>,  <9.925303, 15.674332, 29.300339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.297632, 16.154783, 29.722166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.956215, 16.362415, 29.704201>,  <9.751365, 16.486994, 29.693420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.956215, 16.362415, 29.704201>,  <10.297632, 16.154783, 29.722166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.956215, 16.362415, 29.704201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117499, 0.275756, 0.954019,
		0.507598, 0.809020, -0.296361,
		-0.853544, 0.519081, -0.044914,
		9.700151, 16.518139, 29.690727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.318591, 16.890732, 30.001375>,  <10.297632, 16.154783, 29.722166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.318591, 16.890732, 30.001375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.936811, 16.773977, 30.026127>,  <9.707744, 16.703924, 30.040977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.936811, 16.773977, 30.026127>,  <10.318591, 16.890732, 30.001375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.936811, 16.773977, 30.026127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019096, 0.266722, 0.963584,
		-0.297762, 0.918511, -0.260146,
		-0.954449, -0.291887, 0.061880,
		9.650476, 16.686411, 30.044691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.172673, 17.155388, 30.728058>,  <10.318591, 16.890732, 30.001375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.172673, 17.155388, 30.728058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.834472, 16.958694, 30.644806>,  <9.631551, 16.840677, 30.594854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.834472, 16.958694, 30.644806>,  <10.172673, 17.155388, 30.728058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.834472, 16.958694, 30.644806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282790, 0.081735, 0.955693,
		-0.452936, 0.866900, -0.208165,
		-0.845505, -0.491735, -0.208130,
		9.580820, 16.811174, 30.582367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.669989, 17.601730, 31.006729>,  <10.172673, 17.155388, 30.728058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.669989, 17.601730, 31.006729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.565127, 17.216112, 30.989315>,  <9.502211, 16.984741, 30.978867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.565127, 17.216112, 30.989315>,  <9.669989, 17.601730, 31.006729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.565127, 17.216112, 30.989315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331833, 0.047690, 0.942132,
		-0.906180, 0.261429, -0.332404,
		-0.262153, -0.964044, -0.043535,
		9.486482, 16.926899, 30.976255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.020125, 17.598015, 31.241552>,  <9.669989, 17.601730, 31.006729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.020125, 17.598015, 31.241552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.117756, 17.210848, 31.265440>,  <9.176334, 16.978548, 31.279774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.117756, 17.210848, 31.265440>,  <9.020125, 17.598015, 31.241552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.117756, 17.210848, 31.265440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406555, -0.046220, 0.912457,
		-0.880421, -0.246989, -0.404792,
		0.244076, -0.967915, 0.059721,
		9.190979, 16.920473, 31.283356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.459457, 17.235527, 31.565697>,  <9.020125, 17.598015, 31.241552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.459457, 17.235527, 31.565697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.798710, 17.035341, 31.635223>,  <9.002261, 16.915230, 31.676939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.798710, 17.035341, 31.635223>,  <8.459457, 17.235527, 31.565697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.798710, 17.035341, 31.635223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198774, 0.003520, 0.980039,
		-0.491085, -0.865751, -0.096493,
		0.848130, -0.500463, 0.173818,
		9.053149, 16.885202, 31.687368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.450400, 16.706978, 32.097458>,  <8.459457, 17.235527, 31.565697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.450400, 16.706978, 32.097458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.787774, 16.918446, 32.135677>,  <8.990198, 17.045326, 32.158607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.787774, 16.918446, 32.135677>,  <8.450400, 16.706978, 32.097458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.787774, 16.918446, 32.135677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274335, 0.270914, 0.922684,
		0.461910, -0.804434, 0.373530,
		0.843433, 0.528669, 0.095546,
		9.040804, 17.077045, 32.164341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.058819, 16.293722, 32.490211>,  <8.450400, 16.706978, 32.097458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.058819, 16.293722, 32.490211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.270734, 16.179024, 32.809486>,  <8.397882, 16.110205, 33.001053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.270734, 16.179024, 32.809486>,  <8.058819, 16.293722, 32.490211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.270734, 16.179024, 32.809486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847929, -0.158579, 0.505834,
		-0.018470, -0.944791, -0.327153,
		0.529787, -0.286745, 0.798187,
		8.429670, 16.093000, 33.048943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.530461, 15.953901, 32.957191>,  <8.058819, 16.293722, 32.490211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.530461, 15.953901, 32.957191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.858615, 15.917350, 33.182976>,  <8.055508, 15.895419, 33.318447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.858615, 15.917350, 33.182976>,  <7.530461, 15.953901, 32.957191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.858615, 15.917350, 33.182976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527901, -0.500392, 0.686242,
		0.219745, -0.860964, -0.458752,
		0.820385, -0.091378, 0.564462,
		8.104731, 15.889936, 33.352314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.761696, 15.192702, 33.206833>,  <7.530461, 15.953901, 32.957191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.761696, 15.192702, 33.206833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.977866, 15.429490, 33.446003>,  <8.107568, 15.571563, 33.589504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.977866, 15.429490, 33.446003>,  <7.761696, 15.192702, 33.206833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.977866, 15.429490, 33.446003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380364, -0.461993, 0.801178,
		0.750510, -0.660405, -0.024508,
		0.540424, 0.591969, 0.597925,
		8.139993, 15.607080, 33.625381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.967511, 14.929966, 33.856148>,  <7.761696, 15.192702, 33.206833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.967511, 14.929966, 33.856148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.260463, 14.775323, 33.631950>,  <8.436234, 14.682537, 33.497433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.260463, 14.775323, 33.631950>,  <7.967511, 14.929966, 33.856148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.260463, 14.775323, 33.631950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494757, 0.867706, 0.047974,
		0.467797, -0.312444, 0.826768,
		0.732381, -0.386607, -0.560494,
		8.480177, 14.659341, 33.463802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.643498, 15.088298, 34.144279>,  <7.967511, 14.929966, 33.856148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.643498, 15.088298, 34.144279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.699405, 14.999980, 33.758179>,  <8.732948, 14.946989, 33.526516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.699405, 14.999980, 33.758179>,  <8.643498, 15.088298, 34.144279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.699405, 14.999980, 33.758179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843160, 0.537661, -0.000898,
		0.519178, -0.813739, 0.261312,
		0.139767, -0.220794, -0.965254,
		8.741335, 14.933742, 33.468601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.309879, 14.752008, 34.088421>,  <8.643498, 15.088298, 34.144279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.309879, 14.752008, 34.088421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.182734, 14.941249, 33.759754>,  <9.106446, 15.054793, 33.562553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.182734, 14.941249, 33.759754>,  <9.309879, 14.752008, 34.088421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.182734, 14.941249, 33.759754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858629, 0.511201, -0.037822,
		0.402143, -0.717529, -0.568712,
		-0.317864, 0.473102, -0.821667,
		9.087375, 15.083179, 33.513252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.877295, 14.911079, 33.638165>,  <9.309879, 14.752008, 34.088421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.877295, 14.911079, 33.638165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.601536, 15.159629, 33.489239>,  <9.436080, 15.308759, 33.399883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.601536, 15.159629, 33.489239>,  <9.877295, 14.911079, 33.638165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.601536, 15.159629, 33.489239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718874, 0.650129, -0.246074,
		0.089151, -0.437294, -0.894889,
		-0.689400, 0.621375, -0.372319,
		9.394716, 15.346042, 33.377544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.455259, 14.767233, 33.895782>,  <9.877295, 14.911079, 33.638165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.455259, 14.767233, 33.895782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.391444, 14.697421, 34.284439>,  <10.353155, 14.655534, 34.517632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.391444, 14.697421, 34.284439>,  <10.455259, 14.767233, 33.895782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.391444, 14.697421, 34.284439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855434, 0.466817, 0.224309,
		-0.492727, 0.866961, 0.074823,
		-0.159539, -0.174530, 0.971641,
		10.343582, 14.645062, 34.575932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.089971, 14.420422, 33.453716>,  <10.455259, 14.767233, 33.895782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.089971, 14.420422, 33.453716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.713906, 14.446863, 33.320015>,  <10.488268, 14.462729, 33.239792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.713906, 14.446863, 33.320015>,  <11.089971, 14.420422, 33.453716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.713906, 14.446863, 33.320015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310596, -0.237084, -0.920501,
		-0.140094, -0.969238, 0.202366,
		-0.940162, 0.066103, -0.334255,
		10.431858, 14.466695, 33.219738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.903042, 13.808006, 33.062618>,  <11.089971, 14.420422, 33.453716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.903042, 13.808006, 33.062618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.710277, 14.143342, 32.960678>,  <10.594618, 14.344543, 32.899513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.710277, 14.143342, 32.960678>,  <10.903042, 13.808006, 33.062618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.710277, 14.143342, 32.960678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355824, -0.078549, -0.931246,
		-0.800718, -0.539461, -0.260447,
		-0.481913, 0.838339, -0.254849,
		10.565702, 14.394844, 32.884224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.573401, 13.661910, 32.456596>,  <10.903042, 13.808006, 33.062618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.573401, 13.661910, 32.456596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.589767, 14.061440, 32.446190>,  <10.599587, 14.301157, 32.439945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.589767, 14.061440, 32.446190>,  <10.573401, 13.661910, 32.456596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.589767, 14.061440, 32.446190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489633, -0.042743, -0.870880,
		-0.870968, 0.022894, -0.490806,
		0.040916, 0.998824, -0.026018,
		10.602042, 14.361087, 32.438385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.199067, 13.896434, 31.796335>,  <10.573401, 13.661910, 32.456596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.199067, 13.896434, 31.796335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.453128, 14.180294, 31.918304>,  <10.605564, 14.350611, 31.991486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.453128, 14.180294, 31.918304>,  <10.199067, 13.896434, 31.796335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.453128, 14.180294, 31.918304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388685, 0.047486, -0.920146,
		-0.667462, 0.702951, -0.245670,
		0.635152, 0.709651, 0.304922,
		10.643674, 14.393189, 32.009781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.266762, 14.301542, 31.217901>,  <10.199067, 13.896434, 31.796335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.266762, 14.301542, 31.217901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.581096, 14.428981, 31.429924>,  <10.769696, 14.505444, 31.557137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.581096, 14.428981, 31.429924>,  <10.266762, 14.301542, 31.217901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.581096, 14.428981, 31.429924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492324, 0.196421, -0.847960,
		-0.374271, 0.927316, -0.002498,
		0.785836, 0.318597, 0.530055,
		10.816847, 14.524560, 31.588940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.458735, 15.007512, 30.995687>,  <10.266762, 14.301542, 31.217901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.458735, 15.007512, 30.995687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.784332, 14.835262, 31.151627>,  <10.979691, 14.731913, 31.245190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.784332, 14.835262, 31.151627>,  <10.458735, 15.007512, 30.995687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.784332, 14.835262, 31.151627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559121, 0.398879, -0.726828,
		0.157487, 0.809604, 0.565455,
		0.813991, -0.430624, 0.389848,
		11.028529, 14.706075, 31.268581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.915799, 15.471661, 30.679720>,  <10.458735, 15.007512, 30.995687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.915799, 15.471661, 30.679720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.145301, 15.172470, 30.813190>,  <11.283002, 14.992956, 30.893272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.145301, 15.172470, 30.813190>,  <10.915799, 15.471661, 30.679720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.145301, 15.172470, 30.813190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684223, 0.213817, -0.697223,
		0.450161, 0.628342, 0.634461,
		0.573754, -0.747976, 0.333674,
		11.317427, 14.948077, 30.913292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.529228, 15.792737, 30.790136>,  <10.915799, 15.471661, 30.679720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.529228, 15.792737, 30.790136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.595805, 15.399323, 30.761982>,  <11.635751, 15.163274, 30.745089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.595805, 15.399323, 30.761982>,  <11.529228, 15.792737, 30.790136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.595805, 15.399323, 30.761982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690985, 0.167262, -0.703252,
		0.703446, 0.068415, 0.707448,
		0.166442, -0.983536, -0.070386,
		11.645738, 15.104261, 30.740866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.202449, 15.702977, 30.803278>,  <11.529228, 15.792737, 30.790136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.202449, 15.702977, 30.803278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.064995, 15.370014, 30.629375>,  <11.982522, 15.170237, 30.525034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.064995, 15.370014, 30.629375>,  <12.202449, 15.702977, 30.803278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.064995, 15.370014, 30.629375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713776, 0.069339, -0.696933,
		0.610278, -0.549810, 0.570325,
		-0.343635, -0.832407, -0.434757,
		11.961905, 15.120292, 30.498949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.659596, 15.299937, 30.754381>,  <12.202449, 15.702977, 30.803278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.659596, 15.299937, 30.754381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.419863, 15.173229, 30.460318>,  <12.276023, 15.097204, 30.283880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.419863, 15.173229, 30.460318>,  <12.659596, 15.299937, 30.754381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.419863, 15.173229, 30.460318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766162, 0.039099, -0.641457,
		0.231939, -0.947696, 0.219265,
		-0.599334, -0.316771, -0.735157,
		12.240063, 15.078198, 30.239771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.919020, 14.636389, 30.510387>,  <12.659596, 15.299937, 30.754381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.919020, 14.636389, 30.510387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.701589, 14.795977, 30.214996>,  <12.571130, 14.891729, 30.037762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.701589, 14.795977, 30.214996>,  <12.919020, 14.636389, 30.510387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.701589, 14.795977, 30.214996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787137, -0.063184, -0.613533,
		-0.291441, -0.914785, -0.279698,
		-0.543578, 0.398969, -0.738476,
		12.538515, 14.915668, 29.993454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.188795, 14.314737, 29.935116>,  <12.919020, 14.636389, 30.510387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.188795, 14.314737, 29.935116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.980561, 14.612247, 29.767408>,  <12.855620, 14.790753, 29.666784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.980561, 14.612247, 29.767408>,  <13.188795, 14.314737, 29.935116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.980561, 14.612247, 29.767408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522167, -0.111174, -0.845566,
		-0.675524, -0.659118, -0.330500,
		-0.520585, 0.743777, -0.419270,
		12.824386, 14.835381, 29.641628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.989378, 14.078859, 29.315605>,  <13.188795, 14.314737, 29.935116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.989378, 14.078859, 29.315605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.941751, 14.473429, 29.270363>,  <12.913174, 14.710170, 29.243217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.941751, 14.473429, 29.270363>,  <12.989378, 14.078859, 29.315605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.941751, 14.473429, 29.270363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288633, -0.074606, -0.954529,
		-0.950007, -0.146300, -0.275831,
		-0.119069, 0.986423, -0.113104,
		12.906030, 14.769356, 29.236431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.584082, 14.200028, 28.751329>,  <12.989378, 14.078859, 29.315605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.584082, 14.200028, 28.751329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.775232, 14.550806, 28.771730>,  <12.889923, 14.761272, 28.783972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.775232, 14.550806, 28.771730>,  <12.584082, 14.200028, 28.751329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.775232, 14.550806, 28.771730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100798, 0.002938, -0.994903,
		-0.872625, 0.480582, -0.086990,
		0.477877, 0.876945, 0.051005,
		12.918595, 14.813890, 28.787031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.168504, 14.632585, 28.318584>,  <12.584082, 14.200028, 28.751329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.168504, 14.632585, 28.318584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.539491, 14.778092, 28.353168>,  <12.762083, 14.865396, 28.373919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.539491, 14.778092, 28.353168>,  <12.168504, 14.632585, 28.318584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.539491, 14.778092, 28.353168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065994, 0.068340, -0.995477,
		-0.368032, 0.928979, 0.039376,
		0.927468, 0.363769, 0.086459,
		12.817731, 14.887223, 28.379107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.291909, 15.222839, 27.965403>,  <12.168504, 14.632585, 28.318584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.291909, 15.222839, 27.965403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.662323, 15.076837, 28.003830>,  <12.884571, 14.989235, 28.026886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.662323, 15.076837, 28.003830>,  <12.291909, 15.222839, 27.965403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.662323, 15.076837, 28.003830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092557, -0.027145, -0.995337,
		0.365912, 0.930609, 0.008646,
		0.926035, -0.365006, 0.096068,
		12.940134, 14.967335, 28.032650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.665905, 15.590872, 27.588633>,  <12.291909, 15.222839, 27.965403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.665905, 15.590872, 27.588633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.889661, 15.261819, 27.629349>,  <13.023914, 15.064387, 27.653778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.889661, 15.261819, 27.629349>,  <12.665905, 15.590872, 27.588633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.889661, 15.261819, 27.629349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084499, -0.065566, -0.994264,
		0.824587, 0.564782, 0.032835,
		0.559389, -0.822631, 0.101789,
		13.057478, 15.015029, 27.659885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.356795, 15.725481, 27.228733>,  <12.665905, 15.590872, 27.588633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.356795, 15.725481, 27.228733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.296899, 15.330447, 27.247730>,  <13.260962, 15.093427, 27.259129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.296899, 15.330447, 27.247730>,  <13.356795, 15.725481, 27.228733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.296899, 15.330447, 27.247730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132418, -0.067632, -0.988884,
		0.979818, -0.141787, 0.140902,
		-0.149741, -0.987584, 0.047492,
		13.251977, 15.034172, 27.261978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.768278, 15.452585, 26.725920>,  <13.356795, 15.725481, 27.228733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.768278, 15.452585, 26.725920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.510167, 15.150395, 26.771305>,  <13.355301, 14.969081, 26.798536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.510167, 15.150395, 26.771305>,  <13.768278, 15.452585, 26.725920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.510167, 15.150395, 26.771305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137747, -0.261146, -0.955421,
		0.751428, -0.600882, 0.272576,
		-0.645277, -0.755476, 0.113462,
		13.316584, 14.923753, 26.805344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.066085, 14.863295, 26.405067>,  <13.768278, 15.452585, 26.725920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.066085, 14.863295, 26.405067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.671956, 14.797676, 26.423964>,  <13.435479, 14.758305, 26.435301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.671956, 14.797676, 26.423964>,  <14.066085, 14.863295, 26.405067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.671956, 14.797676, 26.423964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004145, -0.253641, -0.967289,
		0.170662, -0.953286, 0.249238,
		-0.985321, -0.164047, 0.047238,
		13.376360, 14.748463, 26.438135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.998864, 14.214713, 26.118635>,  <14.066085, 14.863295, 26.405067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.998864, 14.214713, 26.118635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.634645, 14.376222, 26.083143>,  <13.416114, 14.473126, 26.061848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.634645, 14.376222, 26.083143>,  <13.998864, 14.214713, 26.118635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.634645, 14.376222, 26.083143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090175, -0.403451, -0.910547,
		-0.403451, -0.821095, 0.403771,
		0.910547, -0.403771, 0.088730,
		13.361482, 14.497353, 26.056524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.597046, 13.736113, 25.881708>,  <13.998864, 14.214713, 26.118635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.597046, 13.736113, 25.881708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.376863, 14.055421, 25.783922>,  <13.244754, 14.247005, 25.725250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.376863, 14.055421, 25.783922>,  <13.597046, 13.736113, 25.881708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.376863, 14.055421, 25.783922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174441, -0.396329, -0.901384,
		-0.816437, -0.453528, 0.357413,
		-0.550456, 0.798270, -0.244464,
		13.211726, 14.294902, 25.710583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.940708, 13.565878, 25.556044>,  <13.597046, 13.736113, 25.881708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.940708, 13.565878, 25.556044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.008744, 13.939904, 25.431643>,  <13.049566, 14.164320, 25.357002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.008744, 13.939904, 25.431643>,  <12.940708, 13.565878, 25.556044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.008744, 13.939904, 25.431643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237100, -0.267495, -0.933933,
		-0.956479, 0.232592, 0.176206,
		0.170091, 0.935066, -0.311001,
		13.059772, 14.220424, 25.338343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.652433, 13.571754, 24.905863>,  <12.940708, 13.565878, 25.556044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.652433, 13.571754, 24.905863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.839075, 13.925510, 24.901182>,  <12.951060, 14.137764, 24.898373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.839075, 13.925510, 24.901182>,  <12.652433, 13.571754, 24.905863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.839075, 13.925510, 24.901182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112831, -0.072643, -0.990955,
		-0.877240, 0.461062, -0.133682,
		0.466603, 0.884389, -0.011704,
		12.979056, 14.190827, 24.897671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.267395, 13.960246, 24.437874>,  <12.652433, 13.571754, 24.905863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.267395, 13.960246, 24.437874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.618272, 14.149408, 24.471088>,  <12.828797, 14.262906, 24.491018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.618272, 14.149408, 24.471088>,  <12.267395, 13.960246, 24.437874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.618272, 14.149408, 24.471088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016364, 0.143400, -0.989530,
		-0.479863, 0.869365, 0.118051,
		0.877191, 0.472906, 0.083038,
		12.881429, 14.291281, 24.496000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.177527, 14.407413, 23.908680>,  <12.267395, 13.960246, 24.437874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.177527, 14.407413, 23.908680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.569608, 14.385475, 23.984781>,  <12.804856, 14.372312, 24.030441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.569608, 14.385475, 23.984781>,  <12.177527, 14.407413, 23.908680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.569608, 14.385475, 23.984781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195617, 0.119550, -0.973366,
		0.030641, 0.991312, 0.127912,
		0.980202, -0.054847, 0.190254,
		12.863668, 14.369021, 24.041857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.525729, 15.089034, 23.698324>,  <12.177527, 14.407413, 23.908680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.525729, 15.089034, 23.698324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.772352, 14.774581, 23.681108>,  <12.920326, 14.585909, 23.670778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.772352, 14.774581, 23.681108>,  <12.525729, 15.089034, 23.698324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.772352, 14.774581, 23.681108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277455, 0.268114, -0.922569,
		0.736801, 0.556875, 0.383424,
		0.616557, -0.786133, -0.043039,
		12.957319, 14.538741, 23.668198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.144850, 15.328654, 23.371576>,  <12.525729, 15.089034, 23.698324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.144850, 15.328654, 23.371576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.204670, 14.934165, 23.343292>,  <13.240561, 14.697472, 23.326323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.204670, 14.934165, 23.343292>,  <13.144850, 15.328654, 23.371576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.204670, 14.934165, 23.343292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310824, 0.114779, -0.943512,
		0.938629, 0.119124, 0.323706,
		0.149549, -0.986223, -0.070708,
		13.249535, 14.638298, 23.322081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.708052, 15.260763, 22.875172>,  <13.144850, 15.328654, 23.371576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.708052, 15.260763, 22.875172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.551082, 14.892922, 22.882496>,  <13.456900, 14.672218, 22.886890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.551082, 14.892922, 22.882496>,  <13.708052, 15.260763, 22.875172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.551082, 14.892922, 22.882496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327089, -0.158132, -0.931669,
		0.859661, -0.359619, 0.362847,
		-0.392424, -0.919602, 0.018313,
		13.433354, 14.617042, 22.887989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.062927, 15.055531, 22.339535>,  <13.708052, 15.260763, 22.875172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.062927, 15.055531, 22.339535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.751842, 14.805889, 22.369625>,  <13.565191, 14.656105, 22.387678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.751842, 14.805889, 22.369625>,  <14.062927, 15.055531, 22.339535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.751842, 14.805889, 22.369625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157940, -0.309823, -0.937585,
		0.608455, -0.717291, 0.339524,
		-0.777713, -0.624103, 0.075225,
		13.518529, 14.618658, 22.392193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.316653, 14.325047, 22.072258>,  <14.062927, 15.055531, 22.339535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.316653, 14.325047, 22.072258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.916926, 14.323867, 22.057529>,  <13.677090, 14.323158, 22.048693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.916926, 14.323867, 22.057529>,  <14.316653, 14.325047, 22.072258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.916926, 14.323867, 22.057529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036160, -0.281736, -0.958810,
		-0.007543, -0.959487, 0.281651,
		-0.999318, -0.002952, -0.036820,
		13.617131, 14.322982, 22.046484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.132922, 13.700472, 21.751719>,  <14.316653, 14.325047, 22.072258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.132922, 13.700472, 21.751719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.853150, 13.980363, 21.693504>,  <13.685287, 14.148297, 21.658575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.853150, 13.980363, 21.693504>,  <14.132922, 13.700472, 21.751719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.853150, 13.980363, 21.693504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034681, -0.236621, -0.970983,
		-0.713861, -0.674086, 0.189766,
		-0.699429, 0.699728, -0.145537,
		13.643322, 14.190281, 21.649843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.611475, 13.455669, 21.337437>,  <14.132922, 13.700472, 21.751719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.611475, 13.455669, 21.337437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.567944, 13.848148, 21.273678>,  <13.541825, 14.083636, 21.235422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.567944, 13.848148, 21.273678>,  <13.611475, 13.455669, 21.337437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.567944, 13.848148, 21.273678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333729, -0.187104, -0.923914,
		-0.936366, -0.047352, 0.347816,
		-0.108828, 0.981198, -0.159395,
		13.535295, 14.142508, 21.225859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.122381, 13.435859, 20.860197>,  <13.611475, 13.455669, 21.337437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.122381, 13.435859, 20.860197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.236485, 13.819168, 20.852844>,  <13.304948, 14.049154, 20.848433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.236485, 13.819168, 20.852844>,  <13.122381, 13.435859, 20.860197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.236485, 13.819168, 20.852844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239139, 0.052590, -0.969560,
		-0.928138, 0.280972, 0.244162,
		0.285260, 0.958274, -0.018380,
		13.322063, 14.106650, 20.847330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.656127, 13.793221, 20.450424>,  <13.122381, 13.435859, 20.860197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.656127, 13.793221, 20.450424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.956915, 14.056900, 20.449812>,  <13.137387, 14.215107, 20.449446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.956915, 14.056900, 20.449812>,  <12.656127, 13.793221, 20.450424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.956915, 14.056900, 20.449812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110080, 0.123285, -0.986247,
		-0.649942, 0.741796, 0.165271,
		0.751970, 0.659196, -0.001529,
		13.182506, 14.254659, 20.449354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.462128, 14.426211, 20.016434>,  <12.656127, 13.793221, 20.450424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.462128, 14.426211, 20.016434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.861956, 14.416494, 20.009871>,  <13.101852, 14.410665, 20.005934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.861956, 14.416494, 20.009871>,  <12.462128, 14.426211, 20.016434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.861956, 14.416494, 20.009871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017742, -0.055815, -0.998284,
		0.023334, 0.998146, -0.056222,
		0.999570, -0.024292, -0.016406,
		13.161827, 14.409207, 20.004950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.608202, 14.825597, 19.420681>,  <12.462128, 14.426211, 20.016434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.608202, 14.825597, 19.420681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.922534, 14.596812, 19.514771>,  <13.111134, 14.459541, 19.571224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.922534, 14.596812, 19.514771>,  <12.608202, 14.825597, 19.420681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.922534, 14.596812, 19.514771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125081, -0.225499, -0.966180,
		0.605661, 0.788676, -0.105662,
		0.785830, -0.571962, 0.235225,
		13.158283, 14.425223, 19.585339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.152971, 15.040667, 18.811224>,  <12.608202, 14.825597, 19.420681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.152971, 15.040667, 18.811224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.221962, 14.697900, 19.005520>,  <13.263356, 14.492240, 19.122097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.221962, 14.697900, 19.005520>,  <13.152971, 15.040667, 18.811224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.221962, 14.697900, 19.005520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413349, -0.384646, -0.825342,
		0.894088, 0.343134, 0.287863,
		0.172478, -0.856917, 0.485742,
		13.273705, 14.440825, 19.151243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.851464, 14.822021, 18.694168>,  <13.152971, 15.040667, 18.811224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.851464, 14.822021, 18.694168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.669605, 14.479213, 18.791176>,  <13.560490, 14.273528, 18.849380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.669605, 14.479213, 18.791176>,  <13.851464, 14.822021, 18.694168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.669605, 14.479213, 18.791176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323764, -0.412683, -0.851393,
		0.829742, -0.308565, 0.465097,
		-0.454648, -0.857018, 0.242518,
		13.533211, 14.222107, 18.863932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.352927, 14.340775, 18.536209>,  <13.851464, 14.822021, 18.694168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.352927, 14.340775, 18.536209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.000744, 14.151674, 18.550640>,  <13.789434, 14.038214, 18.559299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.000744, 14.151674, 18.550640>,  <14.352927, 14.340775, 18.536209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.000744, 14.151674, 18.550640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251069, -0.529436, -0.810347,
		0.402193, -0.704418, 0.584839,
		-0.880457, -0.472751, 0.036078,
		13.736607, 14.009849, 18.561464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.468940, 13.584166, 18.423822>,  <14.352927, 14.340775, 18.536209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.468940, 13.584166, 18.423822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.089421, 13.653052, 18.317896>,  <13.861711, 13.694385, 18.254341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.089421, 13.653052, 18.317896>,  <14.468940, 13.584166, 18.423822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.089421, 13.653052, 18.317896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127509, -0.558190, -0.819857,
		-0.289010, -0.811644, 0.507649,
		-0.948796, 0.172217, -0.264814,
		13.804782, 13.704718, 18.238451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.731312, 13.994252, 19.074759>,  <14.468940, 13.584166, 18.423822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.731312, 13.994252, 19.074759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.077892, 14.169929, 18.979788>,  <15.285841, 14.275334, 18.922806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.077892, 14.169929, 18.979788>,  <14.731312, 13.994252, 19.074759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.077892, 14.169929, 18.979788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379205, -0.269584, 0.885171,
		0.324752, -0.856992, -0.400125,
		0.866452, 0.439191, -0.237428,
		15.337828, 14.301685, 18.908560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.227356, 13.671041, 19.568762>,  <14.731312, 13.994252, 19.074759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.227356, 13.671041, 19.568762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.450622, 13.953695, 19.394810>,  <15.584581, 14.123287, 19.290438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.450622, 13.953695, 19.394810>,  <15.227356, 13.671041, 19.568762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.450622, 13.953695, 19.394810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599903, 0.018396, 0.799862,
		0.573210, -0.707340, -0.413644,
		0.558165, 0.706635, -0.434880,
		15.618071, 14.165686, 19.264345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.864147, 13.451560, 19.676470>,  <15.227356, 13.671041, 19.568762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.864147, 13.451560, 19.676470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.933431, 13.842222, 19.625645>,  <15.975000, 14.076619, 19.595150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.933431, 13.842222, 19.625645>,  <15.864147, 13.451560, 19.676470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.933431, 13.842222, 19.625645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614718, -0.006406, 0.788721,
		0.769494, -0.214720, -0.601477,
		0.173207, 0.976655, -0.127063,
		15.985393, 14.135219, 19.587526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.659515, 13.609760, 19.812658>,  <15.864147, 13.451560, 19.676470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.659515, 13.609760, 19.812658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.439962, 13.942125, 19.849123>,  <16.308229, 14.141544, 19.871002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.439962, 13.942125, 19.849123>,  <16.659515, 13.609760, 19.812658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.439962, 13.942125, 19.849123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575003, 0.296160, 0.762667,
		0.606711, 0.471035, -0.640334,
		-0.548884, 0.830912, 0.091163,
		16.275297, 14.191399, 19.876472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.083420, 14.116326, 20.023415>,  <16.659515, 13.609760, 19.812658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.083420, 14.116326, 20.023415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.726660, 14.264159, 20.127666>,  <16.512604, 14.352859, 20.190218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.726660, 14.264159, 20.127666>,  <17.083420, 14.116326, 20.023415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.726660, 14.264159, 20.127666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362444, 0.239494, 0.900709,
		0.270468, 0.897804, -0.347557,
		-0.891898, 0.369583, 0.260628,
		16.459091, 14.375034, 20.205854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.312532, 14.664044, 20.331888>,  <17.083420, 14.116326, 20.023415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.312532, 14.664044, 20.331888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.931982, 14.610461, 20.442841>,  <16.703651, 14.578311, 20.509411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.931982, 14.610461, 20.442841>,  <17.312532, 14.664044, 20.331888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.931982, 14.610461, 20.442841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214728, 0.357216, 0.909004,
		-0.220853, 0.924366, -0.311082,
		-0.951376, -0.133959, 0.277379,
		16.646570, 14.570273, 20.526054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.201401, 15.298537, 20.731863>,  <17.312532, 14.664044, 20.331888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.201401, 15.298537, 20.731863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.925379, 15.024058, 20.823915>,  <16.759766, 14.859371, 20.879147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.925379, 15.024058, 20.823915>,  <17.201401, 15.298537, 20.731863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.925379, 15.024058, 20.823915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087586, 0.236454, 0.967687,
		-0.718439, 0.687912, -0.103064,
		-0.690053, -0.686197, 0.230130,
		16.718363, 14.818199, 20.892954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.684788, 15.640550, 21.258255>,  <17.201401, 15.298537, 20.731863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.684788, 15.640550, 21.258255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.688896, 15.244276, 21.312574>,  <16.691362, 15.006512, 21.345167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.688896, 15.244276, 21.312574>,  <16.684788, 15.640550, 21.258255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.688896, 15.244276, 21.312574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092340, 0.136166, 0.986373,
		-0.995675, 0.002407, 0.092879,
		0.010273, -0.990683, 0.135799,
		16.691978, 14.947071, 21.353313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.587729, 15.624519, 21.896242>,  <16.684788, 15.640550, 21.258255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.587729, 15.624519, 21.896242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.673719, 15.237909, 21.840221>,  <16.725315, 15.005943, 21.806608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.673719, 15.237909, 21.840221>,  <16.587729, 15.624519, 21.896242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.673719, 15.237909, 21.840221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056742, -0.130801, 0.989783,
		-0.974969, -0.220729, 0.026723,
		0.214978, -0.966525, -0.140051,
		16.738213, 14.947952, 21.798206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.076244, 15.295750, 22.272774>,  <16.587729, 15.624519, 21.896242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.076244, 15.295750, 22.272774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.399363, 15.062398, 22.238987>,  <16.593233, 14.922387, 22.218714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.399363, 15.062398, 22.238987>,  <16.076244, 15.295750, 22.272774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.399363, 15.062398, 22.238987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032813, -0.098572, 0.994589,
		-0.588549, -0.806196, -0.060483,
		0.807795, -0.583380, -0.084468,
		16.641701, 14.887384, 22.213646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.911374, 14.769250, 22.748756>,  <16.076244, 15.295750, 22.272774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.911374, 14.769250, 22.748756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.297878, 14.700529, 22.671997>,  <16.529781, 14.659296, 22.625940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.297878, 14.700529, 22.671997>,  <15.911374, 14.769250, 22.748756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.297878, 14.700529, 22.671997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155374, -0.205428, 0.966260,
		-0.205428, -0.963475, -0.171803,
		-0.966260, 0.171803, 0.191899,
		16.587757, 14.648988, 22.614428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.068192, 14.211635, 23.150047>,  <15.911374, 14.769250, 22.748756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.068192, 14.211635, 23.150047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.411613, 14.404547, 23.080433>,  <16.617666, 14.520294, 23.038664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.411613, 14.404547, 23.080433>,  <16.068192, 14.211635, 23.150047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.411613, 14.404547, 23.080433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175249, 0.042960, 0.983586,
		0.481842, -0.874962, -0.047636,
		0.858555, 0.482282, -0.174036,
		16.669180, 14.549232, 23.028223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.591045, 13.847136, 23.468933>,  <16.068192, 14.211635, 23.150047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.591045, 13.847136, 23.468933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.705719, 14.229745, 23.447491>,  <16.774523, 14.459311, 23.434626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.705719, 14.229745, 23.447491>,  <16.591045, 13.847136, 23.468933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.705719, 14.229745, 23.447491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154060, 0.009195, 0.988019,
		0.945557, -0.291509, -0.144726,
		0.286685, 0.956524, -0.053605,
		16.791725, 14.516702, 23.431410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.950886, 13.872153, 24.093740>,  <16.591045, 13.847136, 23.468933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.950886, 13.872153, 24.093740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.943073, 14.264386, 24.015688>,  <16.938385, 14.499726, 23.968857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.943073, 14.264386, 24.015688>,  <16.950886, 13.872153, 24.093740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.943073, 14.264386, 24.015688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109154, 0.196095, 0.974491,
		0.993833, -0.002264, -0.110865,
		-0.019534, 0.980582, -0.195133,
		16.937214, 14.558561, 23.957148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.585085, 14.151154, 24.455118>,  <16.950886, 13.872153, 24.093740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.585085, 14.151154, 24.455118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.315142, 14.438127, 24.386002>,  <17.153175, 14.610311, 24.344532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.315142, 14.438127, 24.386002>,  <17.585085, 14.151154, 24.455118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.315142, 14.438127, 24.386002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067524, 0.173135, 0.982581,
		0.734851, 0.674771, -0.068398,
		-0.674859, 0.717432, -0.172791,
		17.112684, 14.653357, 24.334164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.742832, 14.620378, 24.928362>,  <17.585085, 14.151154, 24.455118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.742832, 14.620378, 24.928362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.385557, 14.770761, 24.829678>,  <17.171192, 14.860991, 24.770466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.385557, 14.770761, 24.829678>,  <17.742832, 14.620378, 24.928362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.385557, 14.770761, 24.829678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257497, 0.022175, 0.966025,
		0.368656, 0.926371, 0.077002,
		-0.893190, 0.375959, -0.246713,
		17.117599, 14.883549, 24.755663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.669281, 15.176056, 25.391745>,  <17.742832, 14.620378, 24.928362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.669281, 15.176056, 25.391745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.314194, 15.062509, 25.246759>,  <17.101141, 14.994380, 25.159769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.314194, 15.062509, 25.246759>,  <17.669281, 15.176056, 25.391745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.314194, 15.062509, 25.246759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375671, -0.008490, 0.926714,
		-0.266142, 0.958826, -0.099104,
		-0.887716, -0.283868, -0.362463,
		17.047878, 14.977348, 25.138021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.128506, 15.564756, 25.803877>,  <17.669281, 15.176056, 25.391745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.128506, 15.564756, 25.803877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.907541, 15.309389, 25.589489>,  <16.774961, 15.156168, 25.460857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.907541, 15.309389, 25.589489>,  <17.128506, 15.564756, 25.803877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.907541, 15.309389, 25.589489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716983, 0.035948, 0.696163,
		-0.425177, 0.768849, -0.477594,
		-0.552413, -0.638419, -0.535967,
		16.741817, 15.117864, 25.428699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.505121, 15.855868, 25.589270>,  <17.128506, 15.564756, 25.803877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.505121, 15.855868, 25.589270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.479942, 15.459687, 25.638329>,  <16.464834, 15.221979, 25.667763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.479942, 15.459687, 25.638329>,  <16.505121, 15.855868, 25.589270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.479942, 15.459687, 25.638329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686887, 0.132148, 0.714649,
		-0.724034, -0.039260, -0.688646,
		-0.062946, -0.990452, 0.122646,
		16.461058, 15.162552, 25.675123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.824347, 15.677345, 25.603327>,  <16.505121, 15.855868, 25.589270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.824347, 15.677345, 25.603327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.999017, 15.366364, 25.784382>,  <16.103819, 15.179774, 25.893015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.999017, 15.366364, 25.784382>,  <15.824347, 15.677345, 25.603327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.999017, 15.366364, 25.784382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630796, 0.094128, 0.770218,
		-0.641415, -0.621857, -0.449311,
		0.436673, -0.777454, 0.452640,
		16.130018, 15.133127, 25.920174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.281724, 15.394279, 25.920509>,  <15.824347, 15.677345, 25.603327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.281724, 15.394279, 25.920509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.594200, 15.222522, 26.101776>,  <15.781686, 15.119467, 26.210537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.594200, 15.222522, 26.101776>,  <15.281724, 15.394279, 25.920509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.594200, 15.222522, 26.101776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444506, 0.127121, 0.886710,
		-0.438356, -0.894126, -0.091563,
		0.781190, -0.429395, 0.453169,
		15.828557, 15.093703, 26.237726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.896962, 14.954024, 26.361616>,  <15.281724, 15.394279, 25.920509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.896962, 14.954024, 26.361616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.264568, 14.993463, 26.514294>,  <15.485132, 15.017126, 26.605900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.264568, 14.993463, 26.514294>,  <14.896962, 14.954024, 26.361616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.264568, 14.993463, 26.514294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388729, 0.065580, 0.919015,
		0.065580, -0.992964, 0.098597,
		-0.919015, -0.098597, -0.381693,
		15.540273, 15.023042, 26.628801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.905562, 14.501612, 26.921156>,  <14.896962, 14.954024, 26.361616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.905562, 14.501612, 26.921156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.197006, 14.764792, 26.997288>,  <15.371873, 14.922701, 27.042967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.197006, 14.764792, 26.997288>,  <14.905562, 14.501612, 26.921156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.197006, 14.764792, 26.997288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312847, 0.072487, 0.947034,
		0.609307, -0.749562, 0.258653,
		0.728609, 0.657953, 0.190332,
		15.415589, 14.962178, 27.054388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.215258, 14.277761, 27.535313>,  <14.905562, 14.501612, 26.921156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.215258, 14.277761, 27.535313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.308804, 14.664841, 27.497648>,  <15.364931, 14.897088, 27.475050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.308804, 14.664841, 27.497648>,  <15.215258, 14.277761, 27.535313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.308804, 14.664841, 27.497648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224521, 0.147981, 0.963167,
		0.945990, -0.204109, 0.251877,
		0.233864, 0.967699, -0.094162,
		15.378963, 14.955151, 27.469400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.557175, 14.405779, 28.146658>,  <15.215258, 14.277761, 27.535313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.557175, 14.405779, 28.146658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.438774, 14.756193, 27.994371>,  <15.367734, 14.966442, 27.903000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.438774, 14.756193, 27.994371>,  <15.557175, 14.405779, 28.146658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.438774, 14.756193, 27.994371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185828, 0.338147, 0.922564,
		0.936937, 0.343827, 0.062700,
		-0.296001, 0.876036, -0.380715,
		15.349974, 15.019004, 27.880157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.757625, 14.987832, 28.661932>,  <15.557175, 14.405779, 28.146658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.757625, 14.987832, 28.661932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.473171, 15.156514, 28.436914>,  <15.302499, 15.257724, 28.301905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.473171, 15.156514, 28.436914>,  <15.757625, 14.987832, 28.661932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.473171, 15.156514, 28.436914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417647, 0.390267, 0.820526,
		0.565562, 0.818447, -0.101408,
		-0.711133, 0.421706, -0.562542,
		15.259831, 15.283026, 28.268152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.833166, 15.756978, 28.745356>,  <15.757625, 14.987832, 28.661932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.833166, 15.756978, 28.745356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.481575, 15.583112, 28.666904>,  <15.270620, 15.478792, 28.619833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.481575, 15.583112, 28.666904>,  <15.833166, 15.756978, 28.745356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.481575, 15.583112, 28.666904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278121, 0.133184, 0.951268,
		-0.387361, 0.890690, -0.237955,
		-0.878977, -0.434665, -0.196130,
		15.217882, 15.452712, 28.608065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.311893, 16.265779, 28.869064>,  <15.833166, 15.756978, 28.745356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.311893, 16.265779, 28.869064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.166664, 15.897767, 28.928020>,  <15.079527, 15.676960, 28.963394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.166664, 15.897767, 28.928020>,  <15.311893, 16.265779, 28.869064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.166664, 15.897767, 28.928020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254379, 0.250048, 0.934220,
		-0.896365, 0.301697, -0.324821,
		-0.363072, -0.920030, 0.147389,
		15.057742, 15.621758, 28.972237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.644276, 16.382841, 28.890810>,  <15.311893, 16.265779, 28.869064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.644276, 16.382841, 28.890810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.763864, 16.061314, 29.096525>,  <14.835616, 15.868397, 29.219954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.763864, 16.061314, 29.096525>,  <14.644276, 16.382841, 28.890810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.763864, 16.061314, 29.096525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385733, 0.391146, 0.835592,
		-0.872828, -0.448193, -0.193120,
		0.298968, -0.803821, 0.514286,
		14.853554, 15.820168, 29.250811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.070890, 16.146477, 29.227877>,  <14.644276, 16.382841, 28.890810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.070890, 16.146477, 29.227877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.382530, 16.008535, 29.437286>,  <14.569514, 15.925770, 29.562933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.382530, 16.008535, 29.437286>,  <14.070890, 16.146477, 29.227877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.382530, 16.008535, 29.437286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363629, 0.431664, 0.825494,
		-0.510662, -0.833511, 0.210910,
		0.779101, -0.344855, 0.523524,
		14.616261, 15.905079, 29.594343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.796292, 15.781997, 29.755585>,  <14.070890, 16.146477, 29.227877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.796292, 15.781997, 29.755585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.172006, 15.855890, 29.871254>,  <14.397433, 15.900227, 29.940655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.172006, 15.855890, 29.871254>,  <13.796292, 15.781997, 29.755585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.172006, 15.855890, 29.871254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340190, 0.390986, 0.855220,
		0.044926, -0.901667, 0.430092,
		0.939283, 0.184735, 0.289172,
		14.453791, 15.911311, 29.958006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.831700, 15.422465, 30.463142>,  <13.796292, 15.781997, 29.755585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.831700, 15.422465, 30.463142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.129209, 15.689753, 30.456331>,  <14.307714, 15.850124, 30.452246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.129209, 15.689753, 30.456331>,  <13.831700, 15.422465, 30.463142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.129209, 15.689753, 30.456331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176118, 0.220475, 0.959361,
		0.644816, -0.710546, 0.281669,
		0.743771, 0.668218, -0.017026,
		14.352340, 15.890218, 30.451223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.105839, 15.332551, 31.111027>,  <13.831700, 15.422465, 30.463142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.105839, 15.332551, 31.111027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.274865, 15.674111, 30.989508>,  <14.376281, 15.879047, 30.916597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.274865, 15.674111, 30.989508>,  <14.105839, 15.332551, 31.111027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.274865, 15.674111, 30.989508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008127, 0.338750, 0.940841,
		0.906296, -0.395098, 0.150083,
		0.422565, 0.853900, -0.303797,
		14.401635, 15.930282, 30.898369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.695037, 15.440735, 31.569809>,  <14.105839, 15.332551, 31.111027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.695037, 15.440735, 31.569809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.620935, 15.797732, 31.405306>,  <14.576474, 16.011930, 31.306604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.620935, 15.797732, 31.405306>,  <14.695037, 15.440735, 31.569809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.620935, 15.797732, 31.405306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133396, 0.437469, 0.889284,
		0.973594, 0.109884, -0.200098,
		-0.185255, 0.892494, -0.411259,
		14.565359, 16.065481, 31.281927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.203305, 15.963157, 31.748556>,  <14.695037, 15.440735, 31.569809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.203305, 15.963157, 31.748556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.883574, 16.186039, 31.658583>,  <14.691734, 16.319769, 31.604599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.883574, 16.186039, 31.658583>,  <15.203305, 15.963157, 31.748556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.883574, 16.186039, 31.658583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062629, 0.449549, 0.891057,
		0.597622, 0.698160, -0.394235,
		-0.799328, 0.557206, -0.224935,
		14.643775, 16.353201, 31.591103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.402423, 16.770266, 31.911243>,  <15.203305, 15.963157, 31.748556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.402423, 16.770266, 31.911243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.004899, 16.727526, 31.899088>,  <14.766384, 16.701881, 31.891794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.004899, 16.727526, 31.899088>,  <15.402423, 16.770266, 31.911243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.004899, 16.727526, 31.899088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078534, 0.482280, 0.872490,
		-0.078569, 0.869476, -0.487686,
		-0.993810, -0.106851, -0.030391,
		14.706756, 16.695471, 31.889971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.937691, 17.453936, 31.925787>,  <15.402423, 16.770266, 31.911243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.937691, 17.453936, 31.925787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.768434, 17.132395, 32.093010>,  <14.666880, 16.939470, 32.193344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.768434, 17.132395, 32.093010>,  <14.937691, 17.453936, 31.925787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.768434, 17.132395, 32.093010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148050, 0.516541, 0.843366,
		-0.893885, 0.294971, -0.337581,
		-0.423143, -0.803851, 0.418058,
		14.641491, 16.891239, 32.218426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.831124, 17.986588, 32.223694>,  <14.937691, 17.453936, 31.925787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.831124, 17.986588, 32.223694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.507986, 18.216816, 32.274452>,  <14.314103, 18.354954, 32.304909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.507986, 18.216816, 32.274452>,  <14.831124, 17.986588, 32.223694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.507986, 18.216816, 32.274452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139574, 0.395993, -0.907584,
		-0.572630, -0.715476, -0.400236,
		-0.807845, 0.575572, 0.126896,
		14.265633, 18.389488, 32.312523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.182194, 17.859339, 31.788794>,  <14.831124, 17.986588, 32.223694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.182194, 17.859339, 31.788794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.294249, 18.232794, 31.878096>,  <14.361482, 18.456867, 31.931677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.294249, 18.232794, 31.878096>,  <14.182194, 17.859339, 31.788794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.294249, 18.232794, 31.878096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148433, 0.187644, -0.970957,
		-0.948415, 0.305139, -0.086017,
		0.280136, 0.933638, 0.223257,
		14.378289, 18.512886, 31.945072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.808482, 18.254042, 31.369967>,  <14.182194, 17.859339, 31.788794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.808482, 18.254042, 31.369967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.136312, 18.461060, 31.468311>,  <14.333009, 18.585270, 31.527319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.136312, 18.461060, 31.468311>,  <13.808482, 18.254042, 31.369967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.136312, 18.461060, 31.468311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086521, 0.312393, -0.946005,
		-0.566405, 0.796592, 0.211250,
		0.819573, 0.517544, 0.245863,
		14.382183, 18.616323, 31.542070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.710496, 18.782719, 30.905949>,  <13.808482, 18.254042, 31.369967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.710496, 18.782719, 30.905949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.091303, 18.827450, 31.019901>,  <14.319787, 18.854288, 31.088272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.091303, 18.827450, 31.019901>,  <13.710496, 18.782719, 30.905949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.091303, 18.827450, 31.019901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214476, 0.420241, -0.881702,
		-0.218318, 0.900495, 0.376092,
		0.952018, 0.111829, 0.284880,
		14.376908, 18.860998, 31.105366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.948137, 19.458149, 30.612137>,  <13.710496, 18.782719, 30.905949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.948137, 19.458149, 30.612137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.278205, 19.252991, 30.706825>,  <14.476246, 19.129896, 30.763638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.278205, 19.252991, 30.706825>,  <13.948137, 19.458149, 30.612137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.278205, 19.252991, 30.706825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323792, 0.086068, -0.942206,
		0.462877, 0.854127, 0.237091,
		0.825169, -0.512893, 0.236720,
		14.525756, 19.099123, 30.777842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.497177, 19.796659, 30.310555>,  <13.948137, 19.458149, 30.612137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.497177, 19.796659, 30.310555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.644270, 19.428669, 30.364841>,  <14.732526, 19.207874, 30.397413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.644270, 19.428669, 30.364841>,  <14.497177, 19.796659, 30.310555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.644270, 19.428669, 30.364841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491520, 0.068392, -0.868177,
		0.789419, 0.385964, 0.477336,
		0.367731, -0.919975, 0.135719,
		14.754589, 19.152676, 30.405558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.221990, 19.833609, 30.187635>,  <14.497177, 19.796659, 30.310555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.221990, 19.833609, 30.187635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.126036, 19.446220, 30.160755>,  <15.068463, 19.213787, 30.144627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.126036, 19.446220, 30.160755>,  <15.221990, 19.833609, 30.187635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.126036, 19.446220, 30.160755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476136, -0.057046, -0.877519,
		0.846020, -0.242500, 0.474809,
		-0.239884, -0.968473, -0.067201,
		15.054070, 19.155678, 30.140594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.936221, 19.551130, 30.031069>,  <15.221990, 19.833609, 30.187635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.936221, 19.551130, 30.031069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.677469, 19.274778, 29.901930>,  <15.522218, 19.108967, 29.824446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.677469, 19.274778, 29.901930>,  <15.936221, 19.551130, 30.031069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.677469, 19.274778, 29.901930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596430, -0.194542, -0.778733,
		0.475203, -0.696304, 0.537907,
		-0.646880, -0.690880, -0.322850,
		15.483405, 19.067514, 29.805075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.272095, 18.920469, 29.957001>,  <15.936221, 19.551130, 30.031069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.272095, 18.920469, 29.957001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.963028, 18.930788, 29.703287>,  <15.777587, 18.936979, 29.551060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.963028, 18.930788, 29.703287>,  <16.272095, 18.920469, 29.957001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.963028, 18.930788, 29.703287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620040, -0.183604, -0.762784,
		-0.136131, -0.982662, 0.125873,
		-0.772670, 0.025792, -0.634284,
		15.731227, 18.938526, 29.513002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.454380, 18.492693, 29.558067>,  <16.272095, 18.920469, 29.957001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.454380, 18.492693, 29.558067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.141476, 18.638340, 29.355885>,  <15.953733, 18.725729, 29.234575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.141476, 18.638340, 29.355885>,  <16.454380, 18.492693, 29.558067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.141476, 18.638340, 29.355885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378572, -0.366511, -0.849914,
		-0.494726, -0.856205, 0.148861,
		-0.782259, 0.364120, -0.505458,
		15.906797, 18.747576, 29.204247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.165344, 17.901089, 29.165871>,  <16.454380, 18.492693, 29.558067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.165344, 17.901089, 29.165871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.072985, 18.242531, 28.979090>,  <16.017569, 18.447395, 28.867022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.072985, 18.242531, 28.979090>,  <16.165344, 17.901089, 29.165871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.072985, 18.242531, 28.979090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417323, -0.346652, -0.840044,
		-0.878936, -0.388834, -0.276188,
		-0.230897, 0.853604, -0.466954,
		16.003716, 18.498611, 28.839003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.975568, 17.690948, 28.564798>,  <16.165344, 17.901089, 29.165871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.975568, 17.690948, 28.564798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.021471, 18.080610, 28.486975>,  <16.049013, 18.314407, 28.440281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.021471, 18.080610, 28.486975>,  <15.975568, 17.690948, 28.564798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.021471, 18.080610, 28.486975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499135, -0.225879, -0.836566,
		-0.858892, -0.001108, -0.512156,
		0.114758, 0.974155, -0.194558,
		16.055899, 18.372856, 28.428608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.692142, 17.770725, 27.869207>,  <15.975568, 17.690948, 28.564798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.692142, 17.770725, 27.869207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.955072, 18.060459, 27.952402>,  <16.112831, 18.234301, 28.002319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.955072, 18.060459, 27.952402>,  <15.692142, 17.770725, 27.869207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.955072, 18.060459, 27.952402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552859, -0.275948, -0.786257,
		-0.512120, 0.631815, -0.581844,
		0.657327, 0.724336, 0.207987,
		16.152271, 18.277760, 28.014797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.874613, 18.161806, 27.188114>,  <15.692142, 17.770725, 27.869207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.874613, 18.161806, 27.188114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.186647, 18.168600, 27.438290>,  <16.373869, 18.172676, 27.588396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.186647, 18.168600, 27.438290>,  <15.874613, 18.161806, 27.188114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.186647, 18.168600, 27.438290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599189, -0.308030, -0.738979,
		0.180102, 0.951225, -0.250468,
		0.780087, 0.016986, 0.625440,
		16.420673, 18.173697, 27.625921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.385656, 18.717924, 26.985180>,  <15.874613, 18.161806, 27.188114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.385656, 18.717924, 26.985180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.568361, 18.424915, 27.187084>,  <16.677984, 18.249111, 27.308228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.568361, 18.424915, 27.187084>,  <16.385656, 18.717924, 26.985180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.568361, 18.424915, 27.187084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476107, -0.278009, -0.834286,
		0.751459, 0.621390, 0.221774,
		0.456762, -0.732520, 0.504761,
		16.705389, 18.205160, 27.338512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.138969, 18.729279, 26.784575>,  <16.385656, 18.717924, 26.985180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.138969, 18.729279, 26.784575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.041073, 18.366360, 26.921345>,  <16.982334, 18.148609, 27.003407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.041073, 18.366360, 26.921345>,  <17.138969, 18.729279, 26.784575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.041073, 18.366360, 26.921345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497928, -0.420209, -0.758612,
		0.831967, -0.015409, 0.554611,
		-0.244742, -0.907297, 0.341928,
		16.967649, 18.094172, 27.023924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.726603, 18.408876, 26.718029>,  <17.138969, 18.729279, 26.784575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.726603, 18.408876, 26.718029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.493025, 18.092216, 26.789917>,  <17.352879, 17.902220, 26.833050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.493025, 18.092216, 26.789917>,  <17.726603, 18.408876, 26.718029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.493025, 18.092216, 26.789917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268815, -0.397462, -0.877361,
		0.765995, -0.464018, 0.444903,
		-0.583944, -0.791650, 0.179719,
		17.317842, 17.854721, 26.843832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.103260, 17.869497, 26.573240>,  <17.726603, 18.408876, 26.718029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.103260, 17.869497, 26.573240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.730244, 17.729849, 26.536398>,  <17.506433, 17.646059, 26.514292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.730244, 17.729849, 26.536398>,  <18.103260, 17.869497, 26.573240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.730244, 17.729849, 26.536398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249142, -0.437546, -0.863992,
		0.261338, -0.828654, 0.495010,
		-0.932540, -0.349122, -0.092106,
		17.450481, 17.625113, 26.508766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.203499, 17.198662, 26.279064>,  <18.103260, 17.869497, 26.573240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.203499, 17.198662, 26.279064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.818869, 17.283945, 26.209881>,  <17.588091, 17.335115, 26.168371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.818869, 17.283945, 26.209881>,  <18.203499, 17.198662, 26.279064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.818869, 17.283945, 26.209881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068256, -0.424553, -0.902826,
		-0.265919, -0.879942, 0.393687,
		-0.961576, 0.213207, -0.172958,
		17.530396, 17.347908, 26.157993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.908527, 16.567375, 26.118128>,  <18.203499, 17.198662, 26.279064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.908527, 16.567375, 26.118128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.680422, 16.856216, 25.961479>,  <17.543558, 17.029522, 25.867491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.680422, 16.856216, 25.961479>,  <17.908527, 16.567375, 26.118128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.680422, 16.856216, 25.961479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161871, -0.368607, -0.915383,
		-0.805357, -0.585400, 0.093314,
		-0.570261, 0.722105, -0.391620,
		17.509344, 17.072847, 25.843994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.718388, 16.285196, 25.608154>,  <17.908527, 16.567375, 26.118128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.718388, 16.285196, 25.608154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.603436, 16.657278, 25.516823>,  <17.534464, 16.880527, 25.462023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.603436, 16.657278, 25.516823>,  <17.718388, 16.285196, 25.608154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.603436, 16.657278, 25.516823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179080, -0.182000, -0.966854,
		-0.940926, -0.318746, -0.114278,
		-0.287382, 0.930203, -0.228330,
		17.517221, 16.936338, 25.448324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.327518, 16.288502, 24.966152>,  <17.718388, 16.285196, 25.608154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.327518, 16.288502, 24.966152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.500866, 16.646641, 25.007219>,  <17.604874, 16.861525, 25.031858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.500866, 16.646641, 25.007219>,  <17.327518, 16.288502, 24.966152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.500866, 16.646641, 25.007219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301722, -0.036801, -0.952685,
		-0.849208, 0.443841, -0.286095,
		0.433369, 0.895349, 0.102665,
		17.630877, 16.915245, 25.038019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.013611, 16.617712, 24.413980>,  <17.327518, 16.288502, 24.966152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.013611, 16.617712, 24.413980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.342505, 16.821875, 24.514709>,  <17.539841, 16.944372, 24.575148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.342505, 16.821875, 24.514709>,  <17.013611, 16.617712, 24.413980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.342505, 16.821875, 24.514709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351397, -0.107203, -0.930069,
		-0.447716, 0.853225, -0.267501,
		0.822235, 0.510406, 0.251825,
		17.589174, 16.974997, 24.590258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.161398, 17.102800, 23.918066>,  <17.013611, 16.617712, 24.413980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.161398, 17.102800, 23.918066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.516531, 17.084637, 24.101234>,  <17.729610, 17.073738, 24.211136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.516531, 17.084637, 24.101234>,  <17.161398, 17.102800, 23.918066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.516531, 17.084637, 24.101234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453881, -0.077526, -0.887683,
		0.075810, 0.995956, -0.048219,
		0.887831, -0.045409, 0.457923,
		17.782881, 17.071014, 24.238611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.560049, 17.608662, 23.592018>,  <17.161398, 17.102800, 23.918066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.560049, 17.608662, 23.592018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.842455, 17.381601, 23.761402>,  <18.011898, 17.245365, 23.863033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.842455, 17.381601, 23.761402>,  <17.560049, 17.608662, 23.592018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.842455, 17.381601, 23.761402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400724, -0.172809, -0.899754,
		0.583922, 0.804930, 0.105465,
		0.706014, -0.567649, 0.423461,
		18.054258, 17.211308, 23.888441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.280479, 17.854971, 23.433392>,  <17.560049, 17.608662, 23.592018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.280479, 17.854971, 23.433392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.306595, 17.462788, 23.507626>,  <18.322264, 17.227478, 23.552166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.306595, 17.462788, 23.507626>,  <18.280479, 17.854971, 23.433392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.306595, 17.462788, 23.507626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515448, -0.126110, -0.847591,
		0.854430, 0.150997, 0.497141,
		0.065289, -0.980457, 0.185583,
		18.326181, 17.168650, 23.563301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.802916, 17.615505, 23.084591>,  <18.280479, 17.854971, 23.433392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.802916, 17.615505, 23.084591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.699417, 17.241167, 23.180298>,  <18.637318, 17.016565, 23.237722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.699417, 17.241167, 23.180298>,  <18.802916, 17.615505, 23.084591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.699417, 17.241167, 23.180298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535055, -0.345085, -0.771124,
		0.804218, -0.071504, 0.590017,
		-0.258744, -0.935844, 0.239265,
		18.621794, 16.960413, 23.252077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.407328, 17.289621, 23.129091>,  <18.802916, 17.615505, 23.084591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.407328, 17.289621, 23.129091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.132927, 17.006594, 23.061272>,  <18.968287, 16.836777, 23.020580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.132927, 17.006594, 23.061272>,  <19.407328, 17.289621, 23.129091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.132927, 17.006594, 23.061272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513730, -0.306012, -0.801522,
		0.515249, -0.636947, 0.573425,
		-0.686002, -0.707570, -0.169546,
		18.927126, 16.794323, 23.010408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.839931, 16.749487, 22.946360>,  <19.407328, 17.289621, 23.129091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.839931, 16.749487, 22.946360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.465715, 16.676926, 22.825127>,  <19.241186, 16.633389, 22.752386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.465715, 16.676926, 22.825127>,  <19.839931, 16.749487, 22.946360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.465715, 16.676926, 22.825127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342486, -0.255890, -0.904004,
		0.086435, -0.949533, 0.301524,
		-0.935539, -0.181405, -0.303084,
		19.185055, 16.622503, 22.734201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.925728, 16.179817, 22.547609>,  <19.839931, 16.749487, 22.946360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.925728, 16.179817, 22.547609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.583921, 16.354563, 22.435215>,  <19.378838, 16.459410, 22.367779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.583921, 16.354563, 22.435215>,  <19.925728, 16.179817, 22.547609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.583921, 16.354563, 22.435215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236741, -0.153936, -0.959300,
		-0.462338, -0.886258, 0.028117,
		-0.854515, 0.436865, -0.280985,
		19.327566, 16.485622, 22.350920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.525656, 15.642722, 22.131601>,  <19.925728, 16.179817, 22.547609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.525656, 15.642722, 22.131601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.409861, 16.013502, 22.036135>,  <19.340384, 16.235970, 21.978855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.409861, 16.013502, 22.036135>,  <19.525656, 15.642722, 22.131601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.409861, 16.013502, 22.036135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074999, -0.226612, -0.971093,
		-0.954239, -0.299020, -0.003919,
		-0.289488, 0.926949, -0.238668,
		19.323013, 16.291586, 21.964535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.154884, 15.542963, 21.522718>,  <19.525656, 15.642722, 22.131601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.154884, 15.542963, 21.522718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.235153, 15.934815, 21.519857>,  <19.283316, 16.169928, 21.518141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.235153, 15.934815, 21.519857>,  <19.154884, 15.542963, 21.522718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.235153, 15.934815, 21.519857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168142, -0.041636, -0.984883,
		-0.965121, 0.196437, -0.173073,
		0.200673, 0.979632, -0.007155,
		19.295355, 16.228704, 21.517712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.913326, 15.776476, 20.877304>,  <19.154884, 15.542963, 21.522718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.913326, 15.776476, 20.877304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.154728, 16.077265, 20.983374>,  <19.299570, 16.257738, 21.047016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.154728, 16.077265, 20.983374>,  <18.913326, 15.776476, 20.877304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.154728, 16.077265, 20.983374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210813, 0.170254, -0.962586,
		-0.768985, 0.636829, -0.055776,
		0.603506, 0.751972, 0.265175,
		19.335779, 16.302856, 21.062925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.662926, 16.305105, 20.573729>,  <18.913326, 15.776476, 20.877304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.662926, 16.305105, 20.573729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.040340, 16.415737, 20.646656>,  <19.266790, 16.482117, 20.690413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.040340, 16.415737, 20.646656>,  <18.662926, 16.305105, 20.573729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.040340, 16.415737, 20.646656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104601, 0.273463, -0.956178,
		-0.314315, 0.921262, 0.229093,
		0.943538, 0.276578, 0.182319,
		19.323402, 16.498711, 20.701351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.647709, 16.957865, 20.408615>,  <18.662926, 16.305105, 20.573729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.647709, 16.957865, 20.408615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.034781, 16.863035, 20.374226>,  <19.267023, 16.806137, 20.353592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.034781, 16.863035, 20.374226>,  <18.647709, 16.957865, 20.408615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.034781, 16.863035, 20.374226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039034, 0.477621, -0.877699,
		0.249140, 0.845976, 0.471438,
		0.967681, -0.237072, -0.085972,
		19.325085, 16.791914, 20.348434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.972176, 17.642485, 20.235960>,  <18.647709, 16.957865, 20.408615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.972176, 17.642485, 20.235960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.239168, 17.356365, 20.153194>,  <19.399364, 17.184694, 20.103535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.239168, 17.356365, 20.153194>,  <18.972176, 17.642485, 20.235960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.239168, 17.356365, 20.153194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358485, 0.552248, -0.752669,
		0.652652, 0.428218, 0.625040,
		0.667483, -0.715299, -0.206916,
		19.439413, 17.141775, 20.091120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.625265, 17.896597, 20.139902>,  <18.972176, 17.642485, 20.235960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.625265, 17.896597, 20.139902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.641689, 17.555857, 19.931032>,  <19.651545, 17.351414, 19.805710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.641689, 17.555857, 19.931032>,  <19.625265, 17.896597, 20.139902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.641689, 17.555857, 19.931032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396054, 0.493682, -0.774221,
		0.917309, -0.175020, 0.357649,
		0.041061, -0.851848, -0.522176,
		19.654007, 17.300303, 19.774380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.321301, 17.851950, 19.888464>,  <19.625265, 17.896597, 20.139902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.321301, 17.851950, 19.888464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.122868, 17.594383, 19.655476>,  <20.003807, 17.439844, 19.515682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.122868, 17.594383, 19.655476>,  <20.321301, 17.851950, 19.888464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.122868, 17.594383, 19.655476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596854, 0.234320, -0.767372,
		0.630608, -0.728331, 0.268081,
		-0.496084, -0.643916, -0.582471,
		19.974043, 17.401209, 19.480734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.793266, 17.451521, 19.689003>,  <20.321301, 17.851950, 19.888464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.793266, 17.451521, 19.689003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.503860, 17.453432, 19.412888>,  <20.330217, 17.454578, 19.247217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.503860, 17.453432, 19.412888>,  <20.793266, 17.451521, 19.689003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.503860, 17.453432, 19.412888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678976, 0.185366, -0.710374,
		0.124563, -0.982658, -0.137358,
		-0.723516, 0.004777, -0.690291,
		20.286806, 17.454866, 19.205801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.197922, 17.359735, 19.054768>,  <20.793266, 17.451521, 19.689003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.197922, 17.359735, 19.054768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.841896, 17.466843, 18.907207>,  <20.628281, 17.531107, 18.818672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.841896, 17.466843, 18.907207>,  <21.197922, 17.359735, 19.054768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.841896, 17.466843, 18.907207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429922, 0.224132, -0.874604,
		-0.151510, -0.937051, -0.314612,
		-0.890063, 0.267770, -0.368900,
		20.574877, 17.547173, 18.796537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.231926, 16.998604, 18.396980>,  <21.197922, 17.359735, 19.054768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.231926, 16.998604, 18.396980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.969370, 17.300314, 18.391027>,  <20.811836, 17.481340, 18.387457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.969370, 17.300314, 18.391027>,  <21.231926, 16.998604, 18.396980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.969370, 17.300314, 18.391027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430155, 0.357981, -0.828744,
		-0.619774, -0.550379, -0.559431,
		-0.656389, 0.754276, -0.014881,
		20.772453, 17.526596, 18.386562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.889862, 17.021812, 17.795586>,  <21.231926, 16.998604, 18.396980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.889862, 17.021812, 17.795586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.902811, 17.410131, 17.890671>,  <20.910580, 17.643122, 17.947721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.902811, 17.410131, 17.890671>,  <20.889862, 17.021812, 17.795586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.902811, 17.410131, 17.890671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524946, 0.185877, -0.830591,
		-0.850520, 0.151672, -0.503599,
		0.032371, 0.970796, 0.237712,
		20.912521, 17.701370, 17.961985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.729301, 16.467165, 17.442024>,  <20.889862, 17.021812, 17.795586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.729301, 16.467165, 17.442024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.754793, 16.335176, 17.065289>,  <20.770088, 16.255983, 16.839247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.754793, 16.335176, 17.065289>,  <20.729301, 16.467165, 17.442024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.754793, 16.335176, 17.065289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995247, -0.048617, 0.084376,
		-0.073631, -0.942738, 0.325305,
		0.063729, -0.329972, -0.941837,
		20.773912, 16.236185, 16.782738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.270279, 16.833128, 17.047606>,  <20.729301, 16.467165, 17.442024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.270279, 16.833128, 17.047606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.652334, 16.904293, 17.142311>,  <21.881567, 16.946993, 17.199135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.652334, 16.904293, 17.142311>,  <21.270279, 16.833128, 17.047606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.652334, 16.904293, 17.142311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016205, -0.829645, 0.558056,
		0.295716, -0.529185, -0.795309,
		0.955138, 0.177914, 0.236764,
		21.938875, 16.957666, 17.213341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.735779, 16.382902, 16.713728>,  <21.270279, 16.833128, 17.047606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.735779, 16.382902, 16.713728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.819595, 16.496977, 17.087843>,  <21.869886, 16.565422, 17.312311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.819595, 16.496977, 17.087843>,  <21.735779, 16.382902, 16.713728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.819595, 16.496977, 17.087843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110157, -0.943548, 0.312383,
		0.971575, -0.168486, -0.166298,
		0.209543, 0.285185, 0.935287,
		21.882458, 16.582533, 17.368429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.413635, 16.220369, 16.662779>,  <21.735779, 16.382902, 16.713728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.413635, 16.220369, 16.662779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.784298, 16.362324, 16.613197>,  <23.006695, 16.447496, 16.583448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.784298, 16.362324, 16.613197>,  <22.413635, 16.220369, 16.662779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.784298, 16.362324, 16.613197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323493, 0.920796, 0.217914,
		0.191473, -0.161833, 0.968064,
		0.926655, 0.354886, -0.123956,
		23.062294, 16.468790, 16.576010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.592566, 16.608339, 17.213337>,  <22.413635, 16.220369, 16.662779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.592566, 16.608339, 17.213337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.821985, 16.772448, 16.929726>,  <22.959637, 16.870913, 16.759560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.821985, 16.772448, 16.929726>,  <22.592566, 16.608339, 17.213337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.821985, 16.772448, 16.929726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453614, 0.879790, 0.142139,
		0.682109, 0.240100, 0.690709,
		0.573552, 0.410269, -0.709026,
		22.994051, 16.895529, 16.717018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.927023, 17.217714, 17.494339>,  <22.592566, 16.608339, 17.213337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.927023, 17.217714, 17.494339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.905905, 17.257389, 17.096872>,  <22.893234, 17.281195, 16.858393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.905905, 17.257389, 17.096872>,  <22.927023, 17.217714, 17.494339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.905905, 17.257389, 17.096872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264452, 0.958140, 0.109692,
		0.962953, 0.268568, -0.024353,
		-0.052794, 0.099188, -0.993667,
		22.890066, 17.287146, 16.798773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.273716, 17.744598, 17.288557>,  <22.927023, 17.217714, 17.494339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.273716, 17.744598, 17.288557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.968819, 17.699123, 17.033667>,  <22.785879, 17.671839, 16.880732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.968819, 17.699123, 17.033667>,  <23.273716, 17.744598, 17.288557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.968819, 17.699123, 17.033667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367677, 0.886262, 0.281696,
		0.532725, 0.449015, -0.717349,
		-0.762245, -0.113686, -0.637226,
		22.740145, 17.665018, 16.842499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.194500, 18.411707, 16.920898>,  <23.273716, 17.744598, 17.288557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.194500, 18.411707, 16.920898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.852991, 18.226416, 16.825829>,  <22.648085, 18.115240, 16.768785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.852991, 18.226416, 16.825829>,  <23.194500, 18.411707, 16.920898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.852991, 18.226416, 16.825829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441375, 0.886096, -0.141503,
		0.276152, -0.015907, -0.960982,
		-0.853773, -0.463230, -0.237676,
		22.596859, 18.087446, 16.754526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.039139, 18.700623, 16.347502>,  <23.194500, 18.411707, 16.920898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.039139, 18.700623, 16.347502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.696417, 18.537668, 16.473944>,  <22.490784, 18.439896, 16.549809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.696417, 18.537668, 16.473944>,  <23.039139, 18.700623, 16.347502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.696417, 18.537668, 16.473944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495692, 0.819599, -0.287309,
		-0.142033, -0.402858, -0.904175,
		-0.856806, -0.407385, 0.316104,
		22.439375, 18.415453, 16.568775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.567852, 18.854757, 15.815362>,  <23.039139, 18.700623, 16.347502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.567852, 18.854757, 15.815362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.379511, 18.809187, 16.165293>,  <22.266506, 18.781845, 16.375252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.379511, 18.809187, 16.165293>,  <22.567852, 18.854757, 15.815362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.379511, 18.809187, 16.165293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423947, 0.898844, -0.111123,
		-0.773672, -0.423202, -0.471520,
		-0.470851, -0.113926, 0.874826,
		22.238256, 18.775009, 16.427740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.862059, 19.006424, 15.675492>,  <22.567852, 18.854757, 15.815362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.862059, 19.006424, 15.675492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.908495, 19.048876, 16.070513>,  <21.936357, 19.074347, 16.307526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.908495, 19.048876, 16.070513>,  <21.862059, 19.006424, 15.675492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.908495, 19.048876, 16.070513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572350, 0.819745, -0.020812,
		-0.811750, -0.562810, 0.155909,
		0.116092, 0.106129, 0.987552,
		21.943323, 19.080715, 16.366779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.302137, 19.369381, 15.831623>,  <21.862059, 19.006424, 15.675492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.302137, 19.369381, 15.831623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.507130, 19.418571, 16.171562>,  <21.630125, 19.448086, 16.375526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.507130, 19.418571, 16.171562>,  <21.302137, 19.369381, 15.831623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.507130, 19.418571, 16.171562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404021, 0.907834, 0.112268,
		-0.757715, -0.400891, 0.514931,
		0.512479, 0.122976, 0.849848,
		21.660873, 19.455463, 16.426517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.835688, 19.634117, 16.368303>,  <21.302137, 19.369381, 15.831623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.835688, 19.634117, 16.368303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.215147, 19.720642, 16.460630>,  <21.442822, 19.772558, 16.516027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.215147, 19.720642, 16.460630>,  <20.835688, 19.634117, 16.368303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.215147, 19.720642, 16.460630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215836, 0.976039, -0.027638,
		-0.231267, -0.023601, 0.972604,
		0.948647, 0.216315, 0.230819,
		21.499741, 19.785536, 16.529877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.787159, 20.119375, 16.972157>,  <20.835688, 19.634117, 16.368303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.787159, 20.119375, 16.972157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.171009, 20.180351, 16.877596>,  <21.401320, 20.216936, 16.820860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.171009, 20.180351, 16.877596>,  <20.787159, 20.119375, 16.972157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.171009, 20.180351, 16.877596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105237, 0.973954, 0.200843,
		0.260860, -0.167856, 0.950671,
		0.959624, 0.152438, -0.236401,
		21.458897, 20.226082, 16.806675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.020824, 20.597511, 17.404982>,  <20.787159, 20.119375, 16.972157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.020824, 20.597511, 17.404982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.274893, 20.641275, 17.099148>,  <21.427334, 20.667534, 16.915648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.274893, 20.641275, 17.099148>,  <21.020824, 20.597511, 17.404982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.274893, 20.641275, 17.099148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031944, 0.992791, 0.115526,
		0.771711, -0.048955, 0.634086,
		0.635170, 0.109408, -0.764584,
		21.465445, 20.674097, 16.869772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.630827, 21.009586, 17.688124>,  <21.020824, 20.597511, 17.404982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.630827, 21.009586, 17.688124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.594505, 21.036985, 17.290720>,  <21.572712, 21.053425, 17.052277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.594505, 21.036985, 17.290720>,  <21.630827, 21.009586, 17.688124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.594505, 21.036985, 17.290720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079592, 0.994940, 0.061320,
		0.992683, -0.073507, -0.095796,
		-0.090804, 0.068496, -0.993510,
		21.567265, 21.057533, 16.992666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.919369, 21.610065, 17.618206>,  <21.630827, 21.009586, 17.688124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.919369, 21.610065, 17.618206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.781525, 21.541962, 17.248936>,  <21.698818, 21.501099, 17.027372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.781525, 21.541962, 17.248936>,  <21.919369, 21.610065, 17.618206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.781525, 21.541962, 17.248936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002981, 0.983608, -0.180293,
		0.938741, -0.059379, -0.339469,
		-0.344611, -0.170260, -0.923176,
		21.678143, 21.490883, 16.971983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.408026, 21.837563, 17.189301>,  <21.919369, 21.610065, 17.618206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.408026, 21.837563, 17.189301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.058273, 21.845900, 16.995384>,  <21.848421, 21.850901, 16.879034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.058273, 21.845900, 16.995384>,  <22.408026, 21.837563, 17.189301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.058273, 21.845900, 16.995384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189905, 0.934084, -0.302363,
		0.446532, -0.356445, -0.820705,
		-0.874382, 0.020841, -0.484789,
		21.795958, 21.852152, 16.849947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.522259, 22.086676, 16.564697>,  <22.408026, 21.837563, 17.189301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.522259, 22.086676, 16.564697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.131289, 22.156799, 16.611870>,  <21.896706, 22.198874, 16.640173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.131289, 22.156799, 16.611870>,  <22.522259, 22.086676, 16.564697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.131289, 22.156799, 16.611870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128279, 0.935904, -0.328067,
		-0.167884, -0.305533, -0.937264,
		-0.977425, 0.175309, 0.117930,
		21.838060, 22.209393, 16.647249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.380592, 22.365187, 15.955399>,  <22.522259, 22.086676, 16.564697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.380592, 22.365187, 15.955399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.074047, 22.447422, 16.198849>,  <21.890120, 22.496763, 16.344919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.074047, 22.447422, 16.198849>,  <22.380592, 22.365187, 15.955399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.074047, 22.447422, 16.198849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049686, 0.925602, -0.375224,
		-0.640485, -0.317797, -0.699130,
		-0.766361, 0.205589, 0.608625,
		21.844139, 22.509098, 16.381435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.807163, 22.643061, 15.533518>,  <22.380592, 22.365187, 15.955399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.807163, 22.643061, 15.533518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.729519, 22.777025, 15.902333>,  <21.682932, 22.857405, 16.123623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.729519, 22.777025, 15.902333>,  <21.807163, 22.643061, 15.533518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.729519, 22.777025, 15.902333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047467, 0.935609, -0.349834,
		-0.979830, -0.111673, -0.165715,
		-0.194111, 0.334912, 0.922038,
		21.671286, 22.877499, 16.178946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.182236, 22.919565, 15.514558>,  <21.807163, 22.643061, 15.533518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.182236, 22.919565, 15.514558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.415739, 23.072626, 15.801000>,  <21.555841, 23.164463, 15.972864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.415739, 23.072626, 15.801000>,  <21.182236, 22.919565, 15.514558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.415739, 23.072626, 15.801000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181728, 0.921182, -0.344092,
		-0.791328, 0.070730, 0.607286,
		0.583759, 0.382651, 0.716103,
		21.590866, 23.187422, 16.015831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.984814, 23.715275, 15.557540>,  <21.182236, 22.919565, 15.514558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.984814, 23.715275, 15.557540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.320213, 23.704670, 15.775242>,  <21.521454, 23.698307, 15.905863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.320213, 23.704670, 15.775242>,  <20.984814, 23.715275, 15.557540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.320213, 23.704670, 15.775242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129948, 0.979726, -0.152479,
		-0.529179, 0.198579, 0.824946,
		0.838501, -0.026511, 0.544255,
		21.571764, 23.696716, 15.938519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.843975, 24.207310, 16.046865>,  <20.984814, 23.715275, 15.557540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.843975, 24.207310, 16.046865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.241829, 24.167915, 16.034187>,  <21.480541, 24.144279, 16.026581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.241829, 24.167915, 16.034187>,  <20.843975, 24.207310, 16.046865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.241829, 24.167915, 16.034187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094489, 0.989491, -0.109448,
		0.042140, 0.105866, 0.993487,
		0.994634, -0.098485, -0.031694,
		21.540218, 24.138371, 16.024679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.127190, 24.745543, 16.454683>,  <20.843975, 24.207310, 16.046865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.127190, 24.745543, 16.454683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.426682, 24.625734, 16.218145>,  <21.606377, 24.553848, 16.076223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.426682, 24.625734, 16.218145>,  <21.127190, 24.745543, 16.454683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.426682, 24.625734, 16.218145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321349, 0.944265, -0.071404,
		0.579774, -0.136566, 0.803251,
		0.748730, -0.299522, -0.591345,
		21.651300, 24.535877, 16.040741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.641966, 25.238874, 16.698488>,  <21.127190, 24.745543, 16.454683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.641966, 25.238874, 16.698488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.724670, 25.108112, 16.329624>,  <21.774292, 25.029655, 16.108305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.724670, 25.108112, 16.329624>,  <21.641966, 25.238874, 16.698488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.724670, 25.108112, 16.329624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006916, 0.942993, -0.332740,
		0.978367, 0.062419, 0.197234,
		0.206759, -0.326906, -0.922162,
		21.786697, 25.010040, 16.052975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.190853, 25.717300, 16.477936>,  <21.641966, 25.238874, 16.698488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.190853, 25.717300, 16.477936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.038712, 25.563440, 16.141514>,  <21.947426, 25.471125, 15.939661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.038712, 25.563440, 16.141514>,  <22.190853, 25.717300, 16.477936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.038712, 25.563440, 16.141514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010955, 0.907468, -0.419979,
		0.924777, -0.168954, -0.340944,
		-0.380353, -0.384651, -0.841056,
		21.924604, 25.448046, 15.889197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.522392, 25.938362, 15.929325>,  <22.190853, 25.717300, 16.477936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.522392, 25.938362, 15.929325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.176500, 25.856266, 15.745972>,  <21.968966, 25.807009, 15.635960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.176500, 25.856266, 15.745972>,  <22.522392, 25.938362, 15.929325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.176500, 25.856266, 15.745972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052453, 0.870791, -0.488847,
		0.499488, -0.446765, -0.742235,
		-0.864731, -0.205241, -0.458384,
		21.917082, 25.794693, 15.608457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.524136, 26.221134, 15.291361>,  <22.522392, 25.938362, 15.929325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.524136, 26.221134, 15.291361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.133924, 26.160431, 15.355000>,  <21.899797, 26.124008, 15.393183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.133924, 26.160431, 15.355000>,  <22.524136, 26.221134, 15.291361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.133924, 26.160431, 15.355000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182868, 0.961765, -0.203879,
		-0.122073, -0.227984, -0.965982,
		-0.975529, -0.151759, 0.159097,
		21.841265, 26.114902, 15.402728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.149912, 26.490580, 14.697656>,  <22.524136, 26.221134, 15.291361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.149912, 26.490580, 14.697656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.920393, 26.498804, 15.025151>,  <21.782682, 26.503738, 15.221648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.920393, 26.498804, 15.025151>,  <22.149912, 26.490580, 14.697656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.920393, 26.498804, 15.025151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125488, 0.985673, -0.112702,
		-0.809326, -0.167410, -0.562997,
		-0.573798, 0.020564, 0.818739,
		21.748253, 26.504972, 15.270773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.117424, 25.680643, 14.726870>,  <22.149912, 26.490580, 14.697656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.117424, 25.680643, 14.726870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.283941, 25.368929, 14.539502>,  <22.383852, 25.181900, 14.427082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.283941, 25.368929, 14.539502>,  <22.117424, 25.680643, 14.726870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.283941, 25.368929, 14.539502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849056, -0.148880, -0.506891,
		0.325274, 0.608729, -0.723634,
		0.416294, -0.779284, -0.468418,
		22.408829, 25.135143, 14.398976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.001259, 25.706017, 13.873607>,  <22.117424, 25.680643, 14.726870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.001259, 25.706017, 13.873607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.327223, 25.705648, 13.641773>,  <22.522802, 25.705427, 13.502673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.327223, 25.705648, 13.641773>,  <22.001259, 25.706017, 13.873607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.327223, 25.705648, 13.641773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177545, -0.952320, -0.248123,
		-0.551721, 0.305101, -0.776220,
		0.814912, -0.000919, -0.579584,
		22.571697, 25.705372, 13.467898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.890333, 25.247740, 13.468411>,  <22.001259, 25.706017, 13.873607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.890333, 25.247740, 13.468411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.277006, 25.301609, 13.381334>,  <22.509010, 25.333931, 13.329088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.277006, 25.301609, 13.381334>,  <21.890333, 25.247740, 13.468411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.277006, 25.301609, 13.381334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060340, -0.946337, -0.317499,
		-0.248769, 0.293785, -0.922932,
		0.966681, 0.134674, -0.217693,
		22.567011, 25.342010, 13.316027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.161091, 24.777468, 12.891157>,  <21.890333, 25.247740, 13.468411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.161091, 24.777468, 12.891157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.473515, 24.868202, 13.123878>,  <22.660969, 24.922642, 13.263510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.473515, 24.868202, 13.123878>,  <22.161091, 24.777468, 12.891157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.473515, 24.868202, 13.123878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254043, -0.966531, 0.035786,
		0.570447, 0.119852, -0.812543,
		0.781059, 0.226835, 0.581802,
		22.707832, 24.936253, 13.298418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.753408, 24.630388, 12.543161>,  <22.161091, 24.777468, 12.891157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.753408, 24.630388, 12.543161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.768730, 24.600241, 12.941730>,  <22.777924, 24.582151, 13.180870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.768730, 24.600241, 12.941730>,  <22.753408, 24.630388, 12.543161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.768730, 24.600241, 12.941730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176161, -0.981025, -0.080978,
		0.983616, 0.178632, -0.024301,
		0.038305, -0.075371, 0.996419,
		22.780222, 24.577629, 13.240656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.198317, 24.013451, 12.617005>,  <22.753408, 24.630388, 12.543161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.198317, 24.013451, 12.617005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.035442, 24.024429, 12.982179>,  <22.937717, 24.031015, 13.201283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.035442, 24.024429, 12.982179>,  <23.198317, 24.013451, 12.617005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.035442, 24.024429, 12.982179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013112, -0.999270, 0.035889,
		0.913251, 0.026584, 0.406529,
		-0.407186, 0.027446, 0.912933,
		22.913286, 24.032663, 13.256059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.615597, 23.728907, 13.259043>,  <23.198317, 24.013451, 12.617005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.615597, 23.728907, 13.259043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.215925, 23.713579, 13.264359>,  <22.976122, 23.704382, 13.267548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.215925, 23.713579, 13.264359>,  <23.615597, 23.728907, 13.259043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.215925, 23.713579, 13.264359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039658, -0.991711, 0.122217,
		0.008495, 0.122644, 0.992414,
		-0.999177, -0.038319, 0.013289,
		22.916172, 23.702084, 13.268345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.286268, 23.471296, 13.979873>,  <23.615597, 23.728907, 13.259043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.286268, 23.471296, 13.979873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.070677, 23.383875, 13.654484>,  <22.941322, 23.331423, 13.459250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.070677, 23.383875, 13.654484>,  <23.286268, 23.471296, 13.979873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.070677, 23.383875, 13.654484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009062, -0.967201, 0.253850,
		-0.842271, 0.129448, 0.523282,
		-0.538979, -0.218552, -0.813472,
		22.908983, 23.318310, 13.410442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.731911, 23.219379, 14.235438>,  <23.286268, 23.471296, 13.979873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.731911, 23.219379, 14.235438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.744610, 23.090925, 13.856838>,  <22.752230, 23.013853, 13.629678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.744610, 23.090925, 13.856838>,  <22.731911, 23.219379, 14.235438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.744610, 23.090925, 13.856838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035166, -0.946033, 0.322157,
		-0.998877, -0.043513, -0.018742,
		0.031749, -0.321136, -0.946501,
		22.754135, 22.994585, 13.572888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.127384, 22.757633, 14.079431>,  <22.731911, 23.219379, 14.235438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.127384, 22.757633, 14.079431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.422050, 22.671141, 13.823129>,  <22.598850, 22.619246, 13.669348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.422050, 22.671141, 13.823129>,  <22.127384, 22.757633, 14.079431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.422050, 22.671141, 13.823129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020933, -0.939757, 0.341201,
		-0.675931, -0.264765, -0.687762,
		0.736667, -0.216232, -0.640754,
		22.643051, 22.606272, 13.630902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.996582, 22.046783, 13.912913>,  <22.127384, 22.757633, 14.079431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.996582, 22.046783, 13.912913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.368650, 22.120502, 13.785908>,  <22.591892, 22.164734, 13.709704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.368650, 22.120502, 13.785908>,  <21.996582, 22.046783, 13.912913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.368650, 22.120502, 13.785908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227038, -0.968424, 0.103000,
		-0.288505, -0.167896, -0.942643,
		0.930171, 0.184300, -0.317514,
		22.647701, 22.175793, 13.690654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.089022, 21.580137, 13.411051>,  <21.996582, 22.046783, 13.912913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.089022, 21.580137, 13.411051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.464512, 21.665955, 13.518950>,  <22.689806, 21.717445, 13.583691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.464512, 21.665955, 13.518950>,  <22.089022, 21.580137, 13.411051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.464512, 21.665955, 13.518950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238938, -0.969135, -0.060714,
		0.248398, 0.121447, -0.961014,
		0.938726, 0.214541, 0.269749,
		22.746130, 21.730316, 13.599875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.482452, 21.165670, 12.997051>,  <22.089022, 21.580137, 13.411051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.482452, 21.165670, 12.997051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.712296, 21.243843, 13.314953>,  <22.850201, 21.290747, 13.505693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.712296, 21.243843, 13.314953>,  <22.482452, 21.165670, 12.997051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.712296, 21.243843, 13.314953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253469, -0.965822, 0.054237,
		0.778190, 0.170280, -0.604504,
		0.574607, 0.195430, 0.794754,
		22.884678, 21.302471, 13.553379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.096882, 20.825085, 12.822127>,  <22.482452, 21.165670, 12.997051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.096882, 20.825085, 12.822127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.122604, 20.872839, 13.218432>,  <23.138037, 20.901491, 13.456216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.122604, 20.872839, 13.218432>,  <23.096882, 20.825085, 12.822127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.122604, 20.872839, 13.218432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576021, -0.815167, 0.060842,
		0.814901, 0.566788, -0.121189,
		0.064305, 0.119388, 0.990763,
		23.141895, 20.908655, 13.515661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.676952, 20.706549, 13.046058>,  <23.096882, 20.825085, 12.822127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.676952, 20.706549, 13.046058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.538462, 20.680830, 13.420436>,  <23.455368, 20.665398, 13.645062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.538462, 20.680830, 13.420436>,  <23.676952, 20.706549, 13.046058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.538462, 20.680830, 13.420436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555823, -0.817760, 0.149432,
		0.755771, 0.571957, 0.318867,
		-0.346225, -0.064298, 0.935945,
		23.434593, 20.661541, 13.701220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.259510, 20.618483, 13.551534>,  <23.676952, 20.706549, 13.046058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.259510, 20.618483, 13.551534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.930342, 20.461384, 13.715755>,  <23.732841, 20.367125, 13.814287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.930342, 20.461384, 13.715755>,  <24.259510, 20.618483, 13.551534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.930342, 20.461384, 13.715755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492691, -0.853157, 0.171400,
		0.282948, 0.343324, 0.895583,
		-0.822919, -0.392748, 0.410551,
		23.683466, 20.343559, 13.838920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.560236, 20.211668, 14.004929>,  <24.259510, 20.618483, 13.551534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.560236, 20.211668, 14.004929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.183224, 20.081280, 13.975593>,  <23.957016, 20.003046, 13.957992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.183224, 20.081280, 13.975593>,  <24.560236, 20.211668, 14.004929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.183224, 20.081280, 13.975593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303144, -0.926597, 0.222532,
		-0.140495, 0.187511, 0.972163,
		-0.942531, -0.325970, -0.073339,
		23.900465, 19.983488, 13.953590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.395229, 19.874205, 14.678327>,  <24.560236, 20.211668, 14.004929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.395229, 19.874205, 14.678327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.144567, 19.737192, 14.398334>,  <23.994169, 19.654985, 14.230337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.144567, 19.737192, 14.398334>,  <24.395229, 19.874205, 14.678327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.144567, 19.737192, 14.398334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146201, -0.933950, 0.326133,
		-0.765459, 0.102035, 0.635343,
		-0.626656, -0.342530, -0.699983,
		23.956572, 19.634434, 14.188338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.062695, 19.414110, 15.074211>,  <24.395229, 19.874205, 14.678327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.062695, 19.414110, 15.074211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.985130, 19.306662, 14.696801>,  <23.938591, 19.242191, 14.470355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.985130, 19.306662, 14.696801>,  <24.062695, 19.414110, 15.074211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.985130, 19.306662, 14.696801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113142, -0.961487, 0.250484,
		-0.974473, -0.058180, 0.216837,
		-0.193913, -0.268623, -0.943525,
		23.926956, 19.226074, 14.413744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.466181, 18.983107, 15.072227>,  <24.062695, 19.414110, 15.074211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.466181, 18.983107, 15.072227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.657772, 18.904274, 14.730061>,  <23.772728, 18.856974, 14.524760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.657772, 18.904274, 14.730061>,  <23.466181, 18.983107, 15.072227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.657772, 18.904274, 14.730061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053237, -0.966156, 0.252406,
		-0.876210, -0.166437, -0.452277,
		0.478979, -0.197083, -0.855416,
		23.801466, 18.845150, 14.473435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.104404, 18.416252, 14.795423>,  <23.466181, 18.983107, 15.072227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.104404, 18.416252, 14.795423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.472902, 18.434488, 14.640900>,  <23.694000, 18.445429, 14.548186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.472902, 18.434488, 14.640900>,  <23.104404, 18.416252, 14.795423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.472902, 18.434488, 14.640900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106495, -0.984725, 0.137754,
		-0.374125, -0.168045, -0.912026,
		0.921243, 0.045589, -0.386306,
		23.749275, 18.448164, 14.525007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.206074, 17.732704, 14.491920>,  <23.104404, 18.416252, 14.795423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.206074, 17.732704, 14.491920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.568575, 17.899225, 14.521314>,  <23.786076, 17.999138, 14.538950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.568575, 17.899225, 14.521314>,  <23.206074, 17.732704, 14.491920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.568575, 17.899225, 14.521314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419153, -0.907478, -0.028188,
		0.054951, 0.056347, -0.996898,
		0.906251, 0.416304, 0.073485,
		23.840450, 18.024117, 14.543359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.591974, 17.179832, 14.169076>,  <23.206074, 17.732704, 14.491920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.591974, 17.179832, 14.169076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.859249, 17.412388, 14.354770>,  <24.019615, 17.551920, 14.466187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.859249, 17.412388, 14.354770>,  <23.591974, 17.179832, 14.169076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.859249, 17.412388, 14.354770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513679, -0.811893, 0.277424,
		0.538200, 0.053096, -0.841143,
		0.668188, 0.581387, 0.464235,
		24.059706, 17.586803, 14.494040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.303944, 17.010450, 13.875523>,  <23.591974, 17.179832, 14.169076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.303944, 17.010450, 13.875523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.383017, 17.167192, 14.234939>,  <24.430460, 17.261238, 14.450588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.383017, 17.167192, 14.234939>,  <24.303944, 17.010450, 13.875523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.383017, 17.167192, 14.234939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376561, -0.876654, 0.299465,
		0.905054, 0.279156, -0.320856,
		0.197682, 0.391854, 0.898539,
		24.442322, 17.284748, 14.504500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.098415, 16.933460, 14.025354>,  <24.303944, 17.010450, 13.875523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.098415, 16.933460, 14.025354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.831329, 16.890978, 14.320075>,  <24.671078, 16.865488, 14.496907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.831329, 16.890978, 14.320075>,  <25.098415, 16.933460, 14.025354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.831329, 16.890978, 14.320075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348579, -0.919161, 0.183401,
		0.657761, 0.379293, 0.650759,
		-0.667715, -0.106207, 0.736802,
		24.631014, 16.859116, 14.541116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.362774, 16.724045, 14.745322>,  <25.098415, 16.933460, 14.025354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.362774, 16.724045, 14.745322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.988400, 16.591255, 14.698304>,  <24.763775, 16.511581, 14.670094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.988400, 16.591255, 14.698304>,  <25.362774, 16.724045, 14.745322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.988400, 16.591255, 14.698304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317971, -0.940068, 0.123155,
		-0.151383, 0.077889, 0.985401,
		-0.935937, -0.331972, -0.117544,
		24.707619, 16.491663, 14.663041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.015556, 16.425180, 15.414448>,  <25.362774, 16.724045, 14.745322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.015556, 16.425180, 15.414448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.963573, 16.271975, 15.048626>,  <24.932384, 16.180052, 14.829133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.963573, 16.271975, 15.048626>,  <25.015556, 16.425180, 15.414448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.963573, 16.271975, 15.048626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440531, -0.848642, 0.292812,
		-0.888281, -0.364837, 0.279017,
		-0.129957, -0.383015, -0.914555,
		24.924587, 16.157070, 14.774260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.640144, 15.710104, 15.309556>,  <25.015556, 16.425180, 15.414448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.640144, 15.710104, 15.309556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.913363, 15.761703, 15.021998>,  <25.077293, 15.792664, 14.849463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.913363, 15.761703, 15.021998>,  <24.640144, 15.710104, 15.309556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.913363, 15.761703, 15.021998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451861, -0.847937, 0.277172,
		-0.573823, -0.514162, -0.637468,
		0.683044, 0.128999, -0.718895,
		25.118277, 15.800404, 14.806330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.702948, 15.099821, 14.909381>,  <24.640144, 15.710104, 15.309556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.702948, 15.099821, 14.909381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.053671, 15.287285, 14.952405>,  <25.264105, 15.399763, 14.978219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.053671, 15.287285, 14.952405>,  <24.702948, 15.099821, 14.909381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.053671, 15.287285, 14.952405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424030, -0.859093, 0.286632,
		0.226737, -0.205711, -0.951984,
		0.876806, 0.468660, 0.107561,
		25.316713, 15.427883, 14.984674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.278353, 14.712616, 14.655353>,  <24.702948, 15.099821, 14.909381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.278353, 14.712616, 14.655353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.431885, 14.952897, 14.935875>,  <25.524004, 15.097066, 15.104188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.431885, 14.952897, 14.935875>,  <25.278353, 14.712616, 14.655353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.431885, 14.952897, 14.935875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627563, -0.726824, 0.279090,
		0.677376, 0.332990, -0.655957,
		0.383831, 0.600703, 0.701306,
		25.547033, 15.133108, 15.146267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.974882, 14.950817, 14.556264>,  <25.278353, 14.712616, 14.655353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.974882, 14.950817, 14.556264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.016510, 14.955132, 14.954068>,  <26.041487, 14.957720, 15.192751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.016510, 14.955132, 14.954068>,  <25.974882, 14.950817, 14.556264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.016510, 14.955132, 14.954068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622981, -0.780177, -0.056731,
		0.775283, 0.625466, -0.087913,
		0.104071, 0.010785, 0.994511,
		26.047731, 14.958367, 15.252421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.694321, 14.973508, 14.746056>,  <25.974882, 14.950817, 14.556264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.694321, 14.973508, 14.746056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.491379, 14.807926, 15.048375>,  <26.369614, 14.708577, 15.229767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.491379, 14.807926, 15.048375>,  <26.694321, 14.973508, 14.746056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.491379, 14.807926, 15.048375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553289, -0.828887, -0.082572,
		0.660653, 0.376282, 0.649576,
		-0.507354, -0.413954, 0.755800,
		26.339172, 14.683740, 15.275115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<12.534536, 19.193319, 25.376881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.148984, 19.160927, 25.275391>,  <11.917652, 19.141491, 25.214497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.148984, 19.160927, 25.275391>,  <12.534536, 19.193319, 25.376881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.148984, 19.160927, 25.275391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266259, -0.270343, -0.925214,
		0.006333, -0.959352, 0.282141,
		-0.963881, -0.080982, -0.253724,
		11.859819, 19.136633, 25.199274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.431831, 18.509373, 25.071039>,  <12.534536, 19.193319, 25.376881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.431831, 18.509373, 25.071039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.124901, 18.732061, 24.943745>,  <11.940742, 18.865675, 24.867369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.124901, 18.732061, 24.943745>,  <12.431831, 18.509373, 25.071039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.124901, 18.732061, 24.943745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206177, -0.255730, -0.944507,
		-0.607209, -0.790357, 0.081445,
		-0.767325, 0.556721, -0.318235,
		11.894703, 18.899078, 24.848274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.079963, 18.196205, 24.620958>,  <12.431831, 18.509373, 25.071039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.079963, 18.196205, 24.620958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.977794, 18.570602, 24.524065>,  <11.916492, 18.795240, 24.465929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.977794, 18.570602, 24.524065>,  <12.079963, 18.196205, 24.620958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.977794, 18.570602, 24.524065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113980, -0.219644, -0.968899,
		-0.960087, -0.275089, -0.050582,
		-0.255423, 0.935993, -0.242232,
		11.901167, 18.851400, 24.451395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.721653, 18.183386, 23.937618>,  <12.079963, 18.196205, 24.620958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.721653, 18.183386, 23.937618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.782929, 18.578514, 23.948496>,  <11.819695, 18.815592, 23.955023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.782929, 18.578514, 23.948496>,  <11.721653, 18.183386, 23.937618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.782929, 18.578514, 23.948496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172141, 0.000422, -0.985072,
		-0.973088, 0.155585, -0.169980,
		0.153190, 0.987822, 0.027193,
		11.828887, 18.874861, 23.956654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.333392, 18.376177, 23.470617>,  <11.721653, 18.183386, 23.937618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.333392, 18.376177, 23.470617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.617533, 18.655525, 23.505663>,  <11.788017, 18.823135, 23.526691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.617533, 18.655525, 23.505663>,  <11.333392, 18.376177, 23.470617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.617533, 18.655525, 23.505663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196724, -0.077478, -0.977393,
		-0.675797, 0.711528, -0.192423,
		0.710351, 0.698373, 0.087615,
		11.830638, 18.865038, 23.531948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.241987, 18.745138, 22.871235>,  <11.333392, 18.376177, 23.470617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.241987, 18.745138, 22.871235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.597352, 18.894234, 22.978407>,  <11.810571, 18.983690, 23.042711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.597352, 18.894234, 22.978407>,  <11.241987, 18.745138, 22.871235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.597352, 18.894234, 22.978407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343167, -0.151615, -0.926957,
		-0.304891, 0.915466, -0.262608,
		0.888413, 0.372739, 0.267932,
		11.863876, 19.006056, 23.058786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.309135, 19.333443, 22.372625>,  <11.241987, 18.745138, 22.871235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.309135, 19.333443, 22.372625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.650610, 19.200781, 22.533237>,  <11.855494, 19.121183, 22.629604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.650610, 19.200781, 22.533237>,  <11.309135, 19.333443, 22.372625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.650610, 19.200781, 22.533237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325734, -0.261541, -0.908567,
		0.406346, 0.906423, -0.115243,
		0.853686, -0.331654, 0.401529,
		11.906716, 19.101284, 22.653696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.799264, 19.468693, 21.835556>,  <11.309135, 19.333443, 22.372625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.799264, 19.468693, 21.835556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.991239, 19.196018, 22.056450>,  <12.106423, 19.032413, 22.188986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.991239, 19.196018, 22.056450>,  <11.799264, 19.468693, 21.835556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.991239, 19.196018, 22.056450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440090, -0.357467, -0.823734,
		0.758934, 0.638374, 0.128442,
		0.479937, -0.681686, 0.552236,
		12.135220, 18.991512, 22.222120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.542556, 19.574999, 21.782393>,  <11.799264, 19.468693, 21.835556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.542556, 19.574999, 21.782393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.524775, 19.187189, 21.878765>,  <12.514106, 18.954504, 21.936588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.524775, 19.187189, 21.878765>,  <12.542556, 19.574999, 21.782393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.524775, 19.187189, 21.878765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520876, -0.228288, -0.822541,
		0.852474, 0.088932, 0.515149,
		-0.044452, -0.969524, 0.240932,
		12.511438, 18.896332, 21.951044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.195011, 19.316837, 21.566792>,  <12.542556, 19.574999, 21.782393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.195011, 19.316837, 21.566792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.993368, 18.975245, 21.618317>,  <12.872382, 18.770288, 21.649231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.993368, 18.975245, 21.618317>,  <13.195011, 19.316837, 21.566792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.993368, 18.975245, 21.618317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459108, -0.391315, -0.797554,
		0.731502, -0.342914, 0.589334,
		-0.504108, -0.853980, 0.128813,
		12.842135, 18.719049, 21.656961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.641155, 18.799799, 21.669672>,  <13.195011, 19.316837, 21.566792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.641155, 18.799799, 21.669672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.309949, 18.659382, 21.494785>,  <13.111225, 18.575130, 21.389854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.309949, 18.659382, 21.494785>,  <13.641155, 18.799799, 21.669672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.309949, 18.659382, 21.494785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498885, -0.105324, -0.860244,
		0.255934, -0.930417, 0.262341,
		-0.828016, -0.351044, -0.437215,
		13.061544, 18.554070, 21.363621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.951727, 18.299564, 21.291584>,  <13.641155, 18.799799, 21.669672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.951727, 18.299564, 21.291584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.590343, 18.362495, 21.132082>,  <13.373512, 18.400253, 21.036381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.590343, 18.362495, 21.132082>,  <13.951727, 18.299564, 21.291584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.590343, 18.362495, 21.132082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381750, -0.127857, -0.915379,
		-0.195001, -0.979234, 0.055453,
		-0.903461, 0.157331, -0.398756,
		13.319304, 18.409695, 21.012455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.815648, 17.763102, 20.882816>,  <13.951727, 18.299564, 21.291584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.815648, 17.763102, 20.882816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.603771, 18.072937, 20.744576>,  <13.476645, 18.258839, 20.661631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.603771, 18.072937, 20.744576>,  <13.815648, 17.763102, 20.882816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.603771, 18.072937, 20.744576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306582, -0.205064, -0.929492,
		-0.790843, -0.598300, -0.128854,
		-0.529693, 0.774587, -0.345601,
		13.444863, 18.305313, 20.640896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.564691, 17.453976, 20.323145>,  <13.815648, 17.763102, 20.882816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.564691, 17.453976, 20.323145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.563687, 17.851734, 20.280874>,  <13.563086, 18.090389, 20.255512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.563687, 17.851734, 20.280874>,  <13.564691, 17.453976, 20.323145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.563687, 17.851734, 20.280874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511988, -0.089497, -0.854318,
		-0.858989, -0.056248, -0.508895,
		-0.002509, 0.994397, -0.105676,
		13.562935, 18.150053, 20.249172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.421535, 17.503025, 19.626535>,  <13.564691, 17.453976, 20.323145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.421535, 17.503025, 19.626535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.551320, 17.873478, 19.703484>,  <13.629190, 18.095749, 19.749653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.551320, 17.873478, 19.703484>,  <13.421535, 17.503025, 19.626535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.551320, 17.873478, 19.703484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585902, -0.037115, -0.809532,
		-0.742593, 0.375370, -0.554665,
		0.324461, 0.926132, 0.192368,
		13.648658, 18.151318, 19.761194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.324447, 17.969011, 18.994894>,  <13.421535, 17.503025, 19.626535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.324447, 17.969011, 18.994894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.627561, 18.110287, 19.214355>,  <13.809429, 18.195051, 19.346033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.627561, 18.110287, 19.214355>,  <13.324447, 17.969011, 18.994894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.627561, 18.110287, 19.214355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609965, -0.084797, -0.787879,
		-0.231744, 0.931702, -0.279689,
		0.757785, 0.353187, 0.548654,
		13.854897, 18.216244, 19.378952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.741859, 18.261402, 18.543482>,  <13.324447, 17.969011, 18.994894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.741859, 18.261402, 18.543482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.990939, 18.220184, 18.853741>,  <14.140387, 18.195454, 19.039896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.990939, 18.220184, 18.853741>,  <13.741859, 18.261402, 18.543482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.990939, 18.220184, 18.853741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779567, -0.003491, -0.626309,
		0.067246, 0.994671, 0.078156,
		0.622699, -0.103045, 0.775647,
		14.177749, 18.189270, 19.086435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.247943, 18.730307, 18.438202>,  <13.741859, 18.261402, 18.543482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.247943, 18.730307, 18.438202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.398158, 18.457897, 18.689655>,  <14.488287, 18.294453, 18.840527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.398158, 18.457897, 18.689655>,  <14.247943, 18.730307, 18.438202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.398158, 18.457897, 18.689655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832336, -0.050526, -0.551964,
		0.407662, 0.730518, 0.547864,
		0.375538, -0.681022, 0.628633,
		14.510819, 18.253590, 18.878244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.961548, 18.909164, 18.493752>,  <14.247943, 18.730307, 18.438202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.961548, 18.909164, 18.493752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.955460, 18.538246, 18.643362>,  <14.951807, 18.315695, 18.733128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.955460, 18.538246, 18.643362>,  <14.961548, 18.909164, 18.493752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.955460, 18.538246, 18.643362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879644, -0.190266, -0.435918,
		0.475388, 0.322375, 0.818584,
		-0.015219, -0.927294, 0.374025,
		14.950893, 18.260057, 18.755569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.524361, 18.891127, 18.849871>,  <14.961548, 18.909164, 18.493752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.524361, 18.891127, 18.849871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.423325, 18.516283, 18.753519>,  <15.362703, 18.291376, 18.695707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.423325, 18.516283, 18.753519>,  <15.524361, 18.891127, 18.849871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.423325, 18.516283, 18.753519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832618, -0.083695, -0.547488,
		0.492896, -0.338850, 0.801395,
		-0.252589, -0.937110, -0.240880,
		15.347548, 18.235149, 18.681255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.160089, 18.576746, 18.891472>,  <15.524361, 18.891127, 18.849871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.160089, 18.576746, 18.891472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.942936, 18.309999, 18.687288>,  <15.812644, 18.149952, 18.564779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.942936, 18.309999, 18.687288>,  <16.160089, 18.576746, 18.891472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.942936, 18.309999, 18.687288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816556, -0.277107, -0.506407,
		0.196255, -0.691737, 0.694970,
		-0.542882, -0.666867, -0.510458,
		15.780071, 18.109940, 18.534151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.626522, 18.001606, 18.830313>,  <16.160089, 18.576746, 18.891472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.626522, 18.001606, 18.830313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.342510, 17.979111, 18.549543>,  <16.172104, 17.965612, 18.381083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.342510, 17.979111, 18.549543>,  <16.626522, 18.001606, 18.830313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.342510, 17.979111, 18.549543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692923, -0.233274, -0.682233,
		-0.125370, -0.970783, 0.204602,
		-0.710028, -0.056242, -0.701923,
		16.129501, 17.962238, 18.338966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.246134, 17.727571, 18.560871>,  <16.626522, 18.001606, 18.830313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.246134, 17.727571, 18.560871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.583271, 17.886452, 18.706114>,  <17.785553, 17.981779, 18.793261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.583271, 17.886452, 18.706114>,  <17.246134, 17.727571, 18.560871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.583271, 17.886452, 18.706114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259402, -0.291314, 0.920786,
		0.471515, -0.870269, -0.142498,
		0.842843, 0.397200, 0.363108,
		17.836124, 18.005611, 18.815046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.458405, 17.212410, 19.082043>,  <17.246134, 17.727571, 18.560871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.458405, 17.212410, 19.082043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.660093, 17.546343, 19.170420>,  <17.781107, 17.746702, 19.223446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.660093, 17.546343, 19.170420>,  <17.458405, 17.212410, 19.082043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.660093, 17.546343, 19.170420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131407, -0.178694, 0.975090,
		0.853518, -0.520694, 0.019601,
		0.504221, 0.834833, 0.220942,
		17.811359, 17.796793, 19.236702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.651785, 17.042610, 19.700323>,  <17.458405, 17.212410, 19.082043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.651785, 17.042610, 19.700323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.721544, 17.436197, 19.685377>,  <17.763399, 17.672350, 19.676411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.721544, 17.436197, 19.685377>,  <17.651785, 17.042610, 19.700323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.721544, 17.436197, 19.685377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209399, 0.074137, 0.975016,
		0.962153, -0.162216, 0.218971,
		0.174397, 0.983966, -0.037363,
		17.773863, 17.731388, 19.674168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.997036, 17.203835, 20.296225>,  <17.651785, 17.042610, 19.700323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.997036, 17.203835, 20.296225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.829618, 17.550571, 20.187847>,  <17.729168, 17.758614, 20.122822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.829618, 17.550571, 20.187847>,  <17.997036, 17.203835, 20.296225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.829618, 17.550571, 20.187847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277994, 0.161731, 0.946870,
		0.864605, 0.471625, 0.173286,
		-0.418541, 0.866841, -0.270942,
		17.704056, 17.810623, 20.106565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.240648, 17.641857, 20.721748>,  <17.997036, 17.203835, 20.296225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.240648, 17.641857, 20.721748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.916466, 17.826584, 20.577591>,  <17.721956, 17.937420, 20.491096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.916466, 17.826584, 20.577591>,  <18.240648, 17.641857, 20.721748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.916466, 17.826584, 20.577591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273593, 0.245591, 0.929963,
		0.517980, 0.852298, -0.072692,
		-0.810459, 0.461814, -0.360395,
		17.673328, 17.965128, 20.469473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.172342, 18.363159, 21.030621>,  <18.240648, 17.641857, 20.721748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.172342, 18.363159, 21.030621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.799278, 18.264002, 20.925783>,  <17.575439, 18.204508, 20.862881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.799278, 18.264002, 20.925783>,  <18.172342, 18.363159, 21.030621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.799278, 18.264002, 20.925783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341011, 0.368757, 0.864713,
		-0.117706, 0.895861, -0.428459,
		-0.932661, -0.247891, -0.262094,
		17.519480, 18.189634, 20.847155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.709059, 18.730541, 21.510792>,  <18.172342, 18.363159, 21.030621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.709059, 18.730541, 21.510792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.438297, 18.471470, 21.370895>,  <17.275841, 18.316027, 21.286957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.438297, 18.471470, 21.370895>,  <17.709059, 18.730541, 21.510792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.438297, 18.471470, 21.370895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593731, 0.199589, 0.779517,
		-0.435071, 0.735309, -0.519648,
		-0.676902, -0.647676, -0.349741,
		17.235228, 18.277166, 21.265974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.054575, 19.036133, 21.682867>,  <17.709059, 18.730541, 21.510792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.054575, 19.036133, 21.682867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.958410, 18.652353, 21.624001>,  <16.900711, 18.422085, 21.588680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.958410, 18.652353, 21.624001>,  <17.054575, 19.036133, 21.682867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.958410, 18.652353, 21.624001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622129, 0.035925, 0.782090,
		-0.745089, 0.279580, -0.605538,
		-0.240411, -0.959450, -0.147167,
		16.886288, 18.364519, 21.579851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.331343, 19.001942, 21.624161>,  <17.054575, 19.036133, 21.682867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.331343, 19.001942, 21.624161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.465612, 18.643414, 21.740046>,  <16.546173, 18.428297, 21.809576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.465612, 18.643414, 21.740046>,  <16.331343, 19.001942, 21.624161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.465612, 18.643414, 21.740046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581006, 0.045079, 0.812650,
		-0.741456, -0.441107, -0.505636,
		0.335672, -0.896321, 0.289710,
		16.566315, 18.374517, 21.826958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.707904, 18.517780, 21.687454>,  <16.331343, 19.001942, 21.624161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.707904, 18.517780, 21.687454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.985106, 18.371939, 21.936230>,  <16.151428, 18.284433, 22.085495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.985106, 18.371939, 21.936230>,  <15.707904, 18.517780, 21.687454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.985106, 18.371939, 21.936230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692345, -0.096068, 0.715143,
		-0.200994, -0.926195, -0.319006,
		0.693007, -0.364602, 0.621937,
		16.193008, 18.262558, 22.122810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.328091, 18.151276, 22.150888>,  <15.707904, 18.517780, 21.687454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.328091, 18.151276, 22.150888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.677518, 18.184546, 22.342705>,  <15.887175, 18.204508, 22.457794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.677518, 18.184546, 22.342705>,  <15.328091, 18.151276, 22.150888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.677518, 18.184546, 22.342705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480851, -0.004829, 0.876789,
		0.075243, -0.996523, 0.035776,
		0.873568, 0.083176, 0.479543,
		15.939589, 18.209499, 22.486568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.467710, 17.530346, 22.725420>,  <15.328091, 18.151276, 22.150888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.467710, 17.530346, 22.725420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.675036, 17.858198, 22.823034>,  <15.799432, 18.054911, 22.881603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.675036, 17.858198, 22.823034>,  <15.467710, 17.530346, 22.725420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.675036, 17.858198, 22.823034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463976, 0.029807, 0.885346,
		0.718385, -0.572113, 0.395740,
		0.518314, 0.819633, 0.244034,
		15.830530, 18.104088, 22.896244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.662301, 17.392063, 23.340693>,  <15.467710, 17.530346, 22.725420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.662301, 17.392063, 23.340693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.670226, 17.788147, 23.285416>,  <15.674981, 18.025797, 23.252249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.670226, 17.788147, 23.285416>,  <15.662301, 17.392063, 23.340693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.670226, 17.788147, 23.285416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363630, 0.135890, 0.921579,
		0.931333, 0.031993, 0.362761,
		0.019812, 0.990207, -0.138192,
		15.676169, 18.085209, 23.243958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.950319, 17.672194, 23.954130>,  <15.662301, 17.392063, 23.340693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.950319, 17.672194, 23.954130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.725644, 17.960526, 23.791693>,  <15.590838, 18.133524, 23.694229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.725644, 17.960526, 23.791693>,  <15.950319, 17.672194, 23.954130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.725644, 17.960526, 23.791693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401115, 0.192038, 0.895672,
		0.723611, 0.665980, 0.181269,
		-0.561689, 0.720828, -0.406095,
		15.557137, 18.176773, 23.669865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.977696, 18.115717, 24.481325>,  <15.950319, 17.672194, 23.954130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.977696, 18.115717, 24.481325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.690273, 18.266539, 24.247572>,  <15.517819, 18.357031, 24.107321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.690273, 18.266539, 24.247572>,  <15.977696, 18.115717, 24.481325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.690273, 18.266539, 24.247572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476036, 0.345926, 0.808533,
		0.507014, 0.859166, -0.069076,
		-0.718559, 0.377054, -0.584383,
		15.474706, 18.379656, 24.072258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.962317, 18.848902, 24.681553>,  <15.977696, 18.115717, 24.481325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.962317, 18.848902, 24.681553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.612558, 18.741564, 24.519852>,  <15.402703, 18.677160, 24.422831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.612558, 18.741564, 24.519852>,  <15.962317, 18.848902, 24.681553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.612558, 18.741564, 24.519852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482616, 0.394976, 0.781713,
		-0.050100, 0.878626, -0.474874,
		-0.874398, -0.268346, -0.404251,
		15.350239, 18.661060, 24.398577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.644602, 19.471926, 24.668108>,  <15.962317, 18.848902, 24.681553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.644602, 19.471926, 24.668108> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.367360, 19.185194, 24.637739>,  <15.201015, 19.013155, 24.619518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.367360, 19.185194, 24.637739>,  <15.644602, 19.471926, 24.668108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.367360, 19.185194, 24.637739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531813, 0.437406, 0.725156,
		-0.486603, 0.542985, -0.684386,
		-0.693103, -0.716829, -0.075923,
		15.159430, 18.970146, 24.614962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.923544, 19.770103, 24.630405>,  <15.644602, 19.471926, 24.668108>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.923544, 19.770103, 24.630405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.882947, 19.390503, 24.749804>,  <14.858588, 19.162743, 24.821442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.882947, 19.390503, 24.749804>,  <14.923544, 19.770103, 24.630405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.882947, 19.390503, 24.749804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481901, 0.309391, 0.819786,
		-0.870328, -0.060642, -0.488725,
		-0.101494, -0.948999, 0.298495,
		14.852499, 19.105803, 24.839352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<14.211263, 19.829344, 24.968113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.374434, 19.480644, 25.076668>,  <14.472336, 19.271425, 25.141800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.374434, 19.480644, 25.076668>,  <14.211263, 19.829344, 24.968113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.374434, 19.480644, 25.076668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483563, 0.045841, 0.874109,
		-0.774443, -0.487805, -0.402845,
		0.407927, -0.871748, 0.271386,
		14.496812, 19.219120, 25.158083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.695398, 19.429220, 25.117344>,  <14.211263, 19.829344, 24.968113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.695398, 19.429220, 25.117344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.994619, 19.264961, 25.325876>,  <14.174152, 19.166405, 25.450996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.994619, 19.264961, 25.325876>,  <13.695398, 19.429220, 25.117344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.994619, 19.264961, 25.325876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572586, -0.002228, 0.819842,
		-0.335506, -0.911790, -0.236799,
		0.748052, -0.410650, 0.521330,
		14.219035, 19.141768, 25.482275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.324405, 18.834805, 25.463205>,  <13.695398, 19.429220, 25.117344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.324405, 18.834805, 25.463205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.648706, 18.952951, 25.665369>,  <13.843287, 19.023840, 25.786667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.648706, 18.952951, 25.665369>,  <13.324405, 18.834805, 25.463205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.648706, 18.952951, 25.665369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486774, -0.139407, 0.862332,
		0.325162, -0.945158, 0.030752,
		0.810753, 0.295367, 0.505408,
		13.891932, 19.041561, 25.816992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.306645, 18.503941, 26.029524>,  <13.324405, 18.834805, 25.463205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.306645, 18.503941, 26.029524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.550750, 18.800858, 26.140217>,  <13.697212, 18.979008, 26.206633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.550750, 18.800858, 26.140217>,  <13.306645, 18.503941, 26.029524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.550750, 18.800858, 26.140217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460260, 0.047901, 0.886491,
		0.644781, -0.668360, 0.370880,
		0.610260, 0.742294, 0.276734,
		13.733828, 19.023546, 26.223238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.483041, 18.319029, 26.692995>,  <13.306645, 18.503941, 26.029524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.483041, 18.319029, 26.692995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.590497, 18.704000, 26.677164>,  <13.654971, 18.934982, 26.667665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.590497, 18.704000, 26.677164>,  <13.483041, 18.319029, 26.692995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.590497, 18.704000, 26.677164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245242, 0.108075, 0.963419,
		0.931498, -0.249108, 0.265061,
		0.268641, 0.962427, -0.039580,
		13.671089, 18.992729, 26.665291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.900187, 18.484905, 27.295147>,  <13.483041, 18.319029, 26.692995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.900187, 18.484905, 27.295147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.779844, 18.848410, 27.179462>,  <13.707639, 19.066511, 27.110052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.779844, 18.848410, 27.179462>,  <13.900187, 18.484905, 27.295147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.779844, 18.848410, 27.179462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276067, 0.207285, 0.938520,
		0.912837, 0.362202, 0.188516,
		-0.300857, 0.908759, -0.289209,
		13.689588, 19.121037, 27.092699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.148082, 18.920654, 27.792015>,  <13.900187, 18.484905, 27.295147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.148082, 18.920654, 27.792015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.842478, 19.125887, 27.635536>,  <13.659116, 19.249027, 27.541649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.842478, 19.125887, 27.635536>,  <14.148082, 18.920654, 27.792015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.842478, 19.125887, 27.635536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270013, 0.296409, 0.916098,
		0.585988, 0.805536, -0.087921,
		-0.764010, 0.513083, -0.391197,
		13.613275, 19.279812, 27.518177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.026962, 19.642824, 28.207024>,  <14.148082, 18.920654, 27.792015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.026962, 19.642824, 28.207024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.697700, 19.564369, 27.993879>,  <13.500142, 19.517296, 27.865992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.697700, 19.564369, 27.993879>,  <14.026962, 19.642824, 28.207024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.697700, 19.564369, 27.993879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566143, 0.211553, 0.796698,
		-0.043534, 0.957484, -0.285183,
		-0.823157, -0.196138, -0.532863,
		13.450752, 19.505527, 27.834021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.602604, 20.260111, 28.328159>,  <14.026962, 19.642824, 28.207024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.602604, 20.260111, 28.328159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.357264, 19.964537, 28.216606>,  <13.210059, 19.787191, 28.149673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.357264, 19.964537, 28.216606>,  <13.602604, 20.260111, 28.328159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.357264, 19.964537, 28.216606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622494, 0.234951, 0.746525,
		-0.486109, 0.631485, -0.604090,
		-0.613351, -0.738935, -0.278884,
		13.173259, 19.742857, 28.132940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.909876, 20.551317, 28.460270>,  <13.602604, 20.260111, 28.328159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.909876, 20.551317, 28.460270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.849367, 20.157600, 28.423862>,  <12.813062, 19.921370, 28.402018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.849367, 20.157600, 28.423862>,  <12.909876, 20.551317, 28.460270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.849367, 20.157600, 28.423862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517911, 0.000493, 0.855434,
		-0.841953, 0.176543, -0.509851,
		-0.151272, -0.984293, -0.091019,
		12.803986, 19.862312, 28.396557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.142980, 20.480795, 28.502304>,  <12.909876, 20.551317, 28.460270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.142980, 20.480795, 28.502304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.341973, 20.150167, 28.607601>,  <12.461370, 19.951792, 28.670780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.341973, 20.150167, 28.607601>,  <12.142980, 20.480795, 28.502304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.341973, 20.150167, 28.607601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477748, -0.007769, 0.878463,
		-0.724063, -0.562785, -0.398756,
		0.497484, -0.826566, 0.263244,
		12.491219, 19.902197, 28.686575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.724874, 20.105280, 28.901051>,  <12.142980, 20.480795, 28.502304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.724874, 20.105280, 28.901051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.069323, 19.934849, 29.011992>,  <12.275992, 19.832590, 29.078556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.069323, 19.934849, 29.011992>,  <11.724874, 20.105280, 28.901051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.069323, 19.934849, 29.011992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313562, -0.015691, 0.949438,
		-0.400181, -0.904551, -0.147113,
		0.861124, -0.426076, 0.277354,
		12.327660, 19.807026, 29.095198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.520922, 19.526890, 29.305094>,  <11.724874, 20.105280, 28.901051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.520922, 19.526890, 29.305094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.898515, 19.614647, 29.403696>,  <12.125071, 19.667301, 29.462858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.898515, 19.614647, 29.403696>,  <11.520922, 19.526890, 29.305094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.898515, 19.614647, 29.403696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248723, -0.017906, 0.968409,
		0.216878, -0.975472, 0.037666,
		0.943982, 0.219395, 0.246506,
		12.181709, 19.680466, 29.477648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.535988, 19.166073, 29.905235>,  <11.520922, 19.526890, 29.305094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.535988, 19.166073, 29.905235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.850584, 19.412663, 29.920177>,  <12.039342, 19.560616, 29.929142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.850584, 19.412663, 29.920177>,  <11.535988, 19.166073, 29.905235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.850584, 19.412663, 29.920177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097275, 0.063918, 0.993203,
		0.609894, -0.784778, 0.110238,
		0.786490, 0.616472, 0.037356,
		12.086531, 19.597605, 29.931385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.013213, 18.772964, 30.287893>,  <11.535988, 19.166073, 29.905235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.013213, 18.772964, 30.287893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.112959, 19.160053, 30.302465>,  <12.172806, 19.392307, 30.311209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.112959, 19.160053, 30.302465>,  <12.013213, 18.772964, 30.287893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.112959, 19.160053, 30.302465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139968, -0.073241, 0.987444,
		0.958241, -0.241133, -0.153714,
		0.249364, 0.967724, 0.036432,
		12.187768, 19.450371, 30.313395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.560933, 18.846588, 30.743296>,  <12.013213, 18.772964, 30.287893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.560933, 18.846588, 30.743296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.454988, 19.231747, 30.722599>,  <12.391421, 19.462843, 30.710182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.454988, 19.231747, 30.722599>,  <12.560933, 18.846588, 30.743296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.454988, 19.231747, 30.722599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214723, 0.111203, 0.970324,
		0.940076, 0.245892, -0.236209,
		-0.264862, 0.962897, -0.051741,
		12.375530, 19.520617, 30.707077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.069993, 19.249453, 31.015575>,  <12.560933, 18.846588, 30.743296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.069993, 19.249453, 31.015575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.745448, 19.479897, 31.055149>,  <12.550721, 19.618162, 31.078894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.745448, 19.479897, 31.055149>,  <13.069993, 19.249453, 31.015575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.745448, 19.479897, 31.055149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331559, 0.314185, 0.889582,
		0.481413, 0.754576, -0.445933,
		-0.811363, 0.576110, 0.098934,
		12.502039, 19.652729, 31.084829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.249828, 19.861755, 31.420662>,  <13.069993, 19.249453, 31.015575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.249828, 19.861755, 31.420662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.851089, 19.869284, 31.451481>,  <12.611845, 19.873800, 31.469973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.851089, 19.869284, 31.451481>,  <13.249828, 19.861755, 31.420662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.851089, 19.869284, 31.451481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078954, 0.327599, 0.941512,
		-0.007521, 0.944629, -0.328053,
		-0.996850, 0.018820, 0.077046,
		12.552033, 19.874929, 31.474594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.124097, 20.463840, 31.770954>,  <13.249828, 19.861755, 31.420662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.124097, 20.463840, 31.770954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.806461, 20.227345, 31.827326>,  <12.615880, 20.085447, 31.861149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.806461, 20.227345, 31.827326>,  <13.124097, 20.463840, 31.770954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.806461, 20.227345, 31.827326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064535, 0.148542, 0.986798,
		-0.604366, 0.792700, -0.079800,
		-0.794088, -0.591238, 0.140931,
		12.568234, 20.049973, 31.869604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.511404, 20.841942, 32.091190>,  <13.124097, 20.463840, 31.770954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.511404, 20.841942, 32.091190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.507751, 20.447332, 32.156540>,  <12.505560, 20.210567, 32.195747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.507751, 20.447332, 32.156540>,  <12.511404, 20.841942, 32.091190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.507751, 20.447332, 32.156540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060106, 0.162540, 0.984870,
		-0.998150, 0.018813, 0.057812,
		-0.009132, -0.986523, 0.163370,
		12.505012, 20.151375, 32.205551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.128394, 20.814131, 32.746502>,  <12.511404, 20.841942, 32.091190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.128394, 20.814131, 32.746502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.286557, 20.447809, 32.718346>,  <12.381455, 20.228016, 32.701450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.286557, 20.447809, 32.718346>,  <12.128394, 20.814131, 32.746502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.286557, 20.447809, 32.718346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155423, -0.008823, 0.987809,
		-0.905260, -0.401528, 0.138849,
		0.395408, -0.915804, -0.070393,
		12.405180, 20.173067, 32.697227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.699298, 20.451614, 33.117813>,  <12.128394, 20.814131, 32.746502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.699298, 20.451614, 33.117813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.046734, 20.253469, 33.112617>,  <12.255196, 20.134583, 33.109501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.046734, 20.253469, 33.112617>,  <11.699298, 20.451614, 33.117813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.046734, 20.253469, 33.112617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023400, 0.014814, 0.999616,
		-0.494980, -0.868560, 0.024458,
		0.868589, -0.495362, -0.012992,
		12.307311, 20.104860, 33.108719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.699827, 19.913979, 33.576359>,  <11.699298, 20.451614, 33.117813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.699827, 19.913979, 33.576359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.067451, 20.059460, 33.515629>,  <12.288025, 20.146748, 33.479191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.067451, 20.059460, 33.515629>,  <11.699827, 19.913979, 33.576359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.067451, 20.059460, 33.515629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141291, 0.055568, 0.988407,
		0.367923, -0.929856, -0.000317,
		0.919059, 0.363703, -0.151825,
		12.343168, 20.168570, 33.470081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.212237, 19.650455, 33.113487>,  <11.699827, 19.913979, 33.576359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.212237, 19.650455, 33.113487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.832937, 19.551720, 33.193382>,  <10.605357, 19.492477, 33.241318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.832937, 19.551720, 33.193382>,  <11.212237, 19.650455, 33.113487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.832937, 19.551720, 33.193382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053278, -0.496423, -0.866444,
		0.313025, -0.832247, 0.457581,
		-0.948249, -0.246840, 0.199733,
		10.548463, 19.477667, 33.253304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.146960, 18.972321, 32.843201>,  <11.212237, 19.650455, 33.113487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.146960, 18.972321, 32.843201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.773431, 19.109232, 32.884811>,  <10.549314, 19.191378, 32.909779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.773431, 19.109232, 32.884811>,  <11.146960, 18.972321, 32.843201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.773431, 19.109232, 32.884811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260608, -0.451674, -0.853273,
		-0.245067, -0.823916, 0.510983,
		-0.933823, 0.342275, 0.104029,
		10.493284, 19.211914, 32.916019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.730615, 18.473442, 32.783333>,  <11.146960, 18.972321, 32.843201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.730615, 18.473442, 32.783333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.473673, 18.770853, 32.708988>,  <10.319508, 18.949301, 32.664383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.473673, 18.770853, 32.708988>,  <10.730615, 18.473442, 32.783333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.473673, 18.770853, 32.708988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438883, -0.555673, -0.706123,
		-0.628301, -0.372011, 0.683261,
		-0.642355, 0.743529, -0.185860,
		10.280966, 18.993912, 32.653229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.083537, 18.220205, 32.535706>,  <10.730615, 18.473442, 32.783333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.083537, 18.220205, 32.535706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.048588, 18.593214, 32.395554>,  <10.027618, 18.817020, 32.311462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.048588, 18.593214, 32.395554>,  <10.083537, 18.220205, 32.535706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.048588, 18.593214, 32.395554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275565, -0.360626, -0.891074,
		-0.957303, 0.018697, 0.288480,
		-0.087373, 0.932523, -0.350380,
		10.022376, 18.872971, 32.290440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.481332, 18.199566, 32.153896>,  <10.083537, 18.220205, 32.535706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.481332, 18.199566, 32.153896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.664028, 18.525909, 32.012043>,  <9.773645, 18.721716, 31.926931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.664028, 18.525909, 32.012043>,  <9.481332, 18.199566, 32.153896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.664028, 18.525909, 32.012043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249105, -0.265399, -0.931402,
		-0.854011, 0.513749, 0.082016,
		0.456740, 0.815859, -0.354631,
		9.801050, 18.770666, 31.905653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.008859, 18.487314, 31.601019>,  <9.481332, 18.199566, 32.153896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.008859, 18.487314, 31.601019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.371788, 18.631264, 31.514067>,  <9.589545, 18.717634, 31.461895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.371788, 18.631264, 31.514067>,  <9.008859, 18.487314, 31.601019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.371788, 18.631264, 31.514067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223705, -0.024546, -0.974348,
		-0.355980, 0.932677, 0.058235,
		0.907323, 0.359876, -0.217382,
		9.643985, 18.739227, 31.448853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.838524, 18.862682, 31.064960>,  <9.008859, 18.487314, 31.601019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.838524, 18.862682, 31.064960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.234790, 18.857054, 31.010723>,  <9.472549, 18.853676, 30.978180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.234790, 18.857054, 31.010723>,  <8.838524, 18.862682, 31.064960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.234790, 18.857054, 31.010723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136241, -0.067514, -0.988373,
		0.004755, 0.997619, -0.068801,
		0.990664, -0.014073, -0.135596,
		9.531989, 18.852831, 30.970045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.988312, 19.178453, 30.441147>,  <8.838524, 18.862682, 31.064960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.988312, 19.178453, 30.441147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.324262, 18.970249, 30.502697>,  <9.525831, 18.845325, 30.539627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.324262, 18.970249, 30.502697>,  <8.988312, 19.178453, 30.441147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.324262, 18.970249, 30.502697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106494, -0.119960, -0.987050,
		0.532231, 0.845385, -0.045320,
		0.839874, -0.520513, 0.153875,
		9.576224, 18.814095, 30.548859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.583403, 19.626705, 30.229885>,  <8.988312, 19.178453, 30.441147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.583403, 19.626705, 30.229885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.675929, 19.238678, 30.200321>,  <9.731445, 19.005861, 30.182583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.675929, 19.238678, 30.200321>,  <9.583403, 19.626705, 30.229885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.675929, 19.238678, 30.200321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170813, 0.115286, -0.978536,
		0.957766, 0.213727, 0.192368,
		0.231316, -0.970067, -0.073910,
		9.745324, 18.947659, 30.178148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.154283, 19.664135, 29.776730>,  <9.583403, 19.626705, 30.229885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.154283, 19.664135, 29.776730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.047427, 19.279661, 29.749128>,  <9.983315, 19.048977, 29.732567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.047427, 19.279661, 29.749128>,  <10.154283, 19.664135, 29.776730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.047427, 19.279661, 29.749128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153160, 0.028347, -0.987795,
		0.951409, -0.274445, 0.139643,
		-0.267137, -0.961185, -0.069003,
		9.967286, 18.991306, 29.728428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.689894, 19.328310, 29.491709>,  <10.154283, 19.664135, 29.776730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.689894, 19.328310, 29.491709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.367906, 19.099493, 29.428734>,  <10.174712, 18.962202, 29.390949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.367906, 19.099493, 29.428734>,  <10.689894, 19.328310, 29.491709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.367906, 19.099493, 29.428734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144004, 0.069047, -0.987166,
		0.575573, -0.817312, 0.026796,
		-0.804971, -0.572044, -0.157437,
		10.126414, 18.927879, 29.381502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.025451, 18.799147, 29.044600>,  <10.689894, 19.328310, 29.491709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.025451, 18.799147, 29.044600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.630031, 18.785763, 28.985746>,  <10.392778, 18.777733, 28.950434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.630031, 18.785763, 28.985746>,  <11.025451, 18.799147, 29.044600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.630031, 18.785763, 28.985746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148157, -0.030450, -0.988495,
		0.028595, -0.998976, 0.035058,
		-0.988550, -0.033460, -0.147134,
		10.333466, 18.775724, 28.941607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.927720, 18.218756, 28.535212>,  <11.025451, 18.799147, 29.044600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.927720, 18.218756, 28.535212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.638974, 18.495485, 28.528423>,  <10.465727, 18.661524, 28.524349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.638974, 18.495485, 28.528423>,  <10.927720, 18.218756, 28.535212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.638974, 18.495485, 28.528423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032739, 0.009643, -0.999417,
		-0.691259, -0.722000, -0.029610,
		-0.721864, 0.691826, -0.016972,
		10.422415, 18.703033, 28.523333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.508023, 18.053528, 27.944613>,  <10.927720, 18.218756, 28.535212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.508023, 18.053528, 27.944613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.393381, 18.432301, 28.002823>,  <10.324595, 18.659565, 28.037748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.393381, 18.432301, 28.002823>,  <10.508023, 18.053528, 27.944613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.393381, 18.432301, 28.002823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064529, 0.170634, -0.983219,
		-0.955873, -0.272406, -0.110010,
		-0.286607, 0.946931, 0.145526,
		10.307399, 18.716379, 28.046480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.077313, 18.251299, 27.380539>,  <10.508023, 18.053528, 27.944613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.077313, 18.251299, 27.380539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.199271, 18.604578, 27.523087>,  <10.272446, 18.816545, 27.608616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.199271, 18.604578, 27.523087>,  <10.077313, 18.251299, 27.380539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.199271, 18.604578, 27.523087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282834, 0.273337, -0.919397,
		-0.909420, 0.381113, -0.166459,
		0.304895, 0.883198, 0.356370,
		10.290740, 18.869537, 27.629997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.927321, 18.634132, 26.825853>,  <10.077313, 18.251299, 27.380539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.927321, 18.634132, 26.825853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.173440, 18.867762, 27.037615>,  <10.321112, 19.007940, 27.164671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.173440, 18.867762, 27.037615>,  <9.927321, 18.634132, 26.825853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.173440, 18.867762, 27.037615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422218, 0.322944, -0.847018,
		-0.665689, 0.744690, -0.047901,
		0.615297, 0.584075, 0.529402,
		10.358029, 19.042984, 27.196436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.867012, 19.314810, 26.524134>,  <9.927321, 18.634132, 26.825853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.867012, 19.314810, 26.524134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.221443, 19.274572, 26.705130>,  <10.434102, 19.250429, 26.813726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.221443, 19.274572, 26.705130>,  <9.867012, 19.314810, 26.524134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.221443, 19.274572, 26.705130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461929, 0.272813, -0.843916,
		-0.038552, 0.956794, 0.288201,
		0.886079, -0.100593, 0.452488,
		10.487267, 19.244394, 26.840876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.230450, 19.849562, 26.270054>,  <9.867012, 19.314810, 26.524134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.230450, 19.849562, 26.270054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.513783, 19.597260, 26.396805>,  <10.683784, 19.445879, 26.472857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.513783, 19.597260, 26.396805>,  <10.230450, 19.849562, 26.270054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.513783, 19.597260, 26.396805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546578, 0.206039, -0.811665,
		0.446671, 0.748130, 0.490701,
		0.708334, -0.630754, 0.316879,
		10.726284, 19.408033, 26.491869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.893864, 20.228111, 26.112104>,  <10.230450, 19.849562, 26.270054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.893864, 20.228111, 26.112104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.026345, 19.852613, 26.150188>,  <11.105834, 19.627316, 26.173038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.026345, 19.852613, 26.150188>,  <10.893864, 20.228111, 26.112104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.026345, 19.852613, 26.150188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478431, 0.080108, -0.874463,
		0.813270, 0.335176, 0.475656,
		0.331203, -0.938744, 0.095209,
		11.125707, 19.570990, 26.178751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.630685, 20.227449, 25.965601>,  <10.893864, 20.228111, 26.112104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.630685, 20.227449, 25.965601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.524849, 19.844862, 25.916353>,  <11.461348, 19.615309, 25.886805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.524849, 19.844862, 25.916353>,  <11.630685, 20.227449, 25.965601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.524849, 19.844862, 25.916353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455513, -0.011427, -0.890156,
		0.850000, -0.291608, 0.438708,
		-0.264589, -0.956470, -0.123118,
		11.445472, 19.557920, 25.879417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.147125, 19.981936, 25.581491>,  <11.630685, 20.227449, 25.965601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.147125, 19.981936, 25.581491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.867426, 19.697723, 25.549997>,  <11.699606, 19.527197, 25.531101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.867426, 19.697723, 25.549997>,  <12.147125, 19.981936, 25.581491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.867426, 19.697723, 25.549997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391920, -0.288910, -0.873458,
		0.597871, -0.641622, 0.480491,
		-0.699248, -0.710530, -0.078734,
		11.657651, 19.484564, 25.526377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<19.799330, 27.709618, 14.462895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.858639, 28.083456, 14.592230>,  <19.894224, 28.307758, 14.669830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.858639, 28.083456, 14.592230>,  <19.799330, 27.709618, 14.462895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.858639, 28.083456, 14.592230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067577, 0.335761, -0.939520,
		-0.986635, 0.117454, 0.112941,
		0.148271, 0.934596, 0.323337,
		19.903120, 28.363834, 14.689231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.821281, 27.937408, 13.713792>,  <19.799330, 27.709618, 14.462895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.821281, 27.937408, 13.713792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.148983, 27.836163, 13.507973>,  <20.345604, 27.775415, 13.384481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.148983, 27.836163, 13.507973>,  <19.821281, 27.937408, 13.713792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.148983, 27.836163, 13.507973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192012, -0.724426, 0.662072,
		-0.540330, -0.641203, -0.544887,
		0.819253, -0.253113, -0.514547,
		20.394758, 27.760229, 13.353608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.954784, 27.182318, 13.316842>,  <19.821281, 27.937408, 13.713792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.954784, 27.182318, 13.316842> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.212040, 27.410477, 13.521203>,  <20.366392, 27.547371, 13.643820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.212040, 27.410477, 13.521203>,  <19.954784, 27.182318, 13.316842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.212040, 27.410477, 13.521203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082591, -0.714971, 0.694259,
		0.761284, -0.404308, -0.506934,
		0.643137, 0.570397, 0.510904,
		20.404982, 27.581596, 13.674474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.242998, 26.775049, 13.707924>,  <19.954784, 27.182318, 13.316842>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.242998, 26.775049, 13.707924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.454824, 27.097984, 13.812052>,  <20.581921, 27.291746, 13.874528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.454824, 27.097984, 13.812052>,  <20.242998, 26.775049, 13.707924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.454824, 27.097984, 13.812052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367979, -0.495145, 0.787034,
		0.764298, -0.320995, -0.559295,
		0.529566, 0.807338, 0.260319,
		20.613695, 27.340185, 13.890147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.049070, 26.787094, 13.735209>,  <20.242998, 26.775049, 13.707924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.049070, 26.787094, 13.735209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.875408, 27.028530, 14.002698>,  <20.771212, 27.173391, 14.163191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.875408, 27.028530, 14.002698>,  <21.049070, 26.787094, 13.735209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.875408, 27.028530, 14.002698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307239, -0.598609, 0.739778,
		0.846826, 0.526635, 0.074442,
		-0.434155, 0.603592, 0.668720,
		20.745161, 27.209608, 14.203314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.494921, 27.039764, 14.288315>,  <21.049070, 26.787094, 13.735209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.494921, 27.039764, 14.288315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.113895, 26.964434, 14.383947>,  <20.885281, 26.919235, 14.441327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.113895, 26.964434, 14.383947>,  <21.494921, 27.039764, 14.288315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.113895, 26.964434, 14.383947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303481, -0.646925, 0.699562,
		0.022922, 0.738933, 0.673389,
		-0.952562, -0.188325, 0.239081,
		20.828127, 26.907936, 14.455671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.589666, 26.924339, 14.971402>,  <21.494921, 27.039764, 14.288315>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.589666, 26.924339, 14.971402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.258551, 26.754759, 14.824418>,  <21.059881, 26.653009, 14.736227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.258551, 26.754759, 14.824418>,  <21.589666, 26.924339, 14.971402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.258551, 26.754759, 14.824418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241824, -0.860622, 0.448164,
		-0.506245, 0.282125, 0.814936,
		-0.827791, -0.423952, -0.367461,
		21.010214, 26.627573, 14.714180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.002241, 26.681841, 15.458802>,  <21.589666, 26.924339, 14.971402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.002241, 26.681841, 15.458802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.088545, 26.475388, 15.127248>,  <21.140327, 26.351515, 14.928315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.088545, 26.475388, 15.127248>,  <21.002241, 26.681841, 15.458802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.088545, 26.475388, 15.127248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138886, -0.824027, 0.549262,
		-0.966518, -0.233630, -0.106109,
		0.215761, -0.516135, -0.828886,
		21.153273, 26.320547, 14.878582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.692974, 25.929193, 15.412487>,  <21.002241, 26.681841, 15.458802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.692974, 25.929193, 15.412487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.049561, 25.956861, 15.233377>,  <21.263514, 25.973461, 15.125912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.049561, 25.956861, 15.233377>,  <20.692974, 25.929193, 15.412487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.049561, 25.956861, 15.233377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365522, -0.693772, 0.620543,
		-0.267731, -0.716865, -0.643758,
		0.891467, 0.069169, -0.447775,
		21.317001, 25.977612, 15.099045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.852461, 25.322021, 15.044213>,  <20.692974, 25.929193, 15.412487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.852461, 25.322021, 15.044213> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.184507, 25.476080, 15.205492>,  <21.383736, 25.568516, 15.302259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.184507, 25.476080, 15.205492>,  <20.852461, 25.322021, 15.044213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.184507, 25.476080, 15.205492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276402, -0.912246, 0.302340,
		0.484259, -0.139534, -0.863726,
		0.830118, 0.385147, 0.403196,
		21.433542, 25.591623, 15.326450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.439644, 24.844145, 14.796803>,  <20.852461, 25.322021, 15.044213>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.439644, 24.844145, 14.796803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.584526, 25.022255, 15.124348>,  <21.671455, 25.129122, 15.320874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.584526, 25.022255, 15.124348>,  <21.439644, 24.844145, 14.796803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.584526, 25.022255, 15.124348> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328154, -0.883188, 0.335102,
		0.872422, 0.147336, -0.466017,
		0.362208, 0.445276, 0.818862,
		21.693188, 25.155838, 15.370007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.096584, 24.574806, 14.900053>,  <21.439644, 24.844145, 14.796803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.096584, 24.574806, 14.900053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.013887, 24.713438, 15.266034>,  <21.964270, 24.796618, 15.485622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.013887, 24.713438, 15.266034>,  <22.096584, 24.574806, 14.900053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.013887, 24.713438, 15.266034> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238770, -0.889009, 0.390706,
		0.948813, 0.299239, 0.101044,
		-0.206743, 0.346581, 0.914953,
		21.951864, 24.817411, 15.540520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.645206, 24.277454, 15.300187>,  <22.096584, 24.574806, 14.900053>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.645206, 24.277454, 15.300187> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.340513, 24.377071, 15.539432>,  <22.157696, 24.436842, 15.682978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.340513, 24.377071, 15.539432>,  <22.645206, 24.277454, 15.300187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.340513, 24.377071, 15.539432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029596, -0.908830, 0.416116,
		0.647212, 0.334672, 0.684917,
		-0.761735, 0.249045, 0.598110,
		22.111992, 24.451784, 15.718864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.815250, 23.911278, 15.875789>,  <22.645206, 24.277454, 15.300187>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.815250, 23.911278, 15.875789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.426176, 23.995003, 15.915938>,  <22.192732, 24.045238, 15.940028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.426176, 23.995003, 15.915938>,  <22.815250, 23.911278, 15.875789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.426176, 23.995003, 15.915938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135667, -0.863442, 0.485863,
		0.188364, 0.458974, 0.868252,
		-0.972684, 0.209312, 0.100374,
		22.134371, 24.057796, 15.946051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.686565, 23.627525, 16.559483>,  <22.815250, 23.911278, 15.875789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.686565, 23.627525, 16.559483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.319614, 23.671505, 16.406471>,  <22.099443, 23.697893, 16.314665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.319614, 23.671505, 16.406471>,  <22.686565, 23.627525, 16.559483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.319614, 23.671505, 16.406471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308591, -0.803471, 0.509122,
		-0.251372, 0.585103, 0.771017,
		-0.917379, 0.109950, -0.382528,
		22.044401, 23.704491, 16.291714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.160507, 23.554296, 17.147861>,  <22.686565, 23.627525, 16.559483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.160507, 23.554296, 17.147861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.979324, 23.476917, 16.799746>,  <21.870615, 23.430489, 16.590876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.979324, 23.476917, 16.799746>,  <22.160507, 23.554296, 17.147861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.979324, 23.476917, 16.799746> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384561, -0.838295, 0.386489,
		-0.804327, 0.509743, 0.305318,
		-0.452957, -0.193450, -0.870291,
		21.843437, 23.418882, 16.538658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.466663, 23.256678, 17.418703>,  <22.160507, 23.554296, 17.147861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.466663, 23.256678, 17.418703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.517954, 23.143997, 17.038345>,  <21.548729, 23.076389, 16.810131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.517954, 23.143997, 17.038345>,  <21.466663, 23.256678, 17.418703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.517954, 23.143997, 17.038345> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326654, -0.917305, 0.227702,
		-0.936405, 0.281416, -0.209641,
		0.128226, -0.281702, -0.950895,
		21.556421, 23.059486, 16.753077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.815653, 22.961393, 17.092482>,  <21.466663, 23.256678, 17.418703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.815653, 22.961393, 17.092482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.135574, 22.791204, 16.923113>,  <21.327528, 22.689091, 16.821491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.135574, 22.791204, 16.923113>,  <20.815653, 22.961393, 17.092482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.135574, 22.791204, 16.923113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377837, -0.904966, 0.195643,
		-0.466425, 0.003509, -0.884554,
		0.799805, -0.425470, -0.423424,
		21.375515, 22.663563, 16.796085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.531059, 22.415379, 16.786875>,  <20.815653, 22.961393, 17.092482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.531059, 22.415379, 16.786875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.922390, 22.342010, 16.748436>,  <21.157188, 22.297991, 16.725372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.922390, 22.342010, 16.748436>,  <20.531059, 22.415379, 16.786875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.922390, 22.342010, 16.748436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194913, -0.972384, -0.128365,
		-0.069899, 0.144313, -0.987060,
		0.978327, -0.183418, -0.096097,
		21.215887, 22.286985, 16.719606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.636559, 21.885279, 16.207483>,  <20.531059, 22.415379, 16.786875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.636559, 21.885279, 16.207483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.981291, 21.883747, 16.410357>,  <21.188129, 21.882828, 16.532080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.981291, 21.883747, 16.410357>,  <20.636559, 21.885279, 16.207483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.981291, 21.883747, 16.410357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044703, -0.996653, 0.068437,
		0.505224, -0.081654, -0.859117,
		0.861830, -0.003829, 0.507184,
		21.239840, 21.882599, 16.562511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.991714, 21.519636, 15.888641>,  <20.636559, 21.885279, 16.207483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.991714, 21.519636, 15.888641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.218601, 21.510065, 16.217930>,  <21.354733, 21.504322, 16.415503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.218601, 21.510065, 16.217930>,  <20.991714, 21.519636, 15.888641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.218601, 21.510065, 16.217930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291211, -0.929176, -0.227658,
		0.770365, 0.368862, -0.520076,
		0.567216, -0.023927, 0.823221,
		21.388765, 21.502888, 16.464895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.660376, 21.203539, 15.661900>,  <20.991714, 21.519636, 15.888641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.660376, 21.203539, 15.661900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.658724, 21.164923, 16.060028>,  <21.657732, 21.141754, 16.298904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.658724, 21.164923, 16.060028>,  <21.660376, 21.203539, 15.661900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.658724, 21.164923, 16.060028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451545, -0.888259, -0.084281,
		0.892239, 0.449084, 0.047259,
		-0.004129, -0.096539, 0.995321,
		21.657486, 21.135962, 16.358624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.288795, 20.779432, 15.868179>,  <21.660376, 21.203539, 15.661900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.288795, 20.779432, 15.868179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.042112, 20.744484, 16.181110>,  <21.894102, 20.723515, 16.368870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.042112, 20.744484, 16.181110>,  <22.288795, 20.779432, 15.868179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.042112, 20.744484, 16.181110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248983, -0.964450, 0.088564,
		0.746778, 0.249404, 0.616539,
		-0.616710, -0.087370, 0.782327,
		21.857100, 20.718273, 16.415808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.678545, 20.499039, 16.408495>,  <22.288795, 20.779432, 15.868179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.678545, 20.499039, 16.408495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.305811, 20.397017, 16.511744>,  <22.082170, 20.335804, 16.573692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.305811, 20.397017, 16.511744>,  <22.678545, 20.499039, 16.408495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.305811, 20.397017, 16.511744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279423, -0.958167, 0.061954,
		0.231522, 0.129856, 0.964124,
		-0.931837, -0.255054, 0.258121,
		22.026260, 20.320499, 16.589180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.685699, 20.101873, 16.982143>,  <22.678545, 20.499039, 16.408495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.685699, 20.101873, 16.982143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.326220, 20.003353, 16.836994>,  <22.110533, 19.944241, 16.749905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.326220, 20.003353, 16.836994>,  <22.685699, 20.101873, 16.982143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.326220, 20.003353, 16.836994> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198194, -0.966184, 0.164949,
		-0.391231, 0.076319, 0.917122,
		-0.898697, -0.246301, -0.362875,
		22.056610, 19.929462, 16.728132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.356363, 19.677322, 17.461563>,  <22.685699, 20.101873, 16.982143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.356363, 19.677322, 17.461563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.168644, 19.591684, 17.118887>,  <22.056011, 19.540302, 16.913280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.168644, 19.591684, 17.118887>,  <22.356363, 19.677322, 17.461563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.168644, 19.591684, 17.118887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055414, -0.975391, 0.213404,
		-0.881298, 0.052678, 0.469616,
		-0.469301, -0.214096, -0.856691,
		22.027853, 19.527456, 16.861879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.071218, 19.122211, 17.724239>,  <22.356363, 19.677322, 17.461563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.071218, 19.122211, 17.724239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.037254, 19.115633, 17.325739>,  <22.016876, 19.111687, 17.086637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.037254, 19.115633, 17.325739>,  <22.071218, 19.122211, 17.724239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.037254, 19.115633, 17.325739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037621, -0.999098, 0.019698,
		-0.995678, 0.039153, 0.084214,
		-0.084910, -0.016445, -0.996253,
		22.011782, 19.110699, 17.026863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.624634, 18.605837, 17.648172>,  <22.071218, 19.122211, 17.724239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.624634, 18.605837, 17.648172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.808643, 18.648691, 17.295605>,  <21.919048, 18.674404, 17.084064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.808643, 18.648691, 17.295605>,  <21.624634, 18.605837, 17.648172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.808643, 18.648691, 17.295605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031005, -0.994027, -0.104641,
		-0.887365, 0.020809, -0.460597,
		0.460023, 0.107136, -0.881420,
		21.946650, 18.680832, 17.031179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.343414, 18.114456, 17.133568>,  <21.624634, 18.605837, 17.648172>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.343414, 18.114456, 17.133568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.702391, 18.181608, 16.970392>,  <21.917776, 18.221899, 16.872486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.702391, 18.181608, 16.970392>,  <21.343414, 18.114456, 17.133568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.702391, 18.181608, 16.970392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090152, -0.975036, -0.202924,
		-0.431821, 0.145336, -0.890173,
		0.897443, 0.167878, -0.407938,
		21.971624, 18.231972, 16.848011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.483900, 17.463661, 16.628460>,  <21.343414, 18.114456, 17.133568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.483900, 17.463661, 16.628460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.837893, 17.644276, 16.673939>,  <22.050287, 17.752644, 16.701225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.837893, 17.644276, 16.673939>,  <21.483900, 17.463661, 16.628460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.837893, 17.644276, 16.673939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464026, -0.834994, -0.295743,
		-0.038603, 0.314485, -0.948477,
		0.884980, 0.451535, 0.113697,
		22.103386, 17.779736, 16.708048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.857952, 17.388687, 15.953108>,  <21.483900, 17.463661, 16.628460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.857952, 17.388687, 15.953108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.121183, 17.470566, 16.242945>,  <22.279121, 17.519693, 16.416847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.121183, 17.470566, 16.242945>,  <21.857952, 17.388687, 15.953108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.121183, 17.470566, 16.242945> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532930, -0.806444, -0.256190,
		0.531903, 0.554750, -0.639790,
		0.658077, 0.204695, 0.724593,
		22.318607, 17.531975, 16.460323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.549667, 17.513920, 15.618012>,  <21.857952, 17.388687, 15.953108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.549667, 17.513920, 15.618012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.546375, 17.366827, 15.989970>,  <22.544399, 17.278570, 16.213144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.546375, 17.366827, 15.989970>,  <22.549667, 17.513920, 15.618012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.546375, 17.366827, 15.989970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551000, -0.777685, -0.302664,
		0.834465, 0.509881, 0.209022,
		-0.008231, -0.367733, 0.929895,
		22.543905, 17.256508, 16.268938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.202660, 17.294687, 15.637348>,  <22.549667, 17.513920, 15.618012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.202660, 17.294687, 15.637348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.995872, 17.124445, 15.934428>,  <22.871799, 17.022299, 16.112677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.995872, 17.124445, 15.934428>,  <23.202660, 17.294687, 15.637348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.995872, 17.124445, 15.934428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489939, -0.858582, -0.150985,
		0.701929, 0.285823, 0.652381,
		-0.516968, -0.425608, 0.742700,
		22.840782, 16.996763, 16.157238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.700006, 17.112930, 16.175997>,  <23.202660, 17.294687, 15.637348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.700006, 17.112930, 16.175997> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.370279, 16.894241, 16.117218>,  <23.172443, 16.763027, 16.081951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.370279, 16.894241, 16.117218>,  <23.700006, 17.112930, 16.175997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.370279, 16.894241, 16.117218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546659, -0.836173, 0.044474,
		-0.147187, -0.043668, 0.988144,
		-0.824318, -0.546724, -0.146945,
		23.122984, 16.730225, 16.073135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.187410, 17.260574, 15.575814>,  <23.700006, 17.112930, 16.175997>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.187410, 17.260574, 15.575814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.497250, 17.218798, 15.326306>,  <24.683153, 17.193731, 15.176601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.497250, 17.218798, 15.326306>,  <24.187410, 17.260574, 15.575814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.497250, 17.218798, 15.326306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296041, 0.811675, -0.503531,
		0.558889, 0.574696, 0.597803,
		0.774599, -0.104444, -0.623770,
		24.729630, 17.187464, 15.139175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.499180, 17.802517, 15.655350>,  <24.187410, 17.260574, 15.575814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.499180, 17.802517, 15.655350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.529678, 17.666454, 15.280440>,  <24.547977, 17.584818, 15.055494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.529678, 17.666454, 15.280440>,  <24.499180, 17.802517, 15.655350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.529678, 17.666454, 15.280440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442429, 0.830862, -0.337527,
		0.893556, 0.440412, -0.087143,
		0.076247, -0.340154, -0.937273,
		24.552553, 17.564407, 14.999258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.878920, 18.293003, 15.194270>,  <24.499180, 17.802517, 15.655350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.878920, 18.293003, 15.194270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.627428, 18.075029, 14.972370>,  <24.476534, 17.944244, 14.839231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.627428, 18.075029, 14.972370>,  <24.878920, 18.293003, 15.194270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.627428, 18.075029, 14.972370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310295, 0.829942, -0.463587,
		0.713035, -0.119334, -0.690899,
		-0.628727, -0.544936, -0.554749,
		24.438810, 17.911549, 14.805945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.119640, 18.379086, 14.586943>,  <24.878920, 18.293003, 15.194270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.119640, 18.379086, 14.586943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.734652, 18.276274, 14.552099>,  <24.503658, 18.214586, 14.531193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.734652, 18.276274, 14.552099>,  <25.119640, 18.379086, 14.586943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.734652, 18.276274, 14.552099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183587, 0.853021, -0.488519,
		0.199868, -0.454192, -0.868194,
		-0.962470, -0.257028, -0.087108,
		24.445911, 18.199165, 14.525967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.925814, 18.497713, 13.921291>,  <25.119640, 18.379086, 14.586943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.925814, 18.497713, 13.921291> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.565815, 18.484993, 14.095186>,  <24.349815, 18.477362, 14.199523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.565815, 18.484993, 14.095186>,  <24.925814, 18.497713, 13.921291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.565815, 18.484993, 14.095186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279332, 0.807722, -0.519191,
		-0.334637, -0.588706, -0.735829,
		-0.899996, -0.031800, 0.434737,
		24.295816, 18.475452, 14.225607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.464857, 18.629141, 13.432948>,  <24.925814, 18.497713, 13.921291>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.464857, 18.629141, 13.432948> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.273186, 18.694172, 13.777960>,  <24.158184, 18.733191, 13.984967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.273186, 18.694172, 13.777960>,  <24.464857, 18.629141, 13.432948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.273186, 18.694172, 13.777960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498596, 0.758328, -0.419929,
		-0.722351, -0.631274, -0.282314,
		-0.479177, 0.162576, 0.862530,
		24.129433, 18.742945, 14.036719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.732973, 18.692783, 13.254552>,  <24.464857, 18.629141, 13.432948>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.732973, 18.692783, 13.254552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.785057, 18.868160, 13.610263>,  <23.816307, 18.973387, 13.823689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.785057, 18.868160, 13.610263>,  <23.732973, 18.692783, 13.254552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.785057, 18.868160, 13.610263> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559052, 0.773205, -0.299357,
		-0.818844, -0.458175, 0.345789,
		0.130208, 0.438441, 0.889278,
		23.824120, 18.999693, 13.877047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.098333, 18.921942, 13.577691>,  <23.732973, 18.692783, 13.254552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.098333, 18.921942, 13.577691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.373245, 19.158674, 13.746161>,  <23.538193, 19.300713, 13.847242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.373245, 19.158674, 13.746161>,  <23.098333, 18.921942, 13.577691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.373245, 19.158674, 13.746161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598527, 0.789932, -0.133319,
		-0.411601, -0.160457, 0.897128,
		0.687277, 0.591829, 0.421175,
		23.579428, 19.336224, 13.872513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.673227, 19.479511, 13.820499>,  <23.098333, 18.921942, 13.577691>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.673227, 19.479511, 13.820499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.034752, 19.637438, 13.886529>,  <23.251667, 19.732193, 13.926147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.034752, 19.637438, 13.886529>,  <22.673227, 19.479511, 13.820499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.034752, 19.637438, 13.886529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415005, 0.902772, 0.113019,
		-0.104403, -0.170654, 0.979784,
		0.903809, 0.394816, 0.165075,
		23.305895, 19.755882, 13.936051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.665972, 19.825518, 14.458123>,  <22.673227, 19.479511, 13.820499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.665972, 19.825518, 14.458123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.965473, 19.996456, 14.255445>,  <23.145174, 20.099018, 14.133837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.965473, 19.996456, 14.255445>,  <22.665972, 19.825518, 14.458123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.965473, 19.996456, 14.255445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489987, 0.871659, 0.011091,
		0.446407, 0.239971, 0.862053,
		0.748755, 0.427345, -0.506698,
		23.190100, 20.124660, 14.103436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.771784, 20.536289, 14.823095>,  <22.665972, 19.825518, 14.458123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.771784, 20.536289, 14.823095> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.973448, 20.579451, 14.480358>,  <23.094446, 20.605347, 14.274716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.973448, 20.579451, 14.480358>,  <22.771784, 20.536289, 14.823095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.973448, 20.579451, 14.480358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242028, 0.970058, -0.020247,
		0.829002, 0.217587, 0.515181,
		0.504161, 0.107904, -0.856842,
		23.124697, 20.611822, 14.223306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.034901, 21.171354, 14.811798>,  <22.771784, 20.536289, 14.823095>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.034901, 21.171354, 14.811798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.125055, 21.107304, 14.427390>,  <23.179148, 21.068874, 14.196745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.125055, 21.107304, 14.427390>,  <23.034901, 21.171354, 14.811798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.125055, 21.107304, 14.427390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085379, 0.979360, -0.183204,
		0.970521, 0.123343, 0.207064,
		0.225388, -0.160124, -0.961021,
		23.192671, 21.059267, 14.139084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.684130, 21.582596, 14.553335>,  <23.034901, 21.171354, 14.811798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.684130, 21.582596, 14.553335> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.441740, 21.503059, 14.245242>,  <23.296307, 21.455338, 14.060387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.441740, 21.503059, 14.245242>,  <23.684130, 21.582596, 14.553335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.441740, 21.503059, 14.245242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134940, 0.979917, -0.146811,
		0.783955, 0.014971, -0.620637,
		-0.605974, -0.198842, -0.770231,
		23.259947, 21.443407, 14.014173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.964626, 21.941858, 13.946755>,  <23.684130, 21.582596, 14.553335>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.964626, 21.941858, 13.946755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.580685, 21.874517, 13.857011>,  <23.350319, 21.834112, 13.803164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.580685, 21.874517, 13.857011>,  <23.964626, 21.941858, 13.946755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.580685, 21.874517, 13.857011> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105340, 0.957660, -0.267938,
		0.259971, -0.233547, -0.936947,
		-0.959853, -0.168354, -0.224361,
		23.292728, 21.824011, 13.789702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.910040, 22.347305, 13.324977>,  <23.964626, 21.941858, 13.946755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.910040, 22.347305, 13.324977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.525078, 22.271280, 13.402593>,  <23.294100, 22.225664, 13.449162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.525078, 22.271280, 13.402593>,  <23.910040, 22.347305, 13.324977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.525078, 22.271280, 13.402593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262818, 0.831990, -0.488588,
		-0.068576, -0.521217, -0.850664,
		-0.962405, -0.190064, 0.194040,
		23.236357, 22.214260, 13.460805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.469421, 22.247236, 12.688583>,  <23.910040, 22.347305, 13.324977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.469421, 22.247236, 12.688583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.218618, 22.359982, 12.979077>,  <23.068136, 22.427628, 13.153374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.218618, 22.359982, 12.979077>,  <23.469421, 22.247236, 12.688583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.218618, 22.359982, 12.979077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287131, 0.782995, -0.551791,
		-0.724168, -0.554501, -0.410012,
		-0.627006, 0.281862, 0.726235,
		23.030516, 22.444540, 13.196948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.926092, 22.571638, 12.350365>,  <23.469421, 22.247236, 12.688583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.926092, 22.571638, 12.350365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.873878, 22.706263, 12.723392>,  <22.842550, 22.787037, 12.947209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.873878, 22.706263, 12.723392>,  <22.926092, 22.571638, 12.350365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.873878, 22.706263, 12.723392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386703, 0.848836, -0.360469,
		-0.912919, -0.407681, 0.019347,
		-0.130534, 0.336560, 0.932571,
		22.834719, 22.807230, 13.003163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.138903, 22.942371, 12.436678>,  <22.926092, 22.571638, 12.350365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.138903, 22.942371, 12.436678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.376364, 23.073330, 12.730723>,  <22.518841, 23.151905, 12.907150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.376364, 23.073330, 12.730723>,  <22.138903, 22.942371, 12.436678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.376364, 23.073330, 12.730723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194633, 0.944792, -0.263602,
		-0.780831, 0.013410, 0.624599,
		0.593651, 0.327396, 0.735112,
		22.554459, 23.171549, 12.951257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<16.640652, 19.062229, 23.144917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.381956, 18.763462, 23.083151>,  <16.226738, 18.584202, 23.046091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.381956, 18.763462, 23.083151>,  <16.640652, 19.062229, 23.144917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.381956, 18.763462, 23.083151> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576617, -0.346296, -0.739995,
		0.499240, -0.567623, 0.654648,
		-0.646740, -0.746916, -0.154416,
		16.187935, 18.539387, 23.036825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.089083, 18.405085, 23.093761>,  <16.640652, 19.062229, 23.144917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.089083, 18.405085, 23.093761> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.747070, 18.342350, 22.896046>,  <16.541862, 18.304710, 22.777416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.747070, 18.342350, 22.896046>,  <17.089083, 18.405085, 23.093761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.747070, 18.342350, 22.896046> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518546, -0.248577, -0.818119,
		0.005441, -0.955831, 0.293868,
		-0.855033, -0.156836, -0.494290,
		16.490561, 18.295300, 22.747759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.103407, 17.644526, 22.819616>,  <17.089083, 18.405085, 23.093761>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.103407, 17.644526, 22.819616> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.840393, 17.864725, 22.613859>,  <16.682585, 17.996845, 22.490406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.840393, 17.864725, 22.613859>,  <17.103407, 17.644526, 22.819616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.840393, 17.864725, 22.613859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414074, -0.306340, -0.857146,
		-0.629437, -0.776599, -0.026519,
		-0.657534, 0.550500, -0.514391,
		16.643133, 18.029875, 22.459541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.042576, 17.280991, 22.242176>,  <17.103407, 17.644526, 22.819616>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.042576, 17.280991, 22.242176> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.901831, 17.633471, 22.115889>,  <16.817383, 17.844959, 22.040115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.901831, 17.633471, 22.115889>,  <17.042576, 17.280991, 22.242176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.901831, 17.633471, 22.115889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311253, -0.207953, -0.927296,
		-0.882788, -0.424550, -0.201105,
		-0.351863, 0.881200, -0.315720,
		16.796272, 17.897831, 22.021172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.714312, 17.125877, 21.583961>,  <17.042576, 17.280991, 22.242176>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.714312, 17.125877, 21.583961> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.784237, 17.519693, 21.579575>,  <16.826193, 17.755983, 21.576942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.784237, 17.519693, 21.579575>,  <16.714312, 17.125877, 21.583961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.784237, 17.519693, 21.579575> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289935, -0.062120, -0.955028,
		-0.940946, 0.163771, -0.296312,
		0.174813, 0.984541, -0.010968,
		16.836681, 17.815056, 21.576284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.493530, 17.310316, 20.980639>,  <16.714312, 17.125877, 21.583961>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.493530, 17.310316, 20.980639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.756460, 17.594437, 21.081350>,  <16.914219, 17.764910, 21.141777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.756460, 17.594437, 21.081350>,  <16.493530, 17.310316, 20.980639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.756460, 17.594437, 21.081350> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416928, -0.064451, -0.906652,
		-0.627769, 0.700940, -0.338510,
		0.657326, 0.710302, 0.251782,
		16.953657, 17.807528, 21.156885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.366226, 17.894772, 20.424673>,  <16.493530, 17.310316, 20.980639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.366226, 17.894772, 20.424673> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.730299, 17.975885, 20.569141>,  <16.948744, 18.024553, 20.655823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.730299, 17.975885, 20.569141>,  <16.366226, 17.894772, 20.424673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.730299, 17.975885, 20.569141> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357341, 0.056520, -0.932262,
		-0.209461, 0.977591, -0.021019,
		0.910183, 0.202783, 0.361172,
		17.003353, 18.036720, 20.677494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.631811, 18.543270, 19.975946>,  <16.366226, 17.894772, 20.424673>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.631811, 18.543270, 19.975946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.955864, 18.353834, 20.114162>,  <17.150295, 18.240173, 20.197092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.955864, 18.353834, 20.114162>,  <16.631811, 18.543270, 19.975946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.955864, 18.353834, 20.114162> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458273, 0.144008, -0.877068,
		0.365609, 0.868894, 0.333698,
		0.810134, -0.473588, 0.345540,
		17.198904, 18.211758, 20.217825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.152725, 18.930780, 19.863152>,  <16.631811, 18.543270, 19.975946>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.152725, 18.930780, 19.863152> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.365236, 18.597872, 19.926487>,  <17.492743, 18.398127, 19.964489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.365236, 18.597872, 19.926487>,  <17.152725, 18.930780, 19.863152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.365236, 18.597872, 19.926487> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532060, 0.182332, -0.826842,
		0.659285, 0.523529, 0.539686,
		0.531278, -0.832269, 0.158340,
		17.524620, 18.348190, 19.973989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.838690, 19.109690, 19.595263>,  <17.152725, 18.930780, 19.863152>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.838690, 19.109690, 19.595263> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.826149, 18.712027, 19.636580>,  <17.818624, 18.473429, 19.661369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.826149, 18.712027, 19.636580>,  <17.838690, 19.109690, 19.595263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.826149, 18.712027, 19.636580> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554241, -0.103293, -0.825923,
		0.831766, 0.031355, 0.554241,
		-0.031353, -0.994157, 0.103294,
		17.816744, 18.413780, 19.667568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.497772, 18.869360, 19.595631>,  <17.838690, 19.109690, 19.595263>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.497772, 18.869360, 19.595631> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.290936, 18.551319, 19.468870>,  <18.166834, 18.360495, 19.392813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.290936, 18.551319, 19.468870>,  <18.497772, 18.869360, 19.595631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.290936, 18.551319, 19.468870> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529487, -0.006245, -0.848295,
		0.672503, -0.606442, 0.424227,
		-0.517091, -0.795103, -0.316903,
		18.135809, 18.312788, 19.373798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.989815, 18.352278, 19.350452>,  <18.497772, 18.869360, 19.595631>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.989815, 18.352278, 19.350452> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.639273, 18.263945, 19.179230>,  <18.428947, 18.210945, 19.076496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.639273, 18.263945, 19.179230>,  <18.989815, 18.352278, 19.350452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.639273, 18.263945, 19.179230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452636, -0.073727, -0.888642,
		0.164683, -0.972521, 0.164568,
		-0.876356, -0.220833, -0.428057,
		18.376366, 18.197695, 19.050812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.495375, 18.689232, 19.693037>,  <18.989815, 18.352278, 19.350452>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.495375, 18.689232, 19.693037> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.668856, 19.044653, 19.633198>,  <19.772943, 19.257906, 19.597294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.668856, 19.044653, 19.633198>,  <19.495375, 18.689232, 19.693037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.668856, 19.044653, 19.633198> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079155, 0.202955, 0.975984,
		0.897573, -0.411444, 0.158355,
		0.433701, 0.888551, -0.149599,
		19.798965, 19.311218, 19.588318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.623186, 18.802227, 18.906488>,  <19.495375, 18.689232, 19.693037>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.623186, 18.802227, 18.906488> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.357922, 19.011717, 19.120377>,  <19.198763, 19.137411, 19.248711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.357922, 19.011717, 19.120377>,  <19.623186, 18.802227, 18.906488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.357922, 19.011717, 19.120377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394286, 0.851695, -0.345187,
		-0.636204, -0.018082, -0.771309,
		-0.663162, 0.523726, 0.534722,
		19.158974, 19.168835, 19.280794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.920938, 18.435846, 18.322414>,  <19.623186, 18.802227, 18.906488>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.920938, 18.435846, 18.322414> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.165234, 18.119270, 18.312387>,  <20.311810, 17.929325, 18.306372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.165234, 18.119270, 18.312387>,  <19.920938, 18.435846, 18.322414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.165234, 18.119270, 18.312387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558336, -0.452871, 0.695103,
		-0.561482, -0.410529, -0.718473,
		0.610736, -0.791438, -0.025065,
		20.348454, 17.881840, 18.304867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.413729, 17.879015, 18.330280>,  <19.920938, 18.435846, 18.322414>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.413729, 17.879015, 18.330280> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.767218, 17.743279, 18.459202>,  <19.979311, 17.661837, 18.536554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.767218, 17.743279, 18.459202>,  <19.413729, 17.879015, 18.330280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.767218, 17.743279, 18.459202> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460872, -0.511176, 0.725463,
		-0.081424, -0.789650, -0.608130,
		0.883723, -0.339340, 0.322306,
		20.032335, 17.641476, 18.555893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.122339, 17.319511, 18.566908>,  <19.413729, 17.879015, 18.330280>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.122339, 17.319511, 18.566908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.498505, 17.330740, 18.702456>,  <19.724203, 17.337477, 18.783785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.498505, 17.330740, 18.702456>,  <19.122339, 17.319511, 18.566908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.498505, 17.330740, 18.702456> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286999, -0.468926, 0.835309,
		0.182356, -0.882791, -0.432927,
		0.940414, 0.028074, 0.338871,
		19.780628, 17.339163, 18.804117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.222425, 16.601231, 18.728388>,  <19.122339, 17.319511, 18.566908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.222425, 16.601231, 18.728388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.466906, 16.832584, 18.944502>,  <19.613594, 16.971397, 19.074169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.466906, 16.832584, 18.944502>,  <19.222425, 16.601231, 18.728388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.466906, 16.832584, 18.944502> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253640, -0.503493, 0.825931,
		0.749734, -0.641846, -0.161033,
		0.611199, 0.578384, 0.540284,
		19.650265, 17.006100, 19.106586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.690838, 16.149805, 19.132641>,  <19.222425, 16.601231, 18.728388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.690838, 16.149805, 19.132641> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.671743, 16.503464, 19.318546>,  <19.660288, 16.715660, 19.430090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.671743, 16.503464, 19.318546>,  <19.690838, 16.149805, 19.132641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.671743, 16.503464, 19.318546> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114344, -0.467070, 0.876796,
		0.992294, -0.011289, 0.123392,
		-0.047735, 0.884148, 0.464761,
		19.657423, 16.768707, 19.457975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.325409, 16.288788, 19.668856>,  <19.690838, 16.149805, 19.132641>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.325409, 16.288788, 19.668856> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.025928, 16.517687, 19.802710>,  <19.846241, 16.655025, 19.883022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.025928, 16.517687, 19.802710>,  <20.325409, 16.288788, 19.668856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.025928, 16.517687, 19.802710> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195710, -0.291491, 0.936339,
		0.633361, 0.766528, 0.106245,
		-0.748700, 0.572248, 0.334636,
		19.801319, 16.689362, 19.903101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.521336, 16.341120, 20.345190>,  <20.325409, 16.288788, 19.668856>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.521336, 16.341120, 20.345190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.153030, 16.496859, 20.355017>,  <19.932047, 16.590302, 20.360912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.153030, 16.496859, 20.355017>,  <20.521336, 16.341120, 20.345190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.153030, 16.496859, 20.355017> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078184, -0.245853, 0.966149,
		0.382207, 0.887674, 0.256813,
		-0.920763, 0.389347, 0.024565,
		19.876801, 16.613663, 20.362387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.508053, 16.837440, 20.929327>,  <20.521336, 16.341120, 20.345190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.508053, 16.837440, 20.929327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.130369, 16.736532, 20.844635>,  <19.903759, 16.675987, 20.793819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.130369, 16.736532, 20.844635>,  <20.508053, 16.837440, 20.929327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.130369, 16.736532, 20.844635> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185416, -0.124152, 0.974786,
		-0.272198, 0.959659, 0.070450,
		-0.944208, -0.252272, -0.211730,
		19.847107, 16.660851, 20.781116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.127787, 17.259378, 21.363251>,  <20.508053, 16.837440, 20.929327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.127787, 17.259378, 21.363251> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.881979, 16.959896, 21.263811>,  <19.734493, 16.780207, 21.204147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.881979, 16.959896, 21.263811>,  <20.127787, 17.259378, 21.363251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.881979, 16.959896, 21.263811> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328140, -0.043986, 0.943605,
		-0.717418, 0.661441, -0.218650,
		-0.614521, -0.748707, -0.248601,
		19.697622, 16.735285, 21.189230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.471800, 17.500036, 21.523649>,  <20.127787, 17.259378, 21.363251>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.471800, 17.500036, 21.523649> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.427387, 17.102510, 21.522535>,  <19.400740, 16.863995, 21.521866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.427387, 17.102510, 21.522535>,  <19.471800, 17.500036, 21.523649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.427387, 17.102510, 21.522535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401281, 0.042266, 0.914979,
		-0.909201, 0.102707, -0.403491,
		-0.111029, -0.993813, -0.002786,
		19.394079, 16.804367, 21.521700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.773935, 17.470247, 21.721941>,  <19.471800, 17.500036, 21.523649>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.773935, 17.470247, 21.721941> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.939329, 17.113895, 21.797165>,  <19.038565, 16.900084, 21.842299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.939329, 17.113895, 21.797165>,  <18.773935, 17.470247, 21.721941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.939329, 17.113895, 21.797165> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337745, 0.041735, 0.940312,
		-0.845553, -0.452318, -0.283634,
		0.413482, -0.890880, 0.188058,
		19.063374, 16.846632, 21.853582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.259312, 17.086437, 22.003933>,  <18.773935, 17.470247, 21.721941>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.259312, 17.086437, 22.003933> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.595041, 16.893770, 22.104753>,  <18.796478, 16.778170, 22.165245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.595041, 16.893770, 22.104753>,  <18.259312, 17.086437, 22.003933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.595041, 16.893770, 22.104753> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371176, -0.168996, 0.913055,
		-0.397196, -0.859904, -0.320627,
		0.839324, -0.481670, 0.252051,
		18.846838, 16.749269, 22.180368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.972500, 16.527451, 22.253342>,  <18.259312, 17.086437, 22.003933>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.972500, 16.527451, 22.253342> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.346113, 16.533640, 22.396082>,  <18.570282, 16.537354, 22.481726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.346113, 16.533640, 22.396082>,  <17.972500, 16.527451, 22.253342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.346113, 16.533640, 22.396082> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353700, -0.099157, 0.930088,
		0.049775, -0.994951, -0.087144,
		0.934034, 0.015473, 0.356850,
		18.626324, 16.538282, 22.503138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.025898, 15.942831, 22.636696>,  <17.972500, 16.527451, 22.253342>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.025898, 15.942831, 22.636696> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.298468, 16.213177, 22.749031>,  <18.462009, 16.375385, 22.816431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.298468, 16.213177, 22.749031>,  <18.025898, 15.942831, 22.636696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.298468, 16.213177, 22.749031> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369002, -0.014117, 0.929321,
		0.632061, -0.736890, 0.239776,
		0.681422, 0.675866, 0.280837,
		18.502895, 16.415936, 22.833282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.712938, 15.219076, 22.773561>,  <18.025898, 15.942831, 22.636696>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.712938, 15.219076, 22.773561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.404253, 14.979342, 22.858656>,  <17.219042, 14.835503, 22.909712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.404253, 14.979342, 22.858656>,  <17.712938, 15.219076, 22.773561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.404253, 14.979342, 22.858656> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156040, -0.145841, -0.976925,
		0.616530, -0.787101, 0.019027,
		-0.771714, -0.599335, 0.212734,
		17.172739, 14.799542, 22.922476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.910429, 14.535152, 22.562227>,  <17.712938, 15.219076, 22.773561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.910429, 14.535152, 22.562227> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.516130, 14.601818, 22.553068>,  <17.279551, 14.641817, 22.547573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.516130, 14.601818, 22.553068>,  <17.910429, 14.535152, 22.562227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.516130, 14.601818, 22.553068> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004357, -0.110779, -0.993836,
		-0.168179, -0.979770, 0.108474,
		-0.985747, 0.166670, -0.022900,
		17.220406, 14.651817, 22.546198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.745407, 14.204399, 22.017645>,  <17.910429, 14.535152, 22.562227>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.745407, 14.204399, 22.017645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.395868, 14.389757, 22.076506>,  <17.186144, 14.500972, 22.111822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.395868, 14.389757, 22.076506>,  <17.745407, 14.204399, 22.017645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.395868, 14.389757, 22.076506> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250192, -0.169076, -0.953319,
		-0.416886, -0.869871, 0.263685,
		-0.873848, 0.463397, 0.147150,
		17.133715, 14.528776, 22.120651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.204268, 13.757275, 21.703360>,  <17.745407, 14.204399, 22.017645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.204268, 13.757275, 21.703360> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.055206, 14.126989, 21.736408>,  <16.965771, 14.348818, 21.756237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.055206, 14.126989, 21.736408>,  <17.204268, 13.757275, 21.703360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.055206, 14.126989, 21.736408> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382776, -0.071998, -0.921031,
		-0.845348, -0.374849, 0.380625,
		-0.372652, 0.924286, 0.082620,
		16.943411, 14.404275, 21.761194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.551352, 13.648280, 21.495340>,  <17.204268, 13.757275, 21.703360>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.551352, 13.648280, 21.495340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.595285, 14.042512, 21.443851>,  <16.621645, 14.279051, 21.412958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.595285, 14.042512, 21.443851>,  <16.551352, 13.648280, 21.495340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.595285, 14.042512, 21.443851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401360, -0.074500, -0.912885,
		-0.909311, 0.151928, 0.387389,
		0.109832, 0.985580, -0.128722,
		16.628235, 14.338186, 21.405235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.901865, 13.876481, 21.253902>,  <16.551352, 13.648280, 21.495340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.901865, 13.876481, 21.253902> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.149029, 14.169204, 21.138908>,  <16.297327, 14.344837, 21.069912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.149029, 14.169204, 21.138908>,  <15.901865, 13.876481, 21.253902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.149029, 14.169204, 21.138908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446952, 0.026120, -0.894176,
		-0.646855, 0.681012, 0.343222,
		0.617910, 0.731806, -0.287484,
		16.334402, 14.388745, 21.052664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.464072, 14.202936, 20.825829>,  <15.901865, 13.876481, 21.253902>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.464072, 14.202936, 20.825829> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.828074, 14.343627, 20.738031>,  <16.046476, 14.428041, 20.685354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.828074, 14.343627, 20.738031>,  <15.464072, 14.202936, 20.825829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.828074, 14.343627, 20.738031> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316997, 0.249067, -0.915138,
		-0.267211, 0.902360, 0.338149,
		0.910006, 0.351728, -0.219492,
		16.101076, 14.449145, 20.672184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.301103, 14.897438, 20.614235>,  <15.464072, 14.202936, 20.825829>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.301103, 14.897438, 20.614235> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.631811, 14.709098, 20.491110>,  <15.830236, 14.596094, 20.417234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.631811, 14.709098, 20.491110>,  <15.301103, 14.897438, 20.614235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.631811, 14.709098, 20.491110> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276916, 0.135645, -0.951272,
		0.489659, 0.871723, -0.018238,
		0.826772, -0.470849, -0.307814,
		15.879843, 14.567843, 20.398766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.417710, 15.160385, 20.028660>,  <15.301103, 14.897438, 20.614235>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.417710, 15.160385, 20.028660> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.681787, 14.861599, 19.997196>,  <15.840234, 14.682327, 19.978317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.681787, 14.861599, 19.997196>,  <15.417710, 15.160385, 20.028660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.681787, 14.861599, 19.997196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039532, 0.139136, -0.989484,
		0.750055, 0.650141, 0.121386,
		0.660193, -0.746966, -0.078658,
		15.879846, 14.637509, 19.973598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.881148, 15.425051, 19.498402>,  <15.417710, 15.160385, 20.028660>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.881148, 15.425051, 19.498402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.891106, 15.025978, 19.523733>,  <15.897080, 14.786534, 19.538933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.891106, 15.025978, 19.523733>,  <15.881148, 15.425051, 19.498402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.891106, 15.025978, 19.523733> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084223, -0.065217, -0.994311,
		0.996136, 0.019418, -0.085651,
		0.024893, -0.997682, 0.063329,
		15.898574, 14.726673, 19.542732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.170462, 15.248569, 18.904560>,  <15.881148, 15.425051, 19.498402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.170462, 15.248569, 18.904560> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.001596, 14.903414, 19.015701>,  <15.900278, 14.696321, 19.082386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.001596, 14.903414, 19.015701>,  <16.170462, 15.248569, 18.904560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.001596, 14.903414, 19.015701> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144688, -0.238438, -0.960319,
		0.894900, -0.445611, -0.024191,
		-0.422161, -0.862889, 0.277853,
		15.874949, 14.644547, 19.099056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.418968, 14.759076, 18.389288>,  <16.170462, 15.248569, 18.904560>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.418968, 14.759076, 18.389288> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.089682, 14.591723, 18.542791>,  <15.892110, 14.491312, 18.634893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.089682, 14.591723, 18.542791>,  <16.418968, 14.759076, 18.389288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.089682, 14.591723, 18.542791> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241734, -0.353303, -0.903738,
		0.513690, -0.836740, 0.189708,
		-0.823217, -0.418382, 0.383757,
		15.842716, 14.466208, 18.657919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<14.287435, 15.917787, 27.638153> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.591700, 15.732739, 27.820307>,  <14.774259, 15.621711, 27.929600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.591700, 15.732739, 27.820307>,  <14.287435, 15.917787, 27.638153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.591700, 15.732739, 27.820307> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515362, 0.003821, -0.856964,
		0.394707, 0.886549, 0.241323,
		0.760663, -0.462619, 0.455386,
		14.819899, 15.593954, 27.956923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.921804, 16.209269, 27.371387>,  <14.287435, 15.917787, 27.638153>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.921804, 16.209269, 27.371387> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.085536, 15.880879, 27.530611>,  <15.183775, 15.683846, 27.626144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.085536, 15.880879, 27.530611>,  <14.921804, 16.209269, 27.371387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.085536, 15.880879, 27.530611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603820, -0.083317, -0.792755,
		0.683996, 0.564854, 0.461617,
		0.409330, -0.820974, 0.398058,
		15.208335, 15.634587, 27.650028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.698239, 16.241135, 27.347843>,  <14.921804, 16.209269, 27.371387>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.698239, 16.241135, 27.347843> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.591234, 15.856747, 27.376055>,  <15.527031, 15.626114, 27.392981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.591234, 15.856747, 27.376055>,  <15.698239, 16.241135, 27.347843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.591234, 15.856747, 27.376055> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561573, -0.214970, -0.799014,
		0.782990, -0.174139, 0.597162,
		-0.267512, -0.960970, 0.070527,
		15.510981, 15.568456, 27.397213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.318308, 15.863897, 27.128872>,  <15.698239, 16.241135, 27.347843>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.318308, 15.863897, 27.128872> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.046091, 15.571063, 27.140940>,  <15.882761, 15.395362, 27.148180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.046091, 15.571063, 27.140940>,  <16.318308, 15.863897, 27.128872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.046091, 15.571063, 27.140940> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433447, -0.435444, -0.788995,
		0.590748, -0.523869, 0.613659,
		-0.680544, -0.732086, 0.030168,
		15.841928, 15.351438, 27.149990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.723413, 15.205038, 26.984381>,  <16.318308, 15.863897, 27.128872>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.723413, 15.205038, 26.984381> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.339926, 15.135741, 26.894188>,  <16.109833, 15.094163, 26.840073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.339926, 15.135741, 26.894188>,  <16.723413, 15.205038, 26.984381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.339926, 15.135741, 26.894188> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283980, -0.542821, -0.790380,
		0.014531, -0.821786, 0.569610,
		-0.958720, -0.173243, -0.225483,
		16.052309, 15.083769, 26.826544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.682491, 14.441350, 26.912306>,  <16.723413, 15.205038, 26.984381>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.682491, 14.441350, 26.912306> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.440317, 14.670395, 26.691195>,  <16.295013, 14.807822, 26.558527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.440317, 14.670395, 26.691195>,  <16.682491, 14.441350, 26.912306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.440317, 14.670395, 26.691195> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244825, -0.526870, -0.813922,
		-0.757304, -0.628111, 0.178795,
		-0.605435, 0.572613, -0.552778,
		16.258686, 14.842178, 26.525362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.493711, 13.982988, 26.385422>,  <16.682491, 14.441350, 26.912306>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.493711, 13.982988, 26.385422> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.399218, 14.345996, 26.246510>,  <16.342522, 14.563801, 26.163162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.399218, 14.345996, 26.246510>,  <16.493711, 13.982988, 26.385422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.399218, 14.345996, 26.246510> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444434, -0.216909, -0.869154,
		-0.864102, -0.359666, -0.352090,
		-0.236234, 0.907519, -0.347280,
		16.328348, 14.618252, 26.142326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.535275, 13.874393, 25.643999>,  <16.493711, 13.982988, 26.385422>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.535275, 13.874393, 25.643999> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.478342, 14.270316, 25.645702>,  <16.444181, 14.507871, 25.646725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.478342, 14.270316, 25.645702>,  <16.535275, 13.874393, 25.643999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.478342, 14.270316, 25.645702> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378748, 0.058436, -0.923653,
		-0.914490, -0.129854, -0.383206,
		-0.142333, 0.989810, 0.004257,
		16.435642, 14.567259, 25.646980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.186071, 14.048120, 24.998869>,  <16.535275, 13.874393, 25.643999>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.186071, 14.048120, 24.998869> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.339859, 14.387362, 25.144693>,  <16.432133, 14.590906, 25.232189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.339859, 14.387362, 25.144693>,  <16.186071, 14.048120, 24.998869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.339859, 14.387362, 25.144693> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447969, 0.173896, -0.876974,
		-0.807159, 0.500484, -0.313065,
		0.384470, 0.848102, 0.364563,
		16.455200, 14.641792, 25.254063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.917255, 14.523935, 24.584221>,  <16.186071, 14.048120, 24.998869>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.917255, 14.523935, 24.584221> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.260244, 14.640389, 24.753918>,  <16.466038, 14.710261, 24.855736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.260244, 14.640389, 24.753918>,  <15.917255, 14.523935, 24.584221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.260244, 14.640389, 24.753918> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338094, 0.302722, -0.891096,
		-0.387856, 0.907524, 0.161146,
		0.857473, 0.291134, 0.424241,
		16.517487, 14.727730, 24.881189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.939967, 15.139183, 24.382389>,  <15.917255, 14.523935, 24.584221>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.939967, 15.139183, 24.382389> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.317095, 15.069613, 24.496119>,  <16.543371, 15.027870, 24.564356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.317095, 15.069613, 24.496119>,  <15.939967, 15.139183, 24.382389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.317095, 15.069613, 24.496119> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323081, 0.267258, -0.907850,
		0.081910, 0.947799, 0.308169,
		0.942820, -0.173925, 0.284325,
		16.599941, 15.017435, 24.581415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.269203, 15.593156, 24.048960>,  <15.939967, 15.139183, 24.382389>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.269203, 15.593156, 24.048960> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.552118, 15.326540, 24.143167>,  <16.721867, 15.166571, 24.199692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.552118, 15.326540, 24.143167>,  <16.269203, 15.593156, 24.048960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.552118, 15.326540, 24.143167> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282686, -0.038690, -0.958432,
		0.647945, 0.744465, 0.161056,
		0.707288, -0.666539, 0.235518,
		16.764305, 15.126578, 24.213823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.859516, 15.787311, 23.637087>,  <16.269203, 15.593156, 24.048960>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.859516, 15.787311, 23.637087> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.883810, 15.401514, 23.739901>,  <16.898386, 15.170036, 23.801588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.883810, 15.401514, 23.739901>,  <16.859516, 15.787311, 23.637087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.883810, 15.401514, 23.739901> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219162, -0.238338, -0.946130,
		0.973796, 0.113794, 0.196905,
		0.060734, -0.964492, 0.257032,
		16.902031, 15.112166, 23.817011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.558165, 15.576082, 23.433060>,  <16.859516, 15.787311, 23.637087>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.558165, 15.576082, 23.433060> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.311716, 15.261025, 23.434437>,  <17.163847, 15.071991, 23.435263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.311716, 15.261025, 23.434437>,  <17.558165, 15.576082, 23.433060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.311716, 15.261025, 23.434437> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087369, -0.072684, -0.993521,
		0.782790, -0.611829, 0.113598,
		-0.616122, -0.787643, 0.003441,
		17.126879, 15.024733, 23.435469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.305832, 15.749579, 23.365742>,  <17.558165, 15.576082, 23.433060>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.305832, 15.749579, 23.365742> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.436241, 16.127722, 23.364347>,  <18.514486, 16.354607, 23.363512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.436241, 16.127722, 23.364347>,  <18.305832, 15.749579, 23.365742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.436241, 16.127722, 23.364347> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358779, 0.127139, 0.924723,
		0.874635, -0.300231, 0.380624,
		0.326023, 0.945355, -0.003484,
		18.534048, 16.411329, 23.363302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.671682, 15.931850, 23.981400>,  <18.305832, 15.749579, 23.365742>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.671682, 15.931850, 23.981400> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.521683, 16.273527, 23.837326>,  <18.431683, 16.478533, 23.750881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.521683, 16.273527, 23.837326>,  <18.671682, 15.931850, 23.981400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.521683, 16.273527, 23.837326> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372397, 0.217002, 0.902347,
		0.848938, 0.472511, 0.236722,
		-0.375000, 0.854192, -0.360183,
		18.409184, 16.529785, 23.729271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.846434, 16.329844, 24.455145>,  <18.671682, 15.931850, 23.981400>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.846434, 16.329844, 24.455145> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.598875, 16.587206, 24.274925>,  <18.450340, 16.741623, 24.166794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.598875, 16.587206, 24.274925>,  <18.846434, 16.329844, 24.455145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.598875, 16.587206, 24.274925> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303833, 0.332850, 0.892691,
		0.724327, 0.689376, -0.010511,
		-0.618898, 0.643407, -0.450548,
		18.413206, 16.780228, 24.139761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.931128, 16.956017, 24.791992>,  <18.846434, 16.329844, 24.455145>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.931128, 16.956017, 24.791992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.575785, 17.006851, 24.615507>,  <18.362579, 17.037352, 24.509615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.575785, 17.006851, 24.615507>,  <18.931128, 16.956017, 24.791992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.575785, 17.006851, 24.615507> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364679, 0.388571, 0.846181,
		0.278980, 0.912612, -0.298845,
		-0.888358, 0.127085, -0.441214,
		18.309277, 17.044977, 24.483143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.655251, 17.674849, 25.002026>,  <18.931128, 16.956017, 24.791992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.655251, 17.674849, 25.002026> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.340336, 17.465542, 24.871565>,  <18.151388, 17.339958, 24.793289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.340336, 17.465542, 24.871565>,  <18.655251, 17.674849, 25.002026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.340336, 17.465542, 24.871565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484659, 0.198172, 0.851958,
		-0.381166, 0.828807, -0.409624,
		-0.787285, -0.523266, -0.326152,
		18.104151, 17.308561, 24.773720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.084890, 18.138985, 25.122623>,  <18.655251, 17.674849, 25.002026>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.084890, 18.138985, 25.122623> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.912161, 17.778517, 25.107548>,  <17.808523, 17.562237, 25.098503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.912161, 17.778517, 25.107548>,  <18.084890, 18.138985, 25.122623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.912161, 17.778517, 25.107548> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511206, 0.210108, 0.833380,
		-0.743099, 0.379140, -0.551414,
		-0.431824, -0.901170, -0.037688,
		17.782614, 17.508165, 25.096241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.326063, 18.214081, 25.227638>,  <18.084890, 18.138985, 25.122623>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.326063, 18.214081, 25.227638> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.397522, 17.827412, 25.300995>,  <17.440397, 17.595411, 25.345009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.397522, 17.827412, 25.300995>,  <17.326063, 18.214081, 25.227638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.397522, 17.827412, 25.300995> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563596, 0.052242, 0.824397,
		-0.806501, -0.250636, -0.535479,
		0.178648, -0.966671, 0.183391,
		17.451117, 17.537411, 25.356012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.680048, 17.947952, 25.399128>,  <17.326063, 18.214081, 25.227638>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.680048, 17.947952, 25.399128> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.934254, 17.678957, 25.550856>,  <17.086777, 17.517559, 25.641893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.934254, 17.678957, 25.550856>,  <16.680048, 17.947952, 25.399128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.934254, 17.678957, 25.550856> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443571, 0.084116, 0.892283,
		-0.631957, -0.735313, -0.244839,
		0.635512, -0.672487, 0.379321,
		17.124907, 17.477211, 25.664652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.372841, 17.638899, 25.800079>,  <16.680048, 17.947952, 25.399128>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.372841, 17.638899, 25.800079> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.730139, 17.515705, 25.931084>,  <16.944517, 17.441790, 26.009686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.730139, 17.515705, 25.931084>,  <16.372841, 17.638899, 25.800079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.730139, 17.515705, 25.931084> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309880, 0.106012, 0.944847,
		-0.325718, -0.945467, -0.000743,
		0.893243, -0.307984, 0.327511,
		16.998112, 17.423309, 26.029337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.301065, 17.008429, 26.335148>,  <16.372841, 17.638899, 25.800079>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.301065, 17.008429, 26.335148> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.650305, 17.193474, 26.396713>,  <16.859848, 17.304501, 26.433653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.650305, 17.193474, 26.396713>,  <16.301065, 17.008429, 26.335148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.650305, 17.193474, 26.396713> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207320, 0.066553, 0.976006,
		0.441271, -0.884058, 0.154017,
		0.873097, 0.462614, 0.153915,
		16.912233, 17.332258, 26.442888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.522995, 16.819374, 26.984770>,  <16.301065, 17.008429, 26.335148>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.522995, 16.819374, 26.984770> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.768408, 17.131777, 26.938120>,  <16.915655, 17.319220, 26.910130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.768408, 17.131777, 26.938120>,  <16.522995, 16.819374, 26.984770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.768408, 17.131777, 26.938120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219165, 0.310298, 0.925031,
		0.758645, -0.541978, 0.361548,
		0.613534, 0.781009, -0.116623,
		16.952469, 17.366079, 26.903133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.836128, 16.915638, 27.621742>,  <16.522995, 16.819374, 26.984770>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.836128, 16.915638, 27.621742> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.884834, 17.270773, 27.444241>,  <16.914059, 17.483854, 27.337740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.884834, 17.270773, 27.444241>,  <16.836128, 16.915638, 27.621742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.884834, 17.270773, 27.444241> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225410, 0.460133, 0.858759,
		0.966625, -0.004543, 0.256157,
		0.121767, 0.887838, -0.443752,
		16.921364, 17.537125, 27.311115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.252094, 17.258240, 28.029795>,  <16.836128, 16.915638, 27.621742>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.252094, 17.258240, 28.029795> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.054792, 17.528755, 27.810949>,  <16.936411, 17.691065, 27.679642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.054792, 17.528755, 27.810949>,  <17.252094, 17.258240, 28.029795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.054792, 17.528755, 27.810949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217770, 0.512922, 0.830354,
		0.842187, 0.528719, -0.105725,
		-0.493252, 0.676289, -0.547115,
		16.906816, 17.731642, 27.646814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.784130, 16.914501, 27.727352>,  <17.252094, 17.258240, 28.029795>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.784130, 16.914501, 27.727352> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.150311, 16.753607, 27.732344>,  <18.370018, 16.657070, 27.735338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.150311, 16.753607, 27.732344>,  <17.784130, 16.914501, 27.727352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.150311, 16.753607, 27.732344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330716, -0.769625, -0.546173,
		0.229294, 0.495867, -0.837580,
		0.915451, -0.402236, 0.012479,
		18.424946, 16.632936, 27.736088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<8.730922, 16.459047, 25.817955> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.095442, 16.503031, 25.976671>,  <9.314154, 16.529421, 26.071901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.095442, 16.503031, 25.976671>,  <8.730922, 16.459047, 25.817955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.095442, 16.503031, 25.976671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397102, 0.019992, -0.917557,
		-0.108825, 0.993735, -0.025446,
		0.911300, 0.109957, 0.396790,
		9.368832, 16.536018, 26.095709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.985800, 17.042009, 25.553261>,  <8.730922, 16.459047, 25.817955>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.985800, 17.042009, 25.553261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.311827, 16.845312, 25.675804>,  <9.507442, 16.727293, 25.749331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.311827, 16.845312, 25.675804>,  <8.985800, 17.042009, 25.553261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.311827, 16.845312, 25.675804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439178, 0.179524, -0.880280,
		0.377874, 0.852032, 0.362287,
		0.815067, -0.491744, 0.306356,
		9.556347, 16.697788, 25.767712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.625137, 17.522306, 25.426691>,  <8.985800, 17.042009, 25.553261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.625137, 17.522306, 25.426691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.784036, 17.156023, 25.450935>,  <9.879375, 16.936253, 25.465483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.784036, 17.156023, 25.450935>,  <9.625137, 17.522306, 25.426691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.784036, 17.156023, 25.450935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584660, 0.201619, -0.785826,
		0.707367, 0.347602, 0.615471,
		0.397246, -0.915708, 0.060611,
		9.903210, 16.881310, 25.469118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.336303, 17.655762, 25.360376>,  <9.625137, 17.522306, 25.426691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.336303, 17.655762, 25.360376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.297470, 17.263229, 25.293964>,  <10.274170, 17.027710, 25.254116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.297470, 17.263229, 25.293964>,  <10.336303, 17.655762, 25.360376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.297470, 17.263229, 25.293964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591179, 0.077345, -0.802823,
		0.800676, -0.176095, 0.572633,
		-0.097083, -0.981330, -0.166031,
		10.268345, 16.968830, 25.244156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.009776, 17.375841, 25.203382>,  <10.336303, 17.655762, 25.360376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.009776, 17.375841, 25.203382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.739541, 17.130514, 25.039711>,  <10.577400, 16.983318, 24.941509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.739541, 17.130514, 25.039711>,  <11.009776, 17.375841, 25.203382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.739541, 17.130514, 25.039711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537081, -0.029184, -0.843026,
		0.505100, -0.789298, 0.349117,
		-0.675587, -0.613316, -0.409176,
		10.536865, 16.946520, 24.916958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.443532, 16.904417, 24.799889>,  <11.009776, 17.375841, 25.203382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.443532, 16.904417, 24.799889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.072691, 16.895260, 24.650246>,  <10.850186, 16.889765, 24.560461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.072691, 16.895260, 24.650246>,  <11.443532, 16.904417, 24.799889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.072691, 16.895260, 24.650246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371683, -0.184739, -0.909793,
		-0.048283, -0.982521, 0.179781,
		-0.927103, -0.022894, -0.374106,
		10.794560, 16.888391, 24.538013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.590349, 16.432938, 24.241215>,  <11.443532, 16.904417, 24.799889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.590349, 16.432938, 24.241215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.235493, 16.591951, 24.147449>,  <11.022579, 16.687359, 24.091190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.235493, 16.591951, 24.147449>,  <11.590349, 16.432938, 24.241215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.235493, 16.591951, 24.147449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210103, -0.104344, -0.972095,
		-0.410901, -0.911635, 0.009044,
		-0.887140, 0.397534, -0.234412,
		10.969351, 16.711212, 24.077126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.271608, 15.921758, 23.710440>,  <11.590349, 16.432938, 24.241215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.271608, 15.921758, 23.710440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.113761, 16.285137, 23.655306>,  <11.019053, 16.503164, 23.622227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.113761, 16.285137, 23.655306>,  <11.271608, 15.921758, 23.710440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.113761, 16.285137, 23.655306> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097325, -0.107837, -0.989393,
		-0.913676, -0.403847, -0.045860,
		-0.394618, 0.908448, -0.137833,
		10.995376, 16.557673, 23.613956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.725949, 15.798553, 23.203539>,  <11.271608, 15.921758, 23.710440>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.725949, 15.798553, 23.203539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.807747, 16.190100, 23.203972>,  <10.856825, 16.425028, 23.204231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.807747, 16.190100, 23.203972>,  <10.725949, 15.798553, 23.203539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.807747, 16.190100, 23.203972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026899, -0.004512, -0.999628,
		-0.978498, 0.204446, -0.027253,
		0.204493, 0.978867, 0.001085,
		10.869095, 16.483761, 23.204298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.220821, 16.134544, 22.734583>,  <10.725949, 15.798553, 23.203539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.220821, 16.134544, 22.734583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.531240, 16.382765, 22.779598>,  <10.717492, 16.531698, 22.806608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.531240, 16.382765, 22.779598>,  <10.220821, 16.134544, 22.734583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.531240, 16.382765, 22.779598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037340, 0.132919, -0.990423,
		-0.629568, 0.772818, 0.079980,
		0.776047, 0.620552, 0.112539,
		10.764054, 16.568930, 22.813360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.126607, 16.719679, 22.294964>,  <10.220821, 16.134544, 22.734583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.126607, 16.719679, 22.294964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.522174, 16.729683, 22.353504>,  <10.759514, 16.735685, 22.388628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.522174, 16.729683, 22.353504>,  <10.126607, 16.719679, 22.294964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.522174, 16.729683, 22.353504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127466, 0.362466, -0.923239,
		-0.076137, 0.931661, 0.355261,
		0.988916, 0.025009, 0.146352,
		10.818849, 16.737186, 22.397409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.340918, 17.343939, 22.039564>,  <10.126607, 16.719679, 22.294964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.340918, 17.343939, 22.039564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.674306, 17.122984, 22.045128>,  <10.874339, 16.990410, 22.048466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.674306, 17.122984, 22.045128>,  <10.340918, 17.343939, 22.039564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.674306, 17.122984, 22.045128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200934, 0.279542, -0.938872,
		0.514734, 0.785317, 0.343984,
		0.833471, -0.552388, 0.013907,
		10.924347, 16.957268, 22.049299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.868203, 17.787348, 21.733597>,  <10.340918, 17.343939, 22.039564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.868203, 17.787348, 21.733597> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.003543, 17.411558, 21.712019>,  <11.084746, 17.186085, 21.699072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.003543, 17.411558, 21.712019>,  <10.868203, 17.787348, 21.733597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.003543, 17.411558, 21.712019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348654, 0.178401, -0.920116,
		0.874048, 0.292512, 0.387913,
		0.338349, -0.939473, -0.053946,
		11.105048, 17.129717, 21.695835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.481154, 17.863792, 21.409559>,  <10.868203, 17.787348, 21.733597>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.481154, 17.863792, 21.409559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.399052, 17.475807, 21.357340>,  <11.349790, 17.243017, 21.326008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.399052, 17.475807, 21.357340>,  <11.481154, 17.863792, 21.409559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.399052, 17.475807, 21.357340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186075, 0.092281, -0.978192,
		0.960857, -0.225072, 0.161545,
		-0.205257, -0.969962, -0.130550,
		11.337475, 17.184818, 21.318174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.110198, 17.704363, 21.851841>,  <11.481154, 17.863792, 21.409559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.110198, 17.704363, 21.851841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.383816, 17.993027, 21.809341>,  <12.547986, 18.166225, 21.783842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.383816, 17.993027, 21.809341>,  <12.110198, 17.704363, 21.851841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.383816, 17.993027, 21.809341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309945, 0.419410, 0.853247,
		0.660317, -0.550727, 0.510570,
		0.684043, 0.721662, -0.106249,
		12.589029, 18.209524, 21.777468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.379541, 17.737417, 22.476866>,  <12.110198, 17.704363, 21.851841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.379541, 17.737417, 22.476866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.444220, 18.080713, 22.282021>,  <12.483027, 18.286692, 22.165113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.444220, 18.080713, 22.282021>,  <12.379541, 17.737417, 22.476866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.444220, 18.080713, 22.282021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320482, 0.512522, 0.796625,
		0.933352, 0.027301, 0.357923,
		0.161695, 0.858240, -0.487113,
		12.492728, 18.338184, 22.135887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.906669, 18.171507, 22.814512>,  <12.379541, 17.737417, 22.476866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.906669, 18.171507, 22.814512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.663137, 18.426214, 22.625259>,  <12.517018, 18.579039, 22.511707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.663137, 18.426214, 22.625259>,  <12.906669, 18.171507, 22.814512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.663137, 18.426214, 22.625259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071693, 0.549801, 0.832213,
		0.790055, 0.540596, -0.289083,
		-0.608829, 0.636769, -0.473130,
		12.480489, 18.617245, 22.483320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.114071, 18.739801, 23.142050>,  <12.906669, 18.171507, 22.814512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.114071, 18.739801, 23.142050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.754442, 18.837091, 22.996441>,  <12.538665, 18.895466, 22.909077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.754442, 18.837091, 22.996441>,  <13.114071, 18.739801, 23.142050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.754442, 18.837091, 22.996441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223962, 0.458921, 0.859786,
		0.376179, 0.854537, -0.358129,
		-0.899072, 0.243226, -0.364020,
		12.484720, 18.910059, 22.887236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.074347, 19.323099, 23.423510>,  <13.114071, 18.739801, 23.142050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.074347, 19.323099, 23.423510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.700283, 19.221910, 23.324327>,  <12.475844, 19.161198, 23.264818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.700283, 19.221910, 23.324327>,  <13.074347, 19.323099, 23.423510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.700283, 19.221910, 23.324327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299937, 0.193095, 0.934212,
		-0.188449, 0.948008, -0.256450,
		-0.935160, -0.252971, -0.247954,
		12.419735, 19.146019, 23.249941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.627736, 19.859968, 23.670650>,  <13.074347, 19.323099, 23.423510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.627736, 19.859968, 23.670650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.385943, 19.545202, 23.621063>,  <12.240868, 19.356342, 23.591311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.385943, 19.545202, 23.621063>,  <12.627736, 19.859968, 23.670650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.385943, 19.545202, 23.621063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441549, 0.201446, 0.874331,
		-0.663052, 0.583253, -0.469231,
		-0.604481, -0.786915, -0.123966,
		12.204599, 19.309128, 23.583874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.117777, 20.121597, 24.069445>,  <12.627736, 19.859968, 23.670650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.117777, 20.121597, 24.069445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.045656, 19.729729, 24.034271>,  <12.002384, 19.494608, 24.013166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.045656, 19.729729, 24.034271>,  <12.117777, 20.121597, 24.069445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.045656, 19.729729, 24.034271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466354, 0.006431, 0.884574,
		-0.866028, 0.200498, -0.458034,
		-0.180301, -0.979673, -0.087934,
		11.991566, 19.435827, 24.007891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.483549, 20.060984, 24.203608>,  <12.117777, 20.121597, 24.069445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.483549, 20.060984, 24.203608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.628555, 19.694828, 24.273628>,  <11.715559, 19.475134, 24.315641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.628555, 19.694828, 24.273628>,  <11.483549, 20.060984, 24.203608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.628555, 19.694828, 24.273628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391526, 0.020867, 0.919930,
		-0.845748, -0.402027, -0.350835,
		0.362516, -0.915390, 0.175052,
		11.737310, 19.420212, 24.326143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.920938, 19.690968, 24.429585>,  <11.483549, 20.060984, 24.203608>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.920938, 19.690968, 24.429585> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.219928, 19.456993, 24.555523>,  <11.399322, 19.316608, 24.631086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.219928, 19.456993, 24.555523>,  <10.920938, 19.690968, 24.429585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.219928, 19.456993, 24.555523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462034, -0.117252, 0.879077,
		-0.477290, -0.802558, -0.357905,
		0.747475, -0.584938, 0.314846,
		11.444170, 19.281511, 24.649977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.617545, 19.087591, 24.744690>,  <10.920938, 19.690968, 24.429585>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.617545, 19.087591, 24.744690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.991512, 19.101162, 24.885984>,  <11.215893, 19.109304, 24.970762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.991512, 19.101162, 24.885984>,  <10.617545, 19.087591, 24.744690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.991512, 19.101162, 24.885984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349171, -0.089635, 0.932762,
		0.063309, -0.995397, -0.071955,
		0.934918, 0.033927, 0.353239,
		11.271988, 19.111340, 24.991957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.704329, 18.625105, 25.264345>,  <10.617545, 19.087591, 24.744690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.704329, 18.625105, 25.264345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.988135, 18.895605, 25.343615>,  <11.158419, 19.057905, 25.391176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.988135, 18.895605, 25.343615>,  <10.704329, 18.625105, 25.264345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.988135, 18.895605, 25.343615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224291, -0.049887, 0.973245,
		0.668045, -0.734980, 0.116282,
		0.709514, 0.676251, 0.198176,
		11.200990, 19.098480, 25.403067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.123343, 18.299522, 25.720728>,  <10.704329, 18.625105, 25.264345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.123343, 18.299522, 25.720728> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.231351, 18.682484, 25.761646>,  <11.296156, 18.912260, 25.786198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.231351, 18.682484, 25.761646>,  <11.123343, 18.299522, 25.720728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.231351, 18.682484, 25.761646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166628, -0.058177, 0.984302,
		0.948327, -0.282827, 0.143822,
		0.270021, 0.957405, 0.102297,
		11.312357, 18.969706, 25.792336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.531557, 18.347746, 26.358875>,  <11.123343, 18.299522, 25.720728>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.531557, 18.347746, 26.358875> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.379846, 18.715302, 26.315432>,  <11.288819, 18.935835, 26.289366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.379846, 18.715302, 26.315432>,  <11.531557, 18.347746, 26.358875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.379846, 18.715302, 26.315432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241591, 0.014961, 0.970263,
		0.893186, 0.394238, 0.216320,
		-0.379278, 0.918887, -0.108607,
		11.266062, 18.990967, 26.282850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.868563, 18.925499, 26.790680>,  <11.531557, 18.347746, 26.358875>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.868563, 18.925499, 26.790680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.490253, 19.038799, 26.727079>,  <11.263268, 19.106779, 26.688919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.490253, 19.038799, 26.727079>,  <11.868563, 18.925499, 26.790680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.490253, 19.038799, 26.727079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173947, -0.028242, 0.984350,
		0.274327, 0.958630, 0.075981,
		-0.945773, 0.283251, -0.159003,
		11.206521, 19.123774, 26.679379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.367555, 19.295008, 27.205313>,  <11.868563, 18.925499, 26.790680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.367555, 19.295008, 27.205313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.703959, 19.392332, 27.398600>,  <12.905802, 19.450726, 27.514572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.703959, 19.392332, 27.398600>,  <12.367555, 19.295008, 27.205313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.703959, 19.392332, 27.398600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509304, -0.054748, -0.858844,
		-0.182510, 0.968402, -0.169962,
		0.841011, 0.243310, 0.483219,
		12.956263, 19.465324, 27.543566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.666300, 19.924519, 26.882189>,  <12.367555, 19.295008, 27.205313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.666300, 19.924519, 26.882189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.960072, 19.737410, 27.078882>,  <13.136334, 19.625143, 27.196898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.960072, 19.737410, 27.078882>,  <12.666300, 19.924519, 26.882189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.960072, 19.737410, 27.078882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531412, -0.054326, -0.845370,
		0.422156, 0.882177, 0.208682,
		0.734429, -0.467774, 0.491733,
		13.180400, 19.597076, 27.226402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.263184, 20.176386, 26.623932>,  <12.666300, 19.924519, 26.882189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.263184, 20.176386, 26.623932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.428123, 19.863010, 26.809919>,  <13.527087, 19.674986, 26.921513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.428123, 19.863010, 26.809919>,  <13.263184, 20.176386, 26.623932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.428123, 19.863010, 26.809919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654889, -0.099896, -0.749093,
		0.633316, 0.613391, 0.471872,
		0.412349, -0.783437, 0.464969,
		13.551828, 19.627979, 26.949409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.064736, 20.200563, 26.616465>,  <13.263184, 20.176386, 26.623932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.064736, 20.200563, 26.616465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.948304, 19.817940, 26.622999>,  <13.878445, 19.588366, 26.626921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.948304, 19.817940, 26.622999>,  <14.064736, 20.200563, 26.616465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.948304, 19.817940, 26.622999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587463, -0.192190, -0.786098,
		0.755089, -0.219221, 0.617886,
		-0.291081, -0.956559, 0.016336,
		13.860980, 19.530972, 26.627899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.651793, 19.762684, 26.674860>,  <14.064736, 20.200563, 26.616465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.651793, 19.762684, 26.674860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.342294, 19.573156, 26.506666>,  <14.156594, 19.459440, 26.405750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.342294, 19.573156, 26.506666>,  <14.651793, 19.762684, 26.674860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.342294, 19.573156, 26.506666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559162, -0.198851, -0.804858,
		0.297744, -0.857877, 0.418803,
		-0.773749, -0.473820, -0.420485,
		14.110169, 19.431011, 26.380520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.004104, 19.287033, 26.406075>,  <14.651793, 19.762684, 26.674860>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.004104, 19.287033, 26.406075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.648817, 19.226107, 26.232698>,  <14.435645, 19.189550, 26.128672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.648817, 19.226107, 26.232698>,  <15.004104, 19.287033, 26.406075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.648817, 19.226107, 26.232698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458765, -0.243441, -0.854559,
		0.024648, -0.957881, 0.286107,
		-0.888216, -0.152319, -0.433441,
		14.382352, 19.180412, 26.102665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.210220, 18.561821, 26.108807>,  <15.004104, 19.287033, 26.406075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.210220, 18.561821, 26.108807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.904014, 18.728525, 25.912727>,  <14.720290, 18.828548, 25.795080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.904014, 18.728525, 25.912727>,  <15.210220, 18.561821, 26.108807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.904014, 18.728525, 25.912727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316686, -0.419140, -0.850900,
		-0.560086, -0.806616, 0.188875,
		-0.765515, 0.416764, -0.490198,
		14.674358, 18.853554, 25.765667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.045333, 18.087444, 25.548800>,  <15.210220, 18.561821, 26.108807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.045333, 18.087444, 25.548800> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.868851, 18.425426, 25.427879>,  <14.762961, 18.628216, 25.355328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.868851, 18.425426, 25.427879>,  <15.045333, 18.087444, 25.548800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.868851, 18.425426, 25.427879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100202, -0.288371, -0.952261,
		-0.891794, -0.450434, 0.042564,
		-0.441206, 0.844956, -0.302303,
		14.736489, 18.678913, 25.337189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.601142, 17.820026, 25.072113>,  <15.045333, 18.087444, 25.548800>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.601142, 17.820026, 25.072113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.638448, 18.212545, 25.004755>,  <14.660831, 18.448057, 24.964340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.638448, 18.212545, 25.004755>,  <14.601142, 17.820026, 25.072113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.638448, 18.212545, 25.004755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047643, -0.173338, -0.983709,
		-0.994501, 0.083722, -0.062919,
		0.093264, 0.981297, -0.168396,
		14.666427, 18.506935, 24.954237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.154111, 18.110676, 24.489864>,  <14.601142, 17.820026, 25.072113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.154111, 18.110676, 24.489864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.447095, 18.381697, 24.516460>,  <14.622886, 18.544310, 24.532417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.447095, 18.381697, 24.516460>,  <14.154111, 18.110676, 24.489864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.447095, 18.381697, 24.516460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228314, -0.152456, -0.961577,
		-0.641384, 0.719498, -0.266363,
		0.732461, 0.677554, 0.066489,
		14.666833, 18.584963, 24.536407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.198086, 18.519976, 23.806871>,  <14.154111, 18.110676, 24.489864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.198086, 18.519976, 23.806871> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.555329, 18.547422, 23.984701>,  <14.769675, 18.563890, 24.091398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.555329, 18.547422, 23.984701>,  <14.198086, 18.519976, 23.806871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.555329, 18.547422, 23.984701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449437, -0.094363, -0.888314,
		-0.019001, 0.993170, -0.115115,
		0.893110, 0.068615, 0.444575,
		14.823262, 18.568007, 24.118074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.554812, 18.900055, 23.289074>,  <14.198086, 18.519976, 23.806871>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.554812, 18.900055, 23.289074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.848560, 18.752754, 23.517141>,  <15.024809, 18.664373, 23.653982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.848560, 18.752754, 23.517141>,  <14.554812, 18.900055, 23.289074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.848560, 18.752754, 23.517141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578878, -0.098811, -0.809405,
		0.354402, 0.924461, 0.140608,
		0.734370, -0.368249, 0.570169,
		15.068871, 18.642279, 23.688192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.177256, 19.272144, 23.063253>,  <14.554812, 18.900055, 23.289074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.177256, 19.272144, 23.063253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.305308, 18.948099, 23.259716>,  <15.382140, 18.753672, 23.377594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.305308, 18.948099, 23.259716>,  <15.177256, 19.272144, 23.063253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.305308, 18.948099, 23.259716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724791, -0.124425, -0.677640,
		0.610077, 0.572919, 0.547329,
		0.320131, -0.810112, 0.491156,
		15.401348, 18.705065, 23.407063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.959293, 19.385185, 23.278627>,  <15.177256, 19.272144, 23.063253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.959293, 19.385185, 23.278627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.876748, 18.994434, 23.256273>,  <15.827221, 18.759983, 23.242861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.876748, 18.994434, 23.256273>,  <15.959293, 19.385185, 23.278627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.876748, 18.994434, 23.256273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865763, -0.155681, -0.475624,
		0.455926, -0.146533, 0.877872,
		-0.206363, -0.976878, -0.055884,
		15.814839, 18.701370, 23.239508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<7.517742, 26.980562, 18.216316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.251122, 27.079557, 17.935045>,  <7.091149, 27.138954, 17.766283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.251122, 27.079557, 17.935045>,  <7.517742, 26.980562, 18.216316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.251122, 27.079557, 17.935045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240098, -0.821743, -0.516809,
		-0.705734, -0.513311, 0.488314,
		-0.666553, 0.247487, -0.703177,
		7.051156, 27.153803, 17.724092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.896821, 26.506994, 18.074099>,  <7.517742, 26.980562, 18.216316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.896821, 26.506994, 18.074099> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.051475, 26.690212, 17.753922>,  <7.144267, 26.800142, 17.561815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.051475, 26.690212, 17.753922>,  <6.896821, 26.506994, 18.074099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.051475, 26.690212, 17.753922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424680, -0.858867, -0.286345,
		-0.818633, -0.229222, -0.526590,
		0.386635, 0.458044, -0.800443,
		7.167465, 26.827625, 17.513788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.664491, 26.230261, 17.426811>,  <6.896821, 26.506994, 18.074099>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.664491, 26.230261, 17.426811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.043146, 26.334538, 17.351006>,  <7.270339, 26.397102, 17.305521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.043146, 26.334538, 17.351006>,  <6.664491, 26.230261, 17.426811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.043146, 26.334538, 17.351006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236086, -0.961169, -0.142889,
		-0.219406, 0.090522, -0.971425,
		0.946638, 0.260691, -0.189516,
		7.327137, 26.412745, 17.294151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.940393, 25.948011, 16.766012>,  <6.664491, 26.230261, 17.426811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.940393, 25.948011, 16.766012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.245570, 25.999197, 17.019484>,  <7.428676, 26.029907, 17.171566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.245570, 25.999197, 17.019484>,  <6.940393, 25.948011, 16.766012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.245570, 25.999197, 17.019484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307705, -0.933936, -0.181879,
		0.568540, 0.333749, -0.751913,
		0.762941, 0.127962, 0.633677,
		7.474452, 26.037586, 17.209587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.638982, 25.543209, 16.620945>,  <6.940393, 25.948011, 16.766012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.638982, 25.543209, 16.620945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.578966, 25.628658, 17.007076>,  <7.542956, 25.679928, 17.238754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.578966, 25.628658, 17.007076>,  <7.638982, 25.543209, 16.620945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.578966, 25.628658, 17.007076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017919, -0.976806, 0.213376,
		0.988518, 0.014717, 0.150388,
		-0.150040, 0.213621, 0.965326,
		7.533954, 25.692745, 17.296675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.216185, 25.257063, 17.106253>,  <7.638982, 25.543209, 16.620945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.216185, 25.257063, 17.106253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.845756, 25.256769, 17.257191>,  <7.623498, 25.256594, 17.347754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.845756, 25.256769, 17.257191>,  <8.216185, 25.257063, 17.106253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.845756, 25.256769, 17.257191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103446, -0.962182, 0.252003,
		0.362887, 0.272407, 0.891127,
		-0.926073, -0.000735, 0.377343,
		7.567934, 25.256548, 17.370394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.357655, 24.711140, 17.631502>,  <8.216185, 25.257063, 17.106253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.357655, 24.711140, 17.631502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.991319, 24.774012, 17.483700>,  <7.771518, 24.811735, 17.395020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.991319, 24.774012, 17.483700>,  <8.357655, 24.711140, 17.631502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.991319, 24.774012, 17.483700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160204, -0.986823, -0.022702,
		-0.368204, 0.038405, 0.928951,
		-0.915839, 0.157181, -0.369505,
		7.716568, 24.821165, 17.372849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.909575, 24.129276, 17.774458>,  <8.357655, 24.711140, 17.631502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.909575, 24.129276, 17.774458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.658322, 24.341217, 17.546526>,  <7.507571, 24.468382, 17.409767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.658322, 24.341217, 17.546526>,  <7.909575, 24.129276, 17.774458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.658322, 24.341217, 17.546526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527474, -0.828333, -0.188774,
		-0.572032, 0.181996, 0.799785,
		-0.628132, 0.529851, -0.569832,
		7.469883, 24.500172, 17.375576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.099283, 24.041542, 17.778868>,  <7.909575, 24.129276, 17.774458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.099283, 24.041542, 17.778868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.224161, 24.128700, 17.408991>,  <7.299088, 24.180994, 17.187065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.224161, 24.128700, 17.408991>,  <7.099283, 24.041542, 17.778868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.224161, 24.128700, 17.408991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302647, -0.899819, -0.314213,
		-0.900521, 0.377951, -0.214975,
		0.312196, 0.217895, -0.924692,
		7.317820, 24.194069, 17.131582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.343454, 23.372852, 17.896612>,  <7.099283, 24.041542, 17.778868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.343454, 23.372852, 17.896612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.509252, 23.589333, 18.189268>,  <7.608730, 23.719221, 18.364862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.509252, 23.589333, 18.189268>,  <7.343454, 23.372852, 17.896612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.509252, 23.589333, 18.189268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282692, -0.687613, 0.668785,
		0.865032, -0.484036, -0.132018,
		0.414493, 0.541200, 0.731641,
		7.633599, 23.751692, 18.408760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.788287, 22.826996, 18.171562>,  <7.343454, 23.372852, 17.896612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.788287, 22.826996, 18.171562> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.564456, 22.961609, 18.474514>,  <7.430158, 23.042376, 18.656284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.564456, 22.961609, 18.474514>,  <7.788287, 22.826996, 18.171562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.564456, 22.961609, 18.474514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379526, -0.916450, 0.126805,
		0.736773, -0.216488, 0.640546,
		-0.559576, 0.336531, 0.757378,
		7.396584, 23.062569, 18.701727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.014025, 22.527376, 18.810093>,  <7.788287, 22.826996, 18.171562>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.014025, 22.527376, 18.810093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.625238, 22.620680, 18.798281>,  <7.391966, 22.676662, 18.791193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.625238, 22.620680, 18.798281>,  <8.014025, 22.527376, 18.810093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.625238, 22.620680, 18.798281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234580, -0.953524, 0.189115,
		0.015953, 0.190741, 0.981511,
		-0.971966, 0.233259, -0.029533,
		7.333648, 22.690659, 18.789421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.755026, 22.167189, 19.381622>,  <8.014025, 22.527376, 18.810093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.755026, 22.167189, 19.381622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.433957, 22.260868, 19.162218>,  <7.241315, 22.317076, 19.030575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.433957, 22.260868, 19.162218>,  <7.755026, 22.167189, 19.381622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.433957, 22.260868, 19.162218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259346, -0.965234, -0.032606,
		-0.537079, 0.116083, 0.835506,
		-0.802674, 0.234197, -0.548512,
		7.193154, 22.331127, 18.997663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.202420, 21.798153, 19.712662>,  <7.755026, 22.167189, 19.381622>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.202420, 21.798153, 19.712662> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.059128, 21.891201, 19.350986>,  <6.973153, 21.947029, 19.133982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.059128, 21.891201, 19.350986>,  <7.202420, 21.798153, 19.712662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.059128, 21.891201, 19.350986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514745, -0.857183, -0.016591,
		-0.778915, 0.459484, 0.426809,
		-0.358230, 0.232621, -0.904190,
		6.951659, 21.960987, 19.079729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.535202, 21.615097, 19.714970>,  <7.202420, 21.798153, 19.712662>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.535202, 21.615097, 19.714970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.628413, 21.628971, 19.326229>,  <6.684340, 21.637295, 19.092985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.628413, 21.628971, 19.326229>,  <6.535202, 21.615097, 19.714970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.628413, 21.628971, 19.326229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345941, -0.931036, -0.116176,
		-0.908858, 0.363275, -0.204958,
		0.233027, 0.034684, -0.971851,
		6.698321, 21.639376, 19.034674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.918852, 21.368275, 19.365915>,  <6.535202, 21.615097, 19.714970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.918852, 21.368275, 19.365915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.230753, 21.326990, 19.118908>,  <6.417894, 21.302219, 18.970703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.230753, 21.326990, 19.118908>,  <5.918852, 21.368275, 19.365915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.230753, 21.326990, 19.118908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311846, -0.919288, -0.240128,
		-0.542896, 0.379812, -0.749004,
		0.779754, -0.103210, -0.617520,
		6.464680, 21.296028, 18.933651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.683034, 21.227413, 18.665598>,  <5.918852, 21.368275, 19.365915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.683034, 21.227413, 18.665598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.052711, 21.076416, 18.688818>,  <6.274517, 20.985817, 18.702749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.052711, 21.076416, 18.688818>,  <5.683034, 21.227413, 18.665598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.052711, 21.076416, 18.688818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333696, -0.872027, -0.358072,
		0.185789, 0.311556, -0.931888,
		0.924191, -0.377494, 0.058048,
		6.329968, 20.963167, 18.706232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.809434, 20.823889, 18.045351>,  <5.683034, 21.227413, 18.665598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.809434, 20.823889, 18.045351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.092090, 20.672680, 18.284603>,  <6.261683, 20.581955, 18.428154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.092090, 20.672680, 18.284603>,  <5.809434, 20.823889, 18.045351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.092090, 20.672680, 18.284603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172805, -0.911928, -0.372191,
		0.686149, 0.159645, -0.709728,
		0.706639, -0.378022, 0.598131,
		6.304081, 20.559273, 18.464043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.270020, 20.439371, 17.584604>,  <5.809434, 20.823889, 18.045351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.270020, 20.439371, 17.584604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.362198, 20.296152, 17.946531>,  <6.417505, 20.210220, 18.163689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.362198, 20.296152, 17.946531>,  <6.270020, 20.439371, 17.584604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.362198, 20.296152, 17.946531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110328, -0.933463, -0.341284,
		0.966810, -0.021180, -0.254615,
		0.230445, -0.358048, 0.904818,
		6.431332, 20.188738, 18.217978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.727481, 19.857403, 17.527718>,  <6.270020, 20.439371, 17.584604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.727481, 19.857403, 17.527718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.599108, 19.773062, 17.897051>,  <6.522084, 19.722456, 18.118650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.599108, 19.773062, 17.897051>,  <6.727481, 19.857403, 17.527718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.599108, 19.773062, 17.897051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246614, -0.922668, -0.296420,
		0.914431, -0.322837, 0.244115,
		-0.320933, -0.210854, 0.923332,
		6.502828, 19.709806, 18.174051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.116367, 19.261683, 17.753456>,  <6.727481, 19.857403, 17.527718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.116367, 19.261683, 17.753456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.779041, 19.268562, 17.968313>,  <6.576645, 19.272690, 18.097227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.779041, 19.268562, 17.968313>,  <7.116367, 19.261683, 17.753456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.779041, 19.268562, 17.968313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242976, -0.903703, -0.352539,
		0.479355, -0.427815, 0.766285,
		-0.843316, 0.017198, 0.537144,
		6.526047, 19.273722, 18.129456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.023111, 18.541962, 17.912779>,  <7.116367, 19.261683, 17.753456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.023111, 18.541962, 17.912779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.666916, 18.712498, 17.976360>,  <6.453199, 18.814819, 18.014509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.666916, 18.712498, 17.976360>,  <7.023111, 18.541962, 17.912779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.666916, 18.712498, 17.976360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451980, -0.788596, -0.416931,
		-0.052403, -0.443116, 0.894931,
		-0.890488, 0.426340, 0.158954,
		6.399770, 18.840399, 18.024046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.538645, 17.945881, 17.967720>,  <7.023111, 18.541962, 17.912779>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.538645, 17.945881, 17.967720> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.329208, 18.276981, 17.887047>,  <6.203546, 18.475641, 17.838642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.329208, 18.276981, 17.887047>,  <6.538645, 17.945881, 17.967720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.329208, 18.276981, 17.887047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632320, -0.536211, -0.559151,
		-0.570984, -0.165239, 0.804160,
		-0.523593, 0.827752, -0.201684,
		6.172130, 18.525307, 17.826542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.752171, 17.707771, 18.158340>,  <6.538645, 17.945881, 17.967720>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.752171, 17.707771, 18.158340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.792247, 18.003456, 17.891949>,  <5.816293, 18.180866, 17.732115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.792247, 18.003456, 17.891949>,  <5.752171, 17.707771, 18.158340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.792247, 18.003456, 17.891949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567780, -0.507184, -0.648376,
		-0.817061, 0.443091, 0.368894,
		0.100192, 0.739212, -0.665978,
		5.822305, 18.225220, 17.692156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.147661, 17.604221, 17.738560>,  <5.752171, 17.707771, 18.158340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.147661, 17.604221, 17.738560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.327468, 17.887045, 17.520201>,  <5.435352, 18.056738, 17.389185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.327468, 17.887045, 17.520201>,  <5.147661, 17.604221, 17.738560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.327468, 17.887045, 17.520201> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240266, -0.492899, -0.836255,
		-0.860353, 0.507071, -0.051685,
		0.449516, 0.707057, -0.545899,
		5.462323, 18.099161, 17.356430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.668699, 17.816221, 17.273161>,  <5.147661, 17.604221, 17.738560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.668699, 17.816221, 17.273161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.024763, 17.874084, 17.100332>,  <5.238402, 17.908802, 16.996635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.024763, 17.874084, 17.100332>,  <4.668699, 17.816221, 17.273161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.024763, 17.874084, 17.100332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329870, -0.449554, -0.830113,
		-0.314323, 0.881462, -0.352457,
		0.890161, 0.144659, -0.432073,
		5.291811, 17.917482, 16.970711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.527244, 17.946087, 16.602673>,  <4.668699, 17.816221, 17.273161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.527244, 17.946087, 16.602673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.909552, 17.829103, 16.590206>,  <5.138937, 17.758913, 16.582726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.909552, 17.829103, 16.590206>,  <4.527244, 17.946087, 16.602673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.909552, 17.829103, 16.590206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192814, -0.543033, -0.817274,
		0.222095, 0.787136, -0.575405,
		0.955770, -0.292459, -0.031166,
		5.196283, 17.741365, 16.580856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.576565, 17.966331, 15.937467>,  <4.527244, 17.946087, 16.602673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.576565, 17.966331, 15.937467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.877500, 17.742186, 16.076019>,  <5.058061, 17.607698, 16.159151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.877500, 17.742186, 16.076019>,  <4.576565, 17.966331, 15.937467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.877500, 17.742186, 16.076019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137390, -0.647694, -0.749411,
		0.644293, 0.516220, -0.564272,
		0.752337, -0.560366, 0.346381,
		5.103201, 17.574076, 16.179934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.004983, 17.829138, 15.369853>,  <4.576565, 17.966331, 15.937467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.004983, 17.829138, 15.369853> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.079588, 17.537622, 15.633392>,  <5.124351, 17.362713, 15.791516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.079588, 17.537622, 15.633392>,  <5.004983, 17.829138, 15.369853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.079588, 17.537622, 15.633392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175359, -0.684543, -0.707567,
		0.966676, 0.016435, -0.255475,
		0.186512, -0.728788, 0.658849,
		5.135541, 17.318987, 15.831047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.276512, 17.257156, 14.926829>,  <5.004983, 17.829138, 15.369853>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.276512, 17.257156, 14.926829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.204026, 17.096172, 15.285759>,  <5.160535, 16.999582, 15.501117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.204026, 17.096172, 15.285759>,  <5.276512, 17.257156, 14.926829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.204026, 17.096172, 15.285759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321651, -0.837993, -0.440805,
		0.929356, -0.368505, 0.022406,
		-0.181215, -0.402458, 0.897323,
		5.149662, 16.975435, 15.554956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.531137, 16.601295, 14.880138>,  <5.276512, 17.257156, 14.926829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.531137, 16.601295, 14.880138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.280683, 16.596033, 15.191979>,  <5.130410, 16.592876, 15.379084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.280683, 16.596033, 15.191979>,  <5.531137, 16.601295, 14.880138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.280683, 16.596033, 15.191979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427896, -0.830047, -0.357669,
		0.651812, -0.557539, 0.514093,
		-0.626136, -0.013154, 0.779603,
		5.092842, 16.592087, 15.425860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.161871, 16.871504, 15.010072>,  <5.531137, 16.601295, 14.880138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.161871, 16.871504, 15.010072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.545948, 16.956749, 14.937832>,  <6.776393, 17.007896, 14.894488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.545948, 16.956749, 14.937832>,  <6.161871, 16.871504, 15.010072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.545948, 16.956749, 14.937832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027253, 0.571961, 0.819828,
		0.278010, -0.792113, 0.543384,
		0.960191, 0.213111, -0.180599,
		6.834005, 17.020683, 14.883652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.395018, 17.272068, 15.666846>,  <6.161871, 16.871504, 15.010072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.395018, 17.272068, 15.666846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.661590, 17.334919, 15.375318>,  <6.821534, 17.372629, 15.200400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.661590, 17.334919, 15.375318>,  <6.395018, 17.272068, 15.666846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.661590, 17.334919, 15.375318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466176, 0.675069, 0.571806,
		0.581850, -0.720829, 0.376639,
		0.666431, 0.157125, -0.728822,
		6.861519, 17.382057, 15.156671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.152500, 17.178335, 15.854031>,  <6.395018, 17.272068, 15.666846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.152500, 17.178335, 15.854031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.171620, 17.424835, 15.539591>,  <7.183092, 17.572735, 15.350926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.171620, 17.424835, 15.539591>,  <7.152500, 17.178335, 15.854031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.171620, 17.424835, 15.539591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673112, 0.561593, 0.481179,
		0.737994, -0.552133, -0.387960,
		0.047799, 0.616248, -0.786100,
		7.185960, 17.609711, 15.303761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.819633, 17.520847, 15.822963>,  <7.152500, 17.178335, 15.854031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.819633, 17.520847, 15.822963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.616917, 17.757090, 15.571774>,  <7.495287, 17.898834, 15.421060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.616917, 17.757090, 15.571774>,  <7.819633, 17.520847, 15.822963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.616917, 17.757090, 15.571774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588227, 0.769430, 0.248930,
		0.630200, -0.243235, -0.737349,
		-0.506790, 0.590605, -0.627973,
		7.464880, 17.934271, 15.383382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.292540, 17.898336, 15.421602>,  <7.819633, 17.520847, 15.822963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.292540, 17.898336, 15.421602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.959991, 18.120314, 15.409883>,  <7.760462, 18.253500, 15.402851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.959991, 18.120314, 15.409883>,  <8.292540, 17.898336, 15.421602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.959991, 18.120314, 15.409883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524934, 0.801531, 0.286344,
		0.182388, 0.222678, -0.957679,
		-0.831371, 0.554944, -0.029298,
		7.710579, 18.286797, 15.401093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.483258, 18.552460, 15.309547>,  <8.292540, 17.898336, 15.421602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.483258, 18.552460, 15.309547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.113703, 18.613791, 15.449787>,  <7.891969, 18.650589, 15.533931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.113703, 18.613791, 15.449787>,  <8.483258, 18.552460, 15.309547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.113703, 18.613791, 15.449787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289966, 0.878370, 0.379981,
		-0.249695, 0.452722, -0.855976,
		-0.923890, 0.153325, 0.350599,
		7.836536, 18.659788, 15.554967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.498076, 19.229151, 15.286489>,  <8.483258, 18.552460, 15.309547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.498076, 19.229151, 15.286489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.188042, 19.168051, 15.531734>,  <8.002021, 19.131392, 15.678882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.188042, 19.168051, 15.531734>,  <8.498076, 19.229151, 15.286489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.188042, 19.168051, 15.531734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208014, 0.854562, 0.475872,
		-0.596633, 0.496378, -0.630585,
		-0.775087, -0.152751, 0.613113,
		7.955516, 19.122225, 15.715669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.079995, 19.686752, 15.125800>,  <8.498076, 19.229151, 15.286489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.079995, 19.686752, 15.125800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.010078, 19.578392, 15.504442>,  <7.968128, 19.513376, 15.731627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.010078, 19.578392, 15.504442>,  <8.079995, 19.686752, 15.125800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.010078, 19.578392, 15.504442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148445, 0.943165, 0.297329,
		-0.973351, 0.192490, -0.124644,
		-0.174792, -0.270902, 0.946604,
		7.957641, 19.497122, 15.788424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.634563, 20.190321, 15.324054>,  <8.079995, 19.686752, 15.125800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.634563, 20.190321, 15.324054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.777175, 20.036942, 15.664842>,  <7.862742, 19.944914, 15.869314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.777175, 20.036942, 15.664842>,  <7.634563, 20.190321, 15.324054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.777175, 20.036942, 15.664842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179608, 0.923017, 0.340265,
		-0.916858, 0.031707, 0.397953,
		0.356529, -0.383450, 0.851970,
		7.884134, 19.921907, 15.920433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.341470, 20.599285, 15.799967>,  <7.634563, 20.190321, 15.324054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.341470, 20.599285, 15.799967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.643824, 20.421474, 15.992231>,  <7.825236, 20.314789, 16.107590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.643824, 20.421474, 15.992231>,  <7.341470, 20.599285, 15.799967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.643824, 20.421474, 15.992231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172883, 0.843629, 0.508331,
		-0.631467, -0.301141, 0.714537,
		0.755884, -0.444526, 0.480662,
		7.870589, 20.288116, 16.136431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.273788, 20.900276, 16.362925>,  <7.341470, 20.599285, 15.799967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.273788, 20.900276, 16.362925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.651079, 20.767756, 16.372391>,  <7.877454, 20.688242, 16.378071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.651079, 20.767756, 16.372391>,  <7.273788, 20.900276, 16.362925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.651079, 20.767756, 16.372391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285280, 0.844564, 0.453131,
		-0.170112, -0.420654, 0.891130,
		0.943227, -0.331304, 0.023667,
		7.934047, 20.668364, 16.379490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.564347, 21.275337, 16.837536>,  <7.273788, 20.900276, 16.362925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.564347, 21.275337, 16.837536> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.892852, 21.147026, 16.648800>,  <8.089955, 21.070040, 16.535559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.892852, 21.147026, 16.648800>,  <7.564347, 21.275337, 16.837536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.892852, 21.147026, 16.648800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451557, 0.870926, 0.193868,
		0.348747, -0.372278, 0.860107,
		0.821262, -0.320776, -0.471838,
		8.139231, 21.050793, 16.507248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.103689, 21.245043, 17.280222>,  <7.564347, 21.275337, 16.837536>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.103689, 21.245043, 17.280222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.286388, 21.301363, 16.928869>,  <8.396008, 21.335155, 16.718058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.286388, 21.301363, 16.928869>,  <8.103689, 21.245043, 17.280222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.286388, 21.301363, 16.928869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442120, 0.820889, 0.361484,
		0.771951, -0.553458, 0.312690,
		0.456750, 0.140801, -0.878381,
		8.423413, 21.343603, 16.665354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.819194, 21.408857, 17.467911>,  <8.103689, 21.245043, 17.280222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.819194, 21.408857, 17.467911> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.803347, 21.517561, 17.083290>,  <8.793839, 21.582783, 16.852518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.803347, 21.517561, 17.083290>,  <8.819194, 21.408857, 17.467911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.803347, 21.517561, 17.083290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533609, 0.819351, 0.209583,
		0.844803, -0.504788, -0.177474,
		-0.039618, 0.271758, -0.961550,
		8.791461, 21.599089, 16.794825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.485652, 21.598717, 17.380796>,  <8.819194, 21.408857, 17.467911>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.485652, 21.598717, 17.380796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.245034, 21.765501, 17.108242>,  <9.100663, 21.865572, 16.944710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.245034, 21.765501, 17.108242>,  <9.485652, 21.598717, 17.380796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.245034, 21.765501, 17.108242> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378121, 0.899985, 0.216914,
		0.703681, -0.127162, -0.699044,
		-0.601546, 0.416962, -0.681385,
		9.064570, 21.890589, 16.903826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.966001, 22.013699, 16.913315>,  <9.485652, 21.598717, 17.380796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.966001, 22.013699, 16.913315> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.592011, 22.151340, 16.878870>,  <9.367618, 22.233927, 16.858204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.592011, 22.151340, 16.878870>,  <9.966001, 22.013699, 16.913315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.592011, 22.151340, 16.878870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326757, 0.929982, 0.168416,
		0.138035, 0.129328, -0.981947,
		-0.934974, 0.344106, -0.086112,
		9.311520, 22.254572, 16.853037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.128922, 22.622971, 16.596155>,  <9.966001, 22.013699, 16.913315>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.128922, 22.622971, 16.596155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.757442, 22.680035, 16.733070>,  <9.534554, 22.714273, 16.815220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.757442, 22.680035, 16.733070>,  <10.128922, 22.622971, 16.596155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.757442, 22.680035, 16.733070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281562, 0.871957, 0.400517,
		-0.241323, 0.468337, -0.849955,
		-0.928701, 0.142661, 0.342290,
		9.478831, 22.722834, 16.835756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.982337, 23.257683, 16.363565>,  <10.128922, 22.622971, 16.596155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.982337, 23.257683, 16.363565> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.712370, 23.184191, 16.649427>,  <9.550390, 23.140095, 16.820944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.712370, 23.184191, 16.649427>,  <9.982337, 23.257683, 16.363565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.712370, 23.184191, 16.649427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302171, 0.814757, 0.494837,
		-0.673187, 0.549921, -0.494375,
		-0.674917, -0.183732, 0.714654,
		9.509895, 23.129070, 16.863823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.597122, 23.911192, 16.466871>,  <9.982337, 23.257683, 16.363565>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.597122, 23.911192, 16.466871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.574446, 23.683830, 16.795189>,  <9.560840, 23.547413, 16.992180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.574446, 23.683830, 16.795189>,  <9.597122, 23.911192, 16.466871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.574446, 23.683830, 16.795189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257244, 0.786042, 0.562106,
		-0.964682, 0.243011, 0.101657,
		-0.056691, -0.568404, 0.820794,
		9.557439, 23.513309, 17.041428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.434027, 24.372547, 16.896814>,  <9.597122, 23.911192, 16.466871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.434027, 24.372547, 16.896814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.532098, 24.072063, 17.141951>,  <9.590940, 23.891773, 17.289032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.532098, 24.072063, 17.141951>,  <9.434027, 24.372547, 16.896814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.532098, 24.072063, 17.141951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203836, 0.657946, 0.724954,
		-0.947807, -0.052824, 0.314438,
		0.245178, -0.751210, 0.612839,
		9.605651, 23.846701, 17.325802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.017522, 24.459862, 17.457560>,  <9.434027, 24.372547, 16.896814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.017522, 24.459862, 17.457560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.357505, 24.271599, 17.552261>,  <9.561495, 24.158642, 17.609083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.357505, 24.271599, 17.552261>,  <9.017522, 24.459862, 17.457560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.357505, 24.271599, 17.552261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290394, 0.793473, 0.534857,
		-0.439593, -0.385854, 0.811095,
		0.849958, -0.470657, 0.236756,
		9.612493, 24.130402, 17.623287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<16.880598, 19.316925, 27.904257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.635725, 19.004721, 27.954910>,  <16.488802, 18.817398, 27.985302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.635725, 19.004721, 27.954910>,  <16.880598, 19.316925, 27.904257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.635725, 19.004721, 27.954910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435739, 0.466638, 0.769663,
		-0.659822, 0.415994, -0.625766,
		-0.612182, -0.780511, 0.126633,
		16.452070, 18.770567, 27.992901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.445419, 19.584074, 28.396387>,  <16.880598, 19.316925, 27.904257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.445419, 19.584074, 28.396387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.300735, 19.211407, 28.382744>,  <16.213924, 18.987806, 28.374557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.300735, 19.211407, 28.382744>,  <16.445419, 19.584074, 28.396387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.300735, 19.211407, 28.382744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728447, 0.259602, 0.634012,
		-0.581833, 0.254175, -0.772571,
		-0.361711, -0.931666, -0.034108,
		16.192223, 18.931908, 28.372511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.630441, 19.658781, 28.382523>,  <16.445419, 19.584074, 28.396387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.630441, 19.658781, 28.382523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.743089, 19.297512, 28.512121>,  <15.810678, 19.080751, 28.589880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.743089, 19.297512, 28.512121>,  <15.630441, 19.658781, 28.382523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.743089, 19.297512, 28.512121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751142, 0.002595, 0.660135,
		-0.597056, -0.429274, -0.677678,
		0.281620, -0.903170, 0.323995,
		15.827575, 19.026562, 28.609320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.908598, 19.313871, 28.566290>,  <15.630441, 19.658781, 28.382523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.908598, 19.313871, 28.566290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.211744, 19.126240, 28.747663>,  <15.393632, 19.013660, 28.856487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.211744, 19.126240, 28.747663>,  <14.908598, 19.313871, 28.566290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.211744, 19.126240, 28.747663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523635, -0.022772, 0.851638,
		-0.389163, -0.882860, -0.262887,
		0.757864, -0.469083, 0.453434,
		15.439104, 18.985516, 28.883694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.607413, 18.809496, 28.766790>,  <14.908598, 19.313871, 28.566290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.607413, 18.809496, 28.766790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.930230, 18.845886, 29.000168>,  <15.123920, 18.867720, 29.140194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.930230, 18.845886, 29.000168>,  <14.607413, 18.809496, 28.766790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.930230, 18.845886, 29.000168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573146, -0.117059, 0.811049,
		0.142084, -0.988949, -0.042329,
		0.807041, 0.090977, 0.583444,
		15.172342, 18.873178, 29.175201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.623487, 18.251652, 29.350307>,  <14.607413, 18.809496, 28.766790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.623487, 18.251652, 29.350307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.885108, 18.512503, 29.503641>,  <15.042080, 18.669014, 29.595642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.885108, 18.512503, 29.503641>,  <14.623487, 18.251652, 29.350307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.885108, 18.512503, 29.503641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388239, -0.145533, 0.909995,
		0.649222, -0.744008, 0.157996,
		0.654050, 0.652129, 0.383336,
		15.081323, 18.708141, 29.618643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.711535, 17.929464, 30.015825>,  <14.623487, 18.251652, 29.350307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.711535, 17.929464, 30.015825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.847398, 18.304760, 30.042185>,  <14.928915, 18.529938, 30.058001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.847398, 18.304760, 30.042185>,  <14.711535, 17.929464, 30.015825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.847398, 18.304760, 30.042185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090306, -0.037209, 0.995219,
		0.936205, -0.343982, 0.072091,
		0.339655, 0.938239, 0.065899,
		14.949294, 18.586231, 30.061954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.254868, 17.929901, 30.572344>,  <14.711535, 17.929464, 30.015825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.254868, 17.929901, 30.572344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.101505, 18.296204, 30.524353>,  <15.009488, 18.515985, 30.495558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.101505, 18.296204, 30.524353>,  <15.254868, 17.929901, 30.572344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.101505, 18.296204, 30.524353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003713, 0.128375, 0.991719,
		0.923573, 0.380676, -0.045819,
		-0.383405, 0.915754, -0.119978,
		14.986484, 18.570930, 30.488359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.641007, 18.413115, 30.935450>,  <15.254868, 17.929901, 30.572344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.641007, 18.413115, 30.935450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.285416, 18.592983, 30.900785>,  <15.072061, 18.700905, 30.879986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.285416, 18.592983, 30.900785>,  <15.641007, 18.413115, 30.935450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.285416, 18.592983, 30.900785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065183, 0.063065, 0.995878,
		0.453285, 0.890964, -0.026752,
		-0.888979, 0.449673, -0.086662,
		15.018722, 18.727884, 30.874786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.643543, 18.920322, 31.447666>,  <15.641007, 18.413115, 30.935450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.643543, 18.920322, 31.447666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.258925, 18.870628, 31.349689>,  <15.028154, 18.840811, 31.290903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.258925, 18.870628, 31.349689>,  <15.643543, 18.920322, 31.447666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.258925, 18.870628, 31.349689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249716, 0.024178, 0.968017,
		-0.114341, 0.991958, -0.054272,
		-0.961545, -0.124236, -0.244943,
		14.970462, 18.833357, 31.276207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.275468, 19.514091, 31.747015>,  <15.643543, 18.920322, 31.447666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.275468, 19.514091, 31.747015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.007977, 19.221199, 31.695419>,  <14.847482, 19.045464, 31.664461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.007977, 19.221199, 31.695419>,  <15.275468, 19.514091, 31.747015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.007977, 19.221199, 31.695419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202597, 0.012536, 0.979182,
		-0.715372, 0.680939, -0.156732,
		-0.668728, -0.732233, -0.128988,
		14.807358, 19.001530, 31.656723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.707299, 19.786837, 32.078388>,  <15.275468, 19.514091, 31.747015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.707299, 19.786837, 32.078388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.638208, 19.394051, 32.047634>,  <14.596754, 19.158379, 32.029182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.638208, 19.394051, 32.047634>,  <14.707299, 19.786837, 32.078388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.638208, 19.394051, 32.047634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245393, -0.032694, 0.968872,
		-0.953912, 0.186218, -0.235320,
		-0.172728, -0.981965, -0.076884,
		14.586390, 19.099461, 32.024570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.224135, 19.553667, 32.520576>,  <14.707299, 19.786837, 32.078388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.224135, 19.553667, 32.520576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.432411, 19.215414, 32.473602>,  <14.557377, 19.012463, 32.445419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.432411, 19.215414, 32.473602>,  <14.224135, 19.553667, 32.520576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.432411, 19.215414, 32.473602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036132, -0.115603, 0.992638,
		-0.852981, -0.521099, -0.029639,
		0.520690, -0.845631, -0.117435,
		14.588618, 18.961725, 32.438374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.887711, 18.846037, 32.753269>,  <14.224135, 19.553667, 32.520576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.887711, 18.846037, 32.753269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.285978, 18.853413, 32.789715>,  <14.524939, 18.857838, 32.811584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.285978, 18.853413, 32.789715>,  <13.887711, 18.846037, 32.753269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.285978, 18.853413, 32.789715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078827, -0.352130, 0.932626,
		0.049284, -0.935769, -0.349151,
		0.995669, 0.018441, 0.091119,
		14.584679, 18.858944, 32.817051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.395974, 19.460354, 32.932842>,  <13.887711, 18.846037, 32.753269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.395974, 19.460354, 32.932842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.050465, 19.646322, 33.010551>,  <12.843159, 19.757904, 33.057178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.050465, 19.646322, 33.010551>,  <13.395974, 19.460354, 32.932842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.050465, 19.646322, 33.010551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255835, -0.072493, -0.963999,
		-0.434101, -0.882379, 0.181561,
		-0.863774, 0.464922, 0.194274,
		12.791332, 19.785799, 33.068832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.940087, 19.026131, 32.727718>,  <13.395974, 19.460354, 32.932842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.940087, 19.026131, 32.727718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.804592, 19.400993, 32.694263>,  <12.723295, 19.625912, 32.674191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.804592, 19.400993, 32.694263>,  <12.940087, 19.026131, 32.727718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.804592, 19.400993, 32.694263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292069, -0.189236, -0.937489,
		-0.894401, -0.293134, 0.337815,
		-0.338737, 0.937156, -0.083637,
		12.702971, 19.682140, 32.669174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.286273, 18.882196, 32.538940>,  <12.940087, 19.026131, 32.727718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.286273, 18.882196, 32.538940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.362580, 19.259220, 32.429260>,  <12.408365, 19.485435, 32.363453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.362580, 19.259220, 32.429260>,  <12.286273, 18.882196, 32.538940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.362580, 19.259220, 32.429260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428307, -0.171417, -0.887226,
		-0.883267, 0.286697, 0.371004,
		0.190769, 0.942561, -0.274201,
		12.419811, 19.541988, 32.347000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.697437, 19.152464, 32.080029>,  <12.286273, 18.882196, 32.538940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.697437, 19.152464, 32.080029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.966228, 19.441633, 32.015743>,  <12.127503, 19.615135, 31.977173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.966228, 19.441633, 32.015743>,  <11.697437, 19.152464, 32.080029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.966228, 19.441633, 32.015743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224683, -0.007769, -0.974401,
		-0.705665, 0.690885, 0.157207,
		0.671978, 0.722923, -0.160712,
		12.167822, 19.658510, 31.967529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.290386, 19.588707, 31.596460>,  <11.697437, 19.152464, 32.080029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.290386, 19.588707, 31.596460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.673017, 19.698729, 31.557871>,  <11.902596, 19.764742, 31.534718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.673017, 19.698729, 31.557871>,  <11.290386, 19.588707, 31.596460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.673017, 19.698729, 31.557871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144346, 0.159476, -0.976592,
		-0.253229, 0.948111, 0.192254,
		0.956577, 0.275052, -0.096472,
		11.959990, 19.781244, 31.528929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.377914, 20.280165, 31.259092>,  <11.290386, 19.588707, 31.596460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.377914, 20.280165, 31.259092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.730302, 20.096741, 31.212412>,  <11.941734, 19.986687, 31.184404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.730302, 20.096741, 31.212412>,  <11.377914, 20.280165, 31.259092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.730302, 20.096741, 31.212412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022791, 0.287469, -0.957519,
		0.472627, 0.840883, 0.263702,
		0.880968, -0.458559, -0.116701,
		11.994592, 19.959173, 31.177401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.811698, 20.613270, 30.732475>,  <11.377914, 20.280165, 31.259092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.811698, 20.613270, 30.732475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.979260, 20.250067, 30.730032>,  <12.079798, 20.032145, 30.728565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.979260, 20.250067, 30.730032>,  <11.811698, 20.613270, 30.732475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.979260, 20.250067, 30.730032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193316, 0.095756, -0.976453,
		0.887213, 0.407861, 0.215646,
		0.418906, -0.908009, -0.006110,
		12.104932, 19.977665, 30.728199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.562795, 20.642538, 30.577526>,  <11.811698, 20.613270, 30.732475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.562795, 20.642538, 30.577526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.458751, 20.267870, 30.483725>,  <12.396324, 20.043070, 30.427444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.458751, 20.267870, 30.483725>,  <12.562795, 20.642538, 30.577526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.458751, 20.267870, 30.483725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508077, 0.073754, -0.858148,
		0.821097, -0.342358, 0.456717,
		-0.260109, -0.936671, -0.234503,
		12.380718, 19.986868, 30.413374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.037951, 20.482309, 30.128254>,  <12.562795, 20.642538, 30.577526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.037951, 20.482309, 30.128254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.768952, 20.193090, 30.065062>,  <12.607553, 20.019560, 30.027147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.768952, 20.193090, 30.065062>,  <13.037951, 20.482309, 30.128254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.768952, 20.193090, 30.065062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364584, -0.137884, -0.920905,
		0.644073, -0.676900, 0.356337,
		-0.672494, -0.723045, -0.157980,
		12.567204, 19.976177, 30.017668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.437376, 19.914516, 29.868876>,  <13.037951, 20.482309, 30.128254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.437376, 19.914516, 29.868876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.062616, 19.857687, 29.741104>,  <12.837760, 19.823589, 29.664442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.062616, 19.857687, 29.741104>,  <13.437376, 19.914516, 29.868876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.062616, 19.857687, 29.741104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343486, -0.203983, -0.916738,
		0.065088, -0.968610, 0.239912,
		-0.936899, -0.142076, -0.319427,
		12.781547, 19.815065, 29.645275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.391523, 19.295744, 29.482887>,  <13.437376, 19.914516, 29.868876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.391523, 19.295744, 29.482887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.045615, 19.457211, 29.363405>,  <12.838070, 19.554090, 29.291716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.045615, 19.457211, 29.363405>,  <13.391523, 19.295744, 29.482887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.045615, 19.457211, 29.363405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179089, -0.307807, -0.934442,
		-0.469149, -0.861572, 0.193890,
		-0.864770, 0.403668, -0.298706,
		12.786184, 19.578310, 29.273794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.106222, 18.778791, 29.003384>,  <13.391523, 19.295744, 29.482887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.106222, 18.778791, 29.003384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.931567, 19.125023, 28.905304>,  <12.826775, 19.332762, 28.846457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.931567, 19.125023, 28.905304>,  <13.106222, 18.778791, 29.003384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.931567, 19.125023, 28.905304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249897, -0.145131, -0.957334,
		-0.864234, -0.479282, -0.152936,
		-0.436637, 0.865579, -0.245198,
		12.800576, 19.384697, 28.831745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.651514, 18.599489, 28.462822>,  <13.106222, 18.778791, 29.003384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.651514, 18.599489, 28.462822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.691780, 18.996788, 28.439756>,  <12.715940, 19.235168, 28.425917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.691780, 18.996788, 28.439756>,  <12.651514, 18.599489, 28.462822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.691780, 18.996788, 28.439756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239119, -0.080412, -0.967655,
		-0.965758, 0.083620, -0.245600,
		0.100664, 0.993248, -0.057663,
		12.721979, 19.294762, 28.422457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.287663, 18.889366, 27.804079>,  <12.651514, 18.599489, 28.462822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.287663, 18.889366, 27.804079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.575024, 19.146383, 27.910690>,  <12.747440, 19.300592, 27.974657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.575024, 19.146383, 27.910690>,  <12.287663, 18.889366, 27.804079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.575024, 19.146383, 27.910690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338727, 0.011537, -0.940814,
		-0.607587, 0.766165, -0.209357,
		0.718403, 0.642541, 0.266530,
		12.790545, 19.339146, 27.990650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.622107, 19.131063, 27.483707>,  <12.287663, 18.889366, 27.804079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.622107, 19.131063, 27.483707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.276093, 19.159233, 27.285009>,  <11.068484, 19.176134, 27.165791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.276093, 19.159233, 27.285009>,  <11.622107, 19.131063, 27.483707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.276093, 19.159233, 27.285009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486276, 0.126011, 0.864672,
		0.123487, 0.989526, -0.074760,
		-0.865036, 0.070422, -0.496743,
		11.016582, 19.180359, 27.135986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.264906, 19.691448, 27.805359>,  <11.622107, 19.131063, 27.483707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.264906, 19.691448, 27.805359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.969902, 19.497583, 27.617239>,  <10.792900, 19.381266, 27.504366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.969902, 19.497583, 27.617239>,  <11.264906, 19.691448, 27.805359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.969902, 19.497583, 27.617239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507956, -0.060818, 0.859233,
		-0.445039, 0.872585, -0.201332,
		-0.737510, -0.484661, -0.470302,
		10.748650, 19.352184, 27.476149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.597325, 20.031860, 28.119928>,  <11.264906, 19.691448, 27.805359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.597325, 20.031860, 28.119928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.516545, 19.673990, 27.960545>,  <10.468078, 19.459269, 27.864914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.516545, 19.673990, 27.960545>,  <10.597325, 20.031860, 28.119928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.516545, 19.673990, 27.960545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497521, -0.256727, 0.828591,
		-0.843617, 0.365577, -0.393274,
		-0.201950, -0.894676, -0.398462,
		10.455960, 19.405588, 27.841005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.820552, 19.934160, 28.193653>,  <10.597325, 20.031860, 28.119928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.820552, 19.934160, 28.193653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.002989, 19.578749, 28.173651>,  <10.112451, 19.365501, 28.161650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.002989, 19.578749, 28.173651>,  <9.820552, 19.934160, 28.193653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.002989, 19.578749, 28.173651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426298, -0.267459, 0.864139,
		-0.781186, -0.372808, -0.500763,
		0.456092, -0.888527, -0.050008,
		10.139816, 19.312191, 28.158648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.372231, 19.489191, 28.424135>,  <9.820552, 19.934160, 28.193653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.372231, 19.489191, 28.424135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.692467, 19.250378, 28.444540>,  <9.884608, 19.107090, 28.456783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.692467, 19.250378, 28.444540>,  <9.372231, 19.489191, 28.424135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.692467, 19.250378, 28.444540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326362, -0.363066, 0.872738,
		-0.502536, -0.715353, -0.485517,
		0.800591, -0.597036, 0.051010,
		9.932644, 19.071266, 28.459843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.045548, 18.933485, 28.723656>,  <9.372231, 19.489191, 28.424135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.045548, 18.933485, 28.723656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.437063, 18.868423, 28.773487>,  <9.671972, 18.829386, 28.803387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.437063, 18.868423, 28.773487>,  <9.045548, 18.933485, 28.723656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.437063, 18.868423, 28.773487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183606, -0.426535, 0.885639,
		-0.090915, -0.889726, -0.447351,
		0.978787, -0.162654, 0.124581,
		9.730700, 18.819628, 28.810862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.145875, 18.211594, 28.959015>,  <9.045548, 18.933485, 28.723656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.145875, 18.211594, 28.959015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.446593, 18.428583, 29.108963>,  <9.627025, 18.558777, 29.198931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.446593, 18.428583, 29.108963>,  <9.145875, 18.211594, 28.959015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.446593, 18.428583, 29.108963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149098, -0.413931, 0.898015,
		0.642317, -0.731017, -0.230311,
		0.751797, 0.542472, 0.374868,
		9.672132, 18.591324, 29.221424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.618645, 17.543537, 28.945385>,  <9.145875, 18.211594, 28.959015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.618645, 17.543537, 28.945385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.589460, 17.144773, 28.957033>,  <9.571950, 16.905516, 28.964022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.589460, 17.144773, 28.957033>,  <9.618645, 17.543537, 28.945385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.589460, 17.144773, 28.957033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179311, -0.041834, -0.982903,
		0.981083, -0.066491, 0.181809,
		-0.072960, -0.996910, 0.029120,
		9.567573, 16.845701, 28.965769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.137753, 17.298809, 28.550390>,  <9.618645, 17.543537, 28.945385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.137753, 17.298809, 28.550390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.837757, 17.034523, 28.537886>,  <9.657760, 16.875952, 28.530382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.837757, 17.034523, 28.537886>,  <10.137753, 17.298809, 28.550390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.837757, 17.034523, 28.537886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207764, -0.190440, -0.959462,
		0.627975, -0.726079, 0.280100,
		-0.749987, -0.660713, -0.031262,
		9.612761, 16.836309, 28.528507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.438102, 16.678698, 28.161844>,  <10.137753, 17.298809, 28.550390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.438102, 16.678698, 28.161844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.041110, 16.633089, 28.144035>,  <9.802915, 16.605724, 28.133350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.041110, 16.633089, 28.144035>,  <10.438102, 16.678698, 28.161844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.041110, 16.633089, 28.144035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076693, -0.295758, -0.952179,
		0.095403, -0.948433, 0.302279,
		-0.992480, -0.114023, -0.044522,
		9.743366, 16.598883, 28.130678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.310175, 16.118929, 27.777750>,  <10.438102, 16.678698, 28.161844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.310175, 16.118929, 27.777750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.969740, 16.328257, 27.760853>,  <9.765479, 16.453854, 27.750713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.969740, 16.328257, 27.760853>,  <10.310175, 16.118929, 27.777750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.969740, 16.328257, 27.760853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098893, -0.238814, -0.966017,
		-0.515626, -0.817987, 0.255004,
		-0.851088, 0.523322, -0.042245,
		9.714414, 16.485252, 27.748178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.980319, 15.734591, 27.396393>,  <10.310175, 16.118929, 27.777750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.980319, 15.734591, 27.396393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.745201, 16.057995, 27.385023>,  <9.604130, 16.252037, 27.378201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.745201, 16.057995, 27.385023>,  <9.980319, 15.734591, 27.396393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.745201, 16.057995, 27.385023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178929, -0.164188, -0.970065,
		-0.788975, -0.565114, 0.241175,
		-0.587795, 0.808511, -0.028425,
		9.568863, 16.300549, 27.376495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.377438, 15.526398, 27.060982>,  <9.980319, 15.734591, 27.396393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.377438, 15.526398, 27.060982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.393284, 15.922704, 27.009113>,  <9.402792, 16.160488, 26.977993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.393284, 15.922704, 27.009113>,  <9.377438, 15.526398, 27.060982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.393284, 15.922704, 27.009113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000559, -0.129749, -0.991547,
		-0.999215, 0.039354, -0.004587,
		0.039616, 0.990766, -0.129669,
		9.405169, 16.219933, 26.970213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.952113, 15.675179, 26.417503>,  <9.377438, 15.526398, 27.060982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.952113, 15.675179, 26.417503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.170731, 16.005388, 26.473789>,  <9.301901, 16.203514, 26.507561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.170731, 16.005388, 26.473789>,  <8.952113, 15.675179, 26.417503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.170731, 16.005388, 26.473789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259704, -0.007338, -0.965660,
		-0.796142, 0.564321, -0.218402,
		0.546545, 0.825523, 0.140715,
		9.334694, 16.253046, 26.516005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<13.841512, 16.636209, 32.937798> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.555656, 16.872589, 32.788094>,  <13.384143, 17.014418, 32.698273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.555656, 16.872589, 32.788094>,  <13.841512, 16.636209, 32.937798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.555656, 16.872589, 32.788094> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197384, 0.683664, 0.702597,
		0.671067, 0.428231, -0.605217,
		-0.714639, 0.590950, -0.374258,
		13.341265, 17.049873, 32.675816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.815701, 16.185131, 32.341553>,  <13.841512, 16.636209, 32.937798>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.815701, 16.185131, 32.341553> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.957307, 16.551208, 32.264519>,  <14.042271, 16.770855, 32.218300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.957307, 16.551208, 32.264519>,  <13.815701, 16.185131, 32.341553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.957307, 16.551208, 32.264519> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193109, -0.273013, -0.942429,
		-0.915085, 0.296446, -0.273384,
		0.354017, 0.915196, -0.192583,
		14.063512, 16.825768, 32.206745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.385312, 16.498953, 31.813993>,  <13.815701, 16.185131, 32.341553>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.385312, 16.498953, 31.813993> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.767123, 16.618080, 31.808643>,  <13.996210, 16.689556, 31.805433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.767123, 16.618080, 31.808643>,  <13.385312, 16.498953, 31.813993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.767123, 16.618080, 31.808643> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083045, -0.308717, -0.947522,
		-0.286318, 0.903326, -0.319412,
		0.954529, 0.297819, -0.013374,
		14.053482, 16.707426, 31.804630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.513547, 16.928768, 31.277872>,  <13.385312, 16.498953, 31.813993>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.513547, 16.928768, 31.277872> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.867441, 16.763813, 31.364756>,  <14.079778, 16.664841, 31.416885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.867441, 16.763813, 31.364756>,  <13.513547, 16.928768, 31.277872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.867441, 16.763813, 31.364756> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063655, -0.354743, -0.932794,
		0.461726, 0.839103, -0.287603,
		0.884736, -0.412388, 0.217207,
		14.132862, 16.640097, 31.429918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.998780, 17.132862, 30.743771>,  <13.513547, 16.928768, 31.277872>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.998780, 17.132862, 30.743771> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.176613, 16.812124, 30.903467>,  <14.283312, 16.619682, 30.999285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.176613, 16.812124, 30.903467>,  <13.998780, 17.132862, 30.743771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.176613, 16.812124, 30.903467> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164726, -0.364922, -0.916350,
		0.880462, 0.473157, -0.030152,
		0.444581, -0.801844, 0.399241,
		14.309987, 16.571571, 31.023239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.628235, 17.073725, 30.405365>,  <13.998780, 17.132862, 30.743771>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.628235, 17.073725, 30.405365> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.588163, 16.702564, 30.549009>,  <14.564120, 16.479868, 30.635195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.588163, 16.702564, 30.549009>,  <14.628235, 17.073725, 30.405365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.588163, 16.702564, 30.549009> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416419, -0.366895, -0.831855,
		0.903637, 0.066206, 0.423152,
		-0.100178, -0.927903, 0.359109,
		14.558110, 16.424192, 30.656742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.268306, 16.850098, 30.253439>,  <14.628235, 17.073725, 30.405365>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.268306, 16.850098, 30.253439> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.008329, 16.553055, 30.318071>,  <14.852344, 16.374828, 30.356852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.008329, 16.553055, 30.318071>,  <15.268306, 16.850098, 30.253439>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.008329, 16.553055, 30.318071> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339791, -0.474126, -0.812248,
		0.679792, -0.473009, 0.560486,
		-0.649942, -0.742608, 0.161583,
		14.813347, 16.330273, 30.366547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.658684, 16.088062, 30.355997>,  <15.268306, 16.850098, 30.253439>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.658684, 16.088062, 30.355997> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.280495, 16.023775, 30.242683>,  <15.053581, 15.985203, 30.174694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.280495, 16.023775, 30.242683>,  <15.658684, 16.088062, 30.355997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.280495, 16.023775, 30.242683> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323601, -0.562126, -0.761115,
		-0.036918, -0.811286, 0.583483,
		-0.945473, -0.160717, -0.283286,
		14.996853, 15.975560, 30.157698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.518371, 15.263527, 30.206066>,  <15.658684, 16.088062, 30.355997>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.518371, 15.263527, 30.206066> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.247308, 15.481595, 30.008656>,  <15.084670, 15.612436, 29.890209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.247308, 15.481595, 30.008656>,  <15.518371, 15.263527, 30.206066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.247308, 15.481595, 30.008656> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135282, -0.567248, -0.812360,
		-0.722829, -0.617266, 0.310647,
		-0.677656, 0.545172, -0.493528,
		15.044011, 15.645146, 29.860598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.282256, 14.745950, 29.852535>,  <15.518371, 15.263527, 30.206066>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.282256, 14.745950, 29.852535> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.120045, 15.066922, 29.677423>,  <15.022717, 15.259505, 29.572357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.120045, 15.066922, 29.677423>,  <15.282256, 14.745950, 29.852535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.120045, 15.066922, 29.677423> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131388, -0.525125, -0.840821,
		-0.904590, -0.283459, 0.318383,
		-0.405529, 0.802430, -0.437780,
		14.998386, 15.307652, 29.546089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.779702, 14.455643, 29.357183>,  <15.282256, 14.745950, 29.852535>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.779702, 14.455643, 29.357183> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.889303, 14.814636, 29.218939>,  <14.955064, 15.030032, 29.135992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.889303, 14.814636, 29.218939>,  <14.779702, 14.455643, 29.357183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.889303, 14.814636, 29.218939> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204106, -0.296912, -0.932837,
		-0.939821, 0.326141, 0.101827,
		0.274003, 0.897483, -0.345611,
		14.971504, 15.083881, 29.115255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.200097, 14.779340, 29.002401>,  <14.779702, 14.455643, 29.357183>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.200097, 14.779340, 29.002401> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.571347, 14.873188, 28.886791>,  <14.794098, 14.929497, 28.817425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.571347, 14.873188, 28.886791>,  <14.200097, 14.779340, 29.002401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.571347, 14.873188, 28.886791> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135096, -0.511186, -0.848786,
		-0.346887, 0.826827, -0.442749,
		0.928126, 0.234620, -0.289025,
		14.849785, 14.943574, 28.800083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.895396, 15.423327, 28.715837>,  <14.200097, 14.779340, 29.002401>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.895396, 15.423327, 28.715837> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.549726, 15.305726, 28.552488>,  <13.342325, 15.235166, 28.454479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.549726, 15.305726, 28.552488>,  <13.895396, 15.423327, 28.715837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.549726, 15.305726, 28.552488> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461619, 0.140183, 0.875932,
		-0.200280, 0.945469, -0.256860,
		-0.864173, -0.294003, -0.408371,
		13.290475, 15.217525, 28.429977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.474704, 15.970309, 28.803865>,  <13.895396, 15.423327, 28.715837>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.474704, 15.970309, 28.803865> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.286817, 15.617184, 28.802904>,  <13.174085, 15.405309, 28.802326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.286817, 15.617184, 28.802904>,  <13.474704, 15.970309, 28.803865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.286817, 15.617184, 28.802904> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421585, 0.221917, 0.879215,
		-0.775649, 0.413998, -0.476419,
		-0.469718, -0.882813, -0.002406,
		13.145901, 15.352340, 28.802183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.875835, 16.060919, 29.150988>,  <13.474704, 15.970309, 28.803865>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.875835, 16.060919, 29.150988> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.847984, 15.661905, 29.147379>,  <12.831274, 15.422498, 29.145214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.847984, 15.661905, 29.147379>,  <12.875835, 16.060919, 29.150988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.847984, 15.661905, 29.147379> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741063, 0.045667, 0.669880,
		-0.667815, 0.053328, -0.742414,
		-0.069627, -0.997532, -0.009023,
		12.827096, 15.362645, 29.144672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.145328, 15.805763, 29.083040>,  <12.875835, 16.060919, 29.150988>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.145328, 15.805763, 29.083040> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.343937, 15.497077, 29.241997>,  <12.463102, 15.311866, 29.337372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.343937, 15.497077, 29.241997>,  <12.145328, 15.805763, 29.083040>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.343937, 15.497077, 29.241997> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730546, -0.124267, 0.671461,
		-0.468794, -0.623710, -0.625475,
		0.496522, -0.771715, 0.397394,
		12.492893, 15.265562, 29.361216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.589380, 15.306726, 29.207947>,  <12.145328, 15.805763, 29.083040>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.589380, 15.306726, 29.207947> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.902476, 15.180149, 29.422304>,  <12.090334, 15.104203, 29.550919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.902476, 15.180149, 29.422304>,  <11.589380, 15.306726, 29.207947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.902476, 15.180149, 29.422304> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622184, -0.378125, 0.685499,
		-0.014287, -0.869992, -0.492859,
		0.782741, -0.316442, 0.535893,
		12.137299, 15.085217, 29.583073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.455842, 14.573312, 29.326792>,  <11.589380, 15.306726, 29.207947>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.455842, 14.573312, 29.326792> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.696733, 14.738592, 29.600021>,  <11.841267, 14.837761, 29.763958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.696733, 14.738592, 29.600021>,  <11.455842, 14.573312, 29.326792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.696733, 14.738592, 29.600021> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568058, -0.379390, 0.730324,
		0.560922, -0.827845, 0.006245,
		0.602226, 0.413203, 0.683072,
		11.877400, 14.862553, 29.804943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.608519, 14.032060, 29.922056>,  <11.455842, 14.573312, 29.326792>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.608519, 14.032060, 29.922056> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.677621, 14.390653, 30.085262>,  <11.719082, 14.605808, 30.183186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.677621, 14.390653, 30.085262>,  <11.608519, 14.032060, 29.922056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.677621, 14.390653, 30.085262> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630241, -0.217732, 0.745245,
		0.756936, -0.385893, 0.527385,
		0.172756, 0.896482, 0.408014,
		11.729447, 14.659597, 30.207666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.762659, 13.817866, 30.576706>,  <11.608519, 14.032060, 29.922056>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.762659, 13.817866, 30.576706> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.703110, 14.212743, 30.599657>,  <11.667380, 14.449669, 30.613428>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.703110, 14.212743, 30.599657>,  <11.762659, 13.817866, 30.576706>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.703110, 14.212743, 30.599657> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312955, -0.102078, 0.944266,
		0.938027, 0.122621, 0.324143,
		-0.148874, 0.987190, 0.057377,
		11.658447, 14.508900, 30.616871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.051844, 13.951071, 31.303284>,  <11.762659, 13.817866, 30.576706>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.051844, 13.951071, 31.303284> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.822982, 14.257000, 31.184837>,  <11.685665, 14.440557, 31.113770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.822982, 14.257000, 31.184837>,  <12.051844, 13.951071, 31.303284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.822982, 14.257000, 31.184837> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416134, 0.040401, 0.908405,
		0.706733, 0.642971, 0.295154,
		-0.572154, 0.764824, -0.296115,
		11.651336, 14.486447, 31.096003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.954488, 14.221622, 32.009529>,  <12.051844, 13.951071, 31.303284>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.954488, 14.221622, 32.009529> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.688020, 14.384882, 31.759848>,  <11.528139, 14.482839, 31.610039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.688020, 14.384882, 31.759848>,  <11.954488, 14.221622, 32.009529>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.688020, 14.384882, 31.759848> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522234, 0.342232, 0.781120,
		0.532438, 0.846339, -0.014834,
		-0.666169, 0.408151, -0.624204,
		11.488169, 14.507327, 31.572586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.782442, 14.776142, 32.427696>,  <11.954488, 14.221622, 32.009529>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.782442, 14.776142, 32.427696> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.493646, 14.743709, 32.152843>,  <11.320368, 14.724248, 31.987930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.493646, 14.743709, 32.152843>,  <11.782442, 14.776142, 32.427696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.493646, 14.743709, 32.152843> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689126, 0.173162, 0.703647,
		0.061931, 0.981550, -0.180898,
		-0.721990, -0.081084, -0.687136,
		11.277049, 14.719383, 31.946703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.357714, 15.383970, 32.464619>,  <11.782442, 14.776142, 32.427696>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.357714, 15.383970, 32.464619> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.146207, 15.074217, 32.325630>,  <11.019302, 14.888365, 32.242237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.146207, 15.074217, 32.325630>,  <11.357714, 15.383970, 32.464619>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.146207, 15.074217, 32.325630> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631359, 0.085248, 0.770791,
		-0.567267, 0.626947, -0.533990,
		-0.528767, -0.774384, -0.347471,
		10.987576, 14.841902, 32.221390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.672509, 15.660080, 32.358212>,  <11.357714, 15.383970, 32.464619>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.672509, 15.660080, 32.358212> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.657380, 15.262053, 32.394894>,  <10.648303, 15.023236, 32.416901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.657380, 15.262053, 32.394894>,  <10.672509, 15.660080, 32.358212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.657380, 15.262053, 32.394894> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640205, 0.094589, 0.762359,
		-0.767273, -0.029873, -0.640625,
		-0.037822, -0.995068, 0.091701,
		10.646033, 14.963532, 32.422405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.054962, 15.513711, 32.557640>,  <10.672509, 15.660080, 32.358212>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.054962, 15.513711, 32.557640> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.230517, 15.166642, 32.651039>,  <10.335851, 14.958401, 32.707081>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.230517, 15.166642, 32.651039>,  <10.054962, 15.513711, 32.557640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.230517, 15.166642, 32.651039> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495864, -0.017168, 0.868231,
		-0.749330, -0.496841, -0.437782,
		0.438889, -0.867672, 0.233502,
		10.362184, 14.906341, 32.721088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.852400, 15.940576, 31.997961>,  <10.054962, 15.513711, 32.557640>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.852400, 15.940576, 31.997961> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.611256, 16.237642, 31.881336>,  <9.466569, 16.415882, 31.811361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.611256, 16.237642, 31.881336>,  <9.852400, 15.940576, 31.997961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.611256, 16.237642, 31.881336> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117131, -0.279090, -0.953095,
		-0.789203, -0.608733, 0.081263,
		-0.602860, 0.742666, -0.291560,
		9.430398, 16.460442, 31.793869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.561927, 15.704498, 31.445723>,  <9.852400, 15.940576, 31.997961>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.561927, 15.704498, 31.445723> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.450315, 16.080826, 31.368778>,  <9.383348, 16.306622, 31.322611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.450315, 16.080826, 31.368778>,  <9.561927, 15.704498, 31.445723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.450315, 16.080826, 31.368778> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090415, -0.173689, -0.980641,
		-0.956017, -0.291019, -0.036600,
		-0.279028, 0.940819, -0.192362,
		9.366607, 16.363071, 31.311069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.016423, 15.686752, 30.940477>,  <9.561927, 15.704498, 31.445723>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.016423, 15.686752, 30.940477> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.176442, 16.053165, 30.928841>,  <9.272453, 16.273014, 30.921860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.176442, 16.053165, 30.928841>,  <9.016423, 15.686752, 30.940477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.176442, 16.053165, 30.928841> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042203, -0.050119, -0.997851,
		-0.915523, 0.397959, -0.058709,
		0.400046, 0.916033, -0.029090,
		9.296456, 16.327976, 30.920113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.763783, 15.863751, 30.306730>,  <9.016423, 15.686752, 30.940477>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.763783, 15.863751, 30.306730> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.013276, 16.165483, 30.388653>,  <9.162971, 16.346523, 30.437807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.013276, 16.165483, 30.388653>,  <8.763783, 15.863751, 30.306730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.013276, 16.165483, 30.388653> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127383, 0.160424, -0.978794,
		-0.771190, 0.636593, 0.003973,
		0.623731, 0.754330, 0.204808,
		9.200396, 16.391783, 30.450096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.379807, 16.423725, 29.976986>,  <8.763783, 15.863751, 30.306730>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.379807, 16.423725, 29.976986> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.772379, 16.490095, 30.015493>,  <9.007922, 16.529917, 30.038597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.772379, 16.490095, 30.015493>,  <8.379807, 16.423725, 29.976986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.772379, 16.490095, 30.015493> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040916, 0.309229, -0.950107,
		-0.187413, 0.936401, 0.296697,
		0.981429, 0.165923, 0.096267,
		9.066808, 16.539871, 30.044374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.564707, 17.030924, 29.647993>,  <8.379807, 16.423725, 29.976986>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.564707, 17.030924, 29.647993> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.928607, 16.866198, 29.669024>,  <9.146947, 16.767363, 29.681643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.928607, 16.866198, 29.669024>,  <8.564707, 17.030924, 29.647993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.928607, 16.866198, 29.669024> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121566, 0.143154, -0.982206,
		0.396960, 0.899953, 0.180297,
		0.909750, -0.411815, 0.052577,
		9.201532, 16.742653, 29.684797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.016786, 17.475119, 29.352318>,  <8.564707, 17.030924, 29.647993>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.016786, 17.475119, 29.352318> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.224707, 17.133423, 29.348742>,  <9.349460, 16.928406, 29.346596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.224707, 17.133423, 29.348742>,  <9.016786, 17.475119, 29.352318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.224707, 17.133423, 29.348742> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251910, 0.163268, -0.953879,
		0.816301, 0.493577, 0.300059,
		0.519803, -0.854240, -0.008939,
		9.380648, 16.877151, 29.346060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.401495, 17.894783, 29.788202>,  <9.016786, 17.475119, 29.352318>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.401495, 17.894783, 29.788202> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.608064, 18.236309, 29.761942>,  <9.732005, 18.441225, 29.746185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.608064, 18.236309, 29.761942>,  <9.401495, 17.894783, 29.788202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.608064, 18.236309, 29.761942> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185718, -0.036827, 0.981913,
		0.835953, -0.519275, -0.177586,
		0.516422, 0.853814, -0.065653,
		9.762990, 18.492453, 29.742247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.061587, 17.735039, 30.099951>,  <9.401495, 17.894783, 29.788202>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.061587, 17.735039, 30.099951> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.957087, 18.120895, 30.113869>,  <9.894386, 18.352409, 30.122219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.957087, 18.120895, 30.113869>,  <10.061587, 17.735039, 30.099951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.957087, 18.120895, 30.113869> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157652, 0.007079, 0.987470,
		0.952309, 0.263465, -0.153927,
		-0.261253, 0.964643, 0.034794,
		9.878711, 18.410288, 30.124308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.535705, 17.937326, 30.640713>,  <10.061587, 17.735039, 30.099951>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.535705, 17.937326, 30.640713> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.265981, 18.230333, 30.603359>,  <10.104146, 18.406137, 30.580946>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.265981, 18.230333, 30.603359>,  <10.535705, 17.937326, 30.640713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.265981, 18.230333, 30.603359> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062453, 0.182581, 0.981205,
		0.735802, 0.655805, -0.168865,
		-0.674310, 0.732519, -0.093386,
		10.063687, 18.450089, 30.575344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.799129, 18.553404, 30.955439>,  <10.535705, 17.937326, 30.640713>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.799129, 18.553404, 30.955439> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.407612, 18.634220, 30.968960>,  <10.172701, 18.682711, 30.977072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.407612, 18.634220, 30.968960>,  <10.799129, 18.553404, 30.955439>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.407612, 18.634220, 30.968960> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102419, 0.339759, 0.934919,
		0.177407, 0.918555, -0.353247,
		-0.978794, 0.202040, 0.033802,
		10.113974, 18.694832, 30.979101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.754776, 19.336903, 31.087551>,  <10.799129, 18.553404, 30.955439>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.754776, 19.336903, 31.087551> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.421215, 19.153334, 31.210188>,  <10.221079, 19.043192, 31.283770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.421215, 19.153334, 31.210188>,  <10.754776, 19.336903, 31.087551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.421215, 19.153334, 31.210188> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073116, 0.458755, 0.885549,
		-0.547048, 0.760878, -0.349003,
		-0.833902, -0.458921, 0.306594,
		10.171044, 19.015657, 31.302166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.285374, 19.849222, 31.381208>,  <10.754776, 19.336903, 31.087551>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.285374, 19.849222, 31.381208> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.168934, 19.503178, 31.544594>,  <10.099070, 19.295551, 31.642626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.168934, 19.503178, 31.544594>,  <10.285374, 19.849222, 31.381208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.168934, 19.503178, 31.544594> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128015, 0.387893, 0.912771,
		-0.948089, 0.317997, -0.002168,
		-0.291100, -0.865111, 0.408465,
		10.081604, 19.243645, 31.667133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.829671, 20.077454, 31.895618>,  <10.285374, 19.849222, 31.381208>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.829671, 20.077454, 31.895618> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.908305, 19.703455, 32.013691>,  <9.955485, 19.479055, 32.084534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.908305, 19.703455, 32.013691>,  <9.829671, 20.077454, 31.895618>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.908305, 19.703455, 32.013691> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025007, 0.296177, 0.954806,
		-0.980168, -0.195083, 0.034842,
		0.196586, -0.934999, 0.295182,
		9.967281, 19.422955, 32.102245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.386073, 19.908175, 32.482967>,  <9.829671, 20.077454, 31.895618>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.386073, 19.908175, 32.482967> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.675385, 19.634701, 32.521839>,  <9.848971, 19.470617, 32.545162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.675385, 19.634701, 32.521839>,  <9.386073, 19.908175, 32.482967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.675385, 19.634701, 32.521839> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038812, 0.180749, 0.982763,
		-0.689464, -0.707041, 0.157267,
		0.723279, -0.683683, 0.097178,
		9.892368, 19.429596, 32.550991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.312632, 19.696646, 33.214867>,  <9.386073, 19.908175, 32.482967>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.312632, 19.696646, 33.214867> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.660064, 19.535620, 33.099274>,  <9.868523, 19.439003, 33.029919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.660064, 19.535620, 33.099274>,  <9.312632, 19.696646, 33.214867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.660064, 19.535620, 33.099274> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351858, 0.090367, 0.931681,
		-0.348949, -0.910919, 0.220137,
		0.868580, -0.402566, -0.288981,
		9.920638, 19.414850, 33.012581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<15.300167, 17.777008, 17.383486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.561167, 17.805597, 17.685251>,  <15.717767, 17.822752, 17.866310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.561167, 17.805597, 17.685251>,  <15.300167, 17.777008, 17.383486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.561167, 17.805597, 17.685251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757051, 0.017539, 0.653120,
		0.033445, -0.997289, 0.065548,
		0.652499, 0.071466, 0.754412,
		15.756916, 17.827040, 17.911575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.039825, 17.310169, 17.827959>,  <15.300167, 17.777008, 17.383486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.039825, 17.310169, 17.827959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.286112, 17.535538, 18.048304>,  <15.433884, 17.670759, 18.180511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.286112, 17.535538, 18.048304>,  <15.039825, 17.310169, 17.827959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.286112, 17.535538, 18.048304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684050, 0.035197, 0.728586,
		0.391112, -0.825420, 0.407080,
		0.615717, 0.563421, 0.550862,
		15.470827, 17.704565, 18.213562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.070087, 16.947113, 18.469309>,  <15.039825, 17.310169, 17.827959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.070087, 16.947113, 18.469309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.165321, 17.324905, 18.559885>,  <15.222462, 17.551580, 18.614231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.165321, 17.324905, 18.559885>,  <15.070087, 16.947113, 18.469309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.165321, 17.324905, 18.559885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822348, 0.071979, 0.564414,
		0.516779, -0.320589, 0.793827,
		0.238084, 0.944479, 0.226439,
		15.236747, 17.608250, 18.627817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.040073, 17.010586, 19.160622>,  <15.070087, 16.947113, 18.469309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.040073, 17.010586, 19.160622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.018518, 17.395428, 19.053699>,  <15.005586, 17.626333, 18.989546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.018518, 17.395428, 19.053699>,  <15.040073, 17.010586, 19.160622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.018518, 17.395428, 19.053699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738061, 0.141931, 0.659638,
		0.672579, 0.232832, 0.702443,
		-0.053886, 0.962104, -0.267305,
		15.002353, 17.684059, 18.973509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.117542, 17.455879, 19.734240>,  <15.040073, 17.010586, 19.160622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.117542, 17.455879, 19.734240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.916053, 17.672716, 19.465197>,  <14.795159, 17.802818, 19.303770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.916053, 17.672716, 19.465197>,  <15.117542, 17.455879, 19.734240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.916053, 17.672716, 19.465197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620402, 0.314794, 0.718335,
		0.601136, 0.779129, 0.177745,
		-0.503723, 0.542091, -0.672608,
		14.764936, 17.835344, 19.263414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.934465, 18.014940, 20.146873>,  <15.117542, 17.455879, 19.734240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.934465, 18.014940, 20.146873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.706518, 18.062387, 19.821621>,  <14.569750, 18.090855, 19.626471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.706518, 18.062387, 19.821621>,  <14.934465, 18.014940, 20.146873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.706518, 18.062387, 19.821621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771780, 0.262498, 0.579181,
		0.282146, 0.957614, -0.058044,
		-0.569868, 0.118616, -0.813130,
		14.535558, 18.097973, 19.577682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.725715, 18.691069, 20.133295>,  <14.934465, 18.014940, 20.146873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.725715, 18.691069, 20.133295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.441009, 18.499537, 19.927729>,  <14.270185, 18.384617, 19.804388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.441009, 18.499537, 19.927729>,  <14.725715, 18.691069, 20.133295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.441009, 18.499537, 19.927729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702415, 0.483549, 0.522296,
		-0.001589, 0.732734, -0.680513,
		-0.711765, -0.478833, -0.513916,
		14.227479, 18.355886, 19.773554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.261075, 19.235861, 20.130569>,  <14.725715, 18.691069, 20.133295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.261075, 19.235861, 20.130569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.070701, 18.898842, 20.029694>,  <13.956476, 18.696630, 19.969168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.070701, 18.898842, 20.029694>,  <14.261075, 19.235861, 20.130569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.070701, 18.898842, 20.029694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799804, 0.295381, 0.522556,
		-0.365786, 0.450404, -0.814455,
		-0.475936, -0.842547, -0.252189,
		13.927920, 18.646078, 19.954037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.433148, 19.437300, 20.060827>,  <14.261075, 19.235861, 20.130569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.433148, 19.437300, 20.060827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.474201, 19.043095, 20.114832>,  <13.498833, 18.806572, 20.147236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.474201, 19.043095, 20.114832>,  <13.433148, 19.437300, 20.060827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.474201, 19.043095, 20.114832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678067, 0.029996, 0.734388,
		-0.727800, -0.166919, -0.665166,
		0.102632, -0.985514, 0.135013,
		13.504991, 18.747440, 20.155336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.696751, 19.187057, 20.103813>,  <13.433148, 19.437300, 20.060827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.696751, 19.187057, 20.103813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.929455, 18.902166, 20.260933>,  <13.069077, 18.731232, 20.355204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.929455, 18.902166, 20.260933>,  <12.696751, 19.187057, 20.103813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.929455, 18.902166, 20.260933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470115, 0.099650, 0.876961,
		-0.663737, -0.694841, -0.276856,
		0.581760, -0.712226, 0.392797,
		13.103983, 18.688499, 20.378773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.268948, 18.632494, 20.331856>,  <12.696751, 19.187057, 20.103813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.268948, 18.632494, 20.331856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.588375, 18.568327, 20.563908>,  <12.780032, 18.529827, 20.703138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.588375, 18.568327, 20.563908>,  <12.268948, 18.632494, 20.331856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.588375, 18.568327, 20.563908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600406, -0.144378, 0.786554,
		-0.042419, -0.976433, -0.211612,
		0.798570, -0.160418, 0.580132,
		12.827946, 18.520201, 20.737947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.024796, 18.138147, 20.684469>,  <12.268948, 18.632494, 20.331856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.024796, 18.138147, 20.684469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.344803, 18.262138, 20.889950>,  <12.536807, 18.336533, 21.013239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.344803, 18.262138, 20.889950>,  <12.024796, 18.138147, 20.684469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.344803, 18.262138, 20.889950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533570, -0.023961, 0.845416,
		0.274369, -0.950442, 0.146225,
		0.800016, 0.309978, 0.513701,
		12.584807, 18.355131, 21.044060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.129396, 17.472496, 20.991085>,  <12.024796, 18.138147, 20.684469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.129396, 17.472496, 20.991085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.792257, 17.259506, 20.959902>,  <11.589973, 17.131712, 20.941193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.792257, 17.259506, 20.959902>,  <12.129396, 17.472496, 20.991085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.792257, 17.259506, 20.959902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159571, -0.108936, -0.981157,
		0.513949, -0.839407, 0.176784,
		-0.842848, -0.532475, -0.077957,
		11.539403, 17.099764, 20.936514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.309213, 16.948729, 20.498737>,  <12.129396, 17.472496, 20.991085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.309213, 16.948729, 20.498737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.909242, 16.943956, 20.497869>,  <11.669259, 16.941093, 20.497349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.909242, 16.943956, 20.497869>,  <12.309213, 16.948729, 20.498737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.909242, 16.943956, 20.497869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001326, 0.070340, -0.997522,
		0.012050, -0.997452, -0.070319,
		-0.999927, -0.011927, -0.002170,
		11.609263, 16.940378, 20.497219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.175854, 16.419325, 20.069908>,  <12.309213, 16.948729, 20.498737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.175854, 16.419325, 20.069908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.838514, 16.634012, 20.059340>,  <11.636111, 16.762825, 20.052998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.838514, 16.634012, 20.059340>,  <12.175854, 16.419325, 20.069908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.838514, 16.634012, 20.059340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075629, -0.167232, -0.983013,
		-0.532020, -0.827023, 0.181626,
		-0.843348, 0.536718, -0.026424,
		11.585510, 16.795027, 20.051413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.711240, 16.003296, 19.908318>,  <12.175854, 16.419325, 20.069908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.711240, 16.003296, 19.908318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.561003, 16.354990, 19.791100>,  <11.470860, 16.566006, 19.720768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.561003, 16.354990, 19.791100>,  <11.711240, 16.003296, 19.908318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.561003, 16.354990, 19.791100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061277, -0.339063, -0.938766,
		-0.924757, -0.334637, 0.181227,
		-0.375593, 0.879235, -0.293045,
		11.448325, 16.618761, 19.703186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.993320, 15.823627, 19.653309>,  <11.711240, 16.003296, 19.908318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.993320, 15.823627, 19.653309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.106701, 16.178793, 19.508387>,  <11.174729, 16.391891, 19.421432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.106701, 16.178793, 19.508387>,  <10.993320, 15.823627, 19.653309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.106701, 16.178793, 19.508387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491982, -0.189655, -0.849697,
		-0.823170, 0.419096, 0.383079,
		0.283452, 0.887913, -0.362306,
		11.191736, 16.445168, 19.399694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.339086, 16.148556, 19.308393>,  <10.993320, 15.823627, 19.653309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.339086, 16.148556, 19.308393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.679016, 16.296747, 19.158438>,  <10.882975, 16.385662, 19.068464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.679016, 16.296747, 19.158438>,  <10.339086, 16.148556, 19.308393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.679016, 16.296747, 19.158438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317257, -0.208423, -0.925153,
		-0.420885, 0.905155, -0.059586,
		0.849826, 0.370479, -0.374888,
		10.933964, 16.407890, 19.045971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.126542, 16.543850, 18.668083>,  <10.339086, 16.148556, 19.308393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.126542, 16.543850, 18.668083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.520385, 16.491726, 18.621487>,  <10.756690, 16.460451, 18.593529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.520385, 16.491726, 18.621487>,  <10.126542, 16.543850, 18.668083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.520385, 16.491726, 18.621487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144501, -0.231911, -0.961944,
		0.098336, 0.963969, -0.247171,
		0.984606, -0.130311, -0.116490,
		10.815766, 16.452633, 18.586540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.402340, 16.927229, 17.998932>,  <10.126542, 16.543850, 18.668083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.402340, 16.927229, 17.998932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.658157, 16.629700, 18.076607>,  <10.811647, 16.451181, 18.123211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.658157, 16.629700, 18.076607>,  <10.402340, 16.927229, 17.998932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.658157, 16.629700, 18.076607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113518, -0.158455, -0.980819,
		0.760327, 0.649320, -0.016901,
		0.639544, -0.743825, 0.194187,
		10.850020, 16.406551, 18.134863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.943236, 17.036776, 17.527470>,  <10.402340, 16.927229, 17.998932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.943236, 17.036776, 17.527470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.983232, 16.655422, 17.641357>,  <11.007229, 16.426611, 17.709690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.983232, 16.655422, 17.641357>,  <10.943236, 17.036776, 17.527470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.983232, 16.655422, 17.641357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239694, -0.254647, -0.936857,
		0.965686, 0.161921, 0.203058,
		0.099989, -0.953382, 0.284720,
		11.013228, 16.369408, 17.726774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.221481, 16.723295, 16.967752>,  <10.943236, 17.036776, 17.527470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.221481, 16.723295, 16.967752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.232586, 16.407709, 17.213276>,  <11.239248, 16.218357, 17.360590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.232586, 16.407709, 17.213276>,  <11.221481, 16.723295, 16.967752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.232586, 16.407709, 17.213276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274882, -0.584346, -0.763531,
		0.961077, 0.189922, 0.200651,
		0.027762, -0.788967, 0.613808,
		11.240914, 16.171019, 17.397419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.906416, 16.408463, 16.890469>,  <11.221481, 16.723295, 16.967752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.906416, 16.408463, 16.890469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.631078, 16.140564, 17.001909>,  <11.465875, 15.979825, 17.068773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.631078, 16.140564, 17.001909>,  <11.906416, 16.408463, 16.890469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.631078, 16.140564, 17.001909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297473, -0.610929, -0.733673,
		0.661581, -0.422144, 0.619762,
		-0.688346, -0.669746, 0.278603,
		11.424574, 15.939640, 17.085489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.209038, 15.786132, 16.929270>,  <11.906416, 16.408463, 16.890469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.209038, 15.786132, 16.929270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.829252, 15.671056, 16.879068>,  <11.601380, 15.602011, 16.848948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.829252, 15.671056, 16.879068>,  <12.209038, 15.786132, 16.929270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.829252, 15.671056, 16.879068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276650, -0.578171, -0.767583,
		0.148262, -0.763514, 0.628542,
		-0.949465, -0.287690, -0.125505,
		11.544413, 15.584749, 16.841417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.321054, 15.124903, 16.816334>,  <12.209038, 15.786132, 16.929270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.321054, 15.124903, 16.816334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.980504, 15.258523, 16.654558>,  <11.776174, 15.338695, 16.557493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.980504, 15.258523, 16.654558>,  <12.321054, 15.124903, 16.816334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.980504, 15.258523, 16.654558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143934, -0.592648, -0.792497,
		-0.504421, -0.732926, 0.456486,
		-0.851377, 0.334049, -0.404437,
		11.725091, 15.358738, 16.533228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.909812, 14.641345, 16.761503>,  <12.321054, 15.124903, 16.816334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.909812, 14.641345, 16.761503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.788428, 14.897053, 16.478874>,  <11.715598, 15.050478, 16.309296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.788428, 14.897053, 16.478874>,  <11.909812, 14.641345, 16.761503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.788428, 14.897053, 16.478874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249635, -0.662301, -0.706428,
		-0.919562, -0.390758, 0.041397,
		-0.303459, 0.639270, -0.706573,
		11.697391, 15.088834, 16.266903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.672556, 14.528022, 16.983749>,  <11.909812, 14.641345, 16.761503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.672556, 14.528022, 16.983749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.037778, 14.657524, 17.082956>,  <13.256911, 14.735226, 17.142481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.037778, 14.657524, 17.082956>,  <12.672556, 14.528022, 16.983749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.037778, 14.657524, 17.082956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281252, 0.059454, 0.957790,
		0.295346, -0.944270, 0.145343,
		0.913054, 0.323757, 0.248019,
		13.311694, 14.754651, 17.157362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.036419, 14.087074, 17.531235>,  <12.672556, 14.528022, 16.983749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.036419, 14.087074, 17.531235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.273943, 13.800751, 17.678207>,  <13.416457, 13.628957, 17.766392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.273943, 13.800751, 17.678207>,  <13.036419, 14.087074, 17.531235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.273943, 13.800751, 17.678207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248515, 0.271165, 0.929898,
		-0.765264, -0.643496, -0.016868,
		0.593811, -0.715809, 0.367431,
		13.452086, 13.586008, 17.788437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.554142, 13.671364, 18.083401>,  <13.036419, 14.087074, 17.531235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.554142, 13.671364, 18.083401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.950200, 13.646339, 18.133520>,  <13.187835, 13.631325, 18.163591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.950200, 13.646339, 18.133520>,  <12.554142, 13.671364, 18.083401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.950200, 13.646339, 18.133520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121006, 0.068285, 0.990300,
		-0.070514, -0.995702, 0.060041,
		0.990144, -0.062565, 0.125301,
		13.247244, 13.627571, 18.171110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.704749, 13.169606, 18.665987>,  <12.554142, 13.671364, 18.083401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.704749, 13.169606, 18.665987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.026164, 13.406829, 18.645540>,  <13.219013, 13.549162, 18.633272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.026164, 13.406829, 18.645540>,  <12.704749, 13.169606, 18.665987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.026164, 13.406829, 18.645540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029059, 0.124850, 0.991750,
		0.594545, -0.795423, 0.117555,
		0.803537, 0.593055, -0.051115,
		13.267225, 13.584745, 18.630205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.122126, 12.997837, 19.161537>,  <12.704749, 13.169606, 18.665987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.122126, 12.997837, 19.161537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.247086, 13.368389, 19.077415>,  <13.322062, 13.590720, 19.026943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.247086, 13.368389, 19.077415>,  <13.122126, 12.997837, 19.161537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.247086, 13.368389, 19.077415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080902, 0.194634, 0.977534,
		0.946499, -0.322395, -0.014143,
		0.312400, 0.926379, -0.210303,
		13.340806, 13.646303, 19.014324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.674831, 13.204652, 19.663395>,  <13.122126, 12.997837, 19.161537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.674831, 13.204652, 19.663395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.569422, 13.562037, 19.517914>,  <13.506176, 13.776468, 19.430626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.569422, 13.562037, 19.517914>,  <13.674831, 13.204652, 19.663395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.569422, 13.562037, 19.517914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142660, 0.408979, 0.901324,
		0.954046, 0.185635, -0.235237,
		-0.263524, 0.893463, -0.363702,
		13.490365, 13.830076, 19.408804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.194578, 13.656028, 19.852081>,  <13.674831, 13.204652, 19.663395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.194578, 13.656028, 19.852081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.887096, 13.901028, 19.778393>,  <13.702607, 14.048028, 19.734180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.887096, 13.901028, 19.778393>,  <14.194578, 13.656028, 19.852081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.887096, 13.901028, 19.778393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096908, 0.396232, 0.913022,
		0.632221, 0.683991, -0.363941,
		-0.768704, 0.612501, -0.184222,
		13.656486, 14.084778, 19.723125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.433458, 14.442190, 19.959190>,  <14.194578, 13.656028, 19.852081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.433458, 14.442190, 19.959190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.039093, 14.397014, 20.008533>,  <13.802474, 14.369907, 20.038139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.039093, 14.397014, 20.008533>,  <14.433458, 14.442190, 19.959190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.039093, 14.397014, 20.008533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075241, 0.359199, 0.930223,
		-0.149371, 0.926402, -0.345641,
		-0.985914, -0.112942, 0.123358,
		13.743319, 14.363132, 20.045540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.218672, 14.987127, 20.305246>,  <14.433458, 14.442190, 19.959190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.218672, 14.987127, 20.305246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.909799, 14.740961, 20.368486>,  <13.724475, 14.593261, 20.406431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.909799, 14.740961, 20.368486>,  <14.218672, 14.987127, 20.305246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.909799, 14.740961, 20.368486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083204, 0.344613, 0.935050,
		-0.629929, 0.708876, -0.317309,
		-0.772183, -0.615417, 0.158100,
		13.678144, 14.556336, 20.415916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.690137, 15.348201, 20.734566>,  <14.218672, 14.987127, 20.305246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.690137, 15.348201, 20.734566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.601360, 14.959788, 20.769983>,  <13.548094, 14.726741, 20.791235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.601360, 14.959788, 20.769983>,  <13.690137, 15.348201, 20.734566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.601360, 14.959788, 20.769983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220501, 0.138441, 0.965512,
		-0.949800, 0.194764, -0.244839,
		-0.221943, -0.971031, 0.088546,
		13.534778, 14.668479, 20.796547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.144403, 15.359622, 21.210154>,  <13.690137, 15.348201, 20.734566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.144403, 15.359622, 21.210154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.261446, 14.977171, 21.204475>,  <13.331672, 14.747701, 21.201069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.261446, 14.977171, 21.204475>,  <13.144403, 15.359622, 21.210154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.261446, 14.977171, 21.204475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140554, -0.057687, 0.988391,
		-0.945846, -0.287216, -0.151267,
		0.292608, -0.956127, -0.014194,
		13.349229, 14.690332, 21.200218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.608816, 14.942596, 21.516716>,  <13.144403, 15.359622, 21.210154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.608816, 14.942596, 21.516716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.943987, 14.729351, 21.563484>,  <13.145089, 14.601404, 21.591545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.943987, 14.729351, 21.563484>,  <12.608816, 14.942596, 21.516716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.943987, 14.729351, 21.563484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140820, -0.004209, 0.990026,
		-0.527304, -0.846034, -0.078600,
		0.837927, -0.533113, 0.116919,
		13.195365, 14.569417, 21.598560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.316682, 14.385724, 21.889776>,  <12.608816, 14.942596, 21.516716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.316682, 14.385724, 21.889776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.714864, 14.386057, 21.927868>,  <12.953773, 14.386256, 21.950724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.714864, 14.386057, 21.927868>,  <12.316682, 14.385724, 21.889776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.714864, 14.386057, 21.927868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093476, -0.182650, 0.978724,
		0.018208, -0.983178, -0.181742,
		0.995455, 0.000832, 0.095230,
		13.013500, 14.386306, 21.956436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.364495, 13.984279, 22.441500>,  <12.316682, 14.385724, 21.889776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.364495, 13.984279, 22.441500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.708065, 14.186291, 22.407570>,  <12.914207, 14.307498, 22.387213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.708065, 14.186291, 22.407570>,  <12.364495, 13.984279, 22.441500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.708065, 14.186291, 22.407570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181440, -0.145219, 0.972621,
		0.478884, -0.850797, -0.216365,
		0.858923, 0.505030, -0.084825,
		12.965742, 14.337800, 22.382122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.864978, 13.478244, 22.698483>,  <12.364495, 13.984279, 22.441500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.864978, 13.478244, 22.698483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.986311, 13.855898, 22.750015>,  <13.059111, 14.082490, 22.780935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.986311, 13.855898, 22.750015>,  <12.864978, 13.478244, 22.698483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.986311, 13.855898, 22.750015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048752, -0.150404, 0.987422,
		0.951636, -0.293237, -0.091652,
		0.303334, 0.944135, 0.128834,
		13.077312, 14.139138, 22.788666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.435346, 13.407357, 23.142860>,  <12.864978, 13.478244, 22.698483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.435346, 13.407357, 23.142860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.368231, 13.797385, 23.200943>,  <13.327962, 14.031403, 23.235792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.368231, 13.797385, 23.200943>,  <13.435346, 13.407357, 23.142860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.368231, 13.797385, 23.200943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144695, -0.121341, 0.982008,
		0.975147, 0.185778, -0.120729,
		-0.167786, 0.975071, 0.145206,
		13.317895, 14.089907, 23.244505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.830345, 13.574518, 23.726019>,  <13.435346, 13.407357, 23.142860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.830345, 13.574518, 23.726019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.564921, 13.873174, 23.707182>,  <13.405667, 14.052367, 23.695879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.564921, 13.873174, 23.707182>,  <13.830345, 13.574518, 23.726019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.564921, 13.873174, 23.707182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058528, 0.010947, 0.998226,
		0.745830, 0.665139, 0.036435,
		-0.663560, 0.746639, -0.047094,
		13.365853, 14.097165, 23.693054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.131071, 14.190719, 24.169546>,  <13.830345, 13.574518, 23.726019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.131071, 14.190719, 24.169546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.734879, 14.242613, 24.151133>,  <13.497165, 14.273749, 24.140083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.734879, 14.242613, 24.151133>,  <14.131071, 14.190719, 24.169546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.734879, 14.242613, 24.151133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014307, 0.235587, 0.971748,
		0.136915, 0.963155, -0.231488,
		-0.990479, 0.129735, -0.046035,
		13.437736, 14.281533, 24.137321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.121457, 14.829133, 24.616608>,  <14.131071, 14.190719, 24.169546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.121457, 14.829133, 24.616608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.751416, 14.679370, 24.591297>,  <13.529391, 14.589512, 24.576111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.751416, 14.679370, 24.591297>,  <14.121457, 14.829133, 24.616608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.751416, 14.679370, 24.591297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187147, 0.304574, 0.933922,
		-0.330396, 0.875815, -0.351832,
		-0.925102, -0.374409, -0.063276,
		13.473886, 14.567047, 24.572315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.623756, 15.302645, 24.856508>,  <14.121457, 14.829133, 24.616608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.623756, 15.302645, 24.856508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.451433, 14.943153, 24.889227>,  <13.348039, 14.727459, 24.908857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.451433, 14.943153, 24.889227>,  <13.623756, 15.302645, 24.856508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.451433, 14.943153, 24.889227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308630, 0.231901, 0.922480,
		-0.848028, 0.372168, -0.377280,
		-0.430809, -0.898728, 0.081796,
		13.322190, 14.673534, 24.913765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.963706, 15.522666, 25.054401>,  <13.623756, 15.302645, 24.856508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.963706, 15.522666, 25.054401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.022638, 15.137280, 25.143873>,  <13.057998, 14.906049, 25.197556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.022638, 15.137280, 25.143873>,  <12.963706, 15.522666, 25.054401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.022638, 15.137280, 25.143873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276775, 0.176952, 0.944502,
		-0.949574, -0.201062, -0.240592,
		0.147330, -0.963464, 0.223677,
		13.066837, 14.848242, 25.210976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.550567, 15.421069, 25.510212>,  <12.963706, 15.522666, 25.054401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.550567, 15.421069, 25.510212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.746304, 15.075862, 25.560404>,  <12.863746, 14.868738, 25.590519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.746304, 15.075862, 25.560404>,  <12.550567, 15.421069, 25.510212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.746304, 15.075862, 25.560404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263832, -0.009357, 0.964523,
		-0.831226, -0.505088, -0.232270,
		0.489342, -0.863017, 0.125481,
		12.893106, 14.816957, 25.598047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.170268, 14.936460, 25.993469>,  <12.550567, 15.421069, 25.510212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.170268, 14.936460, 25.993469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.547421, 14.805163, 26.016214>,  <12.773712, 14.726385, 26.029861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.547421, 14.805163, 26.016214>,  <12.170268, 14.936460, 25.993469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.547421, 14.805163, 26.016214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094302, -0.099288, 0.990580,
		-0.319504, -0.939361, -0.124570,
		0.942881, -0.328241, 0.056861,
		12.830285, 14.706691, 26.033272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.149518, 14.331484, 26.462030>,  <12.170268, 14.936460, 25.993469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.149518, 14.331484, 26.462030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.516737, 14.490057, 26.459867>,  <12.737068, 14.585201, 26.458570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.516737, 14.490057, 26.459867>,  <12.149518, 14.331484, 26.462030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.516737, 14.490057, 26.459867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017915, -0.027853, 0.999452,
		0.396066, -0.917641, -0.032672,
		0.918047, 0.396434, -0.005408,
		12.792151, 14.608987, 26.458244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.440866, 14.012619, 26.983435>,  <12.149518, 14.331484, 26.462030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.440866, 14.012619, 26.983435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.721882, 14.294597, 26.944462>,  <12.890491, 14.463783, 26.921078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.721882, 14.294597, 26.944462>,  <12.440866, 14.012619, 26.983435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.721882, 14.294597, 26.944462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236219, -0.101855, 0.966347,
		0.671297, -0.701911, -0.238079,
		0.702539, 0.704944, -0.097430,
		12.932644, 14.506080, 26.915234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.101401, 13.772033, 27.355629>,  <12.440866, 14.012619, 26.983435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.101401, 13.772033, 27.355629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.145901, 14.167766, 27.318005>,  <13.172601, 14.405205, 27.295429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.145901, 14.167766, 27.318005>,  <13.101401, 13.772033, 27.355629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.145901, 14.167766, 27.318005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116712, 0.080988, 0.989858,
		0.986916, -0.121098, -0.106458,
		0.111248, 0.989331, -0.094062,
		13.179276, 14.464565, 27.289785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.644449, 13.859628, 27.750402>,  <13.101401, 13.772033, 27.355629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.644449, 13.859628, 27.750402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.464168, 14.214992, 27.715546>,  <13.355999, 14.428210, 27.694632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.464168, 14.214992, 27.715546>,  <13.644449, 13.859628, 27.750402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.464168, 14.214992, 27.715546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199397, 0.195348, 0.960250,
		0.870119, 0.415412, -0.265191,
		-0.450704, 0.888410, -0.087144,
		13.328957, 14.481515, 27.689402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.131351, 14.384815, 27.949984>,  <13.644449, 13.859628, 27.750402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.131351, 14.384815, 27.949984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.749839, 14.498896, 27.987844>,  <13.520931, 14.567344, 28.010561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.749839, 14.498896, 27.987844>,  <14.131351, 14.384815, 27.949984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.749839, 14.498896, 27.987844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173171, 0.264240, 0.948783,
		0.245583, 0.921324, -0.301416,
		-0.953782, 0.285201, 0.094653,
		13.463704, 14.584456, 28.016241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
