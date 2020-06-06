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
	<24.120033, 34.798500, 35.027111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.381256, 35.053360, 35.190845>,  <24.537991, 35.206276, 35.289085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.381256, 35.053360, 35.190845>,  <24.120033, 34.798500, 35.027111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.381256, 35.053360, 35.190845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037407, -0.566997, 0.822870,
		0.756384, -0.522070, -0.394115,
		0.653058, 0.637148, 0.409338,
		24.577173, 35.244503, 35.313648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.419046, 34.424301, 35.651554>,  <24.120033, 34.798500, 35.027111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.419046, 34.424301, 35.651554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.598528, 34.781773, 35.652462>,  <24.706217, 34.996254, 35.653008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.598528, 34.781773, 35.652462>,  <24.419046, 34.424301, 35.651554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.598528, 34.781773, 35.652462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418088, -0.212158, 0.883285,
		0.789854, -0.395383, -0.468832,
		0.448702, 0.893679, 0.002269,
		24.733139, 35.049877, 35.653141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.130356, 34.350548, 35.735535>,  <24.419046, 34.424301, 35.651554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.130356, 34.350548, 35.735535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.030977, 34.711082, 35.877445>,  <24.971350, 34.927402, 35.962593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.030977, 34.711082, 35.877445>,  <25.130356, 34.350548, 35.735535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.030977, 34.711082, 35.877445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558302, -0.166056, 0.812850,
		0.791563, 0.400025, -0.461961,
		-0.248449, 0.901335, 0.354779,
		24.956442, 34.981483, 35.983879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.767208, 34.635300, 35.872936>,  <25.130356, 34.350548, 35.735535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.767208, 34.635300, 35.872936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.492273, 34.823956, 36.093887>,  <25.327312, 34.937149, 36.226460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.492273, 34.823956, 36.093887>,  <25.767208, 34.635300, 35.872936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.492273, 34.823956, 36.093887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593700, -0.073296, 0.801342,
		0.418432, 0.878739, -0.229633,
		-0.687339, 0.471640, 0.552377,
		25.286072, 34.965446, 36.259602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.207214, 34.106033, 35.548073>,  <25.767208, 34.635300, 35.872936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.207214, 34.106033, 35.548073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.494482, 33.961899, 35.786194>,  <26.666843, 33.875416, 35.929066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.494482, 33.961899, 35.786194>,  <26.207214, 34.106033, 35.548073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.494482, 33.961899, 35.786194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311741, 0.598237, 0.738194,
		-0.622134, -0.715729, 0.317303,
		0.718169, -0.360340, 0.595306,
		26.709932, 33.853798, 35.964787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.910818, 33.969421, 36.189800>,  <26.207214, 34.106033, 35.548073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.910818, 33.969421, 36.189800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.295958, 33.954113, 36.296726>,  <26.527040, 33.944927, 36.360882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.295958, 33.954113, 36.296726>,  <25.910818, 33.969421, 36.189800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.295958, 33.954113, 36.296726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205892, 0.536472, 0.818417,
		-0.174728, -0.843050, 0.508661,
		0.962849, -0.038271, 0.267314,
		26.584812, 33.942631, 36.376919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.858488, 33.741501, 36.807003>,  <25.910818, 33.969421, 36.189800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.858488, 33.741501, 36.807003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.203333, 33.943966, 36.797482>,  <26.410240, 34.065445, 36.791771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.203333, 33.943966, 36.797482>,  <25.858488, 33.741501, 36.807003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.203333, 33.943966, 36.797482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296384, 0.541796, 0.786520,
		0.411000, -0.671014, 0.617106,
		0.862111, 0.506160, -0.023800,
		26.461966, 34.095814, 36.790340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.285059, 33.649570, 37.460487>,  <25.858488, 33.741501, 36.807003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.285059, 33.649570, 37.460487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.434654, 33.989586, 37.312130>,  <26.524410, 34.193596, 37.223114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.434654, 33.989586, 37.312130>,  <26.285059, 33.649570, 37.460487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.434654, 33.989586, 37.312130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150196, 0.450148, 0.880231,
		0.915191, -0.273488, 0.296022,
		0.373987, 0.850042, -0.370895,
		26.546850, 34.244598, 37.200863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.614920, 33.909584, 37.918842>,  <26.285059, 33.649570, 37.460487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.614920, 33.909584, 37.918842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.617195, 34.228249, 37.677082>,  <26.618561, 34.419449, 37.532028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.617195, 34.228249, 37.677082>,  <26.614920, 33.909584, 37.918842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.617195, 34.228249, 37.677082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016575, 0.604250, 0.796622,
		0.999847, -0.014548, -0.009768,
		0.005687, 0.796662, -0.604398,
		26.618900, 34.467247, 37.495762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.225073, 34.286045, 38.117577>,  <26.614920, 33.909584, 37.918842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.225073, 34.286045, 38.117577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.951836, 34.530807, 37.958103>,  <26.787893, 34.677666, 37.862419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.951836, 34.530807, 37.958103>,  <27.225073, 34.286045, 38.117577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.951836, 34.530807, 37.958103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088383, 0.472625, 0.876820,
		0.724963, 0.634188, -0.268765,
		-0.683094, 0.611908, -0.398687,
		26.746908, 34.714378, 37.838497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.354443, 34.926880, 38.435711>,  <27.225073, 34.286045, 38.117577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.354443, 34.926880, 38.435711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.993385, 34.981274, 38.272377>,  <26.776751, 35.013912, 38.174377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.993385, 34.981274, 38.272377>,  <27.354443, 34.926880, 38.435711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.993385, 34.981274, 38.272377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251632, 0.602968, 0.757041,
		0.349163, 0.786090, -0.510047,
		-0.902644, 0.135986, -0.408339,
		26.722591, 35.022068, 38.149876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.216038, 35.666794, 38.477516>,  <27.354443, 34.926880, 38.435711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.216038, 35.666794, 38.477516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.855915, 35.492847, 38.470135>,  <26.639841, 35.388477, 38.465706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.855915, 35.492847, 38.470135>,  <27.216038, 35.666794, 38.477516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.855915, 35.492847, 38.470135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246748, 0.474997, 0.844686,
		-0.358563, 0.765028, -0.534945,
		-0.900304, -0.434869, -0.018453,
		26.585823, 35.362385, 38.464600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.702837, 36.307541, 38.622589>,  <27.216038, 35.666794, 38.477516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.702837, 36.307541, 38.622589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.546064, 35.949581, 38.707962>,  <26.452002, 35.734806, 38.759186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.546064, 35.949581, 38.707962>,  <26.702837, 36.307541, 38.622589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.546064, 35.949581, 38.707962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398053, 0.374105, 0.837615,
		-0.829424, 0.243330, -0.502839,
		-0.391931, -0.894895, 0.213433,
		26.428486, 35.681114, 38.771992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.160984, 36.532940, 39.024288>,  <26.702837, 36.307541, 38.622589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.160984, 36.532940, 39.024288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.152283, 36.143627, 39.115715>,  <26.147062, 35.910038, 39.170570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.152283, 36.143627, 39.115715>,  <26.160984, 36.532940, 39.024288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.152283, 36.143627, 39.115715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275897, 0.225586, 0.934340,
		-0.960941, -0.042737, -0.273433,
		-0.021752, -0.973285, 0.228566,
		26.145758, 35.851643, 39.184284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.464922, 36.342651, 39.303608>,  <26.160984, 36.532940, 39.024288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.464922, 36.342651, 39.303608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.724754, 36.071796, 39.441902>,  <25.880653, 35.909283, 39.524879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.724754, 36.071796, 39.441902>,  <25.464922, 36.342651, 39.303608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.724754, 36.071796, 39.441902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188215, 0.297362, 0.936030,
		-0.736628, -0.673098, 0.065713,
		0.649580, -0.677137, 0.345732,
		25.919628, 35.868656, 39.545620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.122677, 36.060535, 39.897305>,  <25.464922, 36.342651, 39.303608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.122677, 36.060535, 39.897305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.521580, 36.031857, 39.889931>,  <25.760921, 36.014648, 39.885506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.521580, 36.031857, 39.889931>,  <25.122677, 36.060535, 39.897305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.521580, 36.031857, 39.889931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044155, 0.376146, 0.925508,
		-0.059423, -0.923782, 0.378279,
		0.997256, -0.071699, -0.018438,
		25.820757, 36.010345, 39.884399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.329527, 35.867794, 40.666817>,  <25.122677, 36.060535, 39.897305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.329527, 35.867794, 40.666817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.682831, 35.960514, 40.503784>,  <25.894814, 36.016144, 40.405964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.682831, 35.960514, 40.503784>,  <25.329527, 35.867794, 40.666817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.682831, 35.960514, 40.503784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219439, 0.563831, 0.796204,
		0.414361, -0.792695, 0.447146,
		0.883262, 0.231795, -0.407578,
		25.947809, 36.030052, 40.381512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.760071, 35.563099, 41.096596>,  <25.329527, 35.867794, 40.666817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.760071, 35.563099, 41.096596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.947821, 35.860443, 40.905972>,  <26.060471, 36.038849, 40.791599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.947821, 35.860443, 40.905972>,  <25.760071, 35.563099, 41.096596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.947821, 35.860443, 40.905972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311936, 0.365310, 0.877066,
		0.826066, -0.560327, -0.060414,
		0.469374, 0.743359, -0.476556,
		26.088633, 36.083450, 40.763004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.366636, 35.607662, 41.339828>,  <25.760071, 35.563099, 41.096596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.366636, 35.607662, 41.339828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.348074, 35.977718, 41.189114>,  <26.336937, 36.199753, 41.098686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.348074, 35.977718, 41.189114>,  <26.366636, 35.607662, 41.339828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.348074, 35.977718, 41.189114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434430, 0.358346, 0.826353,
		0.899509, -0.125338, -0.418537,
		-0.046408, 0.925137, -0.376786,
		26.334152, 36.255260, 41.076077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.029737, 35.840588, 41.531681>,  <26.366636, 35.607662, 41.339828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.029737, 35.840588, 41.531681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.845068, 36.184208, 41.443241>,  <26.734266, 36.390381, 41.390179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.845068, 36.184208, 41.443241>,  <27.029737, 35.840588, 41.531681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.845068, 36.184208, 41.443241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438373, 0.437642, 0.785047,
		0.771159, 0.265511, -0.578634,
		-0.461673, 0.859053, -0.221099,
		26.706566, 36.441925, 41.376911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.504372, 36.352406, 41.697884>,  <27.029737, 35.840588, 41.531681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.504372, 36.352406, 41.697884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.156918, 36.550587, 41.698692>,  <26.948446, 36.669495, 41.699177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.156918, 36.550587, 41.698692>,  <27.504372, 36.352406, 41.697884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.156918, 36.550587, 41.698692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242115, 0.420910, 0.874194,
		0.432269, 0.759844, -0.485572,
		-0.868634, 0.495451, 0.002024,
		26.896328, 36.699223, 41.699299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.621300, 36.952980, 41.555553>,  <27.504372, 36.352406, 41.697884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.621300, 36.952980, 41.555553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.260040, 36.985527, 41.724174>,  <27.043285, 37.005054, 41.825348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.260040, 36.985527, 41.724174>,  <27.621300, 36.952980, 41.555553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.260040, 36.985527, 41.724174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377027, 0.619983, 0.688093,
		-0.205365, 0.780385, -0.590614,
		-0.903148, 0.081367, 0.421549,
		26.989096, 37.009937, 41.850639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.481045, 37.691132, 41.637413>,  <27.621300, 36.952980, 41.555553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.481045, 37.691132, 41.637413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.273699, 37.498615, 41.920158>,  <27.149292, 37.383106, 42.089806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.273699, 37.498615, 41.920158>,  <27.481045, 37.691132, 41.637413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.273699, 37.498615, 41.920158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485043, 0.515290, 0.706548,
		-0.704295, 0.709109, -0.033661,
		-0.518364, -0.481291, 0.706864,
		27.118189, 37.354229, 42.132217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.216963, 38.220886, 42.102806>,  <27.481045, 37.691132, 41.637413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.216963, 38.220886, 42.102806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.176374, 37.895332, 42.331646>,  <27.152021, 37.700001, 42.468948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.176374, 37.895332, 42.331646>,  <27.216963, 38.220886, 42.102806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.176374, 37.895332, 42.331646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465890, 0.469235, 0.750177,
		-0.879005, 0.342657, 0.331566,
		-0.101471, -0.813883, 0.572100,
		27.145933, 37.651169, 42.503277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.983374, 38.491268, 42.774948>,  <27.216963, 38.220886, 42.102806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.983374, 38.491268, 42.774948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.135611, 38.124134, 42.820065>,  <27.226954, 37.903854, 42.847134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.135611, 38.124134, 42.820065>,  <26.983374, 38.491268, 42.774948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.135611, 38.124134, 42.820065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471643, 0.297574, 0.830062,
		-0.795425, -0.262721, 0.546147,
		0.380594, -0.917839, 0.112787,
		27.249788, 37.848782, 42.853901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.288099, 38.468952, 43.040928>,  <26.983374, 38.491268, 42.774948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.288099, 38.468952, 43.040928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.214447, 38.135151, 43.248661>,  <26.170256, 37.934872, 43.373302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.214447, 38.135151, 43.248661>,  <26.288099, 38.468952, 43.040928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.214447, 38.135151, 43.248661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979897, 0.114569, -0.163324,
		0.076795, -0.538966, -0.838820,
		-0.184129, -0.834500, 0.519333,
		26.159208, 37.884800, 43.404461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.844152, 37.964928, 42.681751>,  <26.288099, 38.468952, 43.040928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.844152, 37.964928, 42.681751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.775480, 37.933041, 43.074520>,  <25.734278, 37.913910, 43.310181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.775480, 37.933041, 43.074520>,  <25.844152, 37.964928, 42.681751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.775480, 37.933041, 43.074520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970986, 0.182119, -0.154983,
		-0.166472, -0.980040, -0.108672,
		-0.171681, -0.079718, 0.981922,
		25.723976, 37.909126, 43.369095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.158747, 38.298145, 42.753078>,  <25.844152, 37.964928, 42.681751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.158747, 38.298145, 42.753078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.956707, 38.640522, 42.708824>,  <24.835484, 38.845947, 42.682270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.956707, 38.640522, 42.708824>,  <25.158747, 38.298145, 42.753078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.956707, 38.640522, 42.708824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756434, 0.500764, 0.420765,
		0.415554, 0.128838, -0.900398,
		-0.505097, 0.855942, -0.110637,
		24.805178, 38.897305, 42.675632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.703045, 38.807358, 42.619671>,  <25.158747, 38.298145, 42.753078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.703045, 38.807358, 42.619671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.358355, 39.002087, 42.676849>,  <25.151541, 39.118923, 42.711155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.358355, 39.002087, 42.676849>,  <25.703045, 38.807358, 42.619671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.358355, 39.002087, 42.676849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505907, 0.803026, 0.314971,
		0.038545, 0.343737, -0.938275,
		-0.861727, 0.486820, 0.142946,
		25.099836, 39.148132, 42.719734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.750271, 39.498074, 42.278675>,  <25.703045, 38.807358, 42.619671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.750271, 39.498074, 42.278675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.451841, 39.524719, 42.543686>,  <25.272783, 39.540707, 42.702690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.451841, 39.524719, 42.543686>,  <25.750271, 39.498074, 42.278675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.451841, 39.524719, 42.543686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366807, 0.871516, 0.325442,
		-0.555723, 0.485822, -0.674647,
		-0.746073, 0.066610, 0.662525,
		25.228020, 39.544701, 42.742443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.635937, 40.171658, 42.287674>,  <25.750271, 39.498074, 42.278675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.635937, 40.171658, 42.287674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.464575, 40.033760, 42.621769>,  <25.361757, 39.951023, 42.822227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.464575, 40.033760, 42.621769>,  <25.635937, 40.171658, 42.287674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.464575, 40.033760, 42.621769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307254, 0.813699, 0.493446,
		-0.849743, 0.468025, -0.242671,
		-0.428406, -0.344741, 0.835238,
		25.336054, 39.930336, 42.872341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.427946, 39.950287, 42.055748>,  <25.635937, 40.171658, 42.287674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.427946, 39.950287, 42.055748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.645018, 40.111858, 42.350323>,  <26.775261, 40.208801, 42.527069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.645018, 40.111858, 42.350323>,  <26.427946, 39.950287, 42.055748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.645018, 40.111858, 42.350323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185841, -0.797305, 0.574254,
		0.819124, -0.448496, -0.357613,
		0.542677, 0.403926, 0.736441,
		26.807821, 40.233036, 42.571255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.941418, 40.461563, 41.785339>,  <26.427946, 39.950287, 42.055748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.941418, 40.461563, 41.785339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.215796, 40.328041, 42.043968>,  <27.380423, 40.247929, 42.199146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.215796, 40.328041, 42.043968>,  <26.941418, 40.461563, 41.785339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.215796, 40.328041, 42.043968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498066, -0.432403, -0.751637,
		0.530482, 0.837615, -0.130345,
		0.685944, -0.333810, 0.646570,
		27.421579, 40.227898, 42.237938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.704576, 40.568336, 41.592197>,  <26.941418, 40.461563, 41.785339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.704576, 40.568336, 41.592197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.706102, 40.258041, 41.844612>,  <27.707018, 40.071865, 41.996063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.706102, 40.258041, 41.844612>,  <27.704576, 40.568336, 41.592197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.706102, 40.258041, 41.844612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619430, -0.493569, -0.610488,
		0.785042, 0.393215, 0.478634,
		0.003814, -0.775740, 0.631041,
		27.707247, 40.025318, 42.033924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.345131, 40.417484, 41.797676>,  <27.704576, 40.568336, 41.592197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.345131, 40.417484, 41.797676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.134094, 40.079994, 41.837227>,  <28.007471, 39.877502, 41.860958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.134094, 40.079994, 41.837227>,  <28.345131, 40.417484, 41.797676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.134094, 40.079994, 41.837227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742998, -0.514742, -0.427778,
		0.411824, -0.152225, 0.898459,
		-0.527593, -0.843723, 0.098880,
		27.975817, 39.826878, 41.866890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.881271, 39.914276, 41.811237>,  <28.345131, 40.417484, 41.797676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.881271, 39.914276, 41.811237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.538630, 39.735378, 41.708321>,  <28.333044, 39.628040, 41.646568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.538630, 39.735378, 41.708321>,  <28.881271, 39.914276, 41.811237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.538630, 39.735378, 41.708321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505690, -0.628669, -0.590807,
		0.102480, -0.636201, 0.764687,
		-0.856607, -0.447241, -0.257295,
		28.281647, 39.601208, 41.631134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.020308, 39.266617, 41.756641>,  <28.881271, 39.914276, 41.811237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.020308, 39.266617, 41.756641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.671909, 39.257935, 41.560318>,  <28.462870, 39.252724, 41.442524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.671909, 39.257935, 41.560318>,  <29.020308, 39.266617, 41.756641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.671909, 39.257935, 41.560318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317036, -0.788007, -0.527762,
		-0.375303, -0.615283, 0.693235,
		-0.870997, -0.021710, -0.490809,
		28.410610, 39.251423, 41.413074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.879868, 38.594406, 41.686695>,  <29.020308, 39.266617, 41.756641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.879868, 38.594406, 41.686695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.642252, 38.732540, 41.396080>,  <28.499681, 38.815422, 41.221710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.642252, 38.732540, 41.396080>,  <28.879868, 38.594406, 41.686695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.642252, 38.732540, 41.396080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162761, -0.832890, -0.528964,
		-0.787796, -0.432479, 0.438564,
		-0.594042, 0.345334, -0.726539,
		28.464041, 38.836140, 41.178120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.400587, 38.017227, 41.467300>,  <28.879868, 38.594406, 41.686695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.400587, 38.017227, 41.467300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.386179, 38.292377, 41.177330>,  <28.377535, 38.457470, 41.003345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.386179, 38.292377, 41.177330>,  <28.400587, 38.017227, 41.467300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.386179, 38.292377, 41.177330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138784, -0.714928, -0.685286,
		-0.989667, -0.125293, -0.069715,
		-0.036021, 0.687880, -0.724930,
		28.375372, 38.498741, 40.959850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.903568, 37.746723, 41.000137>,  <28.400587, 38.017227, 41.467300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.903568, 37.746723, 41.000137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.076603, 38.022064, 40.767227>,  <28.180424, 38.187267, 40.627480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.076603, 38.022064, 40.767227>,  <27.903568, 37.746723, 41.000137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.076603, 38.022064, 40.767227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149482, -0.691648, -0.706596,
		-0.889114, 0.218624, -0.402093,
		0.432586, 0.688350, -0.582274,
		28.206379, 38.228569, 40.592545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.462162, 37.870754, 40.403824>,  <27.903568, 37.746723, 41.000137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.462162, 37.870754, 40.403824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.844799, 37.947124, 40.315754>,  <28.074381, 37.992947, 40.262913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.844799, 37.947124, 40.315754>,  <27.462162, 37.870754, 40.403824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.844799, 37.947124, 40.315754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013543, -0.725569, -0.688016,
		-0.291111, 0.661134, -0.691489,
		0.956594, 0.190924, -0.220175,
		28.131777, 38.004402, 40.249702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.528667, 37.523525, 39.745419>,  <27.462162, 37.870754, 40.403824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.528667, 37.523525, 39.745419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.911640, 37.584805, 39.843281>,  <28.141424, 37.621571, 39.901997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.911640, 37.584805, 39.843281>,  <27.528667, 37.523525, 39.745419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.911640, 37.584805, 39.843281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280032, -0.698654, -0.658381,
		0.070067, 0.698866, -0.711813,
		0.957430, 0.153199, 0.244657,
		28.198870, 37.630764, 39.916679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.823538, 37.529266, 39.069908>,  <27.528667, 37.523525, 39.745419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.823538, 37.529266, 39.069908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.123528, 37.444195, 39.320446>,  <28.303520, 37.393150, 39.470768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.123528, 37.444195, 39.320446>,  <27.823538, 37.529266, 39.069908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.123528, 37.444195, 39.320446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365094, -0.656511, -0.660075,
		0.551588, 0.723713, -0.414717,
		0.749972, -0.212679, 0.626347,
		28.348518, 37.380390, 39.508350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.496559, 37.618786, 38.653156>,  <27.823538, 37.529266, 39.069908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.496559, 37.618786, 38.653156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.556513, 37.376221, 38.965515>,  <28.592485, 37.230682, 39.152931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.556513, 37.376221, 38.965515>,  <28.496559, 37.618786, 38.653156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.556513, 37.376221, 38.965515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451805, -0.660524, -0.599650,
		0.879436, 0.442692, 0.174977,
		0.149883, -0.606409, 0.780899,
		28.601479, 37.194298, 39.199783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.165255, 37.331787, 38.689342>,  <28.496559, 37.618786, 38.653156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.165255, 37.331787, 38.689342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.959286, 37.073524, 38.914902>,  <28.835705, 36.918568, 39.050240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.959286, 37.073524, 38.914902>,  <29.165255, 37.331787, 38.689342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.959286, 37.073524, 38.914902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233106, -0.738486, -0.632692,
		0.824934, -0.194339, 0.530770,
		-0.514923, -0.645655, 0.563901,
		28.804810, 36.879829, 39.084072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.645639, 36.807266, 38.932198>,  <29.165255, 37.331787, 38.689342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.645639, 36.807266, 38.932198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.299366, 36.609177, 38.961441>,  <29.091602, 36.490322, 38.978989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.299366, 36.609177, 38.961441>,  <29.645639, 36.807266, 38.932198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.299366, 36.609177, 38.961441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425305, -0.804628, -0.414355,
		0.264027, -0.327604, 0.907174,
		-0.865682, -0.495227, 0.073112,
		29.039661, 36.460609, 38.983376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.848085, 36.117050, 38.993748>,  <29.645639, 36.807266, 38.932198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.848085, 36.117050, 38.993748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.463133, 36.119904, 38.885105>,  <29.232161, 36.121616, 38.819920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.463133, 36.119904, 38.885105>,  <29.848085, 36.117050, 38.993748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.463133, 36.119904, 38.885105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171851, -0.758321, -0.628821,
		-0.210451, -0.651842, 0.728569,
		-0.962381, 0.007131, -0.271609,
		29.174419, 36.122044, 38.803623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.716028, 35.430271, 39.119759>,  <29.848085, 36.117050, 38.993748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.716028, 35.430271, 39.119759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.455778, 35.573368, 38.851818>,  <29.299627, 35.659225, 38.691055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.455778, 35.573368, 38.851818>,  <29.716028, 35.430271, 39.119759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.455778, 35.573368, 38.851818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128760, -0.817342, -0.561581,
		-0.748402, -0.451629, 0.485721,
		-0.650626, 0.357747, -0.669852,
		29.260590, 35.680691, 38.650864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.481947, 34.871128, 38.882710>,  <29.716028, 35.430271, 39.119759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.481947, 34.871128, 38.882710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.335026, 35.116169, 38.602764>,  <29.246874, 35.263191, 38.434795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.335026, 35.116169, 38.602764>,  <29.481947, 34.871128, 38.882710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.335026, 35.116169, 38.602764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086584, -0.726673, -0.681506,
		-0.926062, -0.310917, 0.213868,
		-0.367304, 0.612599, -0.699864,
		29.224834, 35.299950, 38.392803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.017017, 34.454346, 38.485085>,  <29.481947, 34.871128, 38.882710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.017017, 34.454346, 38.485085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.109259, 34.761150, 38.245583>,  <29.164604, 34.945232, 38.101879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.109259, 34.761150, 38.245583>,  <29.017017, 34.454346, 38.485085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.109259, 34.761150, 38.245583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009130, -0.617022, -0.786893,
		-0.973005, 0.175993, -0.149290,
		0.230603, 0.767014, -0.598759,
		29.178440, 34.991253, 38.065956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.489151, 34.420681, 37.900223>,  <29.017017, 34.454346, 38.485085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.489151, 34.420681, 37.900223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.782827, 34.648903, 37.753021>,  <28.959034, 34.785835, 37.664700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.782827, 34.648903, 37.753021>,  <28.489151, 34.420681, 37.900223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.782827, 34.648903, 37.753021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028596, -0.515557, -0.856378,
		-0.678339, 0.639269, -0.362202,
		0.734192, 0.570557, -0.368003,
		29.003084, 34.820068, 37.642620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.295919, 34.679356, 37.264614>,  <28.489151, 34.420681, 37.900223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.295919, 34.679356, 37.264614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.695892, 34.682484, 37.268097>,  <28.935877, 34.684361, 37.270187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.695892, 34.682484, 37.268097>,  <28.295919, 34.679356, 37.264614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.695892, 34.682484, 37.268097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011475, -0.509372, -0.860470,
		-0.002295, 0.860511, -0.509427,
		0.999931, 0.007820, 0.008705,
		28.995872, 34.684830, 37.270710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.537680, 34.813351, 36.569828>,  <28.295919, 34.679356, 37.264614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.537680, 34.813351, 36.569828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.837685, 34.618885, 36.749214>,  <29.017689, 34.502205, 36.856846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.837685, 34.618885, 36.749214>,  <28.537680, 34.813351, 36.569828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.837685, 34.618885, 36.749214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220703, -0.455221, -0.862592,
		0.623514, 0.745933, -0.234124,
		0.750014, -0.486166, 0.448466,
		29.062689, 34.473034, 36.883755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.946375, 34.738453, 35.942474>,  <28.537680, 34.813351, 36.569828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.946375, 34.738453, 35.942474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.056549, 34.490017, 36.235973>,  <29.122654, 34.340954, 36.412071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.056549, 34.490017, 36.235973>,  <28.946375, 34.738453, 35.942474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.056549, 34.490017, 36.235973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198537, -0.710062, -0.675570,
		0.940595, 0.331751, -0.072266,
		0.275434, -0.621091, 0.733746,
		29.139179, 34.303688, 36.456097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.495970, 34.481155, 35.666912>,  <28.946375, 34.738453, 35.942474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.495970, 34.481155, 35.666912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.407442, 34.219437, 35.956161>,  <29.354326, 34.062405, 36.129711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.407442, 34.219437, 35.956161>,  <29.495970, 34.481155, 35.666912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.407442, 34.219437, 35.956161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201912, -0.756190, -0.622422,
		0.954070, 0.008255, 0.299469,
		-0.221318, -0.654301, 0.723125,
		29.341047, 34.023148, 36.173100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.026722, 33.930492, 35.666763>,  <29.495970, 34.481155, 35.666912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.026722, 33.930492, 35.666763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.705189, 33.752224, 35.824360>,  <29.512268, 33.645264, 35.918919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.705189, 33.752224, 35.824360>,  <30.026722, 33.930492, 35.666763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.705189, 33.752224, 35.824360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084028, -0.740760, -0.666494,
		0.588887, -0.502645, 0.632898,
		-0.803835, -0.445671, 0.393988,
		29.464039, 33.618523, 35.942554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.067219, 33.257378, 35.902760>,  <30.026722, 33.930492, 35.666763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.067219, 33.257378, 35.902760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.677181, 33.276009, 35.816017>,  <29.443159, 33.287186, 35.763973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.677181, 33.276009, 35.816017>,  <30.067219, 33.257378, 35.902760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.677181, 33.276009, 35.816017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102884, -0.771169, -0.628263,
		-0.196492, -0.634925, 0.747169,
		-0.975093, 0.046577, -0.216852,
		29.384653, 33.289982, 35.750961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.694626, 32.991116, 36.096260>,  <30.067219, 33.257378, 35.902760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.694626, 32.991116, 36.096260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.577467, 33.367798, 36.162464>,  <30.507172, 33.593807, 36.202187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.577467, 33.367798, 36.162464>,  <30.694626, 32.991116, 36.096260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.577467, 33.367798, 36.162464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147367, 0.126572, -0.980950,
		-0.944720, -0.311707, 0.101704,
		-0.292896, 0.941710, 0.165511,
		30.489597, 33.650311, 36.212116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.148783, 33.611866, 35.953365>,  <30.694626, 32.991116, 36.096260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.148783, 33.611866, 35.953365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532757, 33.627571, 36.064346>,  <31.763142, 33.636993, 36.130936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532757, 33.627571, 36.064346>,  <31.148783, 33.611866, 35.953365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.532757, 33.627571, 36.064346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095099, 0.885734, -0.454346,
		-0.263590, 0.462529, 0.846515,
		0.959936, 0.039258, 0.277457,
		31.820738, 33.639347, 36.147583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.286695, 34.182289, 36.403618>,  <31.148783, 33.611866, 35.953365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.286695, 34.182289, 36.403618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.614582, 34.090702, 36.193615>,  <31.811314, 34.035751, 36.067612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.614582, 34.090702, 36.193615>,  <31.286695, 34.182289, 36.403618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.614582, 34.090702, 36.193615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038207, 0.936439, -0.348745,
		0.571491, 0.265814, 0.776364,
		0.819719, -0.228967, -0.525010,
		31.860498, 34.022011, 36.036114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.902868, 34.603157, 36.527428>,  <31.286695, 34.182289, 36.403618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.902868, 34.603157, 36.527428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.876610, 34.506813, 36.140095>,  <31.860855, 34.449005, 35.907696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.876610, 34.506813, 36.140095>,  <31.902868, 34.603157, 36.527428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.876610, 34.506813, 36.140095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038809, 0.970311, -0.238724,
		0.997088, 0.021909, -0.073044,
		-0.065646, -0.240864, -0.968337,
		31.856916, 34.434555, 35.849594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.878616, 35.289707, 36.358986>,  <31.902868, 34.603157, 36.527428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.878616, 35.289707, 36.358986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920176, 35.117645, 36.000282>,  <31.945110, 35.014408, 35.785061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920176, 35.117645, 36.000282>,  <31.878616, 35.289707, 36.358986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920176, 35.117645, 36.000282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083669, 0.902221, -0.423079,
		0.991062, -0.031074, 0.129728,
		0.103897, -0.430152, -0.896758,
		31.951345, 34.988598, 35.731255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.071873, 35.826294, 36.083862>,  <31.878616, 35.289707, 36.358986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.071873, 35.826294, 36.083862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120018, 35.596760, 35.759830>,  <32.148907, 35.459038, 35.565411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120018, 35.596760, 35.759830>,  <32.071873, 35.826294, 36.083862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.120018, 35.596760, 35.759830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190371, 0.814207, -0.548476,
		0.974305, -0.088198, 0.207244,
		0.120365, -0.573837, -0.810076,
		32.156128, 35.424610, 35.516808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703255, 35.771072, 35.753517>,  <32.071873, 35.826294, 36.083862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703255, 35.771072, 35.753517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.449608, 35.733372, 35.446529>,  <32.297421, 35.710751, 35.262337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.449608, 35.733372, 35.446529>,  <32.703255, 35.771072, 35.753517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.449608, 35.733372, 35.446529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437351, 0.774805, -0.456509,
		0.637668, -0.625134, -0.450096,
		-0.634117, -0.094252, -0.767472,
		32.259373, 35.705097, 35.216290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.044983, 36.038616, 36.442848>,  <32.703255, 35.771072, 35.753517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.044983, 36.038616, 36.442848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199978, 35.670063, 36.430836>,  <33.292973, 35.448929, 36.423630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199978, 35.670063, 36.430836>,  <33.044983, 36.038616, 36.442848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199978, 35.670063, 36.430836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373014, 0.126914, 0.919105,
		-0.843040, -0.367341, 0.392867,
		0.387485, -0.921387, -0.030030,
		33.316223, 35.393646, 36.421825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011044, 35.864857, 37.140987>,  <33.044983, 36.038616, 36.442848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011044, 35.864857, 37.140987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279495, 35.608643, 36.991699>,  <33.440567, 35.454914, 36.902126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279495, 35.608643, 36.991699>,  <33.011044, 35.864857, 37.140987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279495, 35.608643, 36.991699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586750, 0.151255, 0.795516,
		-0.453105, -0.752885, 0.477347,
		0.671133, -0.640536, -0.373221,
		33.480835, 35.416481, 36.879734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.056698, 35.322567, 37.686886>,  <33.011044, 35.864857, 37.140987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.056698, 35.322567, 37.686886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406284, 35.285099, 37.496136>,  <33.616035, 35.262619, 37.381687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406284, 35.285099, 37.496136>,  <33.056698, 35.322567, 37.686886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406284, 35.285099, 37.496136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473083, -0.060618, 0.878930,
		-0.111236, -0.993756, -0.008665,
		0.873967, -0.093669, -0.476873,
		33.668476, 35.257000, 37.353073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449356, 34.779217, 38.043255>,  <33.056698, 35.322567, 37.686886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.449356, 34.779217, 38.043255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.707718, 35.003719, 37.836258>,  <33.862736, 35.138420, 37.712059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.707718, 35.003719, 37.836258>,  <33.449356, 34.779217, 38.043255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.707718, 35.003719, 37.836258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530589, 0.157346, 0.832897,
		0.548897, -0.812545, -0.196168,
		0.645900, 0.561260, -0.517494,
		33.901489, 35.172096, 37.681011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125149, 34.510151, 38.137611>,  <33.449356, 34.779217, 38.043255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125149, 34.510151, 38.137611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191826, 34.892628, 38.041351>,  <34.231831, 35.122112, 37.983597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191826, 34.892628, 38.041351>,  <34.125149, 34.510151, 38.137611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191826, 34.892628, 38.041351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581443, 0.101791, 0.807194,
		0.796328, -0.274475, -0.539004,
		0.166689, 0.956191, -0.240651,
		34.241833, 35.179485, 37.969154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816849, 34.504360, 38.362118>,  <34.125149, 34.510151, 38.137611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816849, 34.504360, 38.362118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.658039, 34.869804, 38.327034>,  <34.562752, 35.089069, 38.305984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.658039, 34.869804, 38.327034>,  <34.816849, 34.504360, 38.362118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.658039, 34.869804, 38.327034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512976, 0.300135, 0.804223,
		0.761069, 0.274304, -0.587820,
		-0.397027, 0.913606, -0.087712,
		34.538933, 35.143887, 38.300720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383270, 35.027744, 38.566322>,  <34.816849, 34.504360, 38.362118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.383270, 35.027744, 38.566322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036777, 35.226513, 38.587151>,  <34.828880, 35.345776, 38.599648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036777, 35.226513, 38.587151>,  <35.383270, 35.027744, 38.566322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036777, 35.226513, 38.587151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290943, 0.416935, 0.861114,
		0.406197, 0.761073, -0.505739,
		-0.866231, 0.496923, 0.052071,
		34.776909, 35.375591, 38.602772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568817, 35.745712, 38.750423>,  <35.383270, 35.027744, 38.566322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568817, 35.745712, 38.750423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185863, 35.676796, 38.843147>,  <34.956093, 35.635445, 38.898781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185863, 35.676796, 38.843147>,  <35.568817, 35.745712, 38.750423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185863, 35.676796, 38.843147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162928, 0.340532, 0.926009,
		-0.238482, 0.924312, -0.297949,
		-0.957382, -0.172292, 0.231807,
		34.898647, 35.625107, 38.912689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429813, 36.299675, 39.088753>,  <35.568817, 35.745712, 38.750423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429813, 36.299675, 39.088753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.150291, 36.032391, 39.190857>,  <34.982578, 35.872021, 39.252117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.150291, 36.032391, 39.190857>,  <35.429813, 36.299675, 39.088753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150291, 36.032391, 39.190857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057934, 0.302806, 0.951290,
		-0.712959, 0.679557, -0.172891,
		-0.698808, -0.668215, 0.255258,
		34.940651, 35.831924, 39.267433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929512, 36.601601, 39.529873>,  <35.429813, 36.299675, 39.088753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929512, 36.601601, 39.529873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.850044, 36.214909, 39.594330>,  <34.802364, 35.982895, 39.633003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.850044, 36.214909, 39.594330>,  <34.929512, 36.601601, 39.529873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850044, 36.214909, 39.594330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232847, 0.206268, 0.950387,
		-0.952004, 0.151295, -0.266079,
		-0.198672, -0.966728, 0.161140,
		34.790443, 35.924889, 39.642673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390644, 36.648823, 40.048332>,  <34.929512, 36.601601, 39.529873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390644, 36.648823, 40.048332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542889, 36.279194, 40.062302>,  <34.634235, 36.057415, 40.070683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542889, 36.279194, 40.062302>,  <34.390644, 36.648823, 40.048332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542889, 36.279194, 40.062302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043385, 0.055565, 0.997512,
		-0.923716, -0.378150, 0.061240,
		0.380612, -0.924075, 0.034920,
		34.657074, 36.001972, 40.072777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054623, 36.300632, 40.618107>,  <34.390644, 36.648823, 40.048332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.054623, 36.300632, 40.618107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355057, 36.041595, 40.566730>,  <34.535316, 35.886173, 40.535904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355057, 36.041595, 40.566730>,  <34.054623, 36.300632, 40.618107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355057, 36.041595, 40.566730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037220, -0.152710, 0.987570,
		-0.659161, -0.746525, -0.090594,
		0.751080, -0.647595, -0.128446,
		34.580379, 35.847317, 40.528198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868664, 35.684658, 40.990620>,  <34.054623, 36.300632, 40.618107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868664, 35.684658, 40.990620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266029, 35.672340, 40.946465>,  <34.504448, 35.664948, 40.919971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266029, 35.672340, 40.946465>,  <33.868664, 35.684658, 40.990620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266029, 35.672340, 40.946465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099770, -0.241624, 0.965227,
		-0.056397, -0.969881, -0.236959,
		0.993411, -0.030794, -0.110391,
		34.564053, 35.663101, 40.913345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.083611, 34.984959, 41.116348>,  <33.868664, 35.684658, 40.990620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.083611, 34.984959, 41.116348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.372955, 35.250320, 41.192909>,  <34.546562, 35.409538, 41.238846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.372955, 35.250320, 41.192909>,  <34.083611, 34.984959, 41.116348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372955, 35.250320, 41.192909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041174, -0.318154, 0.947145,
		0.689237, -0.677251, -0.257456,
		0.723365, 0.663408, 0.191398,
		34.589966, 35.449345, 41.250328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269691, 34.745537, 41.680454>,  <34.083611, 34.984959, 41.116348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269691, 34.745537, 41.680454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.504215, 35.069500, 41.673641>,  <34.644928, 35.263878, 41.669556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.504215, 35.069500, 41.673641>,  <34.269691, 34.745537, 41.680454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504215, 35.069500, 41.673641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140360, -0.080860, 0.986793,
		0.797836, -0.580955, -0.161088,
		0.586308, 0.809909, -0.017030,
		34.680107, 35.312473, 41.668533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.925751, 34.546223, 42.020287>,  <34.269691, 34.745537, 41.680454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.925751, 34.546223, 42.020287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864201, 34.940567, 42.046822>,  <34.827271, 35.177174, 42.062744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864201, 34.940567, 42.046822>,  <34.925751, 34.546223, 42.020287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864201, 34.940567, 42.046822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246823, -0.026657, 0.968694,
		0.956765, 0.165434, -0.239231,
		-0.153877, 0.985861, 0.066338,
		34.818039, 35.236324, 42.066723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509373, 34.888458, 42.369286>,  <34.925751, 34.546223, 42.020287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509373, 34.888458, 42.369286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202724, 35.142189, 42.409130>,  <35.018734, 35.294426, 42.433037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202724, 35.142189, 42.409130>,  <35.509373, 34.888458, 42.369286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202724, 35.142189, 42.409130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226125, 0.121512, 0.966490,
		0.600963, 0.763458, -0.236590,
		-0.766623, 0.634324, 0.099613,
		34.972736, 35.332485, 42.439014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803032, 35.400764, 42.766312>,  <35.509373, 34.888458, 42.369286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803032, 35.400764, 42.766312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406116, 35.422058, 42.811085>,  <35.167969, 35.434834, 42.837948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406116, 35.422058, 42.811085>,  <35.803032, 35.400764, 42.766312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406116, 35.422058, 42.811085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113319, 0.023768, 0.993274,
		0.050211, 0.998299, -0.029617,
		-0.992289, 0.053230, 0.111933,
		35.108429, 35.438026, 42.844666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708549, 35.875454, 43.367561>,  <35.803032, 35.400764, 42.766312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708549, 35.875454, 43.367561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339184, 35.725456, 43.334881>,  <35.117565, 35.635456, 43.315273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339184, 35.725456, 43.334881>,  <35.708549, 35.875454, 43.367561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339184, 35.725456, 43.334881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084271, -0.009579, 0.996397,
		-0.374430, 0.926976, -0.022756,
		-0.923418, -0.374999, -0.081704,
		35.062157, 35.612957, 43.310371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365574, 36.251316, 43.729160>,  <35.708549, 35.875454, 43.367561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365574, 36.251316, 43.729160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.119545, 35.936905, 43.704361>,  <34.971928, 35.748257, 43.689484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.119545, 35.936905, 43.704361>,  <35.365574, 36.251316, 43.729160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119545, 35.936905, 43.704361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219586, 0.095249, 0.970932,
		-0.757275, 0.610808, -0.231187,
		-0.615074, -0.786029, -0.061995,
		34.935024, 35.701096, 43.685760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793655, 36.490322, 44.063522>,  <35.365574, 36.251316, 43.729160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793655, 36.490322, 44.063522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.787476, 36.090652, 44.048454>,  <34.783768, 35.850853, 44.039413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.787476, 36.090652, 44.048454>,  <34.793655, 36.490322, 44.063522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787476, 36.090652, 44.048454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364437, -0.029452, 0.930762,
		-0.931100, 0.028110, -0.363679,
		-0.015453, -0.999171, -0.037667,
		34.782841, 35.790901, 44.037155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092888, 36.284023, 44.213623>,  <34.793655, 36.490322, 44.063522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.092888, 36.284023, 44.213623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366055, 36.012230, 44.320900>,  <34.529953, 35.849155, 44.385265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366055, 36.012230, 44.320900>,  <34.092888, 36.284023, 44.213623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366055, 36.012230, 44.320900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368383, -0.003304, 0.929668,
		-0.630809, -0.733682, -0.252567,
		0.682915, -0.679485, 0.268191,
		34.570930, 35.808384, 44.401356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738251, 35.821350, 44.652367>,  <34.092888, 36.284023, 44.213623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738251, 35.821350, 44.652367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128895, 35.780689, 44.728165>,  <34.363281, 35.756294, 44.773643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128895, 35.780689, 44.728165>,  <33.738251, 35.821350, 44.652367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128895, 35.780689, 44.728165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191153, -0.006747, 0.981537,
		-0.098497, -0.994797, -0.026020,
		0.976606, -0.101652, 0.189494,
		34.421875, 35.750195, 44.785011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740612, 35.545433, 45.313080>,  <33.738251, 35.821350, 44.652367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740612, 35.545433, 45.313080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127048, 35.633183, 45.258606>,  <34.358910, 35.685833, 45.225922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127048, 35.633183, 45.258606>,  <33.740612, 35.545433, 45.313080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127048, 35.633183, 45.258606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131370, 0.036462, 0.990663,
		0.222295, -0.974958, 0.006406,
		0.966088, 0.219378, -0.136185,
		34.416874, 35.698994, 45.217751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115021, 35.142689, 45.871754>,  <33.740612, 35.545433, 45.313080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115021, 35.142689, 45.871754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359097, 35.442062, 45.767818>,  <34.505543, 35.621689, 45.705456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359097, 35.442062, 45.767818>,  <34.115021, 35.142689, 45.871754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359097, 35.442062, 45.767818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341977, 0.047026, 0.938531,
		0.714651, -0.661536, -0.227254,
		0.610185, 0.748438, -0.259837,
		34.542152, 35.666595, 45.689869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671143, 35.056702, 46.364956>,  <34.115021, 35.142689, 45.871754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671143, 35.056702, 46.364956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746197, 35.426880, 46.233295>,  <34.791229, 35.648987, 46.154301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746197, 35.426880, 46.233295>,  <34.671143, 35.056702, 46.364956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746197, 35.426880, 46.233295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467204, 0.210678, 0.858682,
		0.864009, -0.314903, -0.392842,
		0.187638, 0.925447, -0.329151,
		34.802486, 35.704514, 46.134548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418671, 35.196381, 46.570267>,  <34.671143, 35.056702, 46.364956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418671, 35.196381, 46.570267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.237679, 35.546204, 46.500504>,  <35.129082, 35.756096, 46.458645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.237679, 35.546204, 46.500504>,  <35.418671, 35.196381, 46.570267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237679, 35.546204, 46.500504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228630, 0.302799, 0.925225,
		0.861969, 0.378772, -0.336960,
		-0.452480, 0.874554, -0.174405,
		35.101936, 35.808571, 46.448181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848057, 35.746128, 46.898705>,  <35.418671, 35.196381, 46.570267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848057, 35.746128, 46.898705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467495, 35.868454, 46.884232>,  <35.239159, 35.941849, 46.875549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467495, 35.868454, 46.884232>,  <35.848057, 35.746128, 46.898705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467495, 35.868454, 46.884232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070833, 0.331656, 0.940737,
		0.299688, 0.892459, -0.337201,
		-0.951404, 0.305813, -0.036178,
		35.182076, 35.960197, 46.873379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785542, 36.267109, 47.296471>,  <35.848057, 35.746128, 46.898705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785542, 36.267109, 47.296471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.391388, 36.209717, 47.259731>,  <35.154896, 36.175282, 47.237686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.391388, 36.209717, 47.259731>,  <35.785542, 36.267109, 47.296471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391388, 36.209717, 47.259731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133412, 0.314632, 0.939791,
		-0.105945, 0.938307, -0.329175,
		-0.985382, -0.143482, -0.091848,
		35.095772, 36.166672, 47.232178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590137, 36.849705, 47.561661>,  <35.785542, 36.267109, 47.296471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590137, 36.849705, 47.561661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307350, 36.568478, 47.592381>,  <35.137680, 36.399742, 47.610813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307350, 36.568478, 47.592381>,  <35.590137, 36.849705, 47.561661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307350, 36.568478, 47.592381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025642, 0.134001, 0.990649,
		-0.706784, 0.698385, -0.112762,
		-0.706965, -0.703067, 0.076802,
		35.095261, 36.357559, 47.615421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168476, 37.161121, 47.945576>,  <35.590137, 36.849705, 47.561661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168476, 37.161121, 47.945576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.083763, 36.770287, 47.954056>,  <35.032936, 36.535786, 47.959145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.083763, 36.770287, 47.954056>,  <35.168476, 37.161121, 47.945576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.083763, 36.770287, 47.954056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227704, 0.070429, 0.971180,
		-0.950420, 0.200853, -0.237402,
		-0.211785, -0.977086, 0.021202,
		35.020229, 36.477161, 47.960415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654480, 37.128445, 48.403522>,  <35.168476, 37.161121, 47.945576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654480, 37.128445, 48.403522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.790745, 36.752419, 48.397434>,  <34.872501, 36.526802, 48.393780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.790745, 36.752419, 48.397434>,  <34.654480, 37.128445, 48.403522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.790745, 36.752419, 48.397434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076453, -0.043836, 0.996109,
		-0.937073, -0.338170, -0.086804,
		0.340659, -0.940063, -0.015223,
		34.892944, 36.470398, 48.392868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179302, 36.648251, 48.807991>,  <34.654480, 37.128445, 48.403522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179302, 36.648251, 48.807991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539543, 36.474934, 48.794247>,  <34.755688, 36.370945, 48.785999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539543, 36.474934, 48.794247>,  <34.179302, 36.648251, 48.807991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539543, 36.474934, 48.794247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029109, -0.139004, 0.989864,
		-0.433676, -0.890470, -0.137799,
		0.900599, -0.433292, -0.034362,
		34.809723, 36.344948, 48.783939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091644, 36.127319, 49.280235>,  <34.179302, 36.648251, 48.807991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.091644, 36.127319, 49.280235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484680, 36.162251, 49.214649>,  <34.720501, 36.183208, 49.175297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484680, 36.162251, 49.214649>,  <34.091644, 36.127319, 49.280235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484680, 36.162251, 49.214649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182576, -0.291103, 0.939109,
		0.034277, -0.952698, -0.301979,
		0.982594, 0.087324, -0.163961,
		34.779457, 36.188446, 49.165462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415665, 35.534786, 49.585609>,  <34.091644, 36.127319, 49.280235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415665, 35.534786, 49.585609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707161, 35.806343, 49.549728>,  <34.882057, 35.969276, 49.528202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707161, 35.806343, 49.549728>,  <34.415665, 35.534786, 49.585609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707161, 35.806343, 49.549728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287090, -0.183962, 0.940073,
		0.621705, -0.710820, -0.328963,
		0.728740, 0.678890, -0.089699,
		34.925781, 36.010010, 49.522820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919628, 35.246109, 50.008766>,  <34.415665, 35.534786, 49.585609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919628, 35.246109, 50.008766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045483, 35.619572, 49.940315>,  <35.120995, 35.843651, 49.899242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045483, 35.619572, 49.940315>,  <34.919628, 35.246109, 50.008766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045483, 35.619572, 49.940315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485778, -0.003495, 0.874075,
		0.815490, -0.358147, -0.454651,
		0.314636, 0.933659, -0.171130,
		35.139874, 35.899670, 49.888977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525227, 35.135727, 50.131519>,  <34.919628, 35.246109, 50.008766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525227, 35.135727, 50.131519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430683, 35.519485, 50.193100>,  <35.373959, 35.749741, 50.230049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430683, 35.519485, 50.193100>,  <35.525227, 35.135727, 50.131519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430683, 35.519485, 50.193100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488475, -0.019645, 0.872357,
		0.839957, 0.281387, -0.463996,
		-0.236355, 0.959393, 0.153951,
		35.359776, 35.807304, 50.239285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044979, 35.386127, 50.470531>,  <35.525227, 35.135727, 50.131519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044979, 35.386127, 50.470531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.752346, 35.648788, 50.543850>,  <35.576767, 35.806385, 50.587841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.752346, 35.648788, 50.543850>,  <36.044979, 35.386127, 50.470531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752346, 35.648788, 50.543850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321914, 0.095717, 0.941918,
		0.600969, 0.748094, -0.281410,
		-0.731579, 0.656653, 0.183299,
		35.532871, 35.845783, 50.598839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393383, 35.881458, 50.837681>,  <36.044979, 35.386127, 50.470531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393383, 35.881458, 50.837681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002068, 35.919739, 50.911209>,  <35.767277, 35.942707, 50.955326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002068, 35.919739, 50.911209>,  <36.393383, 35.881458, 50.837681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002068, 35.919739, 50.911209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187077, 0.026141, 0.981997,
		0.089170, 0.995067, -0.043476,
		-0.978290, 0.095698, 0.183823,
		35.708580, 35.948448, 50.966354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339706, 36.348042, 51.399670>,  <36.393383, 35.881458, 50.837681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339706, 36.348042, 51.399670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998753, 36.139244, 51.387291>,  <35.794182, 36.013966, 51.379864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998753, 36.139244, 51.387291>,  <36.339706, 36.348042, 51.399670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998753, 36.139244, 51.387291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025909, -0.101269, 0.994522,
		-0.522272, 0.846914, 0.099844,
		-0.852385, -0.521998, -0.030947,
		35.743038, 35.982643, 51.378006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012054, 36.626156, 51.969933>,  <36.339706, 36.348042, 51.399670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012054, 36.626156, 51.969933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.847157, 36.271549, 51.885902>,  <35.748219, 36.058784, 51.835484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.847157, 36.271549, 51.885902>,  <36.012054, 36.626156, 51.969933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.847157, 36.271549, 51.885902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139368, -0.289233, 0.947059,
		-0.900349, 0.361146, 0.242788,
		-0.412249, -0.886520, -0.210079,
		35.723480, 36.005592, 51.822880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616982, 36.401539, 52.556499>,  <36.012054, 36.626156, 51.969933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616982, 36.401539, 52.556499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.726372, 36.079880, 52.345387>,  <35.792007, 35.886887, 52.218719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.726372, 36.079880, 52.345387>,  <35.616982, 36.401539, 52.556499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726372, 36.079880, 52.345387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432645, -0.387230, 0.814169,
		-0.859086, -0.451001, 0.242011,
		0.273477, -0.804146, -0.527787,
		35.808414, 35.838634, 52.187050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980991, 36.306339, 53.219959>,  <35.616982, 36.401539, 52.556499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980991, 36.306339, 53.219959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901299, 35.947334, 53.377331>,  <35.853485, 35.731934, 53.471752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901299, 35.947334, 53.377331>,  <35.980991, 36.306339, 53.219959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901299, 35.947334, 53.377331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971294, -0.234109, -0.042206,
		0.129985, 0.373723, 0.918387,
		-0.199229, -0.897510, 0.393425,
		35.841530, 35.678082, 53.495358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526917, 36.145664, 53.607513>,  <35.980991, 36.306339, 53.219959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526917, 36.145664, 53.607513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.357929, 35.789856, 53.537918>,  <36.256538, 35.576370, 53.496162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.357929, 35.789856, 53.537918>,  <36.526917, 36.145664, 53.607513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357929, 35.789856, 53.537918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904024, -0.427360, -0.010209,
		-0.065275, -0.161603, 0.984695,
		-0.422469, -0.889521, -0.173989,
		36.231190, 35.522999, 53.485722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870510, 35.723221, 53.023079>,  <36.526917, 36.145664, 53.607513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870510, 35.723221, 53.023079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.030022, 35.479706, 53.297409>,  <37.125729, 35.333595, 53.462006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.030022, 35.479706, 53.297409>,  <36.870510, 35.723221, 53.023079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030022, 35.479706, 53.297409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286620, -0.793132, -0.537392,
		0.871107, 0.017729, -0.490774,
		0.398775, -0.608791, 0.685821,
		37.149654, 35.297070, 53.503155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477787, 35.214283, 52.846848>,  <36.870510, 35.723221, 53.023079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477787, 35.214283, 52.846848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.202312, 35.086334, 53.107121>,  <37.037025, 35.009563, 53.263283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.202312, 35.086334, 53.107121>,  <37.477787, 35.214283, 52.846848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202312, 35.086334, 53.107121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124170, -0.832130, -0.540501,
		0.714345, -0.453032, 0.533361,
		-0.688690, -0.319876, 0.650681,
		36.995705, 34.990372, 53.302326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615448, 34.521614, 53.104244>,  <37.477787, 35.214283, 52.846848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615448, 34.521614, 53.104244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224579, 34.601368, 53.074924>,  <36.990055, 34.649220, 53.057331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224579, 34.601368, 53.074924>,  <37.615448, 34.521614, 53.104244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224579, 34.601368, 53.074924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112663, -0.778953, -0.616878,
		-0.180093, -0.594540, 0.783638,
		-0.977176, 0.199383, -0.073301,
		36.931427, 34.661182, 53.052933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178165, 33.764095, 53.147343>,  <37.615448, 34.521614, 53.104244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178165, 33.764095, 53.147343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482628, 33.913086, 52.934963>,  <37.665306, 34.002480, 52.807537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482628, 33.913086, 52.934963>,  <37.178165, 33.764095, 53.147343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482628, 33.913086, 52.934963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577929, 0.017987, -0.815889,
		-0.294352, 0.927866, 0.228958,
		0.761153, 0.372481, -0.530946,
		37.710976, 34.024830, 52.775681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557671, 34.153816, 53.430801>,  <37.178165, 33.764095, 53.147343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557671, 34.153816, 53.430801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.215557, 34.293945, 53.583515>,  <36.010288, 34.378021, 53.675144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.215557, 34.293945, 53.583515>,  <36.557671, 34.153816, 53.430801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215557, 34.293945, 53.583515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249288, 0.367734, -0.895895,
		-0.454248, -0.861421, -0.227186,
		-0.855286, 0.350323, 0.381784,
		35.958973, 34.399044, 53.698051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932163, 33.869057, 53.145355>,  <36.557671, 34.153816, 53.430801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.932163, 33.869057, 53.145355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856903, 34.234447, 53.289669>,  <35.811745, 34.453682, 53.376259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856903, 34.234447, 53.289669>,  <35.932163, 33.869057, 53.145355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856903, 34.234447, 53.289669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087739, 0.350242, -0.932541,
		-0.978212, -0.207117, 0.014248,
		-0.188155, 0.913473, 0.360783,
		35.800457, 34.508488, 53.397903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592712, 33.208397, 53.078159>,  <35.932163, 33.869057, 53.145355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.592712, 33.208397, 53.078159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308540, 33.443501, 52.923325>,  <35.138039, 33.584560, 52.830421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308540, 33.443501, 52.923325>,  <35.592712, 33.208397, 53.078159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308540, 33.443501, 52.923325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225482, -0.330937, -0.916318,
		-0.666673, -0.738258, 0.102578,
		-0.710426, 0.587754, -0.387091,
		35.095413, 33.619827, 52.807198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095253, 32.904339, 52.737194>,  <35.592712, 33.208397, 53.078159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095253, 32.904339, 52.737194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088139, 33.248188, 52.532948>,  <35.083870, 33.454498, 52.410400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088139, 33.248188, 52.532948>,  <35.095253, 32.904339, 52.737194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088139, 33.248188, 52.532948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249520, -0.490723, -0.834824,
		-0.968206, -0.142258, -0.205765,
		-0.017787, 0.859624, -0.510617,
		35.082802, 33.506077, 52.379761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688557, 32.870789, 52.102726>,  <35.095253, 32.904339, 52.737194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.688557, 32.870789, 52.102726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.945847, 33.160820, 52.004322>,  <35.100220, 33.334839, 51.945278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.945847, 33.160820, 52.004322>,  <34.688557, 32.870789, 52.102726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945847, 33.160820, 52.004322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153712, -0.437043, -0.886209,
		-0.750089, 0.532216, -0.392571,
		0.643225, 0.725078, -0.246013,
		35.138813, 33.378342, 51.930519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472984, 33.046867, 51.449120>,  <34.688557, 32.870789, 52.102726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472984, 33.046867, 51.449120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852291, 33.167175, 51.489780>,  <35.079876, 33.239361, 51.514175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852291, 33.167175, 51.489780>,  <34.472984, 33.046867, 51.449120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852291, 33.167175, 51.489780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209496, -0.352205, -0.912175,
		-0.238556, 0.886277, -0.396994,
		0.948263, 0.300773, 0.101651,
		35.136768, 33.257408, 51.520275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683971, 33.445549, 50.880398>,  <34.472984, 33.046867, 51.449120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683971, 33.445549, 50.880398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.034000, 33.298706, 51.006561>,  <35.244019, 33.210602, 51.082260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.034000, 33.298706, 51.006561>,  <34.683971, 33.445549, 50.880398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034000, 33.298706, 51.006561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282936, -0.140726, -0.948759,
		0.392684, 0.919471, -0.019277,
		0.875070, -0.367108, 0.315412,
		35.296520, 33.188572, 51.101185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294979, 33.795296, 50.448265>,  <34.683971, 33.445549, 50.880398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.294979, 33.795296, 50.448265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.432693, 33.463654, 50.624474>,  <35.515320, 33.264668, 50.730198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.432693, 33.463654, 50.624474>,  <35.294979, 33.795296, 50.448265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432693, 33.463654, 50.624474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348131, -0.323020, -0.880036,
		0.871937, 0.456339, 0.177426,
		0.344283, -0.829103, 0.440519,
		35.535976, 33.214924, 50.756630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031895, 33.565723, 50.167664>,  <35.294979, 33.795296, 50.448265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031895, 33.565723, 50.167664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868881, 33.245319, 50.343071>,  <35.771072, 33.053078, 50.448315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868881, 33.245319, 50.343071>,  <36.031895, 33.565723, 50.167664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868881, 33.245319, 50.343071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149779, -0.532331, -0.833181,
		0.900824, -0.273867, 0.336916,
		-0.407532, -0.801012, 0.438517,
		35.746620, 33.005016, 50.474625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481148, 33.037945, 50.154488>,  <36.031895, 33.565723, 50.167664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481148, 33.037945, 50.154488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.133106, 32.844082, 50.190338>,  <35.924282, 32.727764, 50.211849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.133106, 32.844082, 50.190338>,  <36.481148, 33.037945, 50.154488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133106, 32.844082, 50.190338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185392, -0.490319, -0.851597,
		0.456676, -0.724360, 0.516478,
		-0.870101, -0.484655, 0.089626,
		35.872074, 32.698685, 50.217224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626938, 32.391979, 49.908253>,  <36.481148, 33.037945, 50.154488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626938, 32.391979, 49.908253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.227043, 32.399937, 49.903839>,  <35.987106, 32.404713, 49.901192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.227043, 32.399937, 49.903839>,  <36.626938, 32.391979, 49.908253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227043, 32.399937, 49.903839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000916, -0.449352, -0.893355,
		-0.022728, -0.893134, 0.449217,
		-0.999741, 0.019892, -0.011031,
		35.927120, 32.405903, 49.900528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488667, 31.783274, 49.619164>,  <36.626938, 32.391979, 49.908253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488667, 31.783274, 49.619164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.140682, 31.973312, 49.566307>,  <35.931892, 32.087334, 49.534592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.140682, 31.973312, 49.566307>,  <36.488667, 31.783274, 49.619164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140682, 31.973312, 49.566307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038188, -0.202252, -0.978589,
		-0.491649, -0.856375, 0.157807,
		-0.869956, 0.475095, -0.132140,
		35.879696, 32.115841, 49.526665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988338, 31.314995, 49.116676>,  <36.488667, 31.783274, 49.619164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988338, 31.314995, 49.116676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.864780, 31.695148, 49.101986>,  <35.790646, 31.923241, 49.093170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.864780, 31.695148, 49.101986>,  <35.988338, 31.314995, 49.116676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864780, 31.695148, 49.101986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267415, -0.123846, -0.955590,
		-0.912727, -0.285358, 0.292403,
		-0.308898, 0.950386, -0.036728,
		35.772110, 31.980265, 49.090969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315590, 31.368088, 48.766666>,  <35.988338, 31.314995, 49.116676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315590, 31.368088, 48.766666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.469971, 31.733097, 48.712486>,  <35.562599, 31.952103, 48.679977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.469971, 31.733097, 48.712486>,  <35.315590, 31.368088, 48.766666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469971, 31.733097, 48.712486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300796, -0.014326, -0.953581,
		-0.872104, 0.408777, 0.268953,
		0.385948, 0.912522, -0.135452,
		35.585754, 32.006855, 48.671852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788094, 31.772778, 48.275757>,  <35.315590, 31.368088, 48.766666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.788094, 31.772778, 48.275757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.132515, 31.976118, 48.270538>,  <35.339169, 32.098122, 48.267406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.132515, 31.976118, 48.270538>,  <34.788094, 31.772778, 48.275757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132515, 31.976118, 48.270538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139913, 0.212163, -0.967167,
		-0.488891, 0.834606, 0.253808,
		0.861051, 0.508350, -0.013047,
		35.390831, 32.128624, 48.266624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605495, 32.299652, 47.924339>,  <34.788094, 31.772778, 48.275757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605495, 32.299652, 47.924339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004135, 32.303242, 47.891590>,  <35.243320, 32.305397, 47.871941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004135, 32.303242, 47.891590>,  <34.605495, 32.299652, 47.924339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004135, 32.303242, 47.891590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081412, 0.257817, -0.962758,
		0.012466, 0.966152, 0.257671,
		0.996602, 0.008976, -0.081870,
		35.303116, 32.305935, 47.867027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750511, 32.902084, 47.516247>,  <34.605495, 32.299652, 47.924339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750511, 32.902084, 47.516247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.070000, 32.664558, 47.477398>,  <35.261692, 32.522041, 47.454090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.070000, 32.664558, 47.477398>,  <34.750511, 32.902084, 47.516247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070000, 32.664558, 47.477398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021944, 0.132554, -0.990933,
		0.601305, 0.793607, 0.092843,
		0.798718, -0.593816, -0.097120,
		35.309616, 32.486412, 47.448261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154125, 33.218468, 47.022186>,  <34.750511, 32.902084, 47.516247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154125, 33.218468, 47.022186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.328648, 32.858707, 47.032867>,  <35.433361, 32.642849, 47.039276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.328648, 32.858707, 47.032867>,  <35.154125, 33.218468, 47.022186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328648, 32.858707, 47.032867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011725, -0.035353, -0.999306,
		0.899722, 0.435690, -0.025970,
		0.436306, -0.899402, 0.026699,
		35.459538, 32.588886, 47.040878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679955, 33.234947, 46.548862>,  <35.154125, 33.218468, 47.022186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.679955, 33.234947, 46.548862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.574547, 32.851166, 46.588879>,  <35.511303, 32.620899, 46.612888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.574547, 32.851166, 46.588879>,  <35.679955, 33.234947, 46.548862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574547, 32.851166, 46.588879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042598, -0.092028, -0.994845,
		0.963712, -0.266426, -0.016619,
		-0.263523, -0.959452, 0.100038,
		35.495491, 32.563332, 46.618889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124557, 32.922890, 46.115105>,  <35.679955, 33.234947, 46.548862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124557, 32.922890, 46.115105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.824348, 32.667408, 46.182953>,  <35.644222, 32.514118, 46.223660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.824348, 32.667408, 46.182953>,  <36.124557, 32.922890, 46.115105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824348, 32.667408, 46.182953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066371, -0.182517, -0.980960,
		0.657502, -0.747491, 0.094592,
		-0.750524, -0.638705, 0.169617,
		35.599190, 32.475796, 46.233837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233570, 32.432999, 45.612133>,  <36.124557, 32.922890, 46.115105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233570, 32.432999, 45.612133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.854355, 32.371258, 45.723419>,  <35.626827, 32.334213, 45.790192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.854355, 32.371258, 45.723419>,  <36.233570, 32.432999, 45.612133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854355, 32.371258, 45.723419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256712, -0.145465, -0.955478,
		0.187953, -0.977248, 0.098282,
		-0.948037, -0.154355, 0.278212,
		35.569942, 32.324951, 45.806881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981750, 31.825336, 45.197849>,  <36.233570, 32.432999, 45.612133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981750, 31.825336, 45.197849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.662296, 32.037132, 45.312271>,  <35.470623, 32.164211, 45.380924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.662296, 32.037132, 45.312271>,  <35.981750, 31.825336, 45.197849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.662296, 32.037132, 45.312271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407033, -0.125123, -0.904803,
		-0.443291, -0.839039, 0.315447,
		-0.798635, 0.529489, 0.286050,
		35.422707, 32.195980, 45.398087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544529, 31.484142, 44.873444>,  <35.981750, 31.825336, 45.197849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544529, 31.484142, 44.873444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326534, 31.806805, 44.964916>,  <35.195736, 32.000401, 45.019798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326534, 31.806805, 44.964916>,  <35.544529, 31.484142, 44.873444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326534, 31.806805, 44.964916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456828, -0.056980, -0.887728,
		-0.703062, -0.588267, 0.399557,
		-0.544988, 0.806657, 0.228677,
		35.163036, 32.048801, 45.033520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814884, 31.413992, 44.533638>,  <35.544529, 31.484142, 44.873444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814884, 31.413992, 44.533638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880852, 31.798115, 44.623627>,  <34.920433, 32.028587, 44.677620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880852, 31.798115, 44.623627>,  <34.814884, 31.413992, 44.533638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880852, 31.798115, 44.623627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370767, 0.271730, -0.888085,
		-0.913965, 0.063053, 0.400864,
		0.164923, 0.960306, 0.224973,
		34.930328, 32.086208, 44.691120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.152618, 31.779295, 44.455257>,  <34.814884, 31.413992, 44.533638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.152618, 31.779295, 44.455257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453270, 32.040672, 44.419327>,  <34.633659, 32.197498, 44.397770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453270, 32.040672, 44.419327>,  <34.152618, 31.779295, 44.455257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453270, 32.040672, 44.419327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374818, 0.311079, -0.873351,
		-0.542741, 0.690103, 0.478737,
		0.751627, 0.653443, -0.089828,
		34.678757, 32.236706, 44.392380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820679, 32.387424, 44.237881>,  <34.152618, 31.779295, 44.455257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820679, 32.387424, 44.237881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205616, 32.438301, 44.141785>,  <34.436581, 32.468826, 44.084129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205616, 32.438301, 44.141785>,  <33.820679, 32.387424, 44.237881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205616, 32.438301, 44.141785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271486, 0.405271, -0.872955,
		-0.013675, 0.905305, 0.424542,
		0.962345, 0.127195, -0.240236,
		34.494320, 32.476460, 44.069714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827816, 33.113487, 43.989704>,  <33.820679, 32.387424, 44.237881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827816, 33.113487, 43.989704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158794, 32.941589, 43.845119>,  <34.357380, 32.838451, 43.758369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158794, 32.941589, 43.845119>,  <33.827816, 33.113487, 43.989704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158794, 32.941589, 43.845119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222521, 0.340068, -0.913695,
		0.515573, 0.836467, 0.185762,
		0.827447, -0.429741, -0.361461,
		34.407028, 32.812668, 43.736683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081665, 33.584755, 43.483414>,  <33.827816, 33.113487, 43.989704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081665, 33.584755, 43.483414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.258213, 33.238750, 43.387955>,  <34.364140, 33.031147, 43.330677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.258213, 33.238750, 43.387955>,  <34.081665, 33.584755, 43.483414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258213, 33.238750, 43.387955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039313, 0.247061, -0.968202,
		0.896465, 0.436715, 0.075039,
		0.441368, -0.865009, -0.238650,
		34.390625, 32.979248, 43.316360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286163, 33.774582, 42.860386>,  <34.081665, 33.584755, 43.483414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286163, 33.774582, 42.860386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323357, 33.376583, 42.845760>,  <34.345673, 33.137783, 42.836983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323357, 33.376583, 42.845760>,  <34.286163, 33.774582, 42.860386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323357, 33.376583, 42.845760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137827, 0.023510, -0.990177,
		0.986082, 0.097107, -0.134951,
		0.092980, -0.994996, -0.036567,
		34.351250, 33.078083, 42.834789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896908, 33.592171, 42.427876>,  <34.286163, 33.774582, 42.860386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896908, 33.592171, 42.427876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656116, 33.272854, 42.420280>,  <34.511642, 33.081264, 42.415722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656116, 33.272854, 42.420280>,  <34.896908, 33.592171, 42.427876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656116, 33.272854, 42.420280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035836, -0.003252, -0.999352,
		0.797711, -0.602265, 0.030565,
		-0.601974, -0.798290, -0.018989,
		34.475525, 33.033367, 42.414585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167961, 33.186573, 41.879387>,  <34.896908, 33.592171, 42.427876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167961, 33.186573, 41.879387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797592, 33.048733, 41.941261>,  <34.575371, 32.966030, 41.978386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797592, 33.048733, 41.941261>,  <35.167961, 33.186573, 41.879387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797592, 33.048733, 41.941261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105213, -0.158021, -0.981814,
		0.362775, -0.925355, 0.110058,
		-0.925918, -0.344598, 0.154685,
		34.519817, 32.945354, 41.987667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066532, 32.608604, 41.349888>,  <35.167961, 33.186573, 41.879387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066532, 32.608604, 41.349888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690674, 32.677998, 41.467850>,  <34.465160, 32.719635, 41.538628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690674, 32.677998, 41.467850>,  <35.066532, 32.608604, 41.349888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690674, 32.677998, 41.467850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325145, -0.184444, -0.927503,
		-0.106511, -0.967411, 0.229719,
		-0.939647, 0.173481, 0.294903,
		34.408779, 32.730042, 41.556320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605862, 32.057632, 41.162918>,  <35.066532, 32.608604, 41.349888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605862, 32.057632, 41.162918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374836, 32.382713, 41.193748>,  <34.236221, 32.577763, 41.212246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374836, 32.382713, 41.193748>,  <34.605862, 32.057632, 41.162918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374836, 32.382713, 41.193748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312109, -0.132586, -0.940749,
		-0.754326, -0.567399, 0.330228,
		-0.577563, 0.812699, 0.077077,
		34.201569, 32.626522, 41.216873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020424, 31.894855, 40.889908>,  <34.605862, 32.057632, 41.162918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020424, 31.894855, 40.889908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965839, 32.289989, 40.860077>,  <33.933090, 32.527069, 40.842178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965839, 32.289989, 40.860077>,  <34.020424, 31.894855, 40.889908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965839, 32.289989, 40.860077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319742, -0.115170, -0.940479,
		-0.937626, -0.104493, 0.331569,
		-0.136460, 0.987835, -0.074575,
		33.924900, 32.586338, 40.837704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.392605, 31.932652, 40.605038>,  <34.020424, 31.894855, 40.889908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.392605, 31.932652, 40.605038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.572014, 32.283340, 40.535545>,  <33.679661, 32.493755, 40.493851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.572014, 32.283340, 40.535545>,  <33.392605, 31.932652, 40.605038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.572014, 32.283340, 40.535545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310668, -0.029332, -0.950066,
		-0.838042, 0.480098, 0.259214,
		0.448521, 0.876724, -0.173732,
		33.706570, 32.546356, 40.483425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946384, 32.382523, 40.278488>,  <33.392605, 31.932652, 40.605038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946384, 32.382523, 40.278488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.295677, 32.561764, 40.201889>,  <33.505253, 32.669308, 40.155930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.295677, 32.561764, 40.201889>,  <32.946384, 32.382523, 40.278488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295677, 32.561764, 40.201889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315526, 0.220449, -0.922955,
		-0.371368, 0.866373, 0.333892,
		0.873229, 0.448107, -0.191495,
		33.557648, 32.696198, 40.144440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767464, 33.052525, 39.978756>,  <32.946384, 32.382523, 40.278488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767464, 33.052525, 39.978756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136269, 32.947498, 39.864952>,  <33.357552, 32.884483, 39.796669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136269, 32.947498, 39.864952>,  <32.767464, 33.052525, 39.978756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136269, 32.947498, 39.864952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238503, 0.193665, -0.951635,
		0.304971, 0.945278, 0.115938,
		0.922014, -0.262569, -0.284514,
		33.412872, 32.868729, 39.779598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.821083, 33.494610, 39.413292>,  <32.767464, 33.052525, 39.978756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.821083, 33.494610, 39.413292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089249, 33.202332, 39.361717>,  <33.250149, 33.026966, 39.330772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089249, 33.202332, 39.361717>,  <32.821083, 33.494610, 39.413292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089249, 33.202332, 39.361717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129617, 0.055772, -0.989994,
		0.730574, 0.680423, -0.057320,
		0.670418, -0.730694, -0.128941,
		33.290375, 32.983124, 39.323036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218975, 33.856152, 38.986698>,  <32.821083, 33.494610, 39.413292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218975, 33.856152, 38.986698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.358040, 33.485695, 38.928200>,  <33.441479, 33.263420, 38.893101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.358040, 33.485695, 38.928200>,  <33.218975, 33.856152, 38.986698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358040, 33.485695, 38.928200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003692, 0.154621, -0.987967,
		0.937612, 0.344020, 0.050337,
		0.347663, -0.926144, -0.146244,
		33.462337, 33.207851, 38.884327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873924, 33.946445, 38.629772>,  <33.218975, 33.856152, 38.986698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873924, 33.946445, 38.629772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701244, 33.592403, 38.560234>,  <33.597637, 33.379978, 38.518513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701244, 33.592403, 38.560234>,  <33.873924, 33.946445, 38.629772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701244, 33.592403, 38.560234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001538, 0.192003, -0.981393,
		0.902018, -0.423930, -0.081526,
		-0.431695, -0.885109, -0.173842,
		33.571735, 33.326870, 38.508083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067471, 33.758381, 37.997562>,  <33.873924, 33.946445, 38.629772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067471, 33.758381, 37.997562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.781227, 33.482792, 38.043560>,  <33.609482, 33.317440, 38.071159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.781227, 33.482792, 38.043560>,  <34.067471, 33.758381, 37.997562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781227, 33.482792, 38.043560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276525, 0.128250, -0.952410,
		0.641437, -0.713350, -0.282295,
		-0.715607, -0.688973, 0.114995,
		33.566544, 33.276100, 38.078060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181667, 33.302071, 37.478874>,  <34.067471, 33.758381, 37.997562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181667, 33.302071, 37.478874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798046, 33.311424, 37.591770>,  <33.567871, 33.317036, 37.659508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798046, 33.311424, 37.591770>,  <34.181667, 33.302071, 37.478874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.798046, 33.311424, 37.591770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266283, 0.264939, -0.926769,
		-0.096450, -0.963982, -0.247865,
		-0.959057, 0.023385, 0.282245,
		33.510330, 33.318439, 37.676445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082542, 32.551991, 37.330490>,  <34.181667, 33.302071, 37.478874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082542, 32.551991, 37.330490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.295399, 32.260208, 37.158577>,  <34.423115, 32.085140, 37.055428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.295399, 32.260208, 37.158577>,  <34.082542, 32.551991, 37.330490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.295399, 32.260208, 37.158577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649326, 0.025864, 0.760070,
		-0.543322, -0.683538, 0.487419,
		0.532143, -0.729457, -0.429787,
		34.455040, 32.041370, 37.029640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215485, 31.909887, 37.719734>,  <34.082542, 32.551991, 37.330490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215485, 31.909887, 37.719734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.522652, 31.920607, 37.463737>,  <34.706951, 31.927038, 37.310139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.522652, 31.920607, 37.463737>,  <34.215485, 31.909887, 37.719734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.522652, 31.920607, 37.463737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638943, 0.038658, 0.768282,
		0.045361, -0.998892, 0.012537,
		0.767916, 0.026840, -0.639988,
		34.753029, 31.928646, 37.271740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655285, 31.359150, 37.890366>,  <34.215485, 31.909887, 37.719734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.655285, 31.359150, 37.890366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.888702, 31.622084, 37.699623>,  <35.028751, 31.779844, 37.585178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.888702, 31.622084, 37.699623>,  <34.655285, 31.359150, 37.890366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.888702, 31.622084, 37.699623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538877, 0.125851, 0.832930,
		0.607526, -0.743016, -0.280783,
		0.583543, 0.657334, -0.476852,
		35.063766, 31.819284, 37.556568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311485, 31.172960, 38.049648>,  <34.655285, 31.359150, 37.890366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311485, 31.172960, 38.049648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.396103, 31.533222, 37.897823>,  <35.446873, 31.749380, 37.806728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.396103, 31.533222, 37.897823>,  <35.311485, 31.172960, 38.049648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396103, 31.533222, 37.897823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707888, 0.126578, 0.694890,
		0.673901, -0.415687, -0.610787,
		0.211545, 0.900657, -0.379561,
		35.459568, 31.803419, 37.783955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006912, 31.136189, 37.927727>,  <35.311485, 31.172960, 38.049648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006912, 31.136189, 37.927727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882526, 31.512289, 37.983196>,  <35.807896, 31.737949, 38.016476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882526, 31.512289, 37.983196>,  <36.006912, 31.136189, 37.927727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882526, 31.512289, 37.983196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662995, 0.110059, 0.740489,
		0.680984, 0.322203, -0.657607,
		-0.310963, 0.940251, 0.138670,
		35.789238, 31.794365, 38.024796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633926, 31.455704, 38.005959>,  <36.006912, 31.136189, 37.927727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633926, 31.455704, 38.005959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352470, 31.694685, 38.159809>,  <36.183598, 31.838074, 38.252121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352470, 31.694685, 38.159809>,  <36.633926, 31.455704, 38.005959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352470, 31.694685, 38.159809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551230, 0.117404, 0.826052,
		0.448372, 0.793262, -0.411945,
		-0.703639, 0.597455, 0.384629,
		36.141380, 31.873920, 38.275196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043201, 31.985899, 38.427731>,  <36.633926, 31.455704, 38.005959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043201, 31.985899, 38.427731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.666218, 31.980522, 38.561356>,  <36.440029, 31.977295, 38.641529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.666218, 31.980522, 38.561356>,  <37.043201, 31.985899, 38.427731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666218, 31.980522, 38.561356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331263, 0.097559, 0.938481,
		-0.045207, 0.995139, -0.087492,
		-0.942455, -0.013443, 0.334063,
		36.383480, 31.976490, 38.661575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192829, 32.219402, 39.022495>,  <37.043201, 31.985899, 38.427731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192829, 32.219402, 39.022495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811653, 32.110733, 39.076321>,  <36.582947, 32.045532, 39.108616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811653, 32.110733, 39.076321>,  <37.192829, 32.219402, 39.022495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811653, 32.110733, 39.076321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098635, 0.141870, 0.984959,
		-0.286678, 0.951875, -0.108396,
		-0.952936, -0.271674, 0.134559,
		36.525772, 32.029232, 39.116688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885254, 32.686718, 39.462994>,  <37.192829, 32.219402, 39.022495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885254, 32.686718, 39.462994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.662853, 32.355202, 39.488190>,  <36.529411, 32.156292, 39.503307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.662853, 32.355202, 39.488190>,  <36.885254, 32.686718, 39.462994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662853, 32.355202, 39.488190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008706, 0.081590, 0.996628,
		-0.831134, 0.553581, -0.052580,
		-0.556005, -0.828789, 0.062993,
		36.496052, 32.106564, 39.507088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321312, 32.809822, 39.957878>,  <36.885254, 32.686718, 39.462994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321312, 32.809822, 39.957878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334038, 32.410233, 39.944950>,  <36.341675, 32.170479, 39.937191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334038, 32.410233, 39.944950>,  <36.321312, 32.809822, 39.957878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334038, 32.410233, 39.944950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131388, -0.036238, 0.990668,
		-0.990820, -0.027273, -0.132405,
		0.031817, -0.998971, -0.032322,
		36.343582, 32.110542, 39.935253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883518, 32.656471, 40.497864>,  <36.321312, 32.809822, 39.957878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883518, 32.656471, 40.497864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.102474, 32.330143, 40.423244>,  <36.233849, 32.134346, 40.378475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.102474, 32.330143, 40.423244>,  <35.883518, 32.656471, 40.497864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102474, 32.330143, 40.423244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069128, -0.178066, 0.981587,
		-0.834017, -0.550208, -0.041076,
		0.547391, -0.815821, -0.186545,
		36.266693, 32.085396, 40.367279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568611, 32.213505, 40.939415>,  <35.883518, 32.656471, 40.497864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568611, 32.213505, 40.939415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931751, 32.069794, 40.852947>,  <36.149635, 31.983566, 40.801067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931751, 32.069794, 40.852947>,  <35.568611, 32.213505, 40.939415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931751, 32.069794, 40.852947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118069, -0.275651, 0.953979,
		-0.402337, -0.891590, -0.207829,
		0.907846, -0.359283, -0.216174,
		36.204105, 31.962009, 40.788094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665703, 31.646406, 41.512596>,  <35.568611, 32.213505, 40.939415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665703, 31.646406, 41.512596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024700, 31.742008, 41.364338>,  <36.240097, 31.799370, 41.275383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024700, 31.742008, 41.364338>,  <35.665703, 31.646406, 41.512596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024700, 31.742008, 41.364338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405947, -0.119216, 0.906088,
		0.172371, -0.963672, -0.204019,
		0.897494, 0.239004, -0.370650,
		36.293949, 31.813709, 41.253143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143162, 31.222174, 41.942863>,  <35.665703, 31.646406, 41.512596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143162, 31.222174, 41.942863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380371, 31.500547, 41.780876>,  <36.522697, 31.667572, 41.683685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380371, 31.500547, 41.780876>,  <36.143162, 31.222174, 41.942863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380371, 31.500547, 41.780876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518515, 0.054709, 0.853317,
		0.616009, -0.716017, -0.328410,
		0.593022, 0.695936, -0.404966,
		36.558277, 31.709328, 41.659386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768627, 31.006083, 42.023582>,  <36.143162, 31.222174, 41.942863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768627, 31.006083, 42.023582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.809200, 31.401846, 41.982052>,  <36.833546, 31.639305, 41.957134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.809200, 31.401846, 41.982052>,  <36.768627, 31.006083, 42.023582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809200, 31.401846, 41.982052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676311, 0.007963, 0.736573,
		0.729599, -0.144934, -0.668340,
		0.101433, 0.989409, -0.103830,
		36.839630, 31.698669, 41.950901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450035, 31.124039, 42.086720>,  <36.768627, 31.006083, 42.023582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450035, 31.124039, 42.086720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.286777, 31.479813, 42.169014>,  <37.188824, 31.693277, 42.218391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.286777, 31.479813, 42.169014>,  <37.450035, 31.124039, 42.086720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286777, 31.479813, 42.169014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568466, 0.071275, 0.819613,
		0.714327, 0.451474, -0.534703,
		-0.408145, 0.889433, 0.205734,
		37.164333, 31.746643, 42.230736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945633, 31.510597, 42.254669>,  <37.450035, 31.124039, 42.086720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.945633, 31.510597, 42.254669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.630653, 31.705275, 42.405960>,  <37.441666, 31.822081, 42.496735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.630653, 31.705275, 42.405960>,  <37.945633, 31.510597, 42.254669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.630653, 31.705275, 42.405960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421829, -0.021909, 0.906411,
		0.449432, 0.873297, -0.188050,
		-0.787446, 0.486695, 0.378228,
		37.394421, 31.851282, 42.519428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155731, 32.077023, 42.825474>,  <37.945633, 31.510597, 42.254669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155731, 32.077023, 42.825474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769543, 32.025448, 42.916023>,  <37.537830, 31.994503, 42.970352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769543, 32.025448, 42.916023>,  <38.155731, 32.077023, 42.825474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769543, 32.025448, 42.916023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219936, 0.062346, 0.973520,
		-0.139637, 0.989691, -0.031835,
		-0.965469, -0.128938, 0.226374,
		37.479900, 31.986767, 42.983936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136051, 32.292431, 43.415485>,  <38.155731, 32.077023, 42.825474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136051, 32.292431, 43.415485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.777973, 32.114193, 43.418739>,  <37.563126, 32.007252, 43.420692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.777973, 32.114193, 43.418739>,  <38.136051, 32.292431, 43.415485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777973, 32.114193, 43.418739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038212, -0.058546, 0.997553,
		-0.444028, 0.893318, 0.069437,
		-0.895198, -0.445595, 0.008139,
		37.509415, 31.980515, 43.421181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675022, 32.597195, 43.852081>,  <38.136051, 32.292431, 43.415485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675022, 32.597195, 43.852081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.546734, 32.219913, 43.817436>,  <37.469761, 31.993544, 43.796650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.546734, 32.219913, 43.817436>,  <37.675022, 32.597195, 43.852081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546734, 32.219913, 43.817436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093511, -0.122529, 0.988050,
		-0.942545, 0.308793, 0.127498,
		-0.320725, -0.943204, -0.086613,
		37.450516, 31.936953, 43.791451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321224, 32.613682, 44.350277>,  <37.675022, 32.597195, 43.852081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.321224, 32.613682, 44.350277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.326660, 32.219189, 44.284355>,  <37.329922, 31.982492, 44.244801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.326660, 32.219189, 44.284355>,  <37.321224, 32.613682, 44.350277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326660, 32.219189, 44.284355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120806, -0.161993, 0.979369,
		-0.992583, -0.033218, 0.116941,
		0.013589, -0.986233, -0.164804,
		37.330738, 31.923319, 44.234913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785629, 32.267982, 44.801708>,  <37.321224, 32.613682, 44.350277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785629, 32.267982, 44.801708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075134, 32.011185, 44.700500>,  <37.248837, 31.857107, 44.639774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075134, 32.011185, 44.700500>,  <36.785629, 32.267982, 44.801708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075134, 32.011185, 44.700500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090981, -0.274694, 0.957218,
		-0.684029, -0.715815, -0.140403,
		0.723759, -0.641990, -0.253024,
		37.292263, 31.818588, 44.624592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715164, 31.572102, 44.971729>,  <36.785629, 32.267982, 44.801708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715164, 31.572102, 44.971729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104481, 31.663620, 44.964260>,  <37.338070, 31.718531, 44.959778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104481, 31.663620, 44.964260>,  <36.715164, 31.572102, 44.971729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104481, 31.663620, 44.964260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094615, -0.325719, 0.940721,
		0.209153, -0.917365, -0.338668,
		0.973295, 0.228797, -0.018671,
		37.396469, 31.732260, 44.958660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100403, 30.975657, 45.190113>,  <36.715164, 31.572102, 44.971729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100403, 30.975657, 45.190113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.314346, 31.306070, 45.261208>,  <37.442711, 31.504318, 45.303864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.314346, 31.306070, 45.261208>,  <37.100403, 30.975657, 45.190113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314346, 31.306070, 45.261208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007912, -0.215244, 0.976528,
		0.844905, -0.520898, -0.121661,
		0.534859, 0.826036, 0.177740,
		37.474804, 31.553881, 45.314529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565216, 30.704874, 45.670872>,  <37.100403, 30.975657, 45.190113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565216, 30.704874, 45.670872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583450, 31.103113, 45.703625>,  <37.594391, 31.342056, 45.723278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583450, 31.103113, 45.703625>,  <37.565216, 30.704874, 45.670872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583450, 31.103113, 45.703625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007000, -0.081649, 0.996636,
		0.998936, -0.046007, 0.003247,
		0.045587, 0.995599, 0.081884,
		37.597126, 31.401793, 45.728191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067463, 30.822435, 46.187668>,  <37.565216, 30.704874, 45.670872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067463, 30.822435, 46.187668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.859379, 31.160480, 46.138412>,  <37.734528, 31.363308, 46.108860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.859379, 31.160480, 46.138412>,  <38.067463, 30.822435, 46.187668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859379, 31.160480, 46.138412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123115, 0.216885, 0.968403,
		0.845117, 0.488614, -0.216872,
		-0.520211, 0.845114, -0.123138,
		37.703316, 31.414015, 46.101471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476189, 31.422607, 46.331470>,  <38.067463, 30.822435, 46.187668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476189, 31.422607, 46.331470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.109905, 31.554449, 46.423424>,  <37.890137, 31.633554, 46.478596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.109905, 31.554449, 46.423424>,  <38.476189, 31.422607, 46.331470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109905, 31.554449, 46.423424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323452, 0.265086, 0.908355,
		0.238460, 0.906140, -0.349352,
		-0.915705, 0.329605, 0.229880,
		37.835194, 31.653330, 46.492390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610050, 32.089729, 46.700500>,  <38.476189, 31.422607, 46.331470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610050, 32.089729, 46.700500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257530, 31.929630, 46.800991>,  <38.046017, 31.833570, 46.861286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257530, 31.929630, 46.800991>,  <38.610050, 32.089729, 46.700500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257530, 31.929630, 46.800991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225642, 0.110681, 0.967902,
		-0.415209, 0.909697, -0.007230,
		-0.881298, -0.400250, 0.251222,
		37.993141, 31.809555, 46.876358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360363, 32.562840, 47.108845>,  <38.610050, 32.089729, 46.700500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360363, 32.562840, 47.108845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.161438, 32.225559, 47.190510>,  <38.042084, 32.023190, 47.239510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.161438, 32.225559, 47.190510>,  <38.360363, 32.562840, 47.108845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161438, 32.225559, 47.190510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232990, 0.096878, 0.967641,
		-0.835699, 0.528791, 0.148279,
		-0.497316, -0.843205, 0.204164,
		38.012245, 31.972597, 47.251759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964355, 32.663197, 47.626606>,  <38.360363, 32.562840, 47.108845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964355, 32.663197, 47.626606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002140, 32.266144, 47.656944>,  <38.024811, 32.027912, 47.675148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002140, 32.266144, 47.656944>,  <37.964355, 32.663197, 47.626606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002140, 32.266144, 47.656944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306505, 0.101487, 0.946443,
		-0.947170, -0.066154, 0.313834,
		0.094462, -0.992635, 0.075849,
		38.030479, 31.968353, 47.679699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668194, 32.518902, 48.276283>,  <37.964355, 32.663197, 47.626606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668194, 32.518902, 48.276283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.866165, 32.179405, 48.201797>,  <37.984947, 31.975706, 48.157108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.866165, 32.179405, 48.201797>,  <37.668194, 32.518902, 48.276283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866165, 32.179405, 48.201797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151763, -0.126571, 0.980280,
		-0.855576, -0.513431, 0.066164,
		0.494931, -0.848745, -0.186211,
		38.014645, 31.924782, 48.145935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313438, 32.030670, 48.706097>,  <37.668194, 32.518902, 48.276283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313438, 32.030670, 48.706097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.668804, 31.860928, 48.636086>,  <37.882023, 31.759083, 48.594078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.668804, 31.860928, 48.636086>,  <37.313438, 32.030670, 48.706097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668804, 31.860928, 48.636086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157626, -0.076082, 0.984564,
		-0.431122, -0.902293, -0.000703,
		0.888419, -0.424356, -0.175026,
		37.935329, 31.733622, 48.583576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415501, 31.403282, 49.142509>,  <37.313438, 32.030670, 48.706097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415501, 31.403282, 49.142509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.770805, 31.557337, 49.042377>,  <37.983986, 31.649769, 48.982300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.770805, 31.557337, 49.042377>,  <37.415501, 31.403282, 49.142509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770805, 31.557337, 49.042377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311949, -0.105754, 0.944195,
		0.337171, -0.916780, -0.214080,
		0.888259, 0.385137, -0.250331,
		38.037285, 31.672878, 48.967278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869915, 30.988827, 49.562370>,  <37.415501, 31.403282, 49.142509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869915, 30.988827, 49.562370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.077179, 31.311790, 49.449516>,  <38.201538, 31.505569, 49.381805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.077179, 31.311790, 49.449516>,  <37.869915, 30.988827, 49.562370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077179, 31.311790, 49.449516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437916, 0.032898, 0.898413,
		0.734671, -0.589070, -0.336532,
		0.518158, 0.807412, -0.282133,
		38.232628, 31.554014, 49.364876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544449, 30.821018, 49.878170>,  <37.869915, 30.988827, 49.562370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544449, 30.821018, 49.878170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.540127, 31.213886, 49.803097>,  <38.537533, 31.449608, 49.758053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.540127, 31.213886, 49.803097>,  <38.544449, 30.821018, 49.878170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540127, 31.213886, 49.803097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589243, 0.157900, 0.792377,
		0.807884, -0.102029, -0.580443,
		-0.010806, 0.982170, -0.187685,
		38.536884, 31.508537, 49.746792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237656, 31.050926, 49.925007>,  <38.544449, 30.821018, 49.878170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237656, 31.050926, 49.925007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.004391, 31.372211, 49.973625>,  <38.864433, 31.564983, 50.002796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.004391, 31.372211, 49.973625>,  <39.237656, 31.050926, 49.925007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004391, 31.372211, 49.973625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477839, 0.218157, 0.850927,
		0.656959, 0.554308, -0.511027,
		-0.583160, 0.803213, 0.121550,
		38.829441, 31.613174, 50.010090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743484, 31.580492, 50.135563>,  <39.237656, 31.050926, 49.925007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.743484, 31.580492, 50.135563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380260, 31.700760, 50.252197>,  <39.162327, 31.772921, 50.322178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380260, 31.700760, 50.252197>,  <39.743484, 31.580492, 50.135563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380260, 31.700760, 50.252197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361579, 0.211388, 0.908062,
		0.211388, 0.930007, -0.300669,
		-0.908062, 0.300669, 0.291586,
		39.107841, 31.790960, 50.339672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796875, 32.242477, 50.376213>,  <39.743484, 31.580492, 50.135563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796875, 32.242477, 50.376213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460129, 32.113014, 50.548958>,  <39.258080, 32.035336, 50.652603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460129, 32.113014, 50.548958>,  <39.796875, 32.242477, 50.376213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460129, 32.113014, 50.548958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410533, 0.135368, 0.901742,
		-0.350318, 0.936440, 0.018911,
		-0.841867, -0.323660, 0.431861,
		39.207569, 32.015915, 50.678516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637184, 32.683975, 50.888844>,  <39.796875, 32.242477, 50.376213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637184, 32.683975, 50.888844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.485996, 32.325893, 50.983280>,  <39.395283, 32.111042, 51.039944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.485996, 32.325893, 50.983280>,  <39.637184, 32.683975, 50.888844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485996, 32.325893, 50.983280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326716, 0.109631, 0.938743,
		-0.866254, 0.431952, 0.251042,
		-0.377970, -0.895209, 0.236094,
		39.372604, 32.057331, 51.054108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.019539, 33.226067, 50.512890>,  <39.637184, 32.683975, 50.888844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.019539, 33.226067, 50.512890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.291950, 33.518871, 50.505306>,  <40.455395, 33.694553, 50.500755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.291950, 33.518871, 50.505306>,  <40.019539, 33.226067, 50.512890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.291950, 33.518871, 50.505306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253310, 0.211215, -0.944046,
		-0.687051, 0.647721, 0.329269,
		0.681025, 0.732015, -0.018959,
		40.496258, 33.738476, 50.499619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625763, 33.862232, 50.379189>,  <40.019539, 33.226067, 50.512890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625763, 33.862232, 50.379189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004173, 33.952324, 50.285980>,  <40.231220, 34.006378, 50.230053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004173, 33.952324, 50.285980>,  <39.625763, 33.862232, 50.379189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004173, 33.952324, 50.285980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259483, 0.095652, -0.960999,
		-0.194153, 0.969600, 0.148932,
		0.946030, 0.225226, -0.233024,
		40.287983, 34.019894, 50.216072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591286, 34.368149, 49.856796>,  <39.625763, 33.862232, 50.379189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591286, 34.368149, 49.856796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952629, 34.207882, 49.795597>,  <40.169434, 34.111721, 49.758877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952629, 34.207882, 49.795597>,  <39.591286, 34.368149, 49.856796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952629, 34.207882, 49.795597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158386, 0.019870, -0.987177,
		0.398571, 0.916007, -0.045511,
		0.903357, -0.400669, -0.153002,
		40.223637, 34.087681, 49.749695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.850880, 34.700409, 49.277431>,  <39.591286, 34.368149, 49.856796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.850880, 34.700409, 49.277431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.107918, 34.394104, 49.287880>,  <40.262142, 34.210323, 49.294151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.107918, 34.394104, 49.287880>,  <39.850880, 34.700409, 49.277431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.107918, 34.394104, 49.287880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064821, -0.088306, -0.993982,
		0.763458, 0.637036, -0.106383,
		0.642597, -0.765759, 0.026125,
		40.300697, 34.164375, 49.295719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.447975, 34.757130, 48.818497>,  <39.850880, 34.700409, 49.277431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.447975, 34.757130, 48.818497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.455635, 34.361637, 48.877884>,  <40.460232, 34.124340, 48.913517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.455635, 34.361637, 48.877884>,  <40.447975, 34.757130, 48.818497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.455635, 34.361637, 48.877884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081634, -0.146455, -0.985843,
		0.996478, 0.030996, 0.077910,
		0.019147, -0.988732, 0.148469,
		40.461380, 34.065018, 48.922424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.160305, 34.401863, 48.551289>,  <40.447975, 34.757130, 48.818497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.160305, 34.401863, 48.551289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.851131, 34.149380, 48.577023>,  <40.665627, 33.997890, 48.592464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.851131, 34.149380, 48.577023>,  <41.160305, 34.401863, 48.551289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.851131, 34.149380, 48.577023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135231, -0.262965, -0.955281,
		0.619903, -0.729673, 0.288615,
		-0.772938, -0.631211, 0.064339,
		40.619251, 33.960018, 48.596325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.340942, 33.717354, 48.280880>,  <41.160305, 34.401863, 48.551289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.340942, 33.717354, 48.280880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.944458, 33.760815, 48.250683>,  <40.706570, 33.786892, 48.232567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.944458, 33.760815, 48.250683>,  <41.340942, 33.717354, 48.280880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.944458, 33.760815, 48.250683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049102, -0.227707, -0.972491,
		-0.122855, -0.967648, 0.220370,
		-0.991209, 0.108655, -0.075489,
		40.647095, 33.793411, 48.228035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.150215, 33.232777, 47.830772>,  <41.340942, 33.717354, 48.280880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.150215, 33.232777, 47.830772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.819195, 33.456284, 47.809059>,  <40.620583, 33.590385, 47.796032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.819195, 33.456284, 47.809059>,  <41.150215, 33.232777, 47.830772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.819195, 33.456284, 47.809059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011698, -0.079508, -0.996766,
		-0.561272, -0.825507, 0.059260,
		-0.827549, 0.558764, -0.054282,
		40.570930, 33.623913, 47.792774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803692, 32.981445, 47.182701>,  <41.150215, 33.232777, 47.830772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.803692, 32.981445, 47.182701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.621826, 33.328785, 47.261948>,  <40.512707, 33.537189, 47.309494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.621826, 33.328785, 47.261948>,  <40.803692, 32.981445, 47.182701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.621826, 33.328785, 47.261948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230042, 0.100400, -0.967988,
		-0.860443, -0.485684, 0.154109,
		-0.454664, 0.868350, 0.198116,
		40.485428, 33.589291, 47.321384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.095047, 33.017159, 46.804047>,  <40.803692, 32.981445, 47.182701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.095047, 33.017159, 46.804047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.079502, 33.393982, 46.937325>,  <40.070175, 33.620075, 47.017292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.079502, 33.393982, 46.937325>,  <40.095047, 33.017159, 46.804047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.079502, 33.393982, 46.937325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247904, 0.313932, -0.916510,
		-0.968005, -0.118215, 0.221341,
		-0.038859, 0.942057, 0.333194,
		40.067844, 33.676598, 47.037281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420338, 33.387772, 46.682487>,  <40.095047, 33.017159, 46.804047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.420338, 33.387772, 46.682487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700409, 33.673138, 46.693676>,  <39.868450, 33.844357, 46.700390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700409, 33.673138, 46.693676>,  <39.420338, 33.387772, 46.682487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700409, 33.673138, 46.693676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204269, 0.237715, -0.949613,
		-0.684123, 0.659184, 0.312173,
		0.700178, 0.713420, 0.027976,
		39.910461, 33.887165, 46.702068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100998, 33.927906, 46.574715>,  <39.420338, 33.387772, 46.682487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100998, 33.927906, 46.574715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477386, 34.018658, 46.474232>,  <39.703220, 34.073109, 46.413944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477386, 34.018658, 46.474232>,  <39.100998, 33.927906, 46.574715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477386, 34.018658, 46.474232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304108, 0.240716, -0.921724,
		-0.148653, 0.943706, 0.295502,
		0.940968, 0.226882, -0.251206,
		39.759678, 34.086723, 46.398869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953854, 34.503242, 46.133610>,  <39.100998, 33.927906, 46.574715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953854, 34.503242, 46.133610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.301895, 34.320965, 46.058487>,  <39.510719, 34.211597, 46.013412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.301895, 34.320965, 46.058487>,  <38.953854, 34.503242, 46.133610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.301895, 34.320965, 46.058487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235932, -0.050524, -0.970455,
		0.432740, 0.888703, -0.151473,
		0.870099, -0.455692, -0.187809,
		39.562923, 34.184258, 46.002144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228046, 34.843964, 45.517914>,  <38.953854, 34.503242, 46.133610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228046, 34.843964, 45.517914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.454243, 34.515354, 45.488731>,  <39.589962, 34.318188, 45.471222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.454243, 34.515354, 45.488731>,  <39.228046, 34.843964, 45.517914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454243, 34.515354, 45.488731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129038, -0.000758, -0.991639,
		0.814596, 0.570180, -0.106436,
		0.565493, -0.821520, -0.072957,
		39.623890, 34.268898, 45.466843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691299, 34.949432, 45.008999>,  <39.228046, 34.843964, 45.517914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691299, 34.949432, 45.008999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.683353, 34.549660, 45.019867>,  <39.678585, 34.309795, 45.026386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.683353, 34.549660, 45.019867>,  <39.691299, 34.949432, 45.008999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683353, 34.549660, 45.019867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082578, -0.025438, -0.996260,
		0.996387, -0.022037, -0.082026,
		-0.019868, -0.999434, 0.027166,
		39.677391, 34.249828, 45.028015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106457, 34.724392, 44.384659>,  <39.691299, 34.949432, 45.008999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106457, 34.724392, 44.384659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.931240, 34.380859, 44.490883>,  <39.826111, 34.174740, 44.554619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.931240, 34.380859, 44.490883>,  <40.106457, 34.724392, 44.384659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931240, 34.380859, 44.490883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162343, -0.214982, -0.963030,
		0.884175, -0.464959, -0.045254,
		-0.438041, -0.858834, 0.265565,
		39.799828, 34.123211, 44.570553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243187, 34.223160, 43.957214>,  <40.106457, 34.724392, 44.384659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.243187, 34.223160, 43.957214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916443, 34.050579, 44.110363>,  <39.720398, 33.947033, 44.202251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916443, 34.050579, 44.110363>,  <40.243187, 34.223160, 43.957214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916443, 34.050579, 44.110363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229430, -0.365980, -0.901898,
		0.529248, -0.824567, 0.199967,
		-0.816859, -0.431449, 0.382874,
		39.671387, 33.921143, 44.225224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.213982, 33.481293, 43.867977>,  <40.243187, 34.223160, 43.957214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.213982, 33.481293, 43.867977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829880, 33.592915, 43.870186>,  <39.599419, 33.659889, 43.871510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829880, 33.592915, 43.870186>,  <40.213982, 33.481293, 43.867977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829880, 33.592915, 43.870186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135838, -0.449964, -0.882656,
		-0.243828, -0.848328, 0.469988,
		-0.960259, 0.279058, 0.005521,
		39.541801, 33.676632, 43.871841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833042, 32.931709, 43.581524>,  <40.213982, 33.481293, 43.867977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.833042, 32.931709, 43.581524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.577641, 33.238659, 43.558006>,  <39.424400, 33.422829, 43.543896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.577641, 33.238659, 43.558006>,  <39.833042, 32.931709, 43.581524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.577641, 33.238659, 43.558006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278518, -0.301605, -0.911846,
		-0.717455, -0.565841, 0.406302,
		-0.638503, 0.767371, -0.058791,
		39.386089, 33.468868, 43.540367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343388, 32.651157, 43.237255>,  <39.833042, 32.931709, 43.581524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.343388, 32.651157, 43.237255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.181637, 33.015774, 43.207417>,  <39.084587, 33.234543, 43.189514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.181637, 33.015774, 43.207417>,  <39.343388, 32.651157, 43.237255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.181637, 33.015774, 43.207417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379154, -0.241302, -0.893317,
		-0.832297, -0.332958, 0.443193,
		-0.404381, 0.911544, -0.074593,
		39.060322, 33.289238, 43.185040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590408, 32.645889, 42.900467>,  <39.343388, 32.651157, 43.237255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590408, 32.645889, 42.900467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.695080, 33.031097, 42.874794>,  <38.757885, 33.262222, 42.859390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.695080, 33.031097, 42.874794>,  <38.590408, 32.645889, 42.900467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695080, 33.031097, 42.874794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423161, 0.054710, -0.904401,
		-0.867443, 0.263825, 0.421828,
		0.261681, 0.963018, -0.064183,
		38.773582, 33.320004, 42.855537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026833, 33.070908, 42.678616>,  <38.590408, 32.645889, 42.900467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026833, 33.070908, 42.678616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.359470, 33.257458, 42.557991>,  <38.559055, 33.369389, 42.485619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.359470, 33.257458, 42.557991>,  <38.026833, 33.070908, 42.678616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359470, 33.257458, 42.557991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371979, 0.064531, -0.925995,
		-0.412403, 0.882229, 0.227146,
		0.831598, 0.466377, -0.301558,
		38.608952, 33.397369, 42.467525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812401, 33.551102, 42.219658>,  <38.026833, 33.070908, 42.678616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.812401, 33.551102, 42.219658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.199051, 33.516098, 42.123344>,  <38.431042, 33.495094, 42.065556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.199051, 33.516098, 42.123344>,  <37.812401, 33.551102, 42.219658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199051, 33.516098, 42.123344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240740, 0.011182, -0.970525,
		0.087621, 0.996101, -0.010258,
		0.966627, -0.087508, -0.240781,
		38.489040, 33.489845, 42.051109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914364, 33.951374, 41.615982>,  <37.812401, 33.551102, 42.219658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914364, 33.951374, 41.615982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.249577, 33.733208, 41.610073>,  <38.450706, 33.602306, 41.606529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.249577, 33.733208, 41.610073>,  <37.914364, 33.951374, 41.615982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.249577, 33.733208, 41.610073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053234, -0.054795, -0.997078,
		0.543013, 0.836373, -0.074955,
		0.838036, -0.545416, -0.014769,
		38.500988, 33.569584, 41.605644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487789, 34.330296, 41.099831>,  <37.914364, 33.951374, 41.615982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487789, 34.330296, 41.099831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.572628, 33.942722, 41.150711>,  <38.623531, 33.710178, 41.181240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.572628, 33.942722, 41.150711>,  <38.487789, 34.330296, 41.099831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.572628, 33.942722, 41.150711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039791, -0.121493, -0.991795,
		0.976439, 0.215416, 0.012787,
		0.212095, -0.968935, 0.127202,
		38.636257, 33.652042, 41.188873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935860, 34.149647, 40.525303>,  <38.487789, 34.330296, 41.099831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935860, 34.149647, 40.525303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.831524, 33.785095, 40.652653>,  <38.768925, 33.566364, 40.729061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.831524, 33.785095, 40.652653>,  <38.935860, 34.149647, 40.525303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831524, 33.785095, 40.652653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106199, -0.354874, -0.928863,
		0.959524, -0.208469, 0.189351,
		-0.260835, -0.911375, 0.318372,
		38.753273, 33.511684, 40.748165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491756, 33.646927, 40.375000>,  <38.935860, 34.149647, 40.525303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.491756, 33.646927, 40.375000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.137836, 33.461720, 40.395962>,  <38.925484, 33.350594, 40.408539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.137836, 33.461720, 40.395962>,  <39.491756, 33.646927, 40.375000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137836, 33.461720, 40.395962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143973, -0.378609, -0.914290,
		0.443178, -0.801416, 0.401654,
		-0.884797, -0.463021, 0.052409,
		38.872398, 33.322815, 40.411686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562851, 32.956367, 40.174152>,  <39.491756, 33.646927, 40.375000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562851, 32.956367, 40.174152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182308, 33.067009, 40.119869>,  <38.953983, 33.133392, 40.087299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182308, 33.067009, 40.119869>,  <39.562851, 32.956367, 40.174152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182308, 33.067009, 40.119869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085849, -0.185045, -0.978973,
		-0.295901, -0.943000, 0.152297,
		-0.951353, 0.276604, -0.135710,
		38.896904, 33.149990, 40.079155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370174, 32.497757, 39.698769>,  <39.562851, 32.956367, 40.174152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.370174, 32.497757, 39.698769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.073753, 32.765171, 39.673748>,  <38.895901, 32.925617, 39.658737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.073753, 32.765171, 39.673748>,  <39.370174, 32.497757, 39.698769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073753, 32.765171, 39.673748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075570, -0.175609, -0.981555,
		-0.667186, -0.722652, 0.180656,
		-0.741047, 0.668532, -0.062553,
		38.851440, 32.965733, 39.654984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960560, 32.235252, 39.172745>,  <39.370174, 32.497757, 39.698769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960560, 32.235252, 39.172745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.831551, 32.612881, 39.200176>,  <38.754147, 32.839458, 39.216637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.831551, 32.612881, 39.200176>,  <38.960560, 32.235252, 39.172745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831551, 32.612881, 39.200176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143742, 0.022765, -0.989353,
		-0.935585, -0.328945, 0.128361,
		-0.322520, 0.944075, 0.068582,
		38.734795, 32.896103, 39.220753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368301, 32.342758, 38.657681>,  <38.960560, 32.235252, 39.172745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368301, 32.342758, 38.657681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.527313, 32.703461, 38.725578>,  <38.622719, 32.919880, 38.766315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.527313, 32.703461, 38.725578>,  <38.368301, 32.342758, 38.657681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527313, 32.703461, 38.725578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019847, 0.176496, -0.984101,
		-0.917375, 0.394578, 0.052265,
		0.397530, 0.901752, 0.169744,
		38.646572, 32.973988, 38.776501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805969, 32.987961, 38.399467>,  <38.368301, 32.342758, 38.657681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805969, 32.987961, 38.399467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.169308, 33.154564, 38.414574>,  <38.387310, 33.254524, 38.423637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.169308, 33.154564, 38.414574>,  <37.805969, 32.987961, 38.399467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.169308, 33.154564, 38.414574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008736, 0.109176, -0.993984,
		-0.418123, 0.902554, 0.102809,
		0.908349, 0.416506, 0.037764,
		38.441811, 33.279514, 38.425903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824146, 33.547623, 37.945927>,  <37.805969, 32.987961, 38.399467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824146, 33.547623, 37.945927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.211132, 33.455063, 37.986858>,  <38.443321, 33.399529, 38.011417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.211132, 33.455063, 37.986858>,  <37.824146, 33.547623, 37.945927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211132, 33.455063, 37.986858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125928, 0.089583, -0.987986,
		0.219453, 0.968725, 0.115808,
		0.967462, -0.231400, 0.102331,
		38.501369, 33.385643, 38.017559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228035, 34.084263, 37.614594>,  <37.824146, 33.547623, 37.945927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.228035, 34.084263, 37.614594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.502827, 33.793621, 37.618748>,  <38.667702, 33.619236, 37.621243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.502827, 33.793621, 37.618748>,  <38.228035, 34.084263, 37.614594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.502827, 33.793621, 37.618748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322214, 0.291769, -0.900583,
		0.651332, 0.622032, 0.434561,
		0.686982, -0.726600, 0.010388,
		38.708920, 33.575642, 37.621864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889908, 34.373459, 37.504917>,  <38.228035, 34.084263, 37.614594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889908, 34.373459, 37.504917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.912254, 33.984650, 37.413658>,  <38.925663, 33.751366, 37.358902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.912254, 33.984650, 37.413658>,  <38.889908, 34.373459, 37.504917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912254, 33.984650, 37.413658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513926, 0.223904, -0.828098,
		0.856014, -0.070993, 0.512055,
		0.055862, -0.972022, -0.228150,
		38.929012, 33.693043, 37.345215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534302, 34.397545, 37.131355>,  <38.889908, 34.373459, 37.504917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.534302, 34.397545, 37.131355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366825, 34.054295, 37.012482>,  <39.266338, 33.848343, 36.941158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366825, 34.054295, 37.012482>,  <39.534302, 34.397545, 37.131355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366825, 34.054295, 37.012482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401719, 0.118477, -0.908067,
		0.814445, -0.499584, 0.295120,
		-0.418691, -0.858125, -0.297185,
		39.241219, 33.796856, 36.923325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074905, 34.005894, 36.862457>,  <39.534302, 34.397545, 37.131355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074905, 34.005894, 36.862457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.742664, 33.847775, 36.705566>,  <39.543320, 33.752903, 36.611431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.742664, 33.847775, 36.705566>,  <40.074905, 34.005894, 36.862457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742664, 33.847775, 36.705566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403098, 0.059159, -0.913243,
		0.384204, -0.916647, 0.110205,
		-0.830602, -0.395295, -0.392228,
		39.493484, 33.729187, 36.587898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.366619, 33.652561, 36.258545>,  <40.074905, 34.005894, 36.862457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.366619, 33.652561, 36.258545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.973938, 33.697704, 36.197201>,  <39.738327, 33.724789, 36.160397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.973938, 33.697704, 36.197201>,  <40.366619, 33.652561, 36.258545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973938, 33.697704, 36.197201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168842, 0.143642, -0.975120,
		-0.088022, -0.983173, -0.160070,
		-0.981705, 0.112858, -0.153357,
		39.679428, 33.731564, 36.151196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180595, 33.138958, 35.821709>,  <40.366619, 33.652561, 36.258545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180595, 33.138958, 35.821709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.920944, 33.442127, 35.795845>,  <39.765152, 33.624031, 35.780327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.920944, 33.442127, 35.795845>,  <40.180595, 33.138958, 35.821709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.920944, 33.442127, 35.795845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273148, 0.152914, -0.949741,
		-0.709947, -0.634164, -0.306287,
		-0.649127, 0.757927, -0.064660,
		39.726208, 33.669506, 35.776447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.867077, 33.043774, 35.234486>,  <40.180595, 33.138958, 35.821709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.867077, 33.043774, 35.234486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.862350, 33.431538, 35.332558>,  <39.859516, 33.664196, 35.391399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.862350, 33.431538, 35.332558>,  <39.867077, 33.043774, 35.234486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862350, 33.431538, 35.332558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574829, 0.207212, -0.791602,
		-0.818188, 0.131583, -0.559691,
		-0.011813, 0.969406, 0.245176,
		39.858807, 33.722359, 35.406109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577133, 33.463528, 34.747311>,  <39.867077, 33.043774, 35.234486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577133, 33.463528, 34.747311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.849236, 33.696220, 34.925678>,  <40.012497, 33.835835, 35.032700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.849236, 33.696220, 34.925678>,  <39.577133, 33.463528, 34.747311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.849236, 33.696220, 34.925678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496086, 0.082453, -0.864350,
		-0.539584, 0.809194, -0.232498,
		0.680256, 0.581728, 0.445920,
		40.053314, 33.870739, 35.059456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730309, 34.139965, 34.469116>,  <39.577133, 33.463528, 34.747311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.730309, 34.139965, 34.469116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039886, 33.961372, 34.648743>,  <40.225632, 33.854218, 34.756519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039886, 33.961372, 34.648743>,  <39.730309, 34.139965, 34.469116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039886, 33.961372, 34.648743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529574, 0.067510, -0.845573,
		0.347217, 0.892242, 0.288694,
		0.773946, -0.446482, 0.449067,
		40.272072, 33.827427, 34.783463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.432056, 34.479744, 34.367805>,  <39.730309, 34.139965, 34.469116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.432056, 34.479744, 34.367805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.438099, 34.081818, 34.408031>,  <40.441723, 33.843063, 34.432167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.438099, 34.081818, 34.408031>,  <40.432056, 34.479744, 34.367805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.438099, 34.081818, 34.408031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621444, -0.069452, -0.780374,
		0.783313, 0.074282, 0.617173,
		0.015104, -0.994816, 0.100565,
		40.442631, 33.783371, 34.438202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.047981, 34.221321, 34.601723>,  <40.432056, 34.479744, 34.367805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.047981, 34.221321, 34.601723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.840096, 33.993484, 34.347019>,  <40.715363, 33.856781, 34.194199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.840096, 33.993484, 34.347019>,  <41.047981, 34.221321, 34.601723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.840096, 33.993484, 34.347019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770013, 0.010578, -0.637941,
		0.370104, -0.821857, 0.433099,
		-0.519715, -0.569596, -0.636755,
		40.684181, 33.822605, 34.155994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.513741, 33.698975, 34.342136>,  <41.047981, 34.221321, 34.601723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.513741, 33.698975, 34.342136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.233047, 33.717648, 34.057774>,  <41.064632, 33.728851, 33.887157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.233047, 33.717648, 34.057774>,  <41.513741, 33.698975, 34.342136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.233047, 33.717648, 34.057774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712264, 0.068061, -0.698604,
		0.015773, -0.996588, -0.081010,
		-0.701735, 0.046682, -0.710908,
		41.022526, 33.731651, 33.844501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.104492, 33.614201, 34.834515>,  <41.513741, 33.698975, 34.342136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.104492, 33.614201, 34.834515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.169952, 33.892826, 34.555084>,  <42.209229, 34.060001, 34.387424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.169952, 33.892826, 34.555084>,  <42.104492, 33.614201, 34.834515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.169952, 33.892826, 34.555084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327928, -0.629448, -0.704457,
		-0.930419, 0.344372, 0.125411,
		0.163655, 0.696566, -0.698579,
		42.219048, 34.101795, 34.345509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.755356, 33.971943, 34.512436>,  <42.104492, 33.614201, 34.834515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.755356, 33.971943, 34.512436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.141609, 34.075893, 34.510830>,  <43.373360, 34.138264, 34.509865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.141609, 34.075893, 34.510830>,  <42.755356, 33.971943, 34.512436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.141609, 34.075893, 34.510830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255018, 0.944384, -0.207618,
		-0.050161, 0.201507, 0.978202,
		0.965634, 0.259873, -0.004017,
		43.431301, 34.153854, 34.509624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.909531, 34.526493, 35.038303>,  <42.755356, 33.971943, 34.512436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.909531, 34.526493, 35.038303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.146656, 34.528114, 34.716171>,  <43.288929, 34.529087, 34.522892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.146656, 34.528114, 34.716171>,  <42.909531, 34.526493, 35.038303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.146656, 34.528114, 34.716171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176558, 0.976314, -0.125049,
		0.785749, 0.216319, 0.579487,
		0.592812, 0.004056, -0.805331,
		43.324501, 34.529331, 34.474571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.304058, 35.046047, 35.121334>,  <42.909531, 34.526493, 35.038303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.304058, 35.046047, 35.121334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.309647, 34.990185, 34.725292>,  <43.313000, 34.956665, 34.487667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.309647, 34.990185, 34.725292>,  <43.304058, 35.046047, 35.121334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.309647, 34.990185, 34.725292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202066, 0.969374, -0.139586,
		0.979272, 0.202016, -0.014676,
		0.013972, -0.139658, -0.990101,
		43.313839, 34.948288, 34.428261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.985409, 35.467918, 34.790436>,  <43.304058, 35.046047, 35.121334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.985409, 35.467918, 34.790436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.680172, 35.397514, 34.541691>,  <43.497028, 35.355274, 34.392445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.680172, 35.397514, 34.541691>,  <43.985409, 35.467918, 34.790436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.680172, 35.397514, 34.541691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245929, 0.968896, 0.027556,
		0.597666, 0.173961, -0.782645,
		-0.763095, -0.176005, -0.621858,
		43.451244, 35.344711, 34.355133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.018791, 36.138855, 34.341335>,  <43.985409, 35.467918, 34.790436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.018791, 36.138855, 34.341335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.701359, 35.962021, 34.174107>,  <43.510899, 35.855919, 34.073769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.701359, 35.962021, 34.174107>,  <44.018791, 36.138855, 34.341335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.701359, 35.962021, 34.174107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284380, 0.876918, -0.387482,
		0.537919, -0.188607, -0.821627,
		-0.793581, -0.442088, -0.418075,
		43.463284, 35.829395, 34.048683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.005749, 36.413448, 33.619511>,  <44.018791, 36.138855, 34.341335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.005749, 36.413448, 33.619511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.642155, 36.304428, 33.745659>,  <43.423996, 36.239017, 33.821346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.642155, 36.304428, 33.745659>,  <44.005749, 36.413448, 33.619511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.642155, 36.304428, 33.745659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393401, 0.811022, -0.432987,
		-0.137763, -0.517648, -0.844430,
		-0.908987, -0.272550, 0.315372,
		43.369457, 36.222664, 33.840271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.586090, 36.516525, 33.055218>,  <44.005749, 36.413448, 33.619511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.586090, 36.516525, 33.055218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.309708, 36.508236, 33.344257>,  <43.143879, 36.503262, 33.517681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.309708, 36.508236, 33.344257>,  <43.586090, 36.516525, 33.055218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.309708, 36.508236, 33.344257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458086, 0.785832, -0.415483,
		-0.559233, -0.618093, -0.552466,
		-0.690953, -0.020725, 0.722603,
		43.102421, 36.502018, 33.561039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.919678, 36.453281, 32.677414>,  <43.586090, 36.516525, 33.055218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.919678, 36.453281, 32.677414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.890640, 36.617496, 33.040993>,  <42.873219, 36.716026, 33.259140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.890640, 36.617496, 33.040993>,  <42.919678, 36.453281, 32.677414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.890640, 36.617496, 33.040993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396829, 0.824223, -0.403960,
		-0.915017, -0.390025, 0.103075,
		-0.072598, 0.410533, 0.908951,
		42.868862, 36.740658, 33.313679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.240582, 36.618977, 32.692062>,  <42.919678, 36.453281, 32.677414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.240582, 36.618977, 32.692062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.417927, 36.838852, 32.975266>,  <42.524334, 36.970776, 33.145187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.417927, 36.838852, 32.975266>,  <42.240582, 36.618977, 32.692062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.417927, 36.838852, 32.975266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498411, 0.807699, -0.314975,
		-0.744995, -0.213232, 0.632072,
		0.443361, 0.549686, 0.708009,
		42.550934, 37.003757, 33.187668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.743019, 36.955387, 32.863968>,  <42.240582, 36.618977, 32.692062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.743019, 36.955387, 32.863968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.045902, 37.168846, 33.014626>,  <42.227631, 37.296921, 33.105019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.045902, 37.168846, 33.014626>,  <41.743019, 36.955387, 32.863968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.045902, 37.168846, 33.014626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564124, 0.824959, -0.034740,
		-0.329252, -0.186166, 0.925708,
		0.757204, 0.533652, 0.376640,
		42.273064, 37.328941, 33.127617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.491928, 37.414337, 33.394821>,  <41.743019, 36.955387, 32.863968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.491928, 37.414337, 33.394821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.849392, 37.575459, 33.315704>,  <42.063869, 37.672131, 33.268234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.849392, 37.575459, 33.315704>,  <41.491928, 37.414337, 33.394821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.849392, 37.575459, 33.315704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431184, 0.892879, -0.129800,
		0.124317, 0.201280, 0.971613,
		0.893659, 0.402807, -0.197788,
		42.117489, 37.696301, 33.256367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.371227, 38.085045, 33.599361>,  <41.491928, 37.414337, 33.394821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.371227, 38.085045, 33.599361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.671577, 38.102024, 33.335732>,  <41.851788, 38.112213, 33.177555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.671577, 38.102024, 33.335732>,  <41.371227, 38.085045, 33.599361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.671577, 38.102024, 33.335732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257063, 0.938020, -0.232459,
		0.608358, 0.343972, 0.715251,
		0.750879, 0.042447, -0.659075,
		41.896839, 38.114758, 33.138008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.668098, 38.798321, 33.610962>,  <41.371227, 38.085045, 33.599361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.668098, 38.798321, 33.610962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.811306, 38.662071, 33.263214>,  <41.897232, 38.580322, 33.054565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.811306, 38.662071, 33.263214>,  <41.668098, 38.798321, 33.610962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.811306, 38.662071, 33.263214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013604, 0.932890, -0.359905,
		0.933616, 0.117026, 0.338625,
		0.358018, -0.340620, -0.869368,
		41.918713, 38.559887, 33.002403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.254108, 39.220951, 33.277954>,  <41.668098, 38.798321, 33.610962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.254108, 39.220951, 33.277954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.119938, 39.021366, 32.958324>,  <42.039436, 38.901615, 32.766544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.119938, 39.021366, 32.958324>,  <42.254108, 39.220951, 33.277954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.119938, 39.021366, 32.958324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049055, 0.856319, -0.514112,
		0.940789, -0.133247, -0.311706,
		-0.335424, -0.498962, -0.799079,
		42.019310, 38.871677, 32.718601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.710049, 39.276112, 32.722725>,  <42.254108, 39.220951, 33.277954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.710049, 39.276112, 32.722725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.373375, 39.191830, 32.523857>,  <42.171371, 39.141258, 32.404537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.373375, 39.191830, 32.523857>,  <42.710049, 39.276112, 32.722725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.373375, 39.191830, 32.523857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174003, 0.765772, -0.619126,
		0.511172, -0.607615, -0.607871,
		-0.841680, -0.210709, -0.497168,
		42.120872, 39.128616, 32.374706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.939362, 39.345009, 32.093922>,  <42.710049, 39.276112, 32.722725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.939362, 39.345009, 32.093922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.541313, 39.368294, 32.062069>,  <42.302483, 39.382263, 32.042957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.541313, 39.368294, 32.062069>,  <42.939362, 39.345009, 32.093922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.541313, 39.368294, 32.062069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087606, 0.892591, -0.442273,
		0.045330, -0.447092, -0.893338,
		-0.995123, 0.058213, -0.079630,
		42.242775, 39.385757, 32.038181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.750027, 39.425957, 31.381981>,  <42.939362, 39.345009, 32.093922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.750027, 39.425957, 31.381981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.449303, 39.562359, 31.607725>,  <42.268867, 39.644199, 31.743172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.449303, 39.562359, 31.607725>,  <42.750027, 39.425957, 31.381981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.449303, 39.562359, 31.607725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091201, 0.793890, -0.601183,
		-0.653043, -0.503445, -0.565754,
		-0.751809, 0.341001, 0.564359,
		42.223759, 39.664658, 31.777033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.172291, 39.666660, 30.878044>,  <42.750027, 39.425957, 31.381981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.172291, 39.666660, 30.878044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.122108, 39.849480, 31.230265>,  <42.091999, 39.959171, 31.441597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.122108, 39.849480, 31.230265>,  <42.172291, 39.666660, 30.878044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.122108, 39.849480, 31.230265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177879, 0.862817, -0.473187,
		-0.976023, -0.215994, -0.026944,
		-0.125453, 0.457049, 0.880550,
		42.084473, 39.986595, 31.494431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.405472, 39.934608, 30.880095>,  <42.172291, 39.666660, 30.878044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.405472, 39.934608, 30.880095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.615410, 40.144440, 31.148230>,  <41.741371, 40.270340, 31.309111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.615410, 40.144440, 31.148230>,  <41.405472, 39.934608, 30.880095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.615410, 40.144440, 31.148230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192407, 0.840256, -0.506901,
		-0.829166, 0.137067, 0.541938,
		0.524846, 0.524578, 0.670339,
		41.772865, 40.301815, 31.349331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.962917, 40.574387, 30.943874>,  <41.405472, 39.934608, 30.880095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.962917, 40.574387, 30.943874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.322781, 40.673008, 31.087996>,  <41.538700, 40.732182, 31.174467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.322781, 40.673008, 31.087996>,  <40.962917, 40.574387, 30.943874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.322781, 40.673008, 31.087996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107791, 0.925162, -0.363947,
		-0.423070, 0.288592, 0.858910,
		0.899663, 0.246558, 0.360301,
		41.592678, 40.746975, 31.196085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.796986, 41.239811, 31.114313>,  <40.962917, 40.574387, 30.943874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.796986, 41.239811, 31.114313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.194775, 41.198715, 31.105717>,  <41.433449, 41.174057, 31.100559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.194775, 41.198715, 31.105717>,  <40.796986, 41.239811, 31.114313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.194775, 41.198715, 31.105717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096580, 0.975868, -0.195842,
		0.041093, 0.192685, 0.980400,
		0.994476, -0.102735, -0.021491,
		41.493118, 41.167896, 31.099270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.208992, 41.778275, 31.560667>,  <40.796986, 41.239811, 31.114313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.208992, 41.778275, 31.560667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.416561, 41.659649, 31.239977>,  <41.541103, 41.588474, 31.047562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.416561, 41.659649, 31.239977>,  <41.208992, 41.778275, 31.560667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.416561, 41.659649, 31.239977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329619, 0.934780, -0.132434,
		0.788714, -0.195541, 0.582833,
		0.518924, -0.296565, -0.801728,
		41.572239, 41.570679, 30.999458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.834156, 42.145588, 31.617905>,  <41.208992, 41.778275, 31.560667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.834156, 42.145588, 31.617905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.774731, 42.074398, 31.228802>,  <41.739075, 42.031685, 30.995340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.774731, 42.074398, 31.228802>,  <41.834156, 42.145588, 31.617905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.774731, 42.074398, 31.228802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269919, 0.939022, -0.213030,
		0.951353, -0.294214, -0.091465,
		-0.148564, -0.177979, -0.972755,
		41.730164, 42.021004, 30.936975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.606327, 42.378117, 31.868160>,  <41.834156, 42.145588, 31.617905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.606327, 42.378117, 31.868160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.740456, 42.725079, 32.015224>,  <42.820930, 42.933254, 32.103462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.740456, 42.725079, 32.015224>,  <42.606327, 42.378117, 31.868160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.740456, 42.725079, 32.015224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054341, -0.407411, 0.911627,
		0.940536, -0.285707, -0.183748,
		0.335319, 0.867403, 0.367659,
		42.841053, 42.985298, 32.125523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.153694, 42.208366, 32.379761>,  <42.606327, 42.378117, 31.868160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.153694, 42.208366, 32.379761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.036640, 42.580860, 32.466625>,  <42.966408, 42.804356, 32.518745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.036640, 42.580860, 32.466625>,  <43.153694, 42.208366, 32.379761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.036640, 42.580860, 32.466625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129796, -0.186319, 0.973878,
		0.947373, 0.313181, -0.066347,
		-0.292639, 0.931237, 0.217164,
		42.948849, 42.860229, 32.531773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.609364, 42.724182, 32.041370>,  <43.153694, 42.208366, 32.379761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.609364, 42.724182, 32.041370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.999722, 42.645763, 32.003017>,  <44.233936, 42.598713, 31.980005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.999722, 42.645763, 32.003017>,  <43.609364, 42.724182, 32.041370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.999722, 42.645763, 32.003017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217348, 0.833384, 0.508165,
		-0.019721, -0.516755, 0.855906,
		0.975895, -0.196050, -0.095881,
		44.292492, 42.586948, 31.974253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.862617, 42.706097, 32.703201>,  <43.609364, 42.724182, 32.041370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.862617, 42.706097, 32.703201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.150089, 42.821011, 32.449913>,  <44.322571, 42.889957, 32.297939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.150089, 42.821011, 32.449913>,  <43.862617, 42.706097, 32.703201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.150089, 42.821011, 32.449913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251388, 0.741717, 0.621820,
		0.648307, -0.606074, 0.460838,
		0.718680, 0.287281, -0.633220,
		44.365692, 42.907196, 32.259949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.574448, 42.712025, 33.059109>,  <43.862617, 42.706097, 32.703201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.574448, 42.712025, 33.059109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.520897, 42.991829, 32.778320>,  <44.488766, 43.159710, 32.609848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.520897, 42.991829, 32.778320>,  <44.574448, 42.712025, 33.059109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.520897, 42.991829, 32.778320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504021, 0.657950, 0.559523,
		0.853253, -0.278901, -0.440651,
		-0.133875, 0.699512, -0.701970,
		44.480736, 43.201683, 32.567730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.087639, 43.171104, 33.000740>,  <44.574448, 42.712025, 33.059109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.087639, 43.171104, 33.000740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.823631, 43.416016, 32.826614>,  <44.665226, 43.562962, 32.722137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.823631, 43.416016, 32.826614>,  <45.087639, 43.171104, 33.000740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.823631, 43.416016, 32.826614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680593, 0.732660, -0.001406,
		0.318078, -0.297201, -0.900277,
		-0.660015, 0.612275, -0.435316,
		44.625626, 43.599697, 32.696018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.429996, 43.573967, 32.394501>,  <45.087639, 43.171104, 33.000740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.429996, 43.573967, 32.394501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.123371, 43.775833, 32.553345>,  <44.939396, 43.896954, 32.648651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.123371, 43.775833, 32.553345>,  <45.429996, 43.573967, 32.394501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.123371, 43.775833, 32.553345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612904, 0.759522, 0.217888,
		-0.191656, 0.410416, -0.891531,
		-0.766562, 0.504663, 0.397112,
		44.893402, 43.927231, 32.672478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.424740, 43.462318, 31.678740>,  <45.429996, 43.573967, 32.394501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.424740, 43.462318, 31.678740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.111828, 43.274471, 31.515032>,  <44.924080, 43.161762, 31.416807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.111828, 43.274471, 31.515032>,  <45.424740, 43.462318, 31.678740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.111828, 43.274471, 31.515032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123820, -0.761125, 0.636677,
		-0.610498, 0.447383, 0.653560,
		-0.782279, -0.469613, -0.409270,
		44.877144, 43.133587, 31.392250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.447578, 42.812553, 32.032005>,  <45.424740, 43.462318, 31.678740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.447578, 42.812553, 32.032005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.136650, 42.723797, 31.796534>,  <44.950092, 42.670544, 31.655252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.136650, 42.723797, 31.796534>,  <45.447578, 42.812553, 32.032005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.136650, 42.723797, 31.796534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039217, -0.916820, 0.397370,
		-0.627884, 0.331969, 0.703959,
		-0.777319, -0.221895, -0.588675,
		44.903454, 42.657227, 31.619930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.821701, 42.579594, 32.388309>,  <45.447578, 42.812553, 32.032005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.821701, 42.579594, 32.388309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.822239, 42.403507, 32.029152>,  <44.822559, 42.297855, 31.813658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.822239, 42.403507, 32.029152>,  <44.821701, 42.579594, 32.388309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.822239, 42.403507, 32.029152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003560, -0.897886, 0.440214,
		-0.999993, -0.003787, 0.000363,
		0.001341, -0.440213, -0.897892,
		44.822639, 42.271442, 31.759785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.566013, 41.849548, 32.421913>,  <44.821701, 42.579594, 32.388309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.566013, 41.849548, 32.421913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.766678, 41.801479, 32.079243>,  <44.887077, 41.772636, 31.873640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.766678, 41.801479, 32.079243>,  <44.566013, 41.849548, 32.421913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.766678, 41.801479, 32.079243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017230, -0.988720, 0.148784,
		-0.864891, -0.089400, -0.493935,
		0.501665, -0.120171, -0.856675,
		44.917175, 41.765427, 31.822241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.321293, 41.247158, 32.071068>,  <44.566013, 41.849548, 32.421913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.321293, 41.247158, 32.071068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.680931, 41.302322, 31.904886>,  <44.896713, 41.335423, 31.805178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.680931, 41.302322, 31.904886>,  <44.321293, 41.247158, 32.071068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.680931, 41.302322, 31.904886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118544, -0.990320, -0.072201,
		-0.421389, 0.015666, -0.906744,
		0.899098, 0.137914, -0.415453,
		44.950661, 41.343697, 31.780251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.452587, 40.580200, 31.575981>,  <44.321293, 41.247158, 32.071068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.452587, 40.580200, 31.575981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.818130, 40.741589, 31.594212>,  <45.037457, 40.838421, 31.605150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.818130, 40.741589, 31.594212>,  <44.452587, 40.580200, 31.575981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.818130, 40.741589, 31.594212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393925, -0.908201, 0.141401,
		0.098445, -0.111265, -0.988903,
		0.913856, 0.403473, 0.045578,
		45.092289, 40.862629, 31.607885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.937244, 40.176670, 31.122089>,  <44.452587, 40.580200, 31.575981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.937244, 40.176670, 31.122089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.165150, 40.341690, 31.406391>,  <45.301891, 40.440704, 31.576971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.165150, 40.341690, 31.406391>,  <44.937244, 40.176670, 31.122089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.165150, 40.341690, 31.406391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484713, -0.867113, 0.114750,
		0.663644, 0.279131, -0.694020,
		0.569763, 0.412554, 0.710753,
		45.336079, 40.465458, 31.619617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.543224, 39.696964, 31.117683>,  <44.937244, 40.176670, 31.122089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.543224, 39.696964, 31.117683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.585007, 39.896603, 31.461775>,  <45.610077, 40.016384, 31.668230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.585007, 39.896603, 31.461775>,  <45.543224, 39.696964, 31.117683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.585007, 39.896603, 31.461775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454820, -0.793186, 0.404964,
		0.884436, 0.348947, -0.309852,
		0.104459, 0.499092, 0.860230,
		45.616344, 40.046329, 31.719845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.225891, 39.652470, 31.297783>,  <45.543224, 39.696964, 31.117683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.225891, 39.652470, 31.297783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.030792, 39.712997, 31.641691>,  <45.913731, 39.749313, 31.848036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.030792, 39.712997, 31.641691>,  <46.225891, 39.652470, 31.297783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.030792, 39.712997, 31.641691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471118, -0.783510, 0.405166,
		0.734948, 0.602672, 0.310866,
		-0.487749, 0.151321, 0.859769,
		45.884468, 39.758392, 31.899622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.750874, 39.425781, 31.850863>,  <46.225891, 39.652470, 31.297783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.750874, 39.425781, 31.850863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.407684, 39.446445, 32.055298>,  <46.201771, 39.458843, 32.177959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.407684, 39.446445, 32.055298>,  <46.750874, 39.425781, 31.850863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.407684, 39.446445, 32.055298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245084, -0.833225, 0.495651,
		0.451459, 0.550515, 0.702224,
		-0.857974, 0.051662, 0.511089,
		46.150291, 39.461945, 32.208626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.962215, 39.367691, 32.575741>,  <46.750874, 39.425781, 31.850863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.962215, 39.367691, 32.575741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.580379, 39.255489, 32.535576>,  <46.351280, 39.188168, 32.511475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.580379, 39.255489, 32.535576>,  <46.962215, 39.367691, 32.575741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.580379, 39.255489, 32.535576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166376, -0.781475, 0.601346,
		-0.247150, 0.557330, 0.792654,
		-0.954587, -0.280501, -0.100415,
		46.294003, 39.171337, 32.505451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.936066, 38.994583, 33.161144>,  <46.962215, 39.367691, 32.575741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.936066, 38.994583, 33.161144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.607082, 38.884846, 32.961826>,  <46.409691, 38.819004, 32.842236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.607082, 38.884846, 32.961826>,  <46.936066, 38.994583, 33.161144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.607082, 38.884846, 32.961826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066163, -0.916201, 0.395219,
		-0.564960, 0.292084, 0.771691,
		-0.822461, -0.274340, -0.498292,
		46.360344, 38.802544, 32.812340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.442589, 38.763592, 33.597160>,  <46.936066, 38.994583, 33.161144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.442589, 38.763592, 33.597160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.362770, 38.586529, 33.247478>,  <46.314880, 38.480293, 33.037670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.362770, 38.586529, 33.247478>,  <46.442589, 38.763592, 33.597160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.362770, 38.586529, 33.247478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038354, -0.894994, 0.444427,
		-0.979138, 0.055154, 0.195569,
		-0.199545, -0.442656, -0.874207,
		46.302906, 38.453732, 32.985218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.076893, 38.137695, 33.847919>,  <46.442589, 38.763592, 33.597160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.076893, 38.137695, 33.847919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.161472, 38.073986, 33.462189>,  <46.212219, 38.035759, 33.230751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.161472, 38.073986, 33.462189>,  <46.076893, 38.137695, 33.847919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.161472, 38.073986, 33.462189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175354, -0.976806, 0.122884,
		-0.961530, 0.143114, -0.234475,
		0.211450, -0.159273, -0.964324,
		46.224907, 38.026203, 33.172890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.413383, 37.793972, 33.378208>,  <46.076893, 38.137695, 33.847919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.413383, 37.793972, 33.378208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.767189, 37.714001, 33.209606>,  <45.979473, 37.666019, 33.108444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.767189, 37.714001, 33.209606>,  <45.413383, 37.793972, 33.378208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.767189, 37.714001, 33.209606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236934, -0.970832, -0.036714,
		-0.401870, 0.132343, -0.906083,
		0.884513, -0.199927, -0.421504,
		46.032543, 37.654022, 33.083157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.247208, 37.284157, 32.930614>,  <45.413383, 37.793972, 33.378208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.247208, 37.284157, 32.930614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.641018, 37.255791, 32.994720>,  <45.877304, 37.238770, 33.033184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.641018, 37.255791, 32.994720>,  <45.247208, 37.284157, 32.930614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.641018, 37.255791, 32.994720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079345, -0.995748, 0.046797,
		0.156263, -0.058789, -0.985964,
		0.984523, -0.070918, 0.160263,
		45.936375, 37.234516, 33.042801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.479187, 36.769955, 32.527985>,  <45.247208, 37.284157, 32.930614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.479187, 36.769955, 32.527985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.734413, 36.802856, 32.834217>,  <45.887547, 36.822598, 33.017956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.734413, 36.802856, 32.834217>,  <45.479187, 36.769955, 32.527985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.734413, 36.802856, 32.834217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052864, -0.987252, 0.150131,
		0.768169, -0.136265, -0.625578,
		0.638061, 0.082255, 0.765580,
		45.925831, 36.827534, 33.063892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.895336, 36.178139, 32.422871>,  <45.479187, 36.769955, 32.527985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.895336, 36.178139, 32.422871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.951721, 36.270592, 32.807934>,  <45.985550, 36.326065, 33.038971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.951721, 36.270592, 32.807934>,  <45.895336, 36.178139, 32.422871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.951721, 36.270592, 32.807934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037913, -0.972911, 0.228048,
		0.989289, 0.004352, -0.145903,
		0.140958, 0.231137, 0.962656,
		45.994007, 36.339931, 33.096729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.045456, 35.593796, 32.649303>,  <45.895336, 36.178139, 32.422871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.045456, 35.593796, 32.649303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.049831, 35.777145, 33.004780>,  <46.052456, 35.887154, 33.218067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.049831, 35.777145, 33.004780>,  <46.045456, 35.593796, 32.649303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.049831, 35.777145, 33.004780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062714, -0.887312, 0.456885,
		0.997972, 0.050736, -0.038452,
		0.010939, 0.458370, 0.888694,
		46.053112, 35.914658, 33.271389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.636215, 35.324303, 33.121796>,  <46.045456, 35.593796, 32.649303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.636215, 35.324303, 33.121796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.346272, 35.469330, 33.356106>,  <46.172306, 35.556347, 33.496693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.346272, 35.469330, 33.356106>,  <46.636215, 35.324303, 33.121796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.346272, 35.469330, 33.356106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088910, -0.892425, 0.442349,
		0.683137, 0.268559, 0.679117,
		-0.724858, 0.362565, 0.585771,
		46.128815, 35.578098, 33.531837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.839504, 35.144775, 33.758987>,  <46.636215, 35.324303, 33.121796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.839504, 35.144775, 33.758987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.446472, 35.211555, 33.791618>,  <46.210651, 35.251625, 33.811199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.446472, 35.211555, 33.791618>,  <46.839504, 35.144775, 33.758987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.446472, 35.211555, 33.791618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108389, -0.871559, 0.478160,
		0.150934, 0.460989, 0.874476,
		-0.982584, 0.166954, 0.081581,
		46.151695, 35.261642, 33.816093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.682308, 35.059940, 34.474510>,  <46.839504, 35.144775, 33.758987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.682308, 35.059940, 34.474510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.348289, 35.026970, 34.256920>,  <46.147877, 35.007187, 34.126366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.348289, 35.026970, 34.256920>,  <46.682308, 35.059940, 34.474510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.348289, 35.026970, 34.256920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075655, -0.962119, 0.261922,
		-0.544954, 0.259871, 0.797177,
		-0.835046, -0.082425, -0.543971,
		46.097775, 35.002243, 34.093727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.196957, 34.641327, 34.846069>,  <46.682308, 35.059940, 34.474510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.196957, 34.641327, 34.846069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.042919, 34.631069, 34.477062>,  <45.950497, 34.624912, 34.255657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.042919, 34.631069, 34.477062>,  <46.196957, 34.641327, 34.846069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.042919, 34.631069, 34.477062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038281, -0.998309, 0.043733,
		-0.922084, 0.052156, 0.383459,
		-0.385092, -0.025646, -0.922522,
		45.927391, 34.623375, 34.200306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.201824, 35.220200, 35.378021>,  <46.196957, 34.641327, 34.846069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.201824, 35.220200, 35.378021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.539330, 35.383244, 35.238354>,  <46.741833, 35.481071, 35.154552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.539330, 35.383244, 35.238354>,  <46.201824, 35.220200, 35.378021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.539330, 35.383244, 35.238354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298282, 0.184717, 0.936434,
		0.446200, -0.894276, 0.034273,
		0.843761, 0.407614, -0.349167,
		46.792458, 35.505527, 35.133602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.905663, 35.011757, 35.696617>,  <46.201824, 35.220200, 35.378021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.905663, 35.011757, 35.696617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.995518, 35.377533, 35.561951>,  <47.049431, 35.596996, 35.481152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.995518, 35.377533, 35.561951>,  <46.905663, 35.011757, 35.696617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.995518, 35.377533, 35.561951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362653, 0.242222, 0.899895,
		0.904444, -0.324247, -0.277210,
		0.224641, 0.914436, -0.336666,
		47.062912, 35.651863, 35.460953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.597588, 35.206257, 35.880520>,  <46.905663, 35.011757, 35.696617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.597588, 35.206257, 35.880520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.413692, 35.555580, 35.816059>,  <47.303356, 35.765175, 35.777382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.413692, 35.555580, 35.816059>,  <47.597588, 35.206257, 35.880520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.413692, 35.555580, 35.816059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400195, 0.365733, 0.840288,
		0.792773, 0.321815, -0.517635,
		-0.459734, 0.873312, -0.161155,
		47.275772, 35.817574, 35.767712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.827297, 34.571449, 35.580963>,  <47.597588, 35.206257, 35.880520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.827297, 34.571449, 35.580963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.841957, 34.709534, 35.205841>,  <47.850754, 34.792385, 34.980766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.841957, 34.709534, 35.205841>,  <47.827297, 34.571449, 35.580963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.841957, 34.709534, 35.205841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876564, 0.439546, 0.196051,
		0.479889, -0.829234, -0.286493,
		0.036645, 0.345212, -0.937809,
		47.852951, 34.813099, 34.924500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.467724, 36.525974, 44.331856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.118851, 36.658001, 44.476276>,  <37.909527, 36.737217, 44.562931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.118851, 36.658001, 44.476276>,  <38.467724, 36.525974, 44.331856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118851, 36.658001, 44.476276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394480, -0.038072, -0.918115,
		-0.289294, -0.943189, 0.163410,
		-0.872178, 0.330067, 0.361056,
		37.857197, 36.757019, 44.584595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952309, 36.107502, 44.066040>,  <38.467724, 36.525974, 44.331856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952309, 36.107502, 44.066040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.744827, 36.441730, 44.138447>,  <37.620338, 36.642269, 44.181889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.744827, 36.441730, 44.138447>,  <37.952309, 36.107502, 44.066040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744827, 36.441730, 44.138447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464442, -0.097630, -0.880206,
		-0.717803, -0.540636, 0.438715,
		-0.518703, 0.835572, 0.181015,
		37.589218, 36.692402, 44.192753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305965, 35.908382, 43.750149>,  <37.952309, 36.107502, 44.066040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305965, 35.908382, 43.750149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.345936, 36.302971, 43.802128>,  <37.369919, 36.539722, 43.833317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.345936, 36.302971, 43.802128>,  <37.305965, 35.908382, 43.750149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345936, 36.302971, 43.802128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365970, 0.157890, -0.917135,
		-0.925246, 0.044090, 0.376797,
		0.099929, 0.986472, 0.129951,
		37.375916, 36.598911, 43.841114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711399, 36.240372, 43.445187>,  <37.305965, 35.908382, 43.750149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711399, 36.240372, 43.445187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.989292, 36.527702, 43.459885>,  <37.156029, 36.700100, 43.468704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.989292, 36.527702, 43.459885>,  <36.711399, 36.240372, 43.445187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989292, 36.527702, 43.459885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131939, 0.177488, -0.975238,
		-0.707061, 0.672685, 0.218083,
		0.694735, 0.718327, 0.036742,
		37.197712, 36.743202, 43.470905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.385315, 36.866417, 43.212101>,  <36.711399, 36.240372, 43.445187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.385315, 36.866417, 43.212101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.782406, 36.893646, 43.172401>,  <37.020660, 36.909985, 43.148582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.782406, 36.893646, 43.172401>,  <36.385315, 36.866417, 43.212101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782406, 36.893646, 43.172401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110776, 0.194497, -0.974628,
		-0.047039, 0.978538, 0.200624,
		0.992732, 0.068070, -0.099249,
		37.080227, 36.914066, 43.142628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386581, 37.231213, 42.616634>,  <36.385315, 36.866417, 43.212101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386581, 37.231213, 42.616634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.761646, 37.093147, 42.632923>,  <36.986683, 37.010307, 42.642696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.761646, 37.093147, 42.632923>,  <36.386581, 37.231213, 42.616634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761646, 37.093147, 42.632923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047356, 0.010818, -0.998820,
		0.344314, 0.938481, 0.026489,
		0.937659, -0.345162, 0.040718,
		37.042946, 36.989597, 42.645138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689262, 37.576618, 42.046661>,  <36.386581, 37.231213, 42.616634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689262, 37.576618, 42.046661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.959393, 37.286819, 42.101852>,  <37.121471, 37.112942, 42.134968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.959393, 37.286819, 42.101852>,  <36.689262, 37.576618, 42.046661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959393, 37.286819, 42.101852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152079, -0.046269, -0.987285,
		0.721666, 0.687726, 0.078933,
		0.675329, -0.724494, 0.137980,
		37.161991, 37.069469, 42.143246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271660, 37.620869, 41.509571>,  <36.689262, 37.576618, 42.046661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271660, 37.620869, 41.509571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.289745, 37.247990, 41.653214>,  <37.300598, 37.024261, 41.739399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.289745, 37.247990, 41.653214>,  <37.271660, 37.620869, 41.509571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289745, 37.247990, 41.653214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197705, -0.344016, -0.917913,
		0.979218, 0.112504, 0.168745,
		0.045218, -0.932199, 0.359110,
		37.303310, 36.968330, 41.760948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762913, 37.425079, 41.175632>,  <37.271660, 37.620869, 41.509571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762913, 37.425079, 41.175632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.591763, 37.090118, 41.311687>,  <37.489075, 36.889141, 41.393318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.591763, 37.090118, 41.311687>,  <37.762913, 37.425079, 41.175632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591763, 37.090118, 41.311687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082572, -0.410964, -0.907905,
		0.900060, -0.360380, 0.244985,
		-0.427871, -0.837398, 0.340135,
		37.463402, 36.838898, 41.413727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128853, 36.957054, 40.869404>,  <37.762913, 37.425079, 41.175632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.128853, 36.957054, 40.869404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.791454, 36.761295, 40.957962>,  <37.589016, 36.643841, 41.011097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.791454, 36.761295, 40.957962>,  <38.128853, 36.957054, 40.869404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791454, 36.761295, 40.957962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024528, -0.446829, -0.894283,
		0.536580, -0.748891, 0.388901,
		-0.843493, -0.489393, 0.221391,
		37.538406, 36.614479, 41.024380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276203, 36.174252, 40.724674>,  <38.128853, 36.957054, 40.869404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276203, 36.174252, 40.724674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.888706, 36.272995, 40.714924>,  <37.656208, 36.332241, 40.709072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.888706, 36.272995, 40.714924>,  <38.276203, 36.174252, 40.724674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888706, 36.272995, 40.714924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064403, -0.345206, -0.936315,
		-0.239549, -0.905481, 0.350315,
		-0.968746, 0.246854, -0.024378,
		37.598083, 36.347054, 40.707611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034122, 35.589245, 40.461552>,  <38.276203, 36.174252, 40.724674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034122, 35.589245, 40.461552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.776855, 35.886280, 40.386822>,  <37.622498, 36.064499, 40.341984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.776855, 35.886280, 40.386822>,  <38.034122, 35.589245, 40.461552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.776855, 35.886280, 40.386822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030365, -0.268530, -0.962793,
		-0.765126, -0.613561, 0.195258,
		-0.643165, 0.742587, -0.186828,
		37.583904, 36.109055, 40.330772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451569, 35.270889, 40.126251>,  <38.034122, 35.589245, 40.461552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451569, 35.270889, 40.126251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.426502, 35.660816, 40.040646>,  <37.411465, 35.894772, 39.989281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.426502, 35.660816, 40.040646>,  <37.451569, 35.270889, 40.126251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426502, 35.660816, 40.040646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081845, -0.218737, -0.972345,
		-0.994673, -0.043413, 0.093491,
		-0.062662, 0.974818, -0.214018,
		37.407703, 35.953262, 39.976440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993244, 35.222565, 39.654167>,  <37.451569, 35.270889, 40.126251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993244, 35.222565, 39.654167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.162071, 35.582066, 39.606663>,  <37.263367, 35.797764, 39.578159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.162071, 35.582066, 39.606663>,  <36.993244, 35.222565, 39.654167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162071, 35.582066, 39.606663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104215, -0.082034, -0.991166,
		-0.900552, 0.430721, 0.059039,
		0.422072, 0.898749, -0.118763,
		37.288692, 35.851692, 39.571033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487247, 35.738586, 39.328842>,  <36.993244, 35.222565, 39.654167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487247, 35.738586, 39.328842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.850967, 35.878845, 39.239201>,  <37.069199, 35.963001, 39.185417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.850967, 35.878845, 39.239201>,  <36.487247, 35.738586, 39.328842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850967, 35.878845, 39.239201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283155, 0.126699, -0.950668,
		-0.304957, 0.927897, 0.214495,
		0.909299, 0.350648, -0.224101,
		37.123756, 35.984039, 39.171970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386887, 36.185612, 38.829605>,  <36.487247, 35.738586, 39.328842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386887, 36.185612, 38.829605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.785076, 36.167229, 38.796310>,  <37.023991, 36.156197, 38.776333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.785076, 36.167229, 38.796310>,  <36.386887, 36.185612, 38.829605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785076, 36.167229, 38.796310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066586, 0.287895, -0.955344,
		0.067869, 0.956558, 0.283531,
		0.995470, -0.045959, -0.083233,
		37.083717, 36.153442, 38.771339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582344, 36.735287, 38.448586>,  <36.386887, 36.185612, 38.829605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582344, 36.735287, 38.448586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.895798, 36.489559, 38.411648>,  <37.083870, 36.342125, 38.389484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.895798, 36.489559, 38.411648>,  <36.582344, 36.735287, 38.448586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895798, 36.489559, 38.411648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147475, 0.328370, -0.932965,
		0.603460, 0.717488, 0.347919,
		0.783637, -0.614316, -0.092347,
		37.130890, 36.305264, 38.383945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971668, 37.072502, 38.003147>,  <36.582344, 36.735287, 38.448586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971668, 37.072502, 38.003147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.176167, 36.729343, 37.982620>,  <37.298866, 36.523449, 37.970303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.176167, 36.729343, 37.982620>,  <36.971668, 37.072502, 38.003147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176167, 36.729343, 37.982620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176043, 0.162982, -0.970796,
		0.841209, 0.487285, 0.234351,
		0.511249, -0.857899, -0.051319,
		37.329540, 36.471973, 37.967224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632004, 37.255760, 37.759167>,  <36.971668, 37.072502, 38.003147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.632004, 37.255760, 37.759167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.574795, 36.868179, 37.678501>,  <37.540470, 36.635632, 37.630100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.574795, 36.868179, 37.678501>,  <37.632004, 37.255760, 37.759167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574795, 36.868179, 37.678501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306069, 0.150469, -0.940043,
		0.941205, -0.196168, 0.275047,
		-0.143020, -0.968957, -0.201663,
		37.531887, 36.577492, 37.618004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259060, 37.020008, 37.508018>,  <37.632004, 37.255760, 37.759167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259060, 37.020008, 37.508018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.982498, 36.765404, 37.371307>,  <37.816559, 36.612640, 37.289280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.982498, 36.765404, 37.371307>,  <38.259060, 37.020008, 37.508018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982498, 36.765404, 37.371307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351626, 0.116789, -0.928827,
		0.631121, -0.762377, 0.143063,
		-0.691409, -0.636507, -0.341779,
		37.775074, 36.574451, 37.268772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632736, 36.606804, 37.123455>,  <38.259060, 37.020008, 37.508018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632736, 36.606804, 37.123455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.256184, 36.555943, 36.998474>,  <38.030251, 36.525425, 36.923485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.256184, 36.555943, 36.998474>,  <38.632736, 36.606804, 37.123455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256184, 36.555943, 36.998474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327518, -0.122733, -0.936840,
		0.080775, -0.984260, 0.157184,
		-0.941386, -0.127153, -0.312449,
		37.973766, 36.517796, 36.904739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695251, 36.049561, 36.621395>,  <38.632736, 36.606804, 37.123455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695251, 36.049561, 36.621395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.349842, 36.241459, 36.559212>,  <38.142597, 36.356598, 36.521900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.349842, 36.241459, 36.559212>,  <38.695251, 36.049561, 36.621395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349842, 36.241459, 36.559212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144127, -0.060642, -0.987699,
		-0.483269, -0.875311, -0.016778,
		-0.863527, 0.479743, -0.155462,
		38.090782, 36.385380, 36.512573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883629, 35.887787, 35.844017>,  <38.695251, 36.049561, 36.621395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.883629, 35.887787, 35.844017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.261417, 35.992874, 35.765068>,  <39.488091, 36.055927, 35.717701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.261417, 35.992874, 35.765068>,  <38.883629, 35.887787, 35.844017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261417, 35.992874, 35.765068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093738, 0.360274, 0.928125,
		0.314941, -0.895088, 0.315642,
		0.944471, 0.262716, -0.197369,
		39.544758, 36.071690, 35.705856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270283, 35.616360, 36.299042>,  <38.883629, 35.887787, 35.844017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270283, 35.616360, 36.299042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.517979, 35.897903, 36.159824>,  <39.666595, 36.066830, 36.076294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.517979, 35.897903, 36.159824>,  <39.270283, 35.616360, 36.299042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517979, 35.897903, 36.159824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252917, 0.240834, 0.937034,
		0.743357, -0.668271, -0.028884,
		0.619237, 0.703856, -0.348043,
		39.703751, 36.109058, 36.055412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949455, 35.426456, 36.559742>,  <39.270283, 35.616360, 36.299042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949455, 35.426456, 36.559742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.968269, 35.816929, 36.475033>,  <39.979557, 36.051212, 36.424206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.968269, 35.816929, 36.475033>,  <39.949455, 35.426456, 36.559742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.968269, 35.816929, 36.475033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368651, 0.180080, 0.911958,
		0.928377, -0.120969, -0.351401,
		0.047039, 0.976185, -0.211778,
		39.982380, 36.109783, 36.411499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508942, 35.546547, 36.894009>,  <39.949455, 35.426456, 36.559742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.508942, 35.546547, 36.894009> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.387280, 35.919876, 36.817703>,  <40.314281, 36.143875, 36.771919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.387280, 35.919876, 36.817703>,  <40.508942, 35.546547, 36.894009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.387280, 35.919876, 36.817703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407951, 0.308572, 0.859278,
		0.860850, 0.183537, -0.474607,
		-0.304160, 0.933326, -0.190761,
		40.296032, 36.199875, 36.760475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.129066, 35.945545, 36.995277>,  <40.508942, 35.546547, 36.894009>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.129066, 35.945545, 36.995277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.793564, 36.157776, 37.044231>,  <40.592262, 36.285114, 37.073605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.793564, 36.157776, 37.044231>,  <41.129066, 35.945545, 36.995277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.793564, 36.157776, 37.044231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217429, 0.120283, 0.968636,
		0.499217, 0.839058, -0.216251,
		-0.838753, 0.530579, 0.122389,
		40.541939, 36.316948, 37.080948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.289547, 36.517586, 37.368404>,  <41.129066, 35.945545, 36.995277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.289547, 36.517586, 37.368404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.903618, 36.427612, 37.422855>,  <40.672062, 36.373627, 37.455524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.903618, 36.427612, 37.422855>,  <41.289547, 36.517586, 37.368404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.903618, 36.427612, 37.422855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128554, 0.048045, 0.990538,
		-0.229345, 0.973189, -0.017438,
		-0.964819, -0.224933, 0.136126,
		40.614174, 36.360134, 37.463692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.059345, 37.002445, 37.775425>,  <41.289547, 36.517586, 37.368404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.059345, 37.002445, 37.775425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.758030, 36.745354, 37.831215>,  <40.577240, 36.591099, 37.864689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.758030, 36.745354, 37.831215>,  <41.059345, 37.002445, 37.775425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.758030, 36.745354, 37.831215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045757, 0.160333, 0.986002,
		-0.656093, 0.749129, -0.091369,
		-0.753292, -0.642728, 0.139471,
		40.532043, 36.552536, 37.873055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472233, 37.329155, 38.195816>,  <41.059345, 37.002445, 37.775425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472233, 37.329155, 38.195816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.380314, 36.943104, 38.245972>,  <40.325161, 36.711472, 38.276066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.380314, 36.943104, 38.245972>,  <40.472233, 37.329155, 38.195816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.380314, 36.943104, 38.245972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086546, 0.148589, 0.985105,
		-0.969382, 0.215526, -0.117674,
		-0.229800, -0.965127, 0.125387,
		40.311375, 36.653564, 38.283588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837692, 37.230659, 38.703133>,  <40.472233, 37.329155, 38.195816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.837692, 37.230659, 38.703133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.045429, 36.889095, 38.716553>,  <40.170071, 36.684158, 38.724606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.045429, 36.889095, 38.716553>,  <39.837692, 37.230659, 38.703133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.045429, 36.889095, 38.716553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041953, 0.013736, 0.999025,
		-0.853537, -0.520242, -0.028690,
		0.519341, -0.853908, 0.033550,
		40.201233, 36.632923, 38.726616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403107, 36.757523, 39.052032>,  <39.837692, 37.230659, 38.703133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403107, 36.757523, 39.052032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.742535, 36.548958, 39.087936>,  <39.946194, 36.423820, 39.109478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.742535, 36.548958, 39.087936>,  <39.403107, 36.757523, 39.052032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742535, 36.548958, 39.087936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228751, -0.208597, 0.950873,
		-0.477072, -0.827417, -0.296283,
		0.848572, -0.521410, 0.089757,
		39.997105, 36.392536, 39.114864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252716, 36.154686, 39.362129>,  <39.403107, 36.757523, 39.052032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252716, 36.154686, 39.362129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.647743, 36.191425, 39.413170>,  <39.884758, 36.213470, 39.443794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.647743, 36.191425, 39.413170>,  <39.252716, 36.154686, 39.362129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.647743, 36.191425, 39.413170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106407, -0.207037, 0.972529,
		0.115744, -0.974012, -0.194689,
		0.987563, 0.091848, 0.127605,
		39.944012, 36.218979, 39.451450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473148, 35.581242, 39.777157>,  <39.252716, 36.154686, 39.362129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473148, 35.581242, 39.777157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.764149, 35.848530, 39.839405>,  <39.938751, 36.008904, 39.876755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.764149, 35.848530, 39.839405>,  <39.473148, 35.581242, 39.777157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764149, 35.848530, 39.839405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027537, -0.198203, 0.979774,
		0.685549, -0.717077, -0.125793,
		0.727506, 0.668219, 0.155623,
		39.982399, 36.048996, 39.886093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.817657, 35.311348, 40.248096>,  <39.473148, 35.581242, 39.777157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.817657, 35.311348, 40.248096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.971100, 35.678558, 40.288246>,  <40.063164, 35.898884, 40.312336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.971100, 35.678558, 40.288246>,  <39.817657, 35.311348, 40.248096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.971100, 35.678558, 40.288246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163240, -0.174384, 0.971052,
		0.908957, -0.356112, -0.216753,
		0.383602, 0.918028, 0.100376,
		40.086182, 35.953968, 40.318359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.375587, 35.204296, 40.691185>,  <39.817657, 35.311348, 40.248096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.375587, 35.204296, 40.691185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.302410, 35.597504, 40.696941>,  <40.258503, 35.833427, 40.700394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.302410, 35.597504, 40.696941>,  <40.375587, 35.204296, 40.691185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302410, 35.597504, 40.696941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021075, -0.010709, 0.999721,
		0.982897, 0.183196, -0.018758,
		-0.182944, 0.983018, 0.014386,
		40.247528, 35.892410, 40.701256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829746, 35.474617, 41.241024>,  <40.375587, 35.204296, 40.691185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.829746, 35.474617, 41.241024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.546028, 35.751743, 41.189026>,  <40.375797, 35.918018, 41.157829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.546028, 35.751743, 41.189026>,  <40.829746, 35.474617, 41.241024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.546028, 35.751743, 41.189026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059492, 0.242590, 0.968303,
		0.702392, 0.679083, -0.213286,
		-0.709299, 0.692818, -0.129993,
		40.333237, 35.959587, 41.150028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.025993, 35.983894, 41.692169>,  <40.829746, 35.474617, 41.241024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.025993, 35.983894, 41.692169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.630993, 36.031460, 41.650795>,  <40.393993, 36.060001, 41.625969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.630993, 36.031460, 41.650795>,  <41.025993, 35.983894, 41.692169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630993, 36.031460, 41.650795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067270, 0.275515, 0.958940,
		0.142533, 0.953913, -0.264072,
		-0.987502, 0.118916, -0.103439,
		40.334743, 36.067135, 41.619762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.937729, 36.654560, 42.024879>,  <41.025993, 35.983894, 41.692169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.937729, 36.654560, 42.024879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.572010, 36.494198, 42.001793>,  <40.352577, 36.397980, 41.987942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.572010, 36.494198, 42.001793>,  <40.937729, 36.654560, 42.024879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.572010, 36.494198, 42.001793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233844, 0.406111, 0.883397,
		-0.330719, 0.821187, -0.465057,
		-0.914299, -0.400907, -0.057720,
		40.297722, 36.373924, 41.984478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.520916, 37.190269, 42.152363>,  <40.937729, 36.654560, 42.024879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.520916, 37.190269, 42.152363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.294758, 36.865643, 42.211266>,  <40.159065, 36.670864, 42.246609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.294758, 36.865643, 42.211266>,  <40.520916, 37.190269, 42.152363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.294758, 36.865643, 42.211266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149731, 0.276553, 0.949262,
		-0.811119, 0.514655, -0.277878,
		-0.565391, -0.811572, 0.147258,
		40.125141, 36.622169, 42.255444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.723541, 37.378212, 42.595078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.825413, 36.995186, 42.649063>,  <39.886536, 36.765369, 42.681454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.825413, 36.995186, 42.649063>,  <39.723541, 37.378212, 42.595078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825413, 36.995186, 42.649063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188365, 0.087771, 0.978169,
		-0.948503, -0.274540, -0.158017,
		0.254677, -0.957562, 0.134965,
		39.901817, 36.707916, 42.689552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263775, 37.226582, 43.064198>,  <39.723541, 37.378212, 42.595078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263775, 37.226582, 43.064198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.524273, 36.924313, 43.091999>,  <39.680573, 36.742950, 43.108681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.524273, 36.924313, 43.091999>,  <39.263775, 37.226582, 43.064198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524273, 36.924313, 43.091999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081611, 0.021320, 0.996436,
		-0.754465, -0.654599, -0.047786,
		0.651247, -0.755676, 0.069508,
		39.719646, 36.697609, 43.112850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961269, 36.767502, 43.456497>,  <39.263775, 37.226582, 43.064198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961269, 36.767502, 43.456497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.344284, 36.659943, 43.498112>,  <39.574093, 36.595409, 43.523079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.344284, 36.659943, 43.498112>,  <38.961269, 36.767502, 43.456497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344284, 36.659943, 43.498112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173046, -0.247361, 0.953346,
		-0.230597, -0.930869, -0.283386,
		0.957539, -0.268877, 0.104042,
		39.631546, 36.579273, 43.529324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960453, 36.046032, 43.770988>,  <38.961269, 36.767502, 43.456497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960453, 36.046032, 43.770988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.300034, 36.240849, 43.853039>,  <39.503780, 36.357738, 43.902271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.300034, 36.240849, 43.853039>,  <38.960453, 36.046032, 43.770988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300034, 36.240849, 43.853039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167306, -0.120497, 0.978514,
		0.501291, -0.865029, -0.020812,
		0.848950, 0.487038, 0.205128,
		39.554718, 36.386959, 43.914577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446621, 35.603546, 44.241898>,  <38.960453, 36.046032, 43.770988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446621, 35.603546, 44.241898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.591709, 35.974182, 44.281643>,  <39.678761, 36.196564, 44.305492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.591709, 35.974182, 44.281643>,  <39.446621, 35.603546, 44.241898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591709, 35.974182, 44.281643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181644, -0.174880, 0.967689,
		0.914024, -0.332950, -0.231741,
		0.362719, 0.926586, 0.099366,
		39.700523, 36.252159, 44.311451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016747, 35.484318, 44.643757>,  <39.446621, 35.603546, 44.241898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016747, 35.484318, 44.643757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.926579, 35.872200, 44.681393>,  <39.872478, 36.104931, 44.703972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.926579, 35.872200, 44.681393>,  <40.016747, 35.484318, 44.643757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.926579, 35.872200, 44.681393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199543, -0.048571, 0.978685,
		0.953608, 0.239390, -0.182550,
		-0.225420, 0.969708, 0.094086,
		39.858952, 36.163113, 44.709618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.583786, 35.823456, 45.020267>,  <40.016747, 35.484318, 44.643757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.583786, 35.823456, 45.020267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.274742, 36.065681, 45.096546>,  <40.089317, 36.211018, 45.142315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.274742, 36.065681, 45.096546>,  <40.583786, 35.823456, 45.020267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.274742, 36.065681, 45.096546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218914, -0.027840, 0.975347,
		0.595943, 0.795310, -0.111057,
		-0.772611, 0.605564, 0.190696,
		40.042957, 36.247349, 45.153755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877213, 36.498943, 45.326923>,  <40.583786, 35.823456, 45.020267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.877213, 36.498943, 45.326923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.483109, 36.499168, 45.395348>,  <40.246647, 36.499302, 45.436401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.483109, 36.499168, 45.395348>,  <40.877213, 36.498943, 45.326923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.483109, 36.499168, 45.395348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166947, 0.221164, 0.960841,
		-0.037292, 0.975236, -0.217998,
		-0.985260, 0.000562, 0.171061,
		40.187531, 36.499336, 45.446667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.684742, 37.051083, 45.730095>,  <40.877213, 36.498943, 45.326923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.684742, 37.051083, 45.730095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.380413, 36.809891, 45.826061>,  <40.197815, 36.665176, 45.883640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.380413, 36.809891, 45.826061>,  <40.684742, 37.051083, 45.730095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.380413, 36.809891, 45.826061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094580, 0.262722, 0.960225,
		-0.642028, 0.753255, -0.142855,
		-0.760825, -0.602980, 0.239918,
		40.152164, 36.628998, 45.898037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.547199, 37.232517, 46.393349>,  <40.684742, 37.051083, 45.730095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.547199, 37.232517, 46.393349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.318710, 36.904339, 46.383732>,  <40.181618, 36.707432, 46.377960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.318710, 36.904339, 46.383732>,  <40.547199, 37.232517, 46.393349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.318710, 36.904339, 46.383732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104150, 0.043397, 0.993614,
		-0.814162, 0.570077, -0.110239,
		-0.571221, -0.820444, -0.024042,
		40.147343, 36.658207, 46.376518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254032, 37.334438, 46.977825>,  <40.547199, 37.232517, 46.393349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.254032, 37.334438, 46.977825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.180977, 36.945808, 46.917568>,  <40.137142, 36.712631, 46.881413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.180977, 36.945808, 46.917568>,  <40.254032, 37.334438, 46.977825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.180977, 36.945808, 46.917568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278872, -0.095732, 0.955545,
		-0.942800, 0.216533, -0.253459,
		-0.182642, -0.971570, -0.150641,
		40.126183, 36.654339, 46.872375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621456, 37.130928, 47.239349>,  <40.254032, 37.334438, 46.977825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621456, 37.130928, 47.239349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.838120, 36.794701, 47.242451>,  <39.968117, 36.592964, 47.244312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.838120, 36.794701, 47.242451>,  <39.621456, 37.130928, 47.239349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838120, 36.794701, 47.242451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088178, -0.047643, 0.994965,
		-0.835963, -0.539612, -0.099925,
		0.541656, -0.840565, 0.007755,
		40.000618, 36.542530, 47.244778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250599, 36.678452, 47.649509>,  <39.621456, 37.130928, 47.239349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250599, 36.678452, 47.649509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.626797, 36.542847, 47.640194>,  <39.852516, 36.461483, 47.634605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.626797, 36.542847, 47.640194>,  <39.250599, 36.678452, 47.649509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626797, 36.542847, 47.640194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034756, -0.164146, 0.985824,
		-0.338027, -0.926352, -0.166161,
		0.940494, -0.339011, -0.023289,
		39.908943, 36.441143, 47.633205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227005, 36.302025, 48.102364>,  <39.250599, 36.678452, 47.649509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227005, 36.302025, 48.102364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.625137, 36.317757, 48.067089>,  <39.864017, 36.327194, 48.045925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.625137, 36.317757, 48.067089>,  <39.227005, 36.302025, 48.102364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625137, 36.317757, 48.067089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094645, -0.216579, 0.971667,
		0.019118, -0.975472, -0.219289,
		0.995327, 0.039331, -0.088183,
		39.923737, 36.329556, 48.040634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489349, 35.639347, 48.487053>,  <39.227005, 36.302025, 48.102364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489349, 35.639347, 48.487053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.781284, 35.910713, 48.453369>,  <39.956448, 36.073532, 48.433159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.781284, 35.910713, 48.453369>,  <39.489349, 35.639347, 48.487053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781284, 35.910713, 48.453369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167117, -0.057620, 0.984252,
		0.662876, -0.732420, -0.155427,
		0.729841, 0.678411, -0.084205,
		40.000237, 36.114235, 48.428108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925926, 35.387421, 48.957432>,  <39.489349, 35.639347, 48.487053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925926, 35.387421, 48.957432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.030083, 35.770267, 48.906647>,  <40.092575, 35.999977, 48.876175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.030083, 35.770267, 48.906647>,  <39.925926, 35.387421, 48.957432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.030083, 35.770267, 48.906647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178860, 0.081408, 0.980501,
		0.948792, -0.278022, -0.149993,
		0.260390, 0.957119, -0.126966,
		40.108200, 36.057404, 48.868557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.562317, 35.383293, 49.206421>,  <39.925926, 35.387421, 48.957432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.562317, 35.383293, 49.206421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.452145, 35.767590, 49.219753>,  <40.386040, 35.998169, 49.227753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.452145, 35.767590, 49.219753>,  <40.562317, 35.383293, 49.206421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.452145, 35.767590, 49.219753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136138, 0.004655, 0.990679,
		0.951631, 0.277406, -0.132076,
		-0.275435, 0.960741, 0.033336,
		40.369514, 36.055813, 49.229755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.092781, 35.663612, 49.527637>,  <40.562317, 35.383293, 49.206421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.092781, 35.663612, 49.527637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.767540, 35.890842, 49.578468>,  <40.572395, 36.027180, 49.608967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.767540, 35.890842, 49.578468>,  <41.092781, 35.663612, 49.527637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.767540, 35.890842, 49.578468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033376, -0.172455, 0.984452,
		0.581158, 0.804705, 0.121264,
		-0.813106, 0.568075, 0.127081,
		40.523609, 36.061264, 49.616592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.198612, 35.902645, 50.176544>,  <41.092781, 35.663612, 49.527637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.198612, 35.902645, 50.176544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.819080, 36.015118, 50.119061>,  <40.591362, 36.082603, 50.084568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.819080, 36.015118, 50.119061>,  <41.198612, 35.902645, 50.176544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.819080, 36.015118, 50.119061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169560, -0.069730, 0.983050,
		0.266397, 0.957117, 0.113840,
		-0.948832, 0.281184, -0.143713,
		40.534431, 36.099472, 50.075947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081444, 36.421268, 50.648495>,  <41.198612, 35.902645, 50.176544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.081444, 36.421268, 50.648495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.730167, 36.257656, 50.549320>,  <40.519402, 36.159489, 50.489815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.730167, 36.257656, 50.549320>,  <41.081444, 36.421268, 50.648495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.730167, 36.257656, 50.549320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228152, -0.097366, 0.968745,
		-0.420391, 0.907309, -0.007816,
		-0.878190, -0.409035, -0.247936,
		40.466709, 36.134945, 50.474941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571419, 36.776314, 51.090912>,  <41.081444, 36.421268, 50.648495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.571419, 36.776314, 51.090912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.416748, 36.430779, 50.961754>,  <40.323944, 36.223457, 50.884258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.416748, 36.430779, 50.961754>,  <40.571419, 36.776314, 51.090912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.416748, 36.430779, 50.961754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376323, -0.171847, 0.910412,
		-0.841939, 0.473548, -0.258633,
		-0.386679, -0.863841, -0.322892,
		40.300743, 36.171627, 50.864887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871185, 36.730984, 51.287590>,  <40.571419, 36.776314, 51.090912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871185, 36.730984, 51.287590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.931110, 36.340397, 51.225540>,  <39.967064, 36.106045, 51.188313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.931110, 36.340397, 51.225540>,  <39.871185, 36.730984, 51.287590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931110, 36.340397, 51.225540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378296, -0.201563, 0.903474,
		-0.913482, -0.076666, -0.399590,
		0.149808, -0.976471, -0.155122,
		39.976051, 36.047455, 51.179005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277164, 36.444168, 51.473755>,  <39.871185, 36.730984, 51.287590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277164, 36.444168, 51.473755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.573177, 36.177811, 51.511551>,  <39.750786, 36.017994, 51.534229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.573177, 36.177811, 51.511551>,  <39.277164, 36.444168, 51.473755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573177, 36.177811, 51.511551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376095, -0.293242, 0.878955,
		-0.557586, -0.685994, -0.467450,
		0.740034, -0.665898, 0.094491,
		39.795189, 35.978043, 51.539898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937214, 36.023510, 51.780437>,  <39.277164, 36.444168, 51.473755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.937214, 36.023510, 51.780437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.322926, 35.930202, 51.830639>,  <39.554352, 35.874218, 51.860760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.322926, 35.930202, 51.830639>,  <38.937214, 36.023510, 51.780437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322926, 35.930202, 51.830639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223179, -0.460265, 0.859272,
		-0.142679, -0.856587, -0.495885,
		0.964279, -0.233271, 0.125502,
		39.612209, 35.860222, 51.868290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782440, 36.377007, 52.411003>,  <38.937214, 36.023510, 51.780437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.782440, 36.377007, 52.411003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.582386, 36.705936, 52.519554>,  <38.462353, 36.903294, 52.584682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.582386, 36.705936, 52.519554>,  <38.782440, 36.377007, 52.411003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582386, 36.705936, 52.519554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630922, -0.131384, -0.764641,
		-0.593130, -0.553639, 0.584534,
		-0.500134, 0.822327, 0.271375,
		38.432346, 36.952633, 52.600967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047520, 36.334644, 52.476086>,  <38.782440, 36.377007, 52.411003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047520, 36.334644, 52.476086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.082825, 36.729603, 52.423550>,  <38.104008, 36.966579, 52.392029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.082825, 36.729603, 52.423550>,  <38.047520, 36.334644, 52.476086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082825, 36.729603, 52.423550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615780, -0.049556, -0.786358,
		-0.782958, 0.150287, 0.603647,
		0.088265, 0.987400, -0.131345,
		38.109303, 37.025822, 52.384148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493980, 36.454739, 52.070438>,  <38.047520, 36.334644, 52.476086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493980, 36.454739, 52.070438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.696918, 36.796104, 52.022636>,  <37.818680, 37.000923, 51.993954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.696918, 36.796104, 52.022636>,  <37.493980, 36.454739, 52.070438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696918, 36.796104, 52.022636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464007, 0.153679, -0.872399,
		-0.726156, 0.498057, 0.473960,
		0.507342, 0.853418, -0.119507,
		37.849121, 37.052132, 51.986786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981544, 36.848888, 51.684753>,  <37.493980, 36.454739, 52.070438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981544, 36.848888, 51.684753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.339008, 37.015881, 51.618935>,  <37.553486, 37.116077, 51.579445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.339008, 37.015881, 51.618935>,  <36.981544, 36.848888, 51.684753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339008, 37.015881, 51.618935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163082, -0.039456, -0.985823,
		-0.418057, 0.907828, 0.032824,
		0.893662, 0.417483, -0.164545,
		37.607105, 37.141125, 51.569572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847328, 37.448284, 51.368534>,  <36.981544, 36.848888, 51.684753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847328, 37.448284, 51.368534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.217476, 37.326561, 51.278126>,  <37.439564, 37.253525, 51.223881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.217476, 37.326561, 51.278126>,  <36.847328, 37.448284, 51.368534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217476, 37.326561, 51.278126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226357, 0.034659, -0.973427,
		0.304057, 0.951942, -0.036810,
		0.925371, -0.304310, -0.226017,
		37.495087, 37.235268, 51.210320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985428, 37.876614, 50.794037>,  <36.847328, 37.448284, 51.368534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985428, 37.876614, 50.794037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.246574, 37.574451, 50.771629>,  <37.403263, 37.393154, 50.758183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.246574, 37.574451, 50.771629>,  <36.985428, 37.876614, 50.794037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246574, 37.574451, 50.771629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025537, 0.051968, -0.998322,
		0.757046, 0.653198, 0.014638,
		0.652863, -0.755402, -0.056023,
		37.442432, 37.347832, 50.754822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364307, 38.074459, 50.285107>,  <36.985428, 37.876614, 50.794037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364307, 38.074459, 50.285107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.466358, 37.688019, 50.300900>,  <37.527588, 37.456154, 50.310375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.466358, 37.688019, 50.300900>,  <37.364307, 38.074459, 50.285107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466358, 37.688019, 50.300900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005475, -0.042276, -0.999091,
		0.966892, 0.254679, -0.016075,
		0.255127, -0.966101, 0.039482,
		37.542896, 37.398190, 50.312744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788006, 37.993881, 49.650684>,  <37.364307, 38.074459, 50.285107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788006, 37.993881, 49.650684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.702770, 37.622814, 49.773338>,  <37.651627, 37.400173, 49.846931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.702770, 37.622814, 49.773338>,  <37.788006, 37.993881, 49.650684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702770, 37.622814, 49.773338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404402, -0.369438, -0.836645,
		0.889411, -0.054280, 0.453875,
		-0.213091, -0.927669, 0.306632,
		37.638844, 37.344513, 49.865326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389267, 37.593315, 49.544556>,  <37.788006, 37.993881, 49.650684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389267, 37.593315, 49.544556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.052074, 37.378445, 49.533054>,  <37.849758, 37.249523, 49.526154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.052074, 37.378445, 49.533054>,  <38.389267, 37.593315, 49.544556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052074, 37.378445, 49.533054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247332, -0.339562, -0.907483,
		0.477719, -0.772098, 0.419105,
		-0.842978, -0.537180, -0.028749,
		37.799183, 37.217289, 49.524429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540733, 37.031006, 49.326099>,  <38.389267, 37.593315, 49.544556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540733, 37.031006, 49.326099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.153957, 36.980526, 49.237469>,  <37.921890, 36.950237, 49.184292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.153957, 36.980526, 49.237469>,  <38.540733, 37.031006, 49.326099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153957, 36.980526, 49.237469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249284, -0.285016, -0.925540,
		0.053649, -0.950179, 0.307053,
		-0.966943, -0.126198, -0.221573,
		37.863873, 36.942665, 49.170998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531174, 36.455208, 48.886143>,  <38.540733, 37.031006, 49.326099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531174, 36.455208, 48.886143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.180103, 36.631756, 48.811440>,  <37.969463, 36.737686, 48.766617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.180103, 36.631756, 48.811440>,  <38.531174, 36.455208, 48.886143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.180103, 36.631756, 48.811440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073426, -0.261238, -0.962478,
		-0.473601, -0.858454, 0.196873,
		-0.877674, 0.441375, -0.186755,
		37.916801, 36.764168, 48.755413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213436, 35.983471, 48.500366>,  <38.531174, 36.455208, 48.886143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213436, 35.983471, 48.500366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.002407, 36.312550, 48.415668>,  <37.875790, 36.509998, 48.364849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.002407, 36.312550, 48.415668>,  <38.213436, 35.983471, 48.500366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002407, 36.312550, 48.415668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144860, -0.158482, -0.976678,
		-0.837068, -0.545941, -0.035565,
		-0.527572, 0.822698, -0.211745,
		37.844135, 36.559361, 48.352146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671711, 35.838593, 48.033417>,  <38.213436, 35.983471, 48.500366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671711, 35.838593, 48.033417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.728687, 36.230541, 47.977459>,  <37.762871, 36.465710, 47.943886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.728687, 36.230541, 47.977459>,  <37.671711, 35.838593, 48.033417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728687, 36.230541, 47.977459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006000, -0.142188, -0.989821,
		-0.989786, 0.140148, -0.026132,
		0.142437, 0.979868, -0.139895,
		37.771420, 36.524502, 47.935490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341103, 36.013947, 47.400383>,  <37.671711, 35.838593, 48.033417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.341103, 36.013947, 47.400383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.545013, 36.357258, 47.423996>,  <37.667358, 36.563244, 47.438164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.545013, 36.357258, 47.423996>,  <37.341103, 36.013947, 47.400383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545013, 36.357258, 47.423996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011050, 0.062085, -0.998010,
		-0.860237, 0.509412, 0.022165,
		0.509774, 0.858280, 0.059037,
		37.697945, 36.614742, 47.441708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943363, 36.559273, 47.079548>,  <37.341103, 36.013947, 47.400383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943363, 36.559273, 47.079548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.329895, 36.661762, 47.070122>,  <37.561813, 36.723255, 47.064465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.329895, 36.661762, 47.070122>,  <36.943363, 36.559273, 47.079548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329895, 36.661762, 47.070122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050649, 0.099627, -0.993735,
		-0.252269, 0.961470, 0.109250,
		0.966331, 0.256222, -0.023565,
		37.619793, 36.738628, 47.063053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031963, 37.124100, 46.629814>,  <36.943363, 36.559273, 47.079548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031963, 37.124100, 46.629814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.402065, 36.973179, 46.645599>,  <37.624126, 36.882626, 46.655071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.402065, 36.973179, 46.645599>,  <37.031963, 37.124100, 46.629814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402065, 36.973179, 46.645599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094260, 0.127895, -0.987298,
		0.367459, 0.917218, 0.153899,
		0.925251, -0.377299, 0.039461,
		37.679642, 36.859989, 46.657436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325138, 37.584675, 46.154137>,  <37.031963, 37.124100, 46.629814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325138, 37.584675, 46.154137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.534550, 37.249737, 46.217098>,  <37.660198, 37.048775, 46.254875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.534550, 37.249737, 46.217098>,  <37.325138, 37.584675, 46.154137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534550, 37.249737, 46.217098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277750, -0.006922, -0.960628,
		0.805463, 0.546637, 0.228948,
		0.523531, -0.837341, 0.157404,
		37.691608, 36.998535, 46.264320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927818, 37.821091, 46.012249>,  <37.325138, 37.584675, 46.154137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927818, 37.821091, 46.012249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.885235, 37.430592, 45.936768>,  <37.859684, 37.196293, 45.891479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.885235, 37.430592, 45.936768>,  <37.927818, 37.821091, 46.012249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885235, 37.430592, 45.936768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104013, 0.177806, -0.978553,
		0.988862, -0.123804, 0.082613,
		-0.106460, -0.976247, -0.188703,
		37.853298, 37.137718, 45.880157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229370, 37.845688, 45.424290>,  <37.927818, 37.821091, 46.012249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229370, 37.845688, 45.424290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.044586, 37.490936, 45.421867>,  <37.933716, 37.278084, 45.420414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.044586, 37.490936, 45.421867>,  <38.229370, 37.845688, 45.424290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044586, 37.490936, 45.421867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070678, 0.043623, -0.996545,
		0.884081, -0.459933, -0.082835,
		-0.461958, -0.886881, -0.006059,
		37.905998, 37.224873, 45.420048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569904, 37.439037, 44.850178>,  <38.229370, 37.845688, 45.424290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569904, 37.439037, 44.850178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.215794, 37.271664, 44.931370>,  <38.003326, 37.171242, 44.980083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.215794, 37.271664, 44.931370>,  <38.569904, 37.439037, 44.850178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215794, 37.271664, 44.931370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133431, -0.189582, -0.972756,
		0.445513, -0.888242, 0.112001,
		-0.885277, -0.418431, 0.202980,
		37.950211, 37.146133, 44.992264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.620884, 41.230721, 30.346478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.266331, 41.310711, 30.513494>,  <42.053600, 41.358707, 30.613705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.266331, 41.310711, 30.513494>,  <42.620884, 41.230721, 30.346478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.266331, 41.310711, 30.513494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095452, -0.803575, 0.587500,
		0.453012, 0.560603, 0.693184,
		-0.886379, 0.199979, 0.417540,
		42.000416, 41.370705, 30.638756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.818775, 40.944729, 31.001612>,  <42.620884, 41.230721, 30.346478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.818775, 40.944729, 31.001612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.431019, 41.033421, 31.043783>,  <42.198364, 41.086636, 31.069086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.431019, 41.033421, 31.043783>,  <42.818775, 40.944729, 31.001612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.431019, 41.033421, 31.043783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076393, -0.680504, 0.728751,
		0.233330, 0.698392, 0.676614,
		-0.969392, 0.221728, 0.105430,
		42.140202, 41.099937, 31.075413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.704163, 41.105000, 31.765139>,  <42.818775, 40.944729, 31.001612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.704163, 41.105000, 31.765139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.356995, 40.993736, 31.600536>,  <42.148693, 40.926979, 31.501774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.356995, 40.993736, 31.600536>,  <42.704163, 41.105000, 31.765139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.356995, 40.993736, 31.600536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053937, -0.770804, 0.634785,
		-0.493763, 0.573140, 0.653995,
		-0.867922, -0.278159, -0.411508,
		42.096619, 40.910290, 31.477083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.232544, 40.986378, 32.345913>,  <42.704163, 41.105000, 31.765139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.232544, 40.986378, 32.345913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.091274, 40.788467, 32.028305>,  <42.006512, 40.669720, 31.837740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.091274, 40.788467, 32.028305>,  <42.232544, 40.986378, 32.345913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.091274, 40.788467, 32.028305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191073, -0.792674, 0.578929,
		-0.915839, 0.356176, 0.185410,
		-0.353171, -0.494779, -0.794018,
		41.985325, 40.640034, 31.790100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.913246, 40.560204, 32.693119>,  <42.232544, 40.986378, 32.345913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.913246, 40.560204, 32.693119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.934105, 40.393742, 32.329998>,  <41.946621, 40.293865, 32.112125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.934105, 40.393742, 32.329998>,  <41.913246, 40.560204, 32.693119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.934105, 40.393742, 32.329998> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236323, -0.888359, 0.393662,
		-0.970274, 0.194004, -0.144675,
		0.052151, -0.416150, -0.907799,
		41.949749, 40.268898, 32.057659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.257999, 40.145695, 32.460735>,  <41.913246, 40.560204, 32.693119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.257999, 40.145695, 32.460735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.568283, 39.996273, 32.257275>,  <41.754452, 39.906620, 32.135197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.568283, 39.996273, 32.257275>,  <41.257999, 40.145695, 32.460735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.568283, 39.996273, 32.257275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362677, -0.923479, 0.125112,
		-0.516467, 0.087426, -0.851833,
		0.775711, -0.373556, -0.508654,
		41.800995, 39.884205, 32.104679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.012115, 39.407158, 32.097702>,  <41.257999, 40.145695, 32.460735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.012115, 39.407158, 32.097702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.404663, 39.408581, 32.020855>,  <41.640190, 39.409435, 31.974747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.404663, 39.408581, 32.020855>,  <41.012115, 39.407158, 32.097702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.404663, 39.408581, 32.020855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058654, -0.957658, 0.281871,
		-0.182983, -0.287887, -0.940020,
		0.981365, 0.003558, -0.192121,
		41.699074, 39.409649, 31.963219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.097500, 38.799072, 31.681276>,  <41.012115, 39.407158, 32.097702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.097500, 38.799072, 31.681276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.416901, 38.902481, 31.898737>,  <41.608543, 38.964527, 32.029213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.416901, 38.902481, 31.898737>,  <41.097500, 38.799072, 31.681276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.416901, 38.902481, 31.898737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067505, -0.935851, 0.345871,
		0.598190, -0.239481, -0.764734,
		0.798506, 0.258520, 0.543650,
		41.656452, 38.980038, 32.061832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.565418, 38.272713, 31.682114>,  <41.097500, 38.799072, 31.681276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.565418, 38.272713, 31.682114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.700993, 38.457615, 32.009880>,  <41.782337, 38.568558, 32.206539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.700993, 38.457615, 32.009880>,  <41.565418, 38.272713, 31.682114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.700993, 38.457615, 32.009880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224515, -0.885544, 0.406700,
		0.913628, 0.046126, -0.403925,
		0.338934, 0.462260, 0.819414,
		41.802673, 38.596294, 32.255703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.263577, 38.098541, 31.868061>,  <41.565418, 38.272713, 31.682114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.263577, 38.098541, 31.868061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.160927, 38.239040, 32.228233>,  <42.099339, 38.323341, 32.444336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.160927, 38.239040, 32.228233>,  <42.263577, 38.098541, 31.868061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.160927, 38.239040, 32.228233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365094, -0.827374, 0.426801,
		0.894904, 0.438267, 0.084082,
		-0.256620, 0.351248, 0.900428,
		42.083942, 38.344414, 32.498363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.873024, 38.071583, 32.290722>,  <42.263577, 38.098541, 31.868061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.873024, 38.071583, 32.290722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.567360, 38.094372, 32.547722>,  <42.383961, 38.108047, 32.701923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.567360, 38.094372, 32.547722>,  <42.873024, 38.071583, 32.290722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.567360, 38.094372, 32.547722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179111, -0.938174, 0.296223,
		0.619658, 0.341441, 0.706712,
		-0.764162, 0.056977, 0.642503,
		42.338112, 38.111465, 32.740471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.315834, 38.123508, 32.947006>,  <42.873024, 38.071583, 32.290722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.315834, 38.123508, 32.947006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.946362, 38.012962, 33.053169>,  <42.724678, 37.946636, 33.116867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.946362, 38.012962, 33.053169>,  <43.315834, 38.123508, 32.947006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.946362, 38.012962, 33.053169> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358049, -0.869210, 0.340991,
		0.136458, 0.409996, 0.901822,
		-0.923677, -0.276366, 0.265409,
		42.669258, 37.930054, 33.132793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.233246, 38.029007, 33.733498>,  <43.315834, 38.123508, 32.947006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.233246, 38.029007, 33.733498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.961201, 37.804394, 33.544975>,  <42.797974, 37.669624, 33.431862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.961201, 37.804394, 33.544975>,  <43.233246, 38.029007, 33.733498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.961201, 37.804394, 33.544975> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335775, -0.810087, 0.480639,
		-0.651691, 0.168637, 0.739500,
		-0.680113, -0.561534, -0.471302,
		42.757168, 37.635933, 33.403584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.104794, 37.587532, 34.227692>,  <43.233246, 38.029007, 33.733498>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.104794, 37.587532, 34.227692> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.923107, 37.414204, 33.916328>,  <42.814095, 37.310207, 33.729511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.923107, 37.414204, 33.916328>,  <43.104794, 37.587532, 34.227692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.923107, 37.414204, 33.916328> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143129, -0.897886, 0.416311,
		-0.879321, 0.077680, 0.469852,
		-0.454212, -0.433321, -0.778411,
		42.786842, 37.284206, 33.682804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.717506, 37.136887, 34.582817>,  <43.104794, 37.587532, 34.227692>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.717506, 37.136887, 34.582817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.757812, 37.020302, 34.202312>,  <42.781994, 36.950352, 33.974010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.757812, 37.020302, 34.202312>,  <42.717506, 37.136887, 34.582817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.757812, 37.020302, 34.202312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211856, -0.927913, 0.306748,
		-0.972093, -0.232439, -0.031751,
		0.100762, -0.291461, -0.951261,
		42.788040, 36.932865, 33.916935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.186352, 36.604988, 34.441921>,  <42.717506, 37.136887, 34.582817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.186352, 36.604988, 34.441921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.500130, 36.567245, 34.196732>,  <42.688396, 36.544601, 34.049618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.500130, 36.567245, 34.196732>,  <42.186352, 36.604988, 34.441921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.500130, 36.567245, 34.196732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098782, -0.956734, 0.273684,
		-0.612280, -0.275242, -0.741185,
		0.784446, -0.094355, -0.612978,
		42.735462, 36.538940, 34.012836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.169937, 35.937096, 34.375706>,  <42.186352, 36.604988, 34.441921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.169937, 35.937096, 34.375706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.525955, 36.011341, 34.209156>,  <42.739567, 36.055889, 34.109226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.525955, 36.011341, 34.209156>,  <42.169937, 35.937096, 34.375706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.525955, 36.011341, 34.209156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260824, -0.956433, 0.131174,
		-0.373885, -0.225350, -0.899682,
		0.890045, 0.185615, -0.416373,
		42.792969, 36.067024, 34.084244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.237038, 35.344769, 33.932831>,  <42.169937, 35.937096, 34.375706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.237038, 35.344769, 33.932831> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.614334, 35.476326, 33.951263>,  <42.840714, 35.555260, 33.962322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.614334, 35.476326, 33.951263>,  <42.237038, 35.344769, 33.932831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.614334, 35.476326, 33.951263> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331174, -0.921102, -0.204684,
		-0.024877, 0.208326, -0.977743,
		0.943242, 0.328895, 0.046078,
		42.897308, 35.574993, 33.965088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.603596, 35.133965, 33.322113>,  <42.237038, 35.344769, 33.932831>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.603596, 35.133965, 33.322113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.859852, 35.176575, 33.626282>,  <43.013603, 35.202141, 33.808781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.859852, 35.176575, 33.626282>,  <42.603596, 35.133965, 33.322113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.859852, 35.176575, 33.626282> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325718, -0.934515, -0.143491,
		0.695337, 0.339608, -0.633382,
		0.640636, 0.106529, 0.760419,
		43.052044, 35.208534, 33.854408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.340984, 34.826023, 33.144371>,  <42.603596, 35.133965, 33.322113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.340984, 34.826023, 33.144371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.313744, 34.855156, 33.542377>,  <43.297398, 34.872635, 33.781181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.313744, 34.855156, 33.542377>,  <43.340984, 34.826023, 33.144371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.313744, 34.855156, 33.542377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372884, -0.923196, 0.093100,
		0.925375, 0.377366, 0.035714,
		-0.068104, 0.072836, 0.995016,
		43.293312, 34.877007, 33.840881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.995708, 34.611053, 33.361504>,  <43.340984, 34.826023, 33.144371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.995708, 34.611053, 33.361504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.766308, 34.552467, 33.683907>,  <43.628666, 34.517315, 33.877346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.766308, 34.552467, 33.683907>,  <43.995708, 34.611053, 33.361504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.766308, 34.552467, 33.683907> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407783, -0.904370, 0.125810,
		0.710500, 0.400827, 0.578383,
		-0.573501, -0.146467, 0.806005,
		43.594257, 34.508526, 33.925709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.566208, 34.208809, 33.648067>,  <43.995708, 34.611053, 33.361504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.566208, 34.208809, 33.648067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.579990, 33.971813, 33.970005>,  <44.588261, 33.829617, 34.163166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.579990, 33.971813, 33.970005>,  <44.566208, 34.208809, 33.648067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.579990, 33.971813, 33.970005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981294, 0.132570, 0.139597,
		-0.189407, -0.794598, -0.576836,
		0.034452, -0.592486, 0.804844,
		44.590324, 33.794067, 34.211456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.872078, 34.885807, 33.516380>,  <44.566208, 34.208809, 33.648067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.872078, 34.885807, 33.516380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.212040, 34.938290, 33.720516>,  <45.416016, 34.969780, 33.842999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.212040, 34.938290, 33.720516>,  <44.872078, 34.885807, 33.516380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.212040, 34.938290, 33.720516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038900, 0.950239, -0.309084,
		-0.525502, 0.282544, 0.802507,
		0.849903, 0.131206, 0.510343,
		45.467010, 34.977650, 33.873619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.870621, 35.532879, 33.798420>,  <44.872078, 34.885807, 33.516380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.870621, 35.532879, 33.798420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.261829, 35.449833, 33.806087>,  <45.496555, 35.400005, 33.810688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.261829, 35.449833, 33.806087>,  <44.870621, 35.532879, 33.798420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.261829, 35.449833, 33.806087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204727, 0.938864, -0.276806,
		0.039470, 0.274648, 0.960734,
		0.978023, -0.207613, 0.019171,
		45.555237, 35.387550, 33.811840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.117283, 36.113987, 33.990925>,  <44.870621, 35.532879, 33.798420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.117283, 36.113987, 33.990925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.442276, 35.926956, 33.851650>,  <45.637272, 35.814735, 33.768085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.442276, 35.926956, 33.851650>,  <45.117283, 36.113987, 33.990925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.442276, 35.926956, 33.851650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402416, 0.881964, -0.245358,
		0.421816, 0.059233, 0.904745,
		0.812486, -0.467580, -0.348190,
		45.686020, 35.786682, 33.747192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.584793, 36.461761, 34.347660>,  <45.117283, 36.113987, 33.990925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.584793, 36.461761, 34.347660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.754330, 36.315216, 34.016327>,  <45.856052, 36.227291, 33.817528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.754330, 36.315216, 34.016327>,  <45.584793, 36.461761, 34.347660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.754330, 36.315216, 34.016327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397074, 0.897132, -0.193612,
		0.814057, -0.246849, 0.525716,
		0.423844, -0.366359, -0.828334,
		45.881481, 36.205307, 33.767826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.244057, 36.752743, 34.312977>,  <45.584793, 36.461761, 34.347660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.244057, 36.752743, 34.312977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.163788, 36.621490, 33.943748>,  <46.115627, 36.542740, 33.722210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.163788, 36.621490, 33.943748>,  <46.244057, 36.752743, 34.312977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.163788, 36.621490, 33.943748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522406, 0.761249, -0.384178,
		0.828748, -0.559310, 0.018660,
		-0.200669, -0.328135, -0.923070,
		46.103588, 36.523048, 33.666828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.880104, 36.929493, 33.959587>,  <46.244057, 36.752743, 34.312977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.880104, 36.929493, 33.959587> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.596088, 36.889023, 33.680843>,  <46.425678, 36.864738, 33.513596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.596088, 36.889023, 33.680843>,  <46.880104, 36.929493, 33.959587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.596088, 36.889023, 33.680843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296122, 0.854960, -0.425857,
		0.638874, -0.508729, -0.577092,
		-0.710036, -0.101180, -0.696858,
		46.383076, 36.858669, 33.471786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.179848, 37.075916, 33.255001>,  <46.880104, 36.929493, 33.959587>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.179848, 37.075916, 33.255001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.784485, 37.132450, 33.232811>,  <46.547268, 37.166370, 33.219498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.784485, 37.132450, 33.232811>,  <47.179848, 37.075916, 33.255001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.784485, 37.132450, 33.232811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150718, 0.869209, -0.470913,
		-0.018339, -0.473814, -0.880434,
		-0.988406, 0.141334, -0.055472,
		46.487965, 37.174850, 33.216171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.241722, 37.464035, 32.598518>,  <47.179848, 37.075916, 33.255001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.241722, 37.464035, 32.598518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.874989, 37.514198, 32.750141>,  <46.654949, 37.544296, 32.841114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.874989, 37.514198, 32.750141>,  <47.241722, 37.464035, 32.598518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.874989, 37.514198, 32.750141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140299, 0.787649, -0.599937,
		-0.373806, -0.603225, -0.704549,
		-0.916834, 0.125413, 0.379060,
		46.599937, 37.551823, 32.863857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.620136, 37.613590, 32.028687>,  <47.241722, 37.464035, 32.598518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.620136, 37.613590, 32.028687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.507492, 37.758865, 32.383942>,  <46.439907, 37.846031, 32.597095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.507492, 37.758865, 32.383942>,  <46.620136, 37.613590, 32.028687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.507492, 37.758865, 32.383942> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423643, 0.783438, -0.454699,
		-0.860943, -0.504302, -0.066761,
		-0.281609, 0.363187, 0.888139,
		46.423008, 37.867821, 32.650383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.955864, 37.961956, 31.859461>,  <46.620136, 37.613590, 32.028687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.955864, 37.961956, 31.859461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.089630, 38.099209, 32.210556>,  <46.169891, 38.181561, 32.421215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.089630, 38.099209, 32.210556>,  <45.955864, 37.961956, 31.859461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.089630, 38.099209, 32.210556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373455, 0.903366, -0.210860,
		-0.865271, -0.257280, 0.430247,
		0.334420, 0.343129, 0.877739,
		46.189957, 38.202148, 32.473877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.343002, 38.277794, 32.084187>,  <45.955864, 37.961956, 31.859461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.343002, 38.277794, 32.084187> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.635113, 38.462463, 32.285606>,  <45.810379, 38.573265, 32.406456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.635113, 38.462463, 32.285606>,  <45.343002, 38.277794, 32.084187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.635113, 38.462463, 32.285606> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406573, 0.886051, -0.222738,
		-0.549001, -0.042069, 0.834762,
		0.730271, 0.461676, 0.503547,
		45.854195, 38.600967, 32.436672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.048584, 38.757488, 32.629570>,  <45.343002, 38.277794, 32.084187>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.048584, 38.757488, 32.629570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.417789, 38.899544, 32.570347>,  <45.639313, 38.984776, 32.534813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.417789, 38.899544, 32.570347>,  <45.048584, 38.757488, 32.629570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.417789, 38.899544, 32.570347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365185, 0.929776, -0.046431,
		0.121171, 0.096924, 0.987888,
		0.923016, 0.355136, -0.148057,
		45.694695, 39.006084, 32.525928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.021629, 39.464405, 32.868160>,  <45.048584, 38.757488, 32.629570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.021629, 39.464405, 32.868160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.353439, 39.464249, 32.644775>,  <45.552525, 39.464153, 32.510742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.353439, 39.464249, 32.644775>,  <45.021629, 39.464405, 32.868160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.353439, 39.464249, 32.644775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190706, 0.939689, -0.283928,
		0.524896, 0.342029, 0.779423,
		0.829527, -0.000392, -0.558467,
		45.602299, 39.464130, 32.477234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.364990, 40.135826, 33.058239>,  <45.021629, 39.464405, 32.868160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.364990, 40.135826, 33.058239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.520042, 40.003483, 32.714081>,  <45.613075, 39.924076, 32.507587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.520042, 40.003483, 32.714081>,  <45.364990, 40.135826, 33.058239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.520042, 40.003483, 32.714081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016402, 0.930746, -0.365298,
		0.921669, 0.155713, 0.355358,
		0.387630, -0.330855, -0.860394,
		45.636330, 39.904228, 32.455963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.906590, 40.500614, 32.905987>,  <45.364990, 40.135826, 33.058239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.906590, 40.500614, 32.905987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.792625, 40.394455, 32.537556>,  <45.724247, 40.330757, 32.316498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.792625, 40.394455, 32.537556>,  <45.906590, 40.500614, 32.905987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.792625, 40.394455, 32.537556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146001, 0.961709, -0.231945,
		0.947369, 0.068394, -0.312752,
		-0.284913, -0.265400, -0.921080,
		45.707153, 40.314835, 32.261230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.164955, 40.991936, 32.471378>,  <45.906590, 40.500614, 32.905987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.164955, 40.991936, 32.471378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.915024, 40.834743, 32.201519>,  <45.765064, 40.740429, 32.039604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.915024, 40.834743, 32.201519>,  <46.164955, 40.991936, 32.471378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.915024, 40.834743, 32.201519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332582, 0.915743, -0.225397,
		0.706386, 0.083542, -0.702880,
		-0.624827, -0.392982, -0.674652,
		45.727577, 40.716850, 31.999123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.237450, 41.446278, 31.823841>,  <46.164955, 40.991936, 32.471378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.237450, 41.446278, 31.823841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.893200, 41.249298, 31.771980>,  <45.686649, 41.131111, 31.740864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.893200, 41.249298, 31.771980>,  <46.237450, 41.446278, 31.823841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.893200, 41.249298, 31.771980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380970, 0.791583, -0.477764,
		0.337905, -0.361784, -0.868868,
		-0.860629, -0.492452, -0.129651,
		45.635010, 41.101562, 31.733086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.081566, 41.496056, 31.190842>,  <46.237450, 41.446278, 31.823841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.081566, 41.496056, 31.190842> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.735367, 41.454529, 31.386854>,  <45.527645, 41.429611, 31.504461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.735367, 41.454529, 31.386854>,  <46.081566, 41.496056, 31.190842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.735367, 41.454529, 31.386854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358580, 0.811492, -0.461412,
		-0.349753, -0.575068, -0.739574,
		-0.865502, -0.103816, 0.490029,
		45.475716, 41.423386, 31.533863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.547157, 41.504040, 30.740526>,  <46.081566, 41.496056, 31.190842>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.547157, 41.504040, 30.740526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.361397, 41.614090, 31.077250>,  <45.249943, 41.680119, 31.279284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.361397, 41.614090, 31.077250>,  <45.547157, 41.504040, 30.740526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.361397, 41.614090, 31.077250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411274, 0.774818, -0.480115,
		-0.784338, -0.569179, -0.246674,
		-0.464399, 0.275122, 0.841808,
		45.222076, 41.696625, 31.329792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.846382, 41.682648, 30.559591>,  <45.547157, 41.504040, 30.740526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.846382, 41.682648, 30.559591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.927334, 41.894863, 30.888849>,  <44.975906, 42.022194, 31.086403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.927334, 41.894863, 30.888849>,  <44.846382, 41.682648, 30.559591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.927334, 41.894863, 30.888849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558881, 0.752791, -0.347790,
		-0.804173, -0.389654, 0.448861,
		0.202381, 0.530543, 0.823144,
		44.988049, 42.054028, 31.135792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.885117, 36.931580, 39.947399> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.607777, 36.643360, 39.944126>,  <40.441372, 36.470428, 39.942162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.607777, 36.643360, 39.944126>,  <40.885117, 36.931580, 39.947399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.607777, 36.643360, 39.944126> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153007, -0.136117, -0.978806,
		0.704166, -0.679910, 0.204627,
		-0.693353, -0.720552, -0.008182,
		40.399769, 36.427197, 39.941673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.176601, 36.420010, 39.673721>,  <40.885117, 36.931580, 39.947399>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.176601, 36.420010, 39.673721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789230, 36.356384, 39.596947>,  <40.556808, 36.318207, 39.550884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789230, 36.356384, 39.596947>,  <41.176601, 36.420010, 39.673721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.789230, 36.356384, 39.596947> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218038, -0.167311, -0.961492,
		0.120830, -0.972987, 0.196713,
		-0.968431, -0.159068, -0.191932,
		40.498699, 36.308662, 39.539368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.140251, 35.785069, 39.316044>,  <41.176601, 36.420010, 39.673721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.140251, 35.785069, 39.316044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803917, 35.990753, 39.248409>,  <40.602116, 36.114162, 39.207829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803917, 35.990753, 39.248409>,  <41.140251, 35.785069, 39.316044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.803917, 35.990753, 39.248409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059532, -0.222634, -0.973083,
		-0.538013, -0.828264, 0.156586,
		-0.840832, 0.514210, -0.169088,
		40.551666, 36.145016, 39.197681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.727272, 35.421009, 38.819504>,  <41.140251, 35.785069, 39.316044>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.727272, 35.421009, 38.819504> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554485, 35.780083, 38.784679>,  <40.450813, 35.995525, 38.763786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554485, 35.780083, 38.784679>,  <40.727272, 35.421009, 38.819504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.554485, 35.780083, 38.784679> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162799, -0.172552, -0.971454,
		-0.887077, -0.405458, 0.220677,
		-0.431962, 0.897680, -0.087059,
		40.424896, 36.049385, 38.758560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043297, 35.415134, 38.463135>,  <40.727272, 35.421009, 38.819504>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.043297, 35.415134, 38.463135> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175308, 35.789505, 38.413956>,  <40.254513, 36.014130, 38.384449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175308, 35.789505, 38.413956>,  <40.043297, 35.415134, 38.463135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175308, 35.789505, 38.413956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273155, -0.029988, -0.961502,
		-0.903587, 0.350905, 0.245757,
		0.330026, 0.935931, -0.122948,
		40.274315, 36.070286, 38.377071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743736, 35.595936, 37.925999>,  <40.043297, 35.415134, 38.463135>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.743736, 35.595936, 37.925999> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988312, 35.912201, 37.938648>,  <40.135056, 36.101959, 37.946239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988312, 35.912201, 37.938648>,  <39.743736, 35.595936, 37.925999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.988312, 35.912201, 37.938648> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227146, 0.213665, -0.950133,
		-0.757991, 0.573762, 0.310238,
		0.611437, 0.790661, 0.031628,
		40.171741, 36.149399, 37.948135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346554, 36.140240, 37.620049>,  <39.743736, 35.595936, 37.925999>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346554, 36.140240, 37.620049> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736919, 36.210289, 37.568008>,  <39.971138, 36.252319, 37.536785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736919, 36.210289, 37.568008>,  <39.346554, 36.140240, 37.620049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.736919, 36.210289, 37.568008> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172736, 0.255990, -0.951121,
		-0.133259, 0.950684, 0.280074,
		0.975912, 0.175124, -0.130105,
		40.029694, 36.262825, 37.528976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361279, 36.888954, 37.336166>,  <39.346554, 36.140240, 37.620049>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361279, 36.888954, 37.336166> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706867, 36.701401, 37.262733>,  <39.914219, 36.588871, 37.218674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706867, 36.701401, 37.262733>,  <39.361279, 36.888954, 37.336166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.706867, 36.701401, 37.262733> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130144, 0.144266, -0.980943,
		0.486430, 0.871400, 0.063619,
		0.863972, -0.468881, -0.183583,
		39.966061, 36.560738, 37.207657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630287, 37.254387, 36.710857>,  <39.361279, 36.888954, 37.336166>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630287, 37.254387, 36.710857> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851540, 36.921356, 36.722584>,  <39.984291, 36.721539, 36.729618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851540, 36.921356, 36.722584>,  <39.630287, 37.254387, 36.710857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851540, 36.921356, 36.722584> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218280, -0.178795, -0.959368,
		0.803989, 0.524258, -0.280632,
		0.553132, -0.832578, 0.029314,
		40.017479, 36.671581, 36.731377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052982, 37.344330, 36.148899>,  <39.630287, 37.254387, 36.710857>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052982, 37.344330, 36.148899> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.067028, 36.950527, 36.217617>,  <40.075455, 36.714245, 36.258846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.067028, 36.950527, 36.217617>,  <40.052982, 37.344330, 36.148899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.067028, 36.950527, 36.217617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150101, -0.175142, -0.973034,
		0.988047, 0.008382, -0.153926,
		0.035114, -0.984507, 0.171790,
		40.077564, 36.655174, 36.269154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.515541, 37.094917, 35.708553>,  <40.052982, 37.344330, 36.148899>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.515541, 37.094917, 35.708553> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.253166, 36.808853, 35.805130>,  <40.095741, 36.637215, 35.863075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.253166, 36.808853, 35.805130>,  <40.515541, 37.094917, 35.708553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.253166, 36.808853, 35.805130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178405, -0.163911, -0.970209,
		0.733427, -0.679472, -0.020072,
		-0.655939, -0.715158, 0.241438,
		40.056385, 36.594307, 35.877560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.705032, 36.547523, 35.374088>,  <40.515541, 37.094917, 35.708553>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.705032, 36.547523, 35.374088> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349442, 36.395916, 35.476898>,  <40.136086, 36.304951, 35.538582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349442, 36.395916, 35.476898>,  <40.705032, 36.547523, 35.374088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.349442, 36.395916, 35.476898> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063054, -0.454592, -0.888465,
		0.453587, -0.806033, 0.380223,
		-0.888978, -0.379022, 0.257021,
		40.082748, 36.282211, 35.554005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.672970, 35.729446, 35.167137>,  <40.705032, 36.547523, 35.374088>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.672970, 35.729446, 35.167137> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301758, 35.872692, 35.208164>,  <40.079033, 35.958641, 35.232780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301758, 35.872692, 35.208164>,  <40.672970, 35.729446, 35.167137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301758, 35.872692, 35.208164> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314828, -0.606809, -0.729839,
		-0.199128, -0.709601, 0.675880,
		-0.928025, 0.358117, 0.102570,
		40.023350, 35.980129, 35.238934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979202, 35.252110, 35.211308>,  <40.672970, 35.729446, 35.167137>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979202, 35.252110, 35.211308> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929443, 35.589634, 35.002499>,  <39.899590, 35.792149, 34.877213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929443, 35.589634, 35.002499>,  <39.979202, 35.252110, 35.211308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929443, 35.589634, 35.002499> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166499, -0.536396, -0.827380,
		-0.978164, -0.016006, 0.207219,
		-0.124394, 0.843815, -0.522018,
		39.892124, 35.842777, 34.845894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354996, 34.918335, 35.494427>,  <39.979202, 35.252110, 35.211308>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.354996, 34.918335, 35.494427> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421261, 34.525707, 35.456299>,  <39.461021, 34.290131, 35.433422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421261, 34.525707, 35.456299>,  <39.354996, 34.918335, 35.494427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.421261, 34.525707, 35.456299> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376130, -0.152238, 0.913975,
		-0.911637, -0.115562, -0.394416,
		0.165666, -0.981564, -0.095320,
		39.470963, 34.231239, 35.427704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776428, 34.516991, 35.740196>,  <39.354996, 34.918335, 35.494427>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776428, 34.516991, 35.740196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065464, 34.240528, 35.735023>,  <39.238884, 34.074650, 35.731918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065464, 34.240528, 35.735023>,  <38.776428, 34.516991, 35.740196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065464, 34.240528, 35.735023> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383798, -0.416670, 0.824066,
		-0.574953, -0.590492, -0.566346,
		0.722584, -0.691162, -0.012937,
		39.282238, 34.033180, 35.731144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448166, 33.889427, 35.761044>,  <38.776428, 34.516991, 35.740196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448166, 33.889427, 35.761044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824329, 33.852493, 35.891956>,  <39.050026, 33.830334, 35.970505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824329, 33.852493, 35.891956>,  <38.448166, 33.889427, 35.761044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824329, 33.852493, 35.891956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338820, -0.336429, 0.878645,
		0.028983, -0.937172, -0.347662,
		0.940405, -0.092330, 0.327283,
		39.106449, 33.824795, 35.990143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446327, 33.122131, 36.067402>,  <38.448166, 33.889427, 35.761044>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446327, 33.122131, 36.067402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761452, 33.321579, 36.212029>,  <38.950527, 33.441246, 36.298805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761452, 33.321579, 36.212029>,  <38.446327, 33.122131, 36.067402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761452, 33.321579, 36.212029> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219814, -0.320769, 0.921297,
		0.575355, -0.805288, -0.143102,
		0.787812, 0.498617, 0.361570,
		38.997795, 33.471165, 36.320499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663166, 32.650791, 36.588535>,  <38.446327, 33.122131, 36.067402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663166, 32.650791, 36.588535> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863838, 32.982697, 36.686359>,  <38.984241, 33.181839, 36.745052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863838, 32.982697, 36.686359>,  <38.663166, 32.650791, 36.588535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863838, 32.982697, 36.686359> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124940, -0.210243, 0.969633,
		0.855980, -0.517005, -0.001805,
		0.501685, 0.829761, 0.244558,
		39.014343, 33.231625, 36.759727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150631, 32.478275, 37.136658>,  <38.663166, 32.650791, 36.588535>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150631, 32.478275, 37.136658> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086849, 32.869019, 37.193691>,  <39.048580, 33.103462, 37.227913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086849, 32.869019, 37.193691>,  <39.150631, 32.478275, 37.136658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086849, 32.869019, 37.193691> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144824, -0.119725, 0.982187,
		0.976524, 0.177266, -0.122381,
		-0.159456, 0.976854, 0.142587,
		39.039013, 33.162075, 37.236469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551994, 32.606281, 37.825768>,  <39.150631, 32.478275, 37.136658>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551994, 32.606281, 37.825768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295162, 32.900425, 37.739067>,  <39.141064, 33.076912, 37.687046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295162, 32.900425, 37.739067>,  <39.551994, 32.606281, 37.825768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.295162, 32.900425, 37.739067> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169116, 0.139902, 0.975616,
		0.747753, 0.663079, 0.034534,
		-0.642079, 0.735360, -0.216749,
		39.102539, 33.121033, 37.674042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803852, 33.199478, 38.073521>,  <39.551994, 32.606281, 37.825768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.803852, 33.199478, 38.073521> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410000, 33.268181, 38.060894>,  <39.173687, 33.309402, 38.053318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410000, 33.268181, 38.060894>,  <39.803852, 33.199478, 38.073521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410000, 33.268181, 38.060894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001107, 0.174633, 0.984633,
		0.174633, 0.969537, -0.171759,
		-0.984633, 0.171759, -0.031570,
		39.114609, 33.319710, 38.051422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631077, 33.731705, 38.512238>,  <39.803852, 33.199478, 38.073521>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.631077, 33.731705, 38.512238> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262424, 33.582947, 38.467884>,  <39.041233, 33.493690, 38.441273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262424, 33.582947, 38.467884>,  <39.631077, 33.731705, 38.512238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262424, 33.582947, 38.467884> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203424, 0.219636, 0.954138,
		-0.330488, 0.901915, -0.278075,
		-0.921627, -0.371899, -0.110885,
		38.985935, 33.471378, 38.434620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144608, 34.152180, 38.930706>,  <39.631077, 33.731705, 38.512238>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144608, 34.152180, 38.930706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987457, 33.788239, 38.877300>,  <38.893169, 33.569874, 38.845257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987457, 33.788239, 38.877300>,  <39.144608, 34.152180, 38.930706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987457, 33.788239, 38.877300> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429314, 0.053075, 0.901594,
		-0.813228, 0.411532, -0.411463,
		-0.392873, -0.909848, -0.133514,
		38.869595, 33.515285, 38.837246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464088, 34.146500, 39.269371>,  <39.144608, 34.152180, 38.930706>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.464088, 34.146500, 39.269371> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554268, 33.756859, 39.262428>,  <38.608376, 33.523075, 39.258263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554268, 33.756859, 39.262428>,  <38.464088, 34.146500, 39.269371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.554268, 33.756859, 39.262428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164625, -0.055645, 0.984785,
		-0.960247, -0.219158, -0.172906,
		0.225445, -0.974101, -0.017354,
		38.621902, 33.464630, 39.257221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889774, 33.870270, 39.688190>,  <38.464088, 34.146500, 39.269371>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889774, 33.870270, 39.688190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193401, 33.610054, 39.678196>,  <38.375576, 33.453926, 39.672199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193401, 33.610054, 39.678196>,  <37.889774, 33.870270, 39.688190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193401, 33.610054, 39.678196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173132, -0.238715, 0.955532,
		-0.627574, -0.720982, -0.293828,
		0.759062, -0.650538, -0.024986,
		38.421120, 33.414894, 39.670700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589691, 33.210518, 40.029114>,  <37.889774, 33.870270, 39.688190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589691, 33.210518, 40.029114> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987686, 33.170555, 40.027767>,  <38.226482, 33.146576, 40.026958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987686, 33.170555, 40.027767>,  <37.589691, 33.210518, 40.029114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987686, 33.170555, 40.027767> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016494, -0.197279, 0.980209,
		-0.098596, -0.975243, -0.197938,
		0.994991, -0.099910, -0.003365,
		38.286182, 33.140583, 40.026756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722599, 32.786465, 40.618420>,  <37.589691, 33.210518, 40.029114>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722599, 32.786465, 40.618420> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069187, 32.969654, 40.538929>,  <38.277138, 33.079567, 40.491234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069187, 32.969654, 40.538929>,  <37.722599, 32.786465, 40.618420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.069187, 32.969654, 40.538929> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180013, 0.084682, 0.980012,
		0.465649, -0.884923, -0.009068,
		0.866468, 0.457974, -0.198730,
		38.329128, 33.107048, 40.479309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515820, 32.146839, 40.885937>,  <37.722599, 32.786465, 40.618420>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515820, 32.146839, 40.885937> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151497, 32.050556, 41.020092>,  <36.932903, 31.992786, 41.100586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151497, 32.050556, 41.020092>,  <37.515820, 32.146839, 40.885937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151497, 32.050556, 41.020092> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260286, -0.295767, -0.919116,
		0.320434, -0.924436, 0.206734,
		-0.910809, -0.240706, 0.335392,
		36.878254, 31.978344, 41.120708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393997, 31.473516, 40.632374>,  <37.515820, 32.146839, 40.885937>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393997, 31.473516, 40.632374> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035316, 31.641336, 40.688801>,  <36.820107, 31.742029, 40.722656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035316, 31.641336, 40.688801>,  <37.393997, 31.473516, 40.632374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035316, 31.641336, 40.688801> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256011, -0.231603, -0.938519,
		-0.361086, -0.877688, 0.315089,
		-0.896703, 0.419552, 0.141069,
		36.766304, 31.767202, 40.731121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012779, 31.020098, 40.385113>,  <37.393997, 31.473516, 40.632374>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012779, 31.020098, 40.385113> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808842, 31.363831, 40.369091>,  <36.686478, 31.570070, 40.359478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808842, 31.363831, 40.369091>,  <37.012779, 31.020098, 40.385113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808842, 31.363831, 40.369091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226386, -0.178938, -0.957461,
		-0.829944, -0.479090, 0.285772,
		-0.509845, 0.859334, -0.040050,
		36.655888, 31.621630, 40.357075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514866, 30.829628, 39.969597>,  <37.012779, 31.020098, 40.385113>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514866, 30.829628, 39.969597> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456882, 31.225142, 39.955196>,  <36.422092, 31.462450, 39.946556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456882, 31.225142, 39.955196>,  <36.514866, 30.829628, 39.969597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456882, 31.225142, 39.955196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407494, -0.092815, -0.908479,
		-0.901630, -0.117022, 0.416377,
		-0.144958, 0.988783, -0.035999,
		36.413395, 31.521776, 39.944397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918404, 30.947536, 39.469383>,  <36.514866, 30.829628, 39.969597>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918404, 30.947536, 39.469383> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103863, 31.301378, 39.489407>,  <36.215137, 31.513683, 39.501423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103863, 31.301378, 39.489407>,  <35.918404, 30.947536, 39.469383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103863, 31.301378, 39.489407> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250082, 0.184863, -0.950413,
		-0.849992, 0.428140, 0.306935,
		0.463651, 0.884602, 0.050062,
		36.242958, 31.566759, 39.504425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432384, 31.383770, 39.217304>,  <35.918404, 30.947536, 39.469383>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.432384, 31.383770, 39.217304> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767151, 31.600683, 39.187622>,  <35.968010, 31.730831, 39.169811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767151, 31.600683, 39.187622>,  <35.432384, 31.383770, 39.217304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767151, 31.600683, 39.187622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328645, 0.389456, -0.860416,
		-0.437688, 0.744481, 0.504159,
		0.836912, 0.542284, -0.074209,
		36.018223, 31.763369, 39.165359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183231, 32.102676, 39.093708>,  <35.432384, 31.383770, 39.217304>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183231, 32.102676, 39.093708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551903, 32.023434, 38.960285>,  <35.773106, 31.975887, 38.880234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551903, 32.023434, 38.960285>,  <35.183231, 32.102676, 39.093708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551903, 32.023434, 38.960285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292845, 0.208651, -0.933116,
		0.254454, 0.957715, 0.134295,
		0.921680, -0.198108, -0.333555,
		35.828407, 31.964001, 38.860218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352940, 32.771332, 38.783566>,  <35.183231, 32.102676, 39.093708>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352940, 32.771332, 38.783566> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579418, 32.479832, 38.629505>,  <35.715305, 32.304932, 38.537067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579418, 32.479832, 38.629505>,  <35.352940, 32.771332, 38.783566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579418, 32.479832, 38.629505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420067, 0.146921, -0.895521,
		0.709197, 0.668834, -0.222937,
		0.566201, -0.728749, -0.385151,
		35.749279, 32.261208, 38.513962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400539, 33.017185, 38.239582>,  <35.352940, 32.771332, 38.783566>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400539, 33.017185, 38.239582> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517002, 32.641186, 38.168449>,  <35.586880, 32.415585, 38.125771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517002, 32.641186, 38.168449>,  <35.400539, 33.017185, 38.239582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517002, 32.641186, 38.168449> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466739, 0.022692, -0.884104,
		0.835094, 0.340417, -0.432128,
		0.291158, -0.940001, -0.177836,
		35.604351, 32.359184, 38.115097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718819, 33.034473, 37.606827>,  <35.400539, 33.017185, 38.239582>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718819, 33.034473, 37.606827> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604450, 32.654724, 37.658897>,  <35.535831, 32.426876, 37.690140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604450, 32.654724, 37.658897>,  <35.718819, 33.034473, 37.606827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604450, 32.654724, 37.658897> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503311, 0.033179, -0.863468,
		0.815431, -0.312403, -0.487315,
		-0.285918, -0.949370, 0.130181,
		35.518673, 32.369911, 37.697952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744225, 32.714584, 36.863598>,  <35.718819, 33.034473, 37.606827>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744225, 32.714584, 36.863598> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530483, 32.455399, 37.080711>,  <35.402237, 32.299889, 37.210979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530483, 32.455399, 37.080711>,  <35.744225, 32.714584, 36.863598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530483, 32.455399, 37.080711> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600676, -0.160694, -0.783176,
		0.594689, -0.744530, -0.303348,
		-0.534352, -0.647960, 0.542784,
		35.370178, 32.261009, 37.243546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749176, 32.129444, 36.500782>,  <35.744225, 32.714584, 36.863598>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749176, 32.129444, 36.500782> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429214, 32.127029, 36.740822>,  <35.237240, 32.125580, 36.884846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429214, 32.127029, 36.740822>,  <35.749176, 32.129444, 36.500782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429214, 32.127029, 36.740822> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583349, -0.227002, -0.779855,
		0.140935, -0.973875, 0.178056,
		-0.799901, -0.006040, 0.600102,
		35.189243, 32.125217, 36.920853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.167961, 30.922577, 44.401058> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.908459, 31.221348, 44.459324>,  <37.752758, 31.400610, 44.494282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.908459, 31.221348, 44.459324>,  <38.167961, 30.922577, 44.401058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908459, 31.221348, 44.459324> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270954, -0.047856, -0.961402,
		-0.711126, -0.663183, 0.233429,
		-0.648756, 0.746926, 0.145661,
		37.713833, 31.445425, 44.503021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.503971, 30.660959, 44.146431>,  <38.167961, 30.922577, 44.401058>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.503971, 30.660959, 44.146431> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.467163, 31.059261, 44.146790>,  <37.445080, 31.298243, 44.147007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.467163, 31.059261, 44.146790>,  <37.503971, 30.660959, 44.146431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467163, 31.059261, 44.146790> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367750, -0.033145, -0.929334,
		-0.925360, -0.085849, 0.369240,
		-0.092021, 0.995757, 0.000899,
		37.439556, 31.357988, 44.147060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779472, 30.876062, 43.798180>,  <37.503971, 30.660959, 44.146431>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779472, 30.876062, 43.798180> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.026691, 31.190029, 43.780678>,  <37.175022, 31.378410, 43.770176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.026691, 31.190029, 43.780678>,  <36.779472, 30.876062, 43.798180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026691, 31.190029, 43.780678> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271571, 0.160940, -0.948866,
		-0.737741, 0.598331, 0.312630,
		0.618051, 0.784919, -0.043758,
		37.212109, 31.425505, 43.767551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480247, 31.173868, 43.230328>,  <36.779472, 30.876062, 43.798180>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480247, 31.173868, 43.230328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.770584, 31.435118, 43.316658>,  <36.944786, 31.591867, 43.368454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.770584, 31.435118, 43.316658>,  <36.480247, 31.173868, 43.230328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770584, 31.435118, 43.316658> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228310, 0.524724, -0.820085,
		-0.648865, 0.545979, 0.529983,
		0.725843, 0.653125, 0.215822,
		36.988338, 31.631056, 43.381405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237087, 31.843239, 43.285980>,  <36.480247, 31.173868, 43.230328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237087, 31.843239, 43.285980> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.623245, 31.865881, 43.184151>,  <36.854939, 31.879467, 43.123051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.623245, 31.865881, 43.184151>,  <36.237087, 31.843239, 43.285980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623245, 31.865881, 43.184151> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257256, 0.366953, -0.893960,
		0.042814, 0.928516, 0.368817,
		0.965394, 0.056606, -0.254577,
		36.912865, 31.882862, 43.107777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329384, 32.445534, 42.938946>,  <36.237087, 31.843239, 43.285980>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329384, 32.445534, 42.938946> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.647102, 32.243385, 42.804070>,  <36.837734, 32.122097, 42.723145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.647102, 32.243385, 42.804070>,  <36.329384, 32.445534, 42.938946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647102, 32.243385, 42.804070> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229812, 0.263837, -0.936791,
		0.562387, 0.821579, 0.093425,
		0.794297, -0.505369, -0.337187,
		36.885391, 32.091774, 42.702915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512085, 32.880642, 42.382977>,  <36.329384, 32.445534, 42.938946>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.512085, 32.880642, 42.382977> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.726505, 32.545193, 42.344269>,  <36.855156, 32.343922, 42.321045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.726505, 32.545193, 42.344269>,  <36.512085, 32.880642, 42.382977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726505, 32.545193, 42.344269> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056709, 0.078595, -0.995293,
		0.842280, 0.539013, -0.005427,
		0.536049, -0.838623, -0.096766,
		36.887321, 32.293606, 42.315239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058044, 32.974007, 41.852421>,  <36.512085, 32.880642, 42.382977>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058044, 32.974007, 41.852421> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.975502, 32.584999, 41.895557>,  <36.925976, 32.351597, 41.921440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.975502, 32.584999, 41.895557>,  <37.058044, 32.974007, 41.852421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975502, 32.584999, 41.895557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307001, -0.040301, -0.950855,
		0.929068, -0.229322, -0.290247,
		-0.206355, -0.972516, 0.107845,
		36.913597, 32.293243, 41.927910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274899, 32.699718, 41.317966>,  <37.058044, 32.974007, 41.852421>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274899, 32.699718, 41.317966> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.056480, 32.382206, 41.425114>,  <36.925430, 32.191700, 41.489403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.056480, 32.382206, 41.425114>,  <37.274899, 32.699718, 41.317966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056480, 32.382206, 41.425114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201689, -0.185778, -0.961669,
		0.813116, -0.579139, -0.058654,
		-0.546043, -0.793779, 0.267865,
		36.892666, 32.144073, 41.505474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161385, 32.442722, 41.170120>,  <37.274899, 32.699718, 41.317966>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.161385, 32.442722, 41.170120> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.364254, 32.763351, 41.043465>,  <38.485977, 32.955727, 40.967472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.364254, 32.763351, 41.043465>,  <38.161385, 32.442722, 41.170120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364254, 32.763351, 41.043465> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238255, 0.222678, 0.945330,
		0.828256, -0.554889, -0.078042,
		0.507175, 0.801570, -0.316640,
		38.516407, 33.003822, 40.948471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885239, 32.384785, 41.374729>,  <38.161385, 32.442722, 41.170120>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885239, 32.384785, 41.374729> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.787613, 32.767735, 41.312943>,  <38.729038, 32.997505, 41.275871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.787613, 32.767735, 41.312943>,  <38.885239, 32.384785, 41.374729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.787613, 32.767735, 41.312943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301773, 0.226349, 0.926120,
		0.921611, 0.179419, -0.344155,
		-0.244063, 0.957379, -0.154462,
		38.714394, 33.054947, 41.266605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491871, 32.761875, 41.618122>,  <38.885239, 32.384785, 41.374729>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.491871, 32.761875, 41.618122> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.159855, 32.984787, 41.609470>,  <38.960644, 33.118534, 41.604279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.159855, 32.984787, 41.609470>,  <39.491871, 32.761875, 41.618122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.159855, 32.984787, 41.609470> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200752, 0.334735, 0.920680,
		0.520316, 0.759862, -0.389719,
		-0.830042, 0.557281, -0.021625,
		38.910843, 33.151970, 41.602982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754055, 33.403267, 41.834785>,  <39.491871, 32.761875, 41.618122>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754055, 33.403267, 41.834785> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.365192, 33.461826, 41.907978>,  <39.131874, 33.496964, 41.951893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.365192, 33.461826, 41.907978>,  <39.754055, 33.403267, 41.834785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365192, 33.461826, 41.907978> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213530, 0.231738, 0.949054,
		0.096536, 0.961699, -0.256546,
		-0.972155, 0.146398, 0.182980,
		39.073547, 33.505745, 41.962872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636906, 34.084522, 42.096088>,  <39.754055, 33.403267, 41.834785>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.636906, 34.084522, 42.096088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.325840, 33.867035, 42.222332>,  <39.139202, 33.736542, 42.298077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.325840, 33.867035, 42.222332>,  <39.636906, 34.084522, 42.096088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325840, 33.867035, 42.222332> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164505, 0.308535, 0.936880,
		-0.606777, 0.780496, -0.150492,
		-0.777663, -0.543720, 0.315607,
		39.092541, 33.703918, 42.317013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201138, 34.460056, 42.505829>,  <39.636906, 34.084522, 42.096088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201138, 34.460056, 42.505829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.102242, 34.091995, 42.627277>,  <39.042904, 33.871159, 42.700146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.102242, 34.091995, 42.627277>,  <39.201138, 34.460056, 42.505829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102242, 34.091995, 42.627277> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170518, 0.267136, 0.948452,
		-0.953832, 0.286267, 0.090857,
		-0.247240, -0.920157, 0.303617,
		39.028069, 33.815948, 42.718361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711246, 34.631344, 43.014954>,  <39.201138, 34.460056, 42.505829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711246, 34.631344, 43.014954> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.862194, 34.264954, 43.069485>,  <38.952763, 34.045120, 43.102203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.862194, 34.264954, 43.069485>,  <38.711246, 34.631344, 43.014954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.862194, 34.264954, 43.069485> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110382, 0.101668, 0.988676,
		-0.919462, -0.388141, -0.062741,
		0.377366, -0.915975, 0.136323,
		38.975403, 33.990162, 43.110382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459454, 34.347328, 43.632034>,  <38.711246, 34.631344, 43.014954>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459454, 34.347328, 43.632034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.764740, 34.092339, 43.589825>,  <38.947910, 33.939346, 43.564499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.764740, 34.092339, 43.589825>,  <38.459454, 34.347328, 43.632034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.764740, 34.092339, 43.589825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163987, 0.033134, 0.985906,
		-0.624991, -0.769761, 0.129826,
		0.763214, -0.637472, -0.105522,
		38.993706, 33.901096, 43.558167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348557, 33.955448, 44.151093>,  <38.459454, 34.347328, 43.632034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348557, 33.955448, 44.151093> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.729366, 33.875999, 44.057968>,  <38.957851, 33.828331, 44.002094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.729366, 33.875999, 44.057968>,  <38.348557, 33.955448, 44.151093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729366, 33.875999, 44.057968> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224795, -0.062298, 0.972413,
		-0.207650, -0.978094, -0.014659,
		0.952024, -0.198626, -0.232807,
		39.014973, 33.816414, 43.988125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551533, 33.421822, 44.580803>,  <38.348557, 33.955448, 44.151093>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551533, 33.421822, 44.580803> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.896317, 33.590843, 44.468750>,  <39.103188, 33.692257, 44.401520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.896317, 33.590843, 44.468750>,  <38.551533, 33.421822, 44.580803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896317, 33.590843, 44.468750> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296510, 0.028020, 0.954618,
		0.411223, -0.905906, -0.101138,
		0.861961, 0.422550, -0.280133,
		39.154903, 33.717609, 44.384708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126537, 33.076111, 44.904106>,  <38.551533, 33.421822, 44.580803>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126537, 33.076111, 44.904106> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.326874, 33.407051, 44.802399>,  <39.447075, 33.605614, 44.741375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.326874, 33.407051, 44.802399>,  <39.126537, 33.076111, 44.904106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326874, 33.407051, 44.802399> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471945, -0.014786, 0.881504,
		0.725553, -0.561492, -0.397869,
		0.500840, 0.827350, -0.254266,
		39.477127, 33.655254, 44.726120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681164, 32.977203, 45.347717>,  <39.126537, 33.076111, 44.904106>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.681164, 32.977203, 45.347717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.707127, 33.354382, 45.217094>,  <39.722706, 33.580688, 45.138721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.707127, 33.354382, 45.217094>,  <39.681164, 32.977203, 45.347717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.707127, 33.354382, 45.217094> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483788, 0.256484, 0.836759,
		0.872775, -0.212301, -0.439536,
		0.064911, 0.942944, -0.326562,
		39.726601, 33.637264, 45.119125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.374496, 33.255707, 45.400967>,  <39.681164, 32.977203, 45.347717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.374496, 33.255707, 45.400967> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.129753, 33.570683, 45.430836>,  <39.982906, 33.759666, 45.448757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.129753, 33.570683, 45.430836>,  <40.374496, 33.255707, 45.400967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.129753, 33.570683, 45.430836> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356814, 0.190532, 0.914539,
		0.705916, 0.586208, -0.397547,
		-0.611855, 0.787438, 0.074668,
		39.946198, 33.806915, 45.453236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704212, 33.632809, 45.857605>,  <40.374496, 33.255707, 45.400967>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.704212, 33.632809, 45.857605> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.346302, 33.810360, 45.876987>,  <40.131557, 33.916893, 45.888618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.346302, 33.810360, 45.876987>,  <40.704212, 33.632809, 45.857605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.346302, 33.810360, 45.876987> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142612, 0.181257, 0.973040,
		0.423131, 0.877562, -0.225487,
		-0.894775, 0.443881, 0.048456,
		40.077869, 33.943523, 45.891525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.516457, 36.967236, 46.321880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.717049, 36.621784, 46.342518>,  <34.837402, 36.414513, 46.354900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.717049, 36.621784, 46.342518>,  <34.516457, 36.967236, 46.321880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717049, 36.621784, 46.342518> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235354, -0.193558, -0.952441,
		0.832543, 0.465486, -0.300324,
		0.501478, -0.863631, 0.051592,
		34.867493, 36.362694, 46.357994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936424, 36.966511, 45.730080>,  <34.516457, 36.967236, 46.321880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936424, 36.966511, 45.730080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.893848, 36.588417, 45.853493>,  <34.868305, 36.361561, 45.927540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.893848, 36.588417, 45.853493>,  <34.936424, 36.966511, 45.730080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893848, 36.588417, 45.853493> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227677, -0.278887, -0.932944,
		0.967902, -0.169546, -0.185525,
		-0.106436, -0.945239, 0.308537,
		34.861916, 36.304844, 45.946053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431278, 36.548435, 45.313908>,  <34.936424, 36.966511, 45.730080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431278, 36.548435, 45.313908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.157345, 36.281010, 45.429855>,  <34.992985, 36.120556, 45.499424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.157345, 36.281010, 45.429855>,  <35.431278, 36.548435, 45.313908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157345, 36.281010, 45.429855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037645, -0.364802, -0.930324,
		0.727725, -0.648030, 0.224661,
		-0.684835, -0.668563, 0.289870,
		34.951893, 36.080441, 45.516815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.664886, 35.963985, 45.017380>,  <35.431278, 36.548435, 45.313908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.664886, 35.963985, 45.017380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.276478, 35.907837, 45.094753>,  <35.043434, 35.874149, 45.141178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.276478, 35.907837, 45.094753>,  <35.664886, 35.963985, 45.017380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276478, 35.907837, 45.094753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115167, -0.434359, -0.893347,
		0.209415, -0.889735, 0.405606,
		-0.971021, -0.140368, 0.193430,
		34.985172, 35.865726, 45.152782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594429, 35.294468, 45.060257>,  <35.664886, 35.963985, 45.017380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594429, 35.294468, 45.060257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.250313, 35.476448, 44.968231>,  <35.043842, 35.585636, 44.913017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.250313, 35.476448, 44.968231>,  <35.594429, 35.294468, 45.060257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250313, 35.476448, 44.968231> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020775, -0.419611, -0.907466,
		-0.509386, -0.785461, 0.351535,
		-0.860287, 0.454947, -0.230062,
		34.992226, 35.612930, 44.899212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282486, 34.750011, 44.671856>,  <35.594429, 35.294468, 45.060257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282486, 34.750011, 44.671856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.082684, 35.088432, 44.597363>,  <34.962803, 35.291485, 44.552666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.082684, 35.088432, 44.597363>,  <35.282486, 34.750011, 44.671856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082684, 35.088432, 44.597363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003910, -0.217174, -0.976125,
		-0.866301, -0.486853, 0.111788,
		-0.499507, 0.846055, -0.186234,
		34.932831, 35.342251, 44.541492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722069, 34.530048, 44.148342>,  <35.282486, 34.750011, 44.671856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722069, 34.530048, 44.148342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.745300, 34.927914, 44.114254>,  <34.759239, 35.166634, 44.093800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.745300, 34.927914, 44.114254>,  <34.722069, 34.530048, 44.148342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.745300, 34.927914, 44.114254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077160, -0.080640, -0.993752,
		-0.995326, 0.064291, 0.072065,
		0.058078, 0.994668, -0.085224,
		34.762722, 35.226315, 44.088688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321484, 34.547230, 43.625298>,  <34.722069, 34.530048, 44.148342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321484, 34.547230, 43.625298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.475227, 34.915997, 43.644615>,  <34.567474, 35.137257, 43.656204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.475227, 34.915997, 43.644615>,  <34.321484, 34.547230, 43.625298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475227, 34.915997, 43.644615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150882, 0.114339, -0.981917,
		-0.910770, 0.370123, 0.183049,
		0.384360, 0.921919, 0.048291,
		34.590534, 35.192574, 43.659103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901531, 34.985069, 43.209885>,  <34.321484, 34.547230, 43.625298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901531, 34.985069, 43.209885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.257416, 35.165508, 43.237930>,  <34.470947, 35.273773, 43.254757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.257416, 35.165508, 43.237930>,  <33.901531, 34.985069, 43.209885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257416, 35.165508, 43.237930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000839, 0.155205, -0.987882,
		-0.456518, 0.878874, 0.138466,
		0.889714, 0.451102, 0.070116,
		34.524330, 35.300838, 43.258965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815285, 35.702702, 43.015228>,  <33.901531, 34.985069, 43.209885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815285, 35.702702, 43.015228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.198883, 35.601727, 42.963680>,  <34.429043, 35.541142, 42.932751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.198883, 35.601727, 42.963680>,  <33.815285, 35.702702, 43.015228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198883, 35.601727, 42.963680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006071, 0.472878, -0.881107,
		0.283365, 0.844193, 0.455019,
		0.958993, -0.252437, -0.128871,
		34.486580, 35.525997, 42.925018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073666, 36.190331, 42.598206>,  <33.815285, 35.702702, 43.015228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073666, 36.190331, 42.598206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.364452, 35.917339, 42.567898>,  <34.538925, 35.753544, 42.549713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.364452, 35.917339, 42.567898>,  <34.073666, 36.190331, 42.598206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364452, 35.917339, 42.567898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159327, 0.274975, -0.948158,
		0.667931, 0.677209, 0.308635,
		0.726969, -0.682478, -0.075767,
		34.582542, 35.712597, 42.545166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530144, 36.452694, 42.106010>,  <34.073666, 36.190331, 42.598206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530144, 36.452694, 42.106010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.643478, 36.069134, 42.099983>,  <34.711479, 35.838997, 42.096367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.643478, 36.069134, 42.099983>,  <34.530144, 36.452694, 42.106010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643478, 36.069134, 42.099983> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150378, 0.059943, -0.986810,
		0.947156, 0.277337, 0.161182,
		0.283341, -0.958901, -0.015070,
		34.728481, 35.781464, 42.095463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249432, 36.450809, 41.868027>,  <34.530144, 36.452694, 42.106010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249432, 36.450809, 41.868027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.062798, 36.104237, 41.796917>,  <34.950817, 35.896294, 41.754253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.062798, 36.104237, 41.796917>,  <35.249432, 36.450809, 41.868027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062798, 36.104237, 41.796917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254309, 0.061086, -0.965192,
		0.847128, -0.495552, 0.191839,
		-0.466584, -0.866428, -0.177771,
		34.922821, 35.844307, 41.743587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.585438, 36.220455, 41.388031>,  <35.249432, 36.450809, 41.868027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.585438, 36.220455, 41.388031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.278202, 35.965836, 41.360191>,  <35.093861, 35.813065, 41.343487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.278202, 35.965836, 41.360191>,  <35.585438, 36.220455, 41.388031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278202, 35.965836, 41.360191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119392, -0.035574, -0.992210,
		0.629118, -0.770413, 0.103323,
		-0.768087, -0.636552, -0.069600,
		35.047775, 35.774868, 41.339310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413647, 36.037827, 41.316502>,  <35.585438, 36.220455, 41.388031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413647, 36.037827, 41.316502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.756165, 36.227463, 41.234528>,  <36.961674, 36.341244, 41.185345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.756165, 36.227463, 41.234528>,  <36.413647, 36.037827, 41.316502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756165, 36.227463, 41.234528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182220, 0.093967, 0.978758,
		0.483275, -0.875448, -0.005925,
		0.856295, 0.474089, -0.204936,
		37.013054, 36.369690, 41.173046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888752, 35.748032, 41.792435>,  <36.413647, 36.037827, 41.316502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.888752, 35.748032, 41.792435> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.067650, 36.085148, 41.672653>,  <37.174988, 36.287418, 41.600784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.067650, 36.085148, 41.672653>,  <36.888752, 35.748032, 41.792435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067650, 36.085148, 41.672653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209051, 0.227026, 0.951187,
		0.869637, -0.488015, -0.074651,
		0.447246, 0.842793, -0.299450,
		37.201824, 36.337986, 41.582817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545300, 35.673161, 42.149097>,  <36.888752, 35.748032, 41.792435>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545300, 35.673161, 42.149097> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.474373, 36.054157, 42.050053>,  <37.431816, 36.282757, 41.990627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.474373, 36.054157, 42.050053>,  <37.545300, 35.673161, 42.149097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474373, 36.054157, 42.050053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362459, 0.297116, 0.883372,
		0.914976, 0.066892, -0.397925,
		-0.177321, 0.952495, -0.247609,
		37.421177, 36.339905, 41.975769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008408, 36.055920, 42.433945>,  <37.545300, 35.673161, 42.149097>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008408, 36.055920, 42.433945> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.745049, 36.345890, 42.352970>,  <37.587032, 36.519875, 42.304386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.745049, 36.345890, 42.352970>,  <38.008408, 36.055920, 42.433945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745049, 36.345890, 42.352970> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220985, 0.443296, 0.868708,
		0.719494, 0.527223, -0.452066,
		-0.658402, 0.724930, -0.202440,
		37.547527, 36.563370, 42.292236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327961, 36.775330, 42.601498>,  <38.008408, 36.055920, 42.433945>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.327961, 36.775330, 42.601498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.930321, 36.816021, 42.616573>,  <37.691738, 36.840435, 42.625618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.930321, 36.816021, 42.616573>,  <38.327961, 36.775330, 42.601498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930321, 36.816021, 42.616573> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063096, 0.259564, 0.963663,
		0.088250, 0.960353, -0.264451,
		-0.994098, 0.101729, 0.037688,
		37.632092, 36.846539, 42.627880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319164, 37.262985, 42.983089>,  <38.327961, 36.775330, 42.601498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319164, 37.262985, 42.983089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.945019, 37.123642, 43.007542>,  <37.720531, 37.040035, 43.022213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.945019, 37.123642, 43.007542>,  <38.319164, 37.262985, 42.983089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.945019, 37.123642, 43.007542> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042241, 0.281645, 0.958588,
		-0.351150, 0.894049, -0.278156,
		-0.935366, -0.348358, 0.061134,
		37.664410, 37.019135, 43.025883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967667, 37.759739, 43.483799>,  <38.319164, 37.262985, 42.983089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967667, 37.759739, 43.483799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.721584, 37.445053, 43.504189>,  <37.573933, 37.256241, 43.516422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.721584, 37.445053, 43.504189>,  <37.967667, 37.759739, 43.483799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721584, 37.445053, 43.504189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018324, 0.078906, 0.996714,
		-0.788151, 0.612254, -0.062959,
		-0.615210, -0.786714, 0.050971,
		37.537022, 37.209038, 43.519482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423828, 37.967930, 43.959816>,  <37.967667, 37.759739, 43.483799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.423828, 37.967930, 43.959816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.393024, 37.569622, 43.939754>,  <37.374542, 37.330639, 43.927715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.393024, 37.569622, 43.939754>,  <37.423828, 37.967930, 43.959816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393024, 37.569622, 43.939754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043611, -0.053623, 0.997609,
		-0.996076, 0.074636, 0.047556,
		-0.077008, -0.995768, -0.050157,
		37.369923, 37.270893, 43.924706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972359, 37.751286, 44.465496>,  <37.423828, 37.967930, 43.959816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972359, 37.751286, 44.465496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.182873, 37.421005, 44.384266>,  <37.309181, 37.222836, 44.335526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.182873, 37.421005, 44.384266>,  <36.972359, 37.751286, 44.465496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.182873, 37.421005, 44.384266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272849, -0.062210, 0.960043,
		-0.805341, -0.560669, 0.192551,
		0.526288, -0.825699, -0.203078,
		37.340759, 37.173294, 44.323341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738201, 37.304012, 44.980198>,  <36.972359, 37.751286, 44.465496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738201, 37.304012, 44.980198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.073643, 37.138443, 44.838539>,  <37.274906, 37.039101, 44.753544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.073643, 37.138443, 44.838539>,  <36.738201, 37.304012, 44.980198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.073643, 37.138443, 44.838539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369779, -0.044845, 0.928037,
		-0.400014, -0.909208, 0.115451,
		0.838602, -0.413919, -0.354145,
		37.325222, 37.014267, 44.732296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856815, 36.587101, 45.299240>,  <36.738201, 37.304012, 44.980198>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856815, 36.587101, 45.299240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.213470, 36.738068, 45.199211>,  <37.427464, 36.828648, 45.139194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.213470, 36.738068, 45.199211>,  <36.856815, 36.587101, 45.299240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213470, 36.738068, 45.199211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309282, -0.104377, 0.945225,
		0.330645, -0.920141, -0.209796,
		0.891638, 0.377420, -0.250071,
		37.480961, 36.851292, 45.124191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264774, 36.098293, 45.604645>,  <36.856815, 36.587101, 45.299240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264774, 36.098293, 45.604645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.481136, 36.426193, 45.529362>,  <37.610954, 36.622932, 45.484192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.481136, 36.426193, 45.529362>,  <37.264774, 36.098293, 45.604645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481136, 36.426193, 45.529362> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328988, -0.000266, 0.944334,
		0.774072, -0.572715, -0.269833,
		0.540906, 0.819754, -0.188211,
		37.643410, 36.672119, 45.472900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822006, 35.841827, 45.839951>,  <37.264774, 36.098293, 45.604645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.822006, 35.841827, 45.839951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.834908, 36.241608, 45.836796>,  <37.842648, 36.481476, 45.834904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.834908, 36.241608, 45.836796>,  <37.822006, 35.841827, 45.839951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834908, 36.241608, 45.836796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235912, 0.000060, 0.971775,
		0.971239, -0.033202, -0.235780,
		0.032251, 0.999449, -0.007891,
		37.844582, 36.541443, 45.834427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487278, 36.039654, 46.051964>,  <37.822006, 35.841827, 45.839951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487278, 36.039654, 46.051964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.238811, 36.335533, 46.155495>,  <38.089733, 36.513062, 46.217613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.238811, 36.335533, 46.155495>,  <38.487278, 36.039654, 46.051964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238811, 36.335533, 46.155495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421737, 0.037156, 0.905957,
		0.660522, 0.671907, -0.335040,
		-0.621168, 0.739703, 0.258825,
		38.052460, 36.557446, 46.233143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909382, 36.472828, 45.568100>,  <38.487278, 36.039654, 46.051964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.909382, 36.472828, 45.568100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.308491, 36.475071, 45.541508>,  <39.547955, 36.476418, 45.525551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.308491, 36.475071, 45.541508>,  <38.909382, 36.472828, 45.568100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.308491, 36.475071, 45.541508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066571, 0.149400, -0.986533,
		0.004404, 0.988761, 0.149440,
		0.997772, 0.005604, -0.066480,
		39.607822, 36.476753, 45.521564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054897, 37.144119, 45.273830>,  <38.909382, 36.472828, 45.568100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054897, 37.144119, 45.273830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.342674, 36.870396, 45.226288>,  <39.515339, 36.706161, 45.197762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.342674, 36.870396, 45.226288>,  <39.054897, 37.144119, 45.273830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342674, 36.870396, 45.226288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037765, 0.209416, -0.977097,
		0.693524, 0.698477, 0.176505,
		0.719443, -0.684306, -0.118857,
		39.558506, 36.665104, 45.190632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638836, 37.408333, 44.877346>,  <39.054897, 37.144119, 45.273830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.638836, 37.408333, 44.877346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.698814, 37.017185, 44.818993>,  <39.734802, 36.782497, 44.783981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.698814, 37.017185, 44.818993>,  <39.638836, 37.408333, 44.877346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698814, 37.017185, 44.818993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174288, 0.171388, -0.969665,
		0.973212, 0.119967, 0.196130,
		0.149942, -0.977872, -0.145888,
		39.743797, 36.723824, 44.775227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.271667, 37.416538, 44.539925>,  <39.638836, 37.408333, 44.877346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.271667, 37.416538, 44.539925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.094330, 37.062355, 44.484188>,  <39.987926, 36.849846, 44.450745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.094330, 37.062355, 44.484188>,  <40.271667, 37.416538, 44.539925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.094330, 37.062355, 44.484188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320244, -0.011273, -0.947268,
		0.837191, -0.464591, 0.288559,
		-0.443345, -0.885453, -0.139345,
		39.961327, 36.796719, 44.442383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.706135, 36.849804, 44.251320>,  <40.271667, 37.416538, 44.539925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.706135, 36.849804, 44.251320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.335171, 36.739014, 44.150761>,  <40.112595, 36.672539, 44.090424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.335171, 36.739014, 44.150761>,  <40.706135, 36.849804, 44.251320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.335171, 36.739014, 44.150761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298500, -0.142967, -0.943641,
		0.225422, -0.950182, 0.215266,
		-0.927406, -0.276974, -0.251401,
		40.056950, 36.655922, 44.075340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.837006, 36.243793, 43.751564>,  <40.706135, 36.849804, 44.251320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.837006, 36.243793, 43.751564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.468418, 36.375710, 43.669464>,  <40.247265, 36.454861, 43.620205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.468418, 36.375710, 43.669464>,  <40.837006, 36.243793, 43.751564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.468418, 36.375710, 43.669464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171768, -0.127980, -0.976789,
		-0.348408, -0.935338, 0.061281,
		-0.921470, 0.329795, -0.205250,
		40.191978, 36.474648, 43.607887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.766632, 35.928143, 43.085873>,  <40.837006, 36.243793, 43.751564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.766632, 35.928143, 43.085873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.428612, 36.140106, 43.114407>,  <40.225800, 36.267284, 43.131527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.428612, 36.140106, 43.114407>,  <40.766632, 35.928143, 43.085873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.428612, 36.140106, 43.114407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156817, -0.118085, -0.980543,
		-0.511178, -0.839792, 0.182886,
		-0.845048, 0.529911, 0.071332,
		40.175098, 36.299080, 43.135807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189098, 35.467876, 42.848141>,  <40.766632, 35.928143, 43.085873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189098, 35.467876, 42.848141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.097874, 35.853672, 42.794842>,  <40.043140, 36.085148, 42.762863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.097874, 35.853672, 42.794842>,  <40.189098, 35.467876, 42.848141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.097874, 35.853672, 42.794842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042472, -0.146576, -0.988287,
		-0.972721, -0.219727, 0.074391,
		-0.228057, 0.964487, -0.133245,
		40.029457, 36.143017, 42.754868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516521, 35.517071, 42.480618>,  <40.189098, 35.467876, 42.848141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516521, 35.517071, 42.480618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.673748, 35.876156, 42.401005>,  <39.768085, 36.091606, 42.353237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.673748, 35.876156, 42.401005>,  <39.516521, 35.517071, 42.480618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673748, 35.876156, 42.401005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170492, -0.141552, -0.975139,
		-0.903566, 0.417227, 0.097413,
		0.393065, 0.897711, -0.199035,
		39.791668, 36.145470, 42.341293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145008, 35.761078, 41.940563>,  <39.516521, 35.517071, 42.480618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145008, 35.761078, 41.940563> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.492271, 35.959591, 41.940262>,  <39.700630, 36.078697, 41.940083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.492271, 35.959591, 41.940262>,  <39.145008, 35.761078, 41.940563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.492271, 35.959591, 41.940262> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062643, -0.111086, -0.991835,
		-0.492311, 0.861026, -0.127529,
		0.868162, 0.496280, -0.000752,
		39.752720, 36.108475, 41.940037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084221, 36.263416, 41.477913>,  <39.145008, 35.761078, 41.940563>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084221, 36.263416, 41.477913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.478970, 36.218639, 41.524471>,  <39.715820, 36.191772, 41.552406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.478970, 36.218639, 41.524471>,  <39.084221, 36.263416, 41.477913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.478970, 36.218639, 41.524471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124097, 0.064420, -0.990177,
		0.103343, 0.991625, 0.077466,
		0.986874, -0.111941, 0.116400,
		39.775032, 36.185059, 41.559391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326984, 36.785233, 41.116825>,  <39.084221, 36.263416, 41.477913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326984, 36.785233, 41.116825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.627522, 36.522167, 41.138599>,  <39.807846, 36.364330, 41.151665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.627522, 36.522167, 41.138599>,  <39.326984, 36.785233, 41.116825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627522, 36.522167, 41.138599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256373, 0.214886, -0.942389,
		0.608073, 0.722017, 0.330060,
		0.751346, -0.657660, 0.054439,
		39.852924, 36.324871, 41.154930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988110, 37.141209, 40.908566>,  <39.326984, 36.785233, 41.116825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.988110, 37.141209, 40.908566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.065594, 36.754585, 40.841339>,  <40.112083, 36.522614, 40.801003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.065594, 36.754585, 40.841339>,  <39.988110, 37.141209, 40.908566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065594, 36.754585, 40.841339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179942, 0.203407, -0.962417,
		0.964415, 0.156190, 0.213326,
		0.193712, -0.966556, -0.168064,
		40.123707, 36.464619, 40.790920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642975, 37.038807, 40.613792>,  <39.988110, 37.141209, 40.908566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.642975, 37.038807, 40.613792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.433056, 36.721870, 40.489349>,  <40.307106, 36.531708, 40.414684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.433056, 36.721870, 40.489349>,  <40.642975, 37.038807, 40.613792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433056, 36.721870, 40.489349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159941, 0.267185, -0.950280,
		0.836068, -0.548460, -0.013490,
		-0.524795, -0.792341, -0.311106,
		40.275616, 36.484169, 40.396019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.704382, 36.603275, 42.954666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.566408, 36.978462, 42.940578>,  <27.483624, 37.203575, 42.932125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.566408, 36.978462, 42.940578>,  <27.704382, 36.603275, 42.954666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.566408, 36.978462, 42.940578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835857, -0.324021, -0.443117,
		-0.427039, -0.123412, 0.895772,
		-0.344936, 0.937966, -0.035215,
		27.462927, 37.259853, 42.930016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.030043, 36.521942, 43.115253>,  <27.704382, 36.603275, 42.954666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.030043, 36.521942, 43.115253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.069490, 36.873123, 42.927860>,  <27.093159, 37.083832, 42.815426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.069490, 36.873123, 42.927860>,  <27.030043, 36.521942, 43.115253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.069490, 36.873123, 42.927860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680603, -0.283944, -0.675393,
		-0.725985, 0.385455, 0.569535,
		0.098617, 0.877952, -0.468481,
		27.099075, 37.136509, 42.787315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.360214, 36.699291, 43.033585>,  <27.030043, 36.521942, 43.115253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.360214, 36.699291, 43.033585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.592928, 36.879299, 42.762585>,  <26.732555, 36.987305, 42.599983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.592928, 36.879299, 42.762585>,  <26.360214, 36.699291, 43.033585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.592928, 36.879299, 42.762585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604956, -0.317356, -0.730283,
		-0.543652, 0.834726, 0.087611,
		0.581782, 0.450020, -0.677503,
		26.767462, 37.014305, 42.559334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.840166, 37.041939, 42.466125>,  <26.360214, 36.699291, 43.033585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.840166, 37.041939, 42.466125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.196695, 37.016136, 42.286621>,  <26.410612, 37.000652, 42.178921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.196695, 37.016136, 42.286621>,  <25.840166, 37.041939, 42.466125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.196695, 37.016136, 42.286621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431086, -0.427092, -0.794832,
		-0.140387, 0.901904, -0.408485,
		0.891323, -0.064509, -0.448757,
		26.464092, 36.996784, 42.151993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.713680, 37.209969, 41.742435>,  <25.840166, 37.041939, 42.466125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.713680, 37.209969, 41.742435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.085152, 37.063427, 41.719303>,  <26.308035, 36.975502, 41.705421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.085152, 37.063427, 41.719303>,  <25.713680, 37.209969, 41.742435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.085152, 37.063427, 41.719303> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200665, -0.365168, -0.909058,
		0.311916, 0.855826, -0.412638,
		0.928677, -0.366352, -0.057833,
		26.363754, 36.953522, 41.701954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.071049, 37.543697, 41.193352>,  <25.713680, 37.209969, 41.742435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.071049, 37.543697, 41.193352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.248451, 37.189873, 41.251114>,  <26.354893, 36.977577, 41.285770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.248451, 37.189873, 41.251114>,  <26.071049, 37.543697, 41.193352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.248451, 37.189873, 41.251114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195159, -0.252564, -0.947694,
		0.874766, 0.392126, -0.284644,
		0.443507, -0.884561, 0.144407,
		26.381504, 36.924503, 41.294437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.471041, 37.412167, 40.544209>,  <26.071049, 37.543697, 41.193352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.471041, 37.412167, 40.544209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.423353, 37.055939, 40.719788>,  <26.394741, 36.842201, 40.825134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.423353, 37.055939, 40.719788>,  <26.471041, 37.412167, 40.544209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.423353, 37.055939, 40.719788> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218701, -0.407684, -0.886546,
		0.968482, -0.201690, -0.146165,
		-0.119218, -0.890570, 0.438944,
		26.387589, 36.788769, 40.851471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.909853, 36.993855, 40.136082>,  <26.471041, 37.412167, 40.544209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.909853, 36.993855, 40.136082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.660463, 36.732647, 40.308060>,  <26.510830, 36.575924, 40.411247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.660463, 36.732647, 40.308060>,  <26.909853, 36.993855, 40.136082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.660463, 36.732647, 40.308060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028491, -0.568519, -0.822177,
		0.781326, -0.500355, 0.373061,
		-0.623473, -0.653017, 0.429943,
		26.473421, 36.536743, 40.437042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.081591, 36.385544, 39.852924>,  <26.909853, 36.993855, 40.136082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.081591, 36.385544, 39.852924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.730143, 36.298424, 40.022907>,  <26.519274, 36.246151, 40.124897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.730143, 36.298424, 40.022907>,  <27.081591, 36.385544, 39.852924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.730143, 36.298424, 40.022907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159412, -0.705092, -0.690965,
		0.450132, -0.674838, 0.584786,
		-0.878618, -0.217804, 0.424961,
		26.466557, 36.233082, 40.150394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.052633, 35.708237, 40.072338>,  <27.081591, 36.385544, 39.852924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.052633, 35.708237, 40.072338> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.664322, 35.784565, 40.014130>,  <26.431335, 35.830360, 39.979202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.664322, 35.784565, 40.014130>,  <27.052633, 35.708237, 40.072338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.664322, 35.784565, 40.014130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052689, -0.761091, -0.646501,
		-0.234123, -0.619942, 0.748905,
		-0.970778, 0.190820, -0.145525,
		26.373089, 35.841812, 39.970470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.832426, 35.005569, 39.945877>,  <27.052633, 35.708237, 40.072338>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.832426, 35.005569, 39.945877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.549974, 35.253941, 39.809746>,  <26.380503, 35.402966, 39.728065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.549974, 35.253941, 39.809746>,  <26.832426, 35.005569, 39.945877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.549974, 35.253941, 39.809746> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063078, -0.533890, -0.843198,
		-0.705268, -0.573939, 0.416163,
		-0.706129, 0.620931, -0.340332,
		26.338135, 35.440220, 39.707645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.287138, 34.571136, 39.562176>,  <26.832426, 35.005569, 39.945877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.287138, 34.571136, 39.562176> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.246387, 34.948837, 39.436951>,  <26.221937, 35.175457, 39.361816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.246387, 34.948837, 39.436951>,  <26.287138, 34.571136, 39.562176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.246387, 34.948837, 39.436951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008922, -0.315552, -0.948866,
		-0.994757, -0.093875, 0.040572,
		-0.101878, 0.944253, -0.313060,
		26.215824, 35.232113, 39.343033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.774429, 34.587181, 39.071301>,  <26.287138, 34.571136, 39.562176>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.774429, 34.587181, 39.071301> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.983639, 34.918060, 38.989136>,  <26.109163, 35.116589, 38.939835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.983639, 34.918060, 38.989136>,  <25.774429, 34.587181, 39.071301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.983639, 34.918060, 38.989136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039830, -0.264465, -0.963573,
		-0.851388, 0.495788, -0.171268,
		0.523022, 0.827196, -0.205415,
		26.140545, 35.166218, 38.927513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.374498, 34.841721, 38.526672>,  <25.774429, 34.587181, 39.071301>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.374498, 34.841721, 38.526672> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.751181, 34.975544, 38.512451>,  <25.977190, 35.055840, 38.503918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.751181, 34.975544, 38.512451>,  <25.374498, 34.841721, 38.526672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.751181, 34.975544, 38.512451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059977, -0.270924, -0.960730,
		-0.331052, 0.902591, -0.275196,
		0.941704, 0.334558, -0.035556,
		26.033691, 35.075912, 38.501785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.498280, 35.216156, 37.810467>,  <25.374498, 34.841721, 38.526672>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.498280, 35.216156, 37.810467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.876028, 35.157497, 37.928219>,  <26.102676, 35.122303, 37.998871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.876028, 35.157497, 37.928219>,  <25.498280, 35.216156, 37.810467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.876028, 35.157497, 37.928219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247603, -0.272117, -0.929863,
		0.216468, 0.951024, -0.220668,
		0.944370, -0.146647, 0.294381,
		26.159340, 35.113503, 38.016533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.841774, 35.485535, 37.311871>,  <25.498280, 35.216156, 37.810467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.841774, 35.485535, 37.311871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.121305, 35.254311, 37.480389>,  <26.289024, 35.115578, 37.581497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.121305, 35.254311, 37.480389>,  <25.841774, 35.485535, 37.311871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.121305, 35.254311, 37.480389> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293731, -0.305112, -0.905885,
		0.652198, 0.756804, -0.043426,
		0.698827, -0.578061, 0.421291,
		26.330954, 35.080891, 37.606777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.436184, 35.590141, 36.914135>,  <25.841774, 35.485535, 37.311871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.436184, 35.590141, 36.914135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.464605, 35.247784, 37.119034>,  <26.481659, 35.042370, 37.241974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.464605, 35.247784, 37.119034>,  <26.436184, 35.590141, 36.914135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.464605, 35.247784, 37.119034> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436161, -0.435191, -0.787637,
		0.897059, 0.279388, 0.342385,
		0.071054, -0.855892, 0.512250,
		26.485922, 34.991016, 37.272709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.992037, 35.279171, 36.522320>,  <26.436184, 35.590141, 36.914135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.992037, 35.279171, 36.522320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.859711, 34.967155, 36.734772>,  <26.780315, 34.779945, 36.862244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.859711, 34.967155, 36.734772>,  <26.992037, 35.279171, 36.522320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.859711, 34.967155, 36.734772> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440826, -0.625373, -0.643880,
		0.834407, 0.021133, 0.550744,
		-0.330813, -0.780040, 0.531132,
		26.760468, 34.733143, 36.894112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.586573, 34.760071, 36.698586>,  <26.992037, 35.279171, 36.522320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.586573, 34.760071, 36.698586> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.241943, 34.558617, 36.724030>,  <27.035166, 34.437744, 36.739296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.241943, 34.558617, 36.724030>,  <27.586573, 34.760071, 36.698586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.241943, 34.558617, 36.724030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331183, -0.652629, -0.681464,
		0.384723, -0.566064, 0.729082,
		-0.861572, -0.503634, 0.063611,
		26.983471, 34.407528, 36.743114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.875088, 34.151253, 36.536407>,  <27.586573, 34.760071, 36.698586>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.875088, 34.151253, 36.536407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.482044, 34.082592, 36.508068>,  <27.246218, 34.041393, 36.491066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.482044, 34.082592, 36.508068>,  <27.875088, 34.151253, 36.536407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.482044, 34.082592, 36.508068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173698, -0.714671, -0.677550,
		0.065674, -0.678070, 0.732057,
		-0.982607, -0.171654, -0.070844,
		27.187262, 34.031097, 36.486816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.758932, 33.372646, 36.743542>,  <27.875088, 34.151253, 36.536407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.758932, 33.372646, 36.743542> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.455044, 33.512108, 36.523994>,  <27.272711, 33.595787, 36.392265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.455044, 33.512108, 36.523994>,  <27.758932, 33.372646, 36.743542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.455044, 33.512108, 36.523994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131225, -0.744523, -0.654573,
		-0.636868, -0.569320, 0.519879,
		-0.759723, 0.348656, -0.548872,
		27.227127, 33.616703, 36.359333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.428637, 33.092197, 36.422329>,  <27.758932, 33.372646, 36.743542>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.428637, 33.092197, 36.422329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.784548, 33.236126, 36.310028>,  <28.998095, 33.322483, 36.242649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.784548, 33.236126, 36.310028>,  <28.428637, 33.092197, 36.422329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.784548, 33.236126, 36.310028> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062725, 0.512897, 0.856155,
		0.452058, -0.779400, 0.433796,
		0.889780, 0.359822, -0.280747,
		29.051481, 33.344074, 36.225803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.014933, 33.049042, 36.928177>,  <28.428637, 33.092197, 36.422329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.014933, 33.049042, 36.928177> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.096296, 33.366249, 36.698483>,  <29.145115, 33.556572, 36.560665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.096296, 33.366249, 36.698483>,  <29.014933, 33.049042, 36.928177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.096296, 33.366249, 36.698483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182975, 0.545378, 0.817975,
		0.961845, -0.271454, -0.034167,
		0.203409, 0.793016, -0.574239,
		29.157318, 33.604153, 36.526211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.484735, 33.519867, 37.390522>,  <29.014933, 33.049042, 36.928177>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.484735, 33.519867, 37.390522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.414322, 33.769745, 37.086216>,  <29.372074, 33.919674, 36.903633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.414322, 33.769745, 37.086216>,  <29.484735, 33.519867, 37.390522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.414322, 33.769745, 37.086216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132213, 0.780836, 0.610586,
		0.975465, 0.006901, -0.220047,
		-0.176034, 0.624698, -0.760765,
		29.361511, 33.957153, 36.857986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.091911, 34.025558, 37.503407>,  <29.484735, 33.519867, 37.390522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.091911, 34.025558, 37.503407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.784794, 34.181400, 37.299957>,  <29.600523, 34.274906, 37.177887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.784794, 34.181400, 37.299957>,  <30.091911, 34.025558, 37.503407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.784794, 34.181400, 37.299957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023156, 0.776471, 0.629728,
		0.640278, 0.495279, -0.587148,
		-0.767794, 0.389605, -0.508626,
		29.554455, 34.298283, 37.147369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.290163, 34.767101, 37.403141>,  <30.091911, 34.025558, 37.503407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.290163, 34.767101, 37.403141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.896463, 34.712002, 37.358826>,  <29.660244, 34.678944, 37.332237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.896463, 34.712002, 37.358826>,  <30.290163, 34.767101, 37.403141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.896463, 34.712002, 37.358826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176758, 0.758199, 0.627608,
		-0.002452, 0.637307, -0.770606,
		-0.984251, -0.137750, -0.110790,
		29.601189, 34.670677, 37.325588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.138882, 35.397675, 37.311321>,  <30.290163, 34.767101, 37.403141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.138882, 35.397675, 37.311321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.790615, 35.220097, 37.396034>,  <29.581656, 35.113552, 37.446861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.790615, 35.220097, 37.396034>,  <30.138882, 35.397675, 37.311321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.790615, 35.220097, 37.396034> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292138, 0.813128, 0.503467,
		-0.395716, 0.376483, -0.837657,
		-0.870669, -0.443941, 0.211783,
		29.529415, 35.086914, 37.459568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.520782, 35.921452, 37.233616>,  <30.138882, 35.397675, 37.311321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.520782, 35.921452, 37.233616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.421345, 35.636055, 37.495647>,  <29.361683, 35.464817, 37.652866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.421345, 35.636055, 37.495647>,  <29.520782, 35.921452, 37.233616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.421345, 35.636055, 37.495647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301109, 0.699727, 0.647855,
		-0.920616, -0.036199, -0.388786,
		-0.248593, -0.713493, 0.655080,
		29.346767, 35.422009, 37.692173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.832256, 36.105789, 37.455799>,  <29.520782, 35.921452, 37.233616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.832256, 36.105789, 37.455799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.977556, 35.871506, 37.745625>,  <29.064735, 35.730934, 37.919521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.977556, 35.871506, 37.745625>,  <28.832256, 36.105789, 37.455799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.977556, 35.871506, 37.745625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398266, 0.605436, 0.689080,
		-0.842279, -0.538876, -0.013346,
		0.363248, -0.585713, 0.724562,
		29.086531, 35.695793, 37.962994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.272543, 36.002254, 37.833897>,  <28.832256, 36.105789, 37.455799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.272543, 36.002254, 37.833897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.583961, 35.914379, 38.069050>,  <28.770813, 35.861656, 38.210140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.583961, 35.914379, 38.069050>,  <28.272543, 36.002254, 37.833897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.583961, 35.914379, 38.069050> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407756, 0.535016, 0.739928,
		-0.477078, -0.815780, 0.326956,
		0.778545, -0.219685, 0.587883,
		28.817526, 35.848473, 38.245415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.951456, 36.096123, 38.620575>,  <28.272543, 36.002254, 37.833897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.951456, 36.096123, 38.620575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.345066, 36.080807, 38.690117>,  <28.581232, 36.071617, 38.731842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.345066, 36.080807, 38.690117>,  <27.951456, 36.096123, 38.620575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.345066, 36.080807, 38.690117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120368, 0.576401, 0.808253,
		-0.131158, -0.816269, 0.562585,
		0.984027, -0.038291, 0.173852,
		28.640274, 36.069321, 38.742271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.983675, 35.857388, 39.243309>,  <27.951456, 36.096123, 38.620575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.983675, 35.857388, 39.243309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.326511, 36.052238, 39.176254>,  <28.532213, 36.169147, 39.136021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.326511, 36.052238, 39.176254>,  <27.983675, 35.857388, 39.243309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.326511, 36.052238, 39.176254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147337, 0.543607, 0.826307,
		0.493641, -0.683524, 0.537693,
		0.857094, 0.487121, -0.167639,
		28.583639, 36.198376, 39.125961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.356440, 36.065063, 39.952301>,  <27.983675, 35.857388, 39.243309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.356440, 36.065063, 39.952301> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.508848, 36.325565, 39.689796>,  <28.600294, 36.481869, 39.532291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.508848, 36.325565, 39.689796>,  <28.356440, 36.065063, 39.952301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.508848, 36.325565, 39.689796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160082, 0.745559, 0.646928,
		0.910602, -0.141438, 0.388329,
		0.381022, 0.651258, -0.656266,
		28.623156, 36.520943, 39.492916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.853716, 36.527874, 40.324203>,  <28.356440, 36.065063, 39.952301>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.853716, 36.527874, 40.324203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.787363, 36.733990, 39.987881>,  <28.747551, 36.857658, 39.786087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.787363, 36.733990, 39.987881>,  <28.853716, 36.527874, 40.324203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.787363, 36.733990, 39.987881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089336, 0.841261, 0.533197,
		0.982090, 0.163563, -0.093517,
		-0.165883, 0.515294, -0.840806,
		28.737598, 36.888577, 39.735638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.241814, 37.099777, 40.402134>,  <28.853716, 36.527874, 40.324203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.241814, 37.099777, 40.402134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.964170, 37.183392, 40.126591>,  <28.797585, 37.233559, 39.961266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.964170, 37.183392, 40.126591>,  <29.241814, 37.099777, 40.402134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.964170, 37.183392, 40.126591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198997, 0.863909, 0.462668,
		0.691821, 0.458221, -0.558048,
		-0.694107, 0.209034, -0.688855,
		28.755938, 37.246101, 39.919933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.480871, 37.762871, 40.243702>,  <29.241814, 37.099777, 40.402134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.480871, 37.762871, 40.243702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.094694, 37.737087, 40.142696>,  <28.862988, 37.721619, 40.082092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.094694, 37.737087, 40.142696>,  <29.480871, 37.762871, 40.243702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.094694, 37.737087, 40.142696> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164558, 0.902122, 0.398870,
		0.202090, 0.426640, -0.881555,
		-0.965443, -0.064459, -0.252517,
		28.805061, 37.717751, 40.066940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.396765, 38.344948, 39.994152>,  <29.480871, 37.762871, 40.243702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.396765, 38.344948, 39.994152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.022978, 38.227539, 40.074768>,  <28.798706, 38.157093, 40.123138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.022978, 38.227539, 40.074768>,  <29.396765, 38.344948, 39.994152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.022978, 38.227539, 40.074768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162551, 0.855295, 0.491983,
		-0.316784, 0.426981, -0.846956,
		-0.934465, -0.293526, 0.201537,
		28.742638, 38.139481, 40.135231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.974009, 38.902370, 39.852325>,  <29.396765, 38.344948, 39.994152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.974009, 38.902370, 39.852325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.740461, 38.692879, 40.100456>,  <28.600332, 38.567184, 40.249332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.740461, 38.692879, 40.100456>,  <28.974009, 38.902370, 39.852325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.740461, 38.692879, 40.100456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248719, 0.842741, 0.477416,
		-0.772812, 0.124461, -0.622312,
		-0.583868, -0.523733, 0.620324,
		28.565302, 38.535759, 40.286552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.304733, 39.332985, 39.929310>,  <28.974009, 38.902370, 39.852325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.304733, 39.332985, 39.929310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.312439, 39.080868, 40.239758>,  <28.317062, 38.929596, 40.426025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.312439, 39.080868, 40.239758>,  <28.304733, 39.332985, 39.929310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.312439, 39.080868, 40.239758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362533, 0.719031, 0.592928,
		-0.931772, -0.292792, -0.214649,
		0.019265, -0.630292, 0.776120,
		28.318218, 38.891781, 40.472595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.669348, 39.434238, 40.327621>,  <28.304733, 39.332985, 39.929310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.669348, 39.434238, 40.327621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.913939, 39.246159, 40.582184>,  <28.060692, 39.133308, 40.734921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.913939, 39.246159, 40.582184>,  <27.669348, 39.434238, 40.327621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.913939, 39.246159, 40.582184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328552, 0.580796, 0.744802,
		-0.719828, -0.664519, 0.200656,
		0.611475, -0.470204, 0.636402,
		28.097382, 39.105099, 40.773106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.253105, 39.188183, 40.810272>,  <27.669348, 39.434238, 40.327621>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.253105, 39.188183, 40.810272> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.610186, 39.224438, 40.986847>,  <27.824434, 39.246193, 41.092793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.610186, 39.224438, 40.986847>,  <27.253105, 39.188183, 40.810272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.610186, 39.224438, 40.986847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446909, 0.303958, 0.841357,
		-0.057919, -0.948364, 0.311852,
		0.892702, 0.090639, 0.441438,
		27.877996, 39.251629, 41.119278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.125591, 38.944107, 41.363026>,  <27.253105, 39.188183, 40.810272>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.125591, 38.944107, 41.363026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.466722, 39.134560, 41.448799>,  <27.671402, 39.248833, 41.500263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.466722, 39.134560, 41.448799>,  <27.125591, 38.944107, 41.363026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.466722, 39.134560, 41.448799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389995, 0.307673, 0.867895,
		0.347259, -0.823792, 0.448082,
		0.852828, 0.476134, 0.214433,
		27.722570, 39.277397, 41.513130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.981781, 34.453690, 46.118977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.598423, 34.372528, 46.199280>,  <40.368408, 34.323833, 46.247463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.598423, 34.372528, 46.199280>,  <40.981781, 34.453690, 46.118977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.598423, 34.372528, 46.199280> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229440, -0.129217, 0.964707,
		-0.169798, 0.970636, 0.170395,
		-0.958398, -0.202901, 0.200762,
		40.310905, 34.311657, 46.259510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.925579, 34.712566, 46.776398>,  <40.981781, 34.453690, 46.118977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.925579, 34.712566, 46.776398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.624714, 34.453354, 46.728542>,  <40.444195, 34.297829, 46.699829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.624714, 34.453354, 46.728542>,  <40.925579, 34.712566, 46.776398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.624714, 34.453354, 46.728542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093743, -0.284932, 0.953953,
		-0.652277, 0.706311, 0.275063,
		-0.752162, -0.648027, -0.119643,
		40.399067, 34.258945, 46.692650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.383770, 34.920277, 47.344238>,  <40.925579, 34.712566, 46.776398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.383770, 34.920277, 47.344238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.303871, 34.541168, 47.244774>,  <40.255932, 34.313702, 47.185093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.303871, 34.541168, 47.244774>,  <40.383770, 34.920277, 47.344238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.303871, 34.541168, 47.244774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103173, -0.232024, 0.967223,
		-0.974401, 0.218854, -0.051438,
		-0.199746, -0.947770, -0.248664,
		40.243946, 34.256836, 47.170174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794289, 34.700348, 47.768250>,  <40.383770, 34.920277, 47.344238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.794289, 34.700348, 47.768250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.989502, 34.377167, 47.636169>,  <40.106632, 34.183258, 47.556923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.989502, 34.377167, 47.636169>,  <39.794289, 34.700348, 47.768250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.989502, 34.377167, 47.636169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037207, -0.397224, 0.916967,
		-0.872031, -0.435226, -0.223921,
		0.488035, -0.807955, -0.330198,
		40.135914, 34.134781, 47.537109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360638, 34.125816, 47.763702>,  <39.794289, 34.700348, 47.768250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360638, 34.125816, 47.763702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.731518, 33.978664, 47.791866>,  <39.954048, 33.890373, 47.808765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.731518, 33.978664, 47.791866>,  <39.360638, 34.125816, 47.763702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.731518, 33.978664, 47.791866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119206, -0.111616, 0.986576,
		-0.355087, -0.923148, -0.147345,
		0.927202, -0.367885, 0.070411,
		40.009678, 33.868298, 47.812988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337303, 33.669483, 48.298870>,  <39.360638, 34.125816, 47.763702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.337303, 33.669483, 48.298870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.732574, 33.711601, 48.254311>,  <39.969738, 33.736874, 48.227573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.732574, 33.711601, 48.254311>,  <39.337303, 33.669483, 48.298870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732574, 33.711601, 48.254311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139914, -0.322669, 0.936114,
		0.062625, -0.940637, -0.333588,
		0.988181, 0.105297, -0.111401,
		40.029030, 33.743191, 48.220890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660271, 33.117462, 48.689228>,  <39.337303, 33.669483, 48.298870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.660271, 33.117462, 48.689228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.954479, 33.386204, 48.654324>,  <40.131004, 33.547451, 48.633381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.954479, 33.386204, 48.654324>,  <39.660271, 33.117462, 48.689228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.954479, 33.386204, 48.654324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187179, -0.077731, 0.979245,
		0.651131, -0.736590, -0.182931,
		0.735521, 0.671858, -0.087261,
		40.175137, 33.587761, 48.628143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273048, 32.812931, 49.074009>,  <39.660271, 33.117462, 48.689228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273048, 32.812931, 49.074009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.315548, 33.208378, 49.031384>,  <40.341045, 33.445644, 49.005806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.315548, 33.208378, 49.031384>,  <40.273048, 32.812931, 49.074009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315548, 33.208378, 49.031384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352150, 0.062815, 0.933834,
		0.929894, -0.136744, -0.341466,
		0.106247, 0.988613, -0.106566,
		40.347424, 33.504963, 48.999413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.895195, 33.004299, 49.366463>,  <40.273048, 32.812931, 49.074009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.895195, 33.004299, 49.366463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.674229, 33.337547, 49.355488>,  <40.541649, 33.537495, 49.348904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.674229, 33.337547, 49.355488>,  <40.895195, 33.004299, 49.366463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.674229, 33.337547, 49.355488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384367, 0.283790, 0.878479,
		0.739664, 0.474737, -0.476993,
		-0.552413, 0.833119, -0.027436,
		40.508507, 33.587482, 49.347256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.345139, 33.534363, 49.663563>,  <40.895195, 33.004299, 49.366463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.345139, 33.534363, 49.663563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.989918, 33.714096, 49.702484>,  <40.776787, 33.821938, 49.725838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.989918, 33.714096, 49.702484>,  <41.345139, 33.534363, 49.663563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.989918, 33.714096, 49.702484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243071, 0.279235, 0.928948,
		0.390238, 0.848602, -0.357194,
		-0.888049, 0.449335, 0.097303,
		40.723503, 33.848896, 49.731674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.556282, 34.206009, 49.880711>,  <41.345139, 33.534363, 49.663563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.556282, 34.206009, 49.880711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.181675, 34.113239, 49.985897>,  <40.956913, 34.057579, 50.049011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.181675, 34.113239, 49.985897>,  <41.556282, 34.206009, 49.880711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.181675, 34.113239, 49.985897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238775, 0.127370, 0.962685,
		-0.256764, 0.964359, -0.063906,
		-0.936514, -0.231924, 0.262969,
		40.900723, 34.043663, 50.064789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.463360, 34.587509, 50.462490>,  <41.556282, 34.206009, 49.880711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.463360, 34.587509, 50.462490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.173355, 34.312115, 50.455017>,  <40.999352, 34.146877, 50.450535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.173355, 34.312115, 50.455017>,  <41.463360, 34.587509, 50.462490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.173355, 34.312115, 50.455017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181383, -0.217032, 0.959165,
		-0.664428, 0.692013, 0.282230,
		-0.725008, -0.688488, -0.018683,
		40.955853, 34.105568, 50.449413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832691, 34.713264, 50.840435>,  <41.463360, 34.587509, 50.462490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.832691, 34.713264, 50.840435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.885292, 34.316769, 50.835629>,  <40.916851, 34.078869, 50.832745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.885292, 34.316769, 50.835629>,  <40.832691, 34.713264, 50.840435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.885292, 34.316769, 50.835629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206577, 0.015544, 0.978307,
		-0.969553, -0.131130, 0.206812,
		0.131500, -0.991243, -0.012017,
		40.924744, 34.019394, 50.832024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.396103, 34.310654, 51.380215>,  <40.832691, 34.713264, 50.840435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.396103, 34.310654, 51.380215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.703362, 34.065250, 51.306931>,  <40.887714, 33.918007, 51.262962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.703362, 34.065250, 51.306931>,  <40.396103, 34.310654, 51.380215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703362, 34.065250, 51.306931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172665, -0.077052, 0.981962,
		-0.616557, -0.785921, 0.046745,
		0.768143, -0.613507, -0.183208,
		40.933804, 33.881199, 51.251968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057785, 34.755901, 50.865608>,  <40.396103, 34.310654, 51.380215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.057785, 34.755901, 50.865608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.046974, 35.144596, 50.959408>,  <40.040489, 35.377815, 51.015690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.046974, 35.144596, 50.959408>,  <40.057785, 34.755901, 50.865608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.046974, 35.144596, 50.959408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212490, 0.234810, -0.948532,
		-0.976790, 0.024197, -0.212830,
		-0.027023, 0.971740, 0.234501,
		40.038868, 35.436119, 51.029758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.826309, 35.025089, 50.312599>,  <40.057785, 34.755901, 50.865608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.826309, 35.025089, 50.312599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.952374, 35.358879, 50.493408>,  <40.028011, 35.559155, 50.601894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.952374, 35.358879, 50.493408>,  <39.826309, 35.025089, 50.312599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952374, 35.358879, 50.493408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036124, 0.486501, -0.872933,
		-0.948349, 0.258788, 0.183473,
		0.315164, 0.834473, 0.452024,
		40.046925, 35.609222, 50.629017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313950, 35.555126, 50.267361>,  <39.826309, 35.025089, 50.312599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313950, 35.555126, 50.267361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.663624, 35.740810, 50.324360>,  <39.873428, 35.852222, 50.358559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.663624, 35.740810, 50.324360>,  <39.313950, 35.555126, 50.267361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663624, 35.740810, 50.324360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078327, 0.424410, -0.902076,
		-0.479231, 0.777422, 0.407374,
		0.874187, 0.464211, 0.142497,
		39.925880, 35.880074, 50.367107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249409, 36.150669, 49.989685>,  <39.313950, 35.555126, 50.267361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.249409, 36.150669, 49.989685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.649036, 36.140175, 50.003422>,  <39.888813, 36.133881, 50.011665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.649036, 36.140175, 50.003422>,  <39.249409, 36.150669, 49.989685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649036, 36.140175, 50.003422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041771, 0.382622, -0.922960,
		0.011071, 0.923532, 0.383360,
		0.999066, -0.026231, 0.034341,
		39.948757, 36.132305, 50.013725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465099, 36.723083, 49.757866>,  <39.249409, 36.150669, 49.989685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.465099, 36.723083, 49.757866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.807846, 36.521339, 49.715168>,  <40.013493, 36.400291, 49.689548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.807846, 36.521339, 49.715168>,  <39.465099, 36.723083, 49.757866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807846, 36.521339, 49.715168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030470, 0.256244, -0.966132,
		0.514636, 0.824594, 0.234935,
		0.856867, -0.504364, -0.106747,
		40.064907, 36.370029, 49.683144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766003, 37.233192, 49.286804>,  <39.465099, 36.723083, 49.757866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766003, 37.233192, 49.286804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.983040, 36.897221, 49.282513>,  <40.113262, 36.695637, 49.279938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.983040, 36.897221, 49.282513>,  <39.766003, 37.233192, 49.286804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983040, 36.897221, 49.282513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126618, 0.094406, -0.987449,
		0.830401, 0.534420, 0.157574,
		0.542588, -0.839930, -0.010728,
		40.145817, 36.645241, 49.279293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.406033, 37.314800, 48.812061>,  <39.766003, 37.233192, 49.286804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.406033, 37.314800, 48.812061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.320778, 36.924339, 48.828514>,  <40.269627, 36.690063, 48.838387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.320778, 36.924339, 48.828514>,  <40.406033, 37.314800, 48.812061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.320778, 36.924339, 48.828514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065752, -0.056338, -0.996245,
		0.974808, -0.209630, 0.076192,
		-0.213135, -0.976157, 0.041135,
		40.256836, 36.631493, 48.840855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.910889, 37.028419, 48.360344>,  <40.406033, 37.314800, 48.812061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.910889, 37.028419, 48.360344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.621410, 36.755188, 48.399677>,  <40.447723, 36.591248, 48.423279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.621410, 36.755188, 48.399677>,  <40.910889, 37.028419, 48.360344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.621410, 36.755188, 48.399677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041405, -0.185211, -0.981826,
		0.688876, -0.706472, 0.162319,
		-0.723696, -0.683077, 0.098336,
		40.404301, 36.550266, 48.429176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.200466, 36.411877, 48.084023>,  <40.910889, 37.028419, 48.360344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.200466, 36.411877, 48.084023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.801449, 36.398548, 48.059353>,  <40.562038, 36.390553, 48.044552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.801449, 36.398548, 48.059353>,  <41.200466, 36.411877, 48.084023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.801449, 36.398548, 48.059353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069095, -0.319023, -0.945225,
		0.011820, -0.947161, 0.320541,
		-0.997540, -0.033321, -0.061674,
		40.502186, 36.388554, 48.040852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.094631, 35.883030, 47.634193>,  <41.200466, 36.411877, 48.084023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.094631, 35.883030, 47.634193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.731876, 36.051567, 47.632404>,  <40.514221, 36.152691, 47.631332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.731876, 36.051567, 47.632404>,  <41.094631, 35.883030, 47.634193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.731876, 36.051567, 47.632404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107110, -0.240784, -0.964650,
		-0.407528, -0.874352, 0.263495,
		-0.906889, 0.421345, -0.004475,
		40.459808, 36.177971, 47.631062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.802818, 35.517578, 47.159992>,  <41.094631, 35.883030, 47.634193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.802818, 35.517578, 47.159992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.551407, 35.828056, 47.179882>,  <40.400558, 36.014343, 47.191818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.551407, 35.828056, 47.179882>,  <40.802818, 35.517578, 47.159992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.551407, 35.828056, 47.179882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104532, -0.020944, -0.994301,
		-0.770727, -0.630149, 0.094301,
		-0.628533, 0.776192, 0.049729,
		40.362846, 36.060913, 47.194801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.447426, 35.453964, 46.552277>,  <40.802818, 35.517578, 47.159992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.447426, 35.453964, 46.552277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.298019, 35.814491, 46.640018>,  <40.208374, 36.030807, 46.692665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.298019, 35.814491, 46.640018>,  <40.447426, 35.453964, 46.552277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.298019, 35.814491, 46.640018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257750, 0.126315, -0.957919,
		-0.891095, -0.414336, 0.185134,
		-0.373515, 0.901316, 0.219354,
		40.185966, 36.084885, 46.705826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731106, 35.418480, 46.390835>,  <40.447426, 35.453964, 46.552277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731106, 35.418480, 46.390835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.868725, 35.794052, 46.388489>,  <39.951298, 36.019398, 46.387081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.868725, 35.794052, 46.388489>,  <39.731106, 35.418480, 46.390835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.868725, 35.794052, 46.388489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312189, 0.108501, -0.943804,
		-0.885533, 0.326545, 0.330454,
		0.344049, 0.938934, -0.005862,
		39.971939, 36.075733, 46.386730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219028, 35.857510, 46.215488>,  <39.731106, 35.418480, 46.390835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219028, 35.857510, 46.215488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.541542, 36.065022, 46.101807>,  <39.735050, 36.189529, 46.033600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.541542, 36.065022, 46.101807>,  <39.219028, 35.857510, 46.215488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.541542, 36.065022, 46.101807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265031, -0.112704, -0.957631,
		-0.528827, 0.847448, 0.046620,
		0.806288, 0.518777, -0.284201,
		39.783428, 36.220654, 46.016548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878075, 36.427387, 46.627621>,  <39.219028, 35.857510, 46.215488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878075, 36.427387, 46.627621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.496464, 36.546761, 46.638741>,  <38.267498, 36.618385, 46.645412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.496464, 36.546761, 46.638741>,  <38.878075, 36.427387, 46.627621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496464, 36.546761, 46.638741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056052, 0.086533, 0.994671,
		0.294440, 0.950499, -0.099283,
		-0.954025, 0.298436, 0.027799,
		38.210255, 36.636292, 46.647079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853596, 37.153728, 46.897747>,  <38.878075, 36.427387, 46.627621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853596, 37.153728, 46.897747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.490566, 36.997936, 46.960503>,  <38.272751, 36.904461, 46.998158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.490566, 36.997936, 46.960503>,  <38.853596, 37.153728, 46.897747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490566, 36.997936, 46.960503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012475, 0.348471, 0.937237,
		-0.419711, 0.852567, -0.311404,
		-0.907572, -0.389484, 0.156893,
		38.218296, 36.881092, 47.007572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557251, 37.590832, 47.462139>,  <38.853596, 37.153728, 46.897747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557251, 37.590832, 47.462139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.288948, 37.294174, 47.464882>,  <38.127968, 37.116180, 47.466526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.288948, 37.294174, 47.464882>,  <38.557251, 37.590832, 47.462139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288948, 37.294174, 47.464882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139238, 0.134997, 0.981014,
		-0.728489, 0.657069, -0.193816,
		-0.670758, -0.741645, 0.006855,
		38.087719, 37.071682, 47.466938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036201, 37.815487, 47.862457>,  <38.557251, 37.590832, 47.462139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036201, 37.815487, 47.862457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.930248, 37.429855, 47.870300>,  <37.866676, 37.198475, 47.875008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.930248, 37.429855, 47.870300>,  <38.036201, 37.815487, 47.862457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930248, 37.429855, 47.870300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284773, 0.097637, 0.953610,
		-0.921273, 0.247007, -0.300406,
		-0.264879, -0.964082, 0.019609,
		37.850784, 37.140629, 47.876183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363602, 37.778980, 48.165970>,  <38.036201, 37.815487, 47.862457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.363602, 37.778980, 48.165970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.483768, 37.399044, 48.200729>,  <37.555870, 37.171082, 48.221584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.483768, 37.399044, 48.200729>,  <37.363602, 37.778980, 48.165970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483768, 37.399044, 48.200729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358622, -0.028064, 0.933061,
		-0.883821, -0.311471, -0.349065,
		0.300418, -0.949841, 0.086897,
		37.573895, 37.114090, 48.226799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793903, 37.362164, 48.428440>,  <37.363602, 37.778980, 48.165970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793903, 37.362164, 48.428440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.141178, 37.191013, 48.528973>,  <37.349545, 37.088322, 48.589291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.141178, 37.191013, 48.528973>,  <36.793903, 37.362164, 48.428440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141178, 37.191013, 48.528973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336179, -0.134601, 0.932130,
		-0.365008, -0.893758, -0.260702,
		0.868189, -0.427878, 0.251332,
		37.401634, 37.062649, 48.604374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610241, 36.838863, 48.905125>,  <36.793903, 37.362164, 48.428440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610241, 36.838863, 48.905125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.999584, 36.883606, 48.985188>,  <37.233189, 36.910450, 49.033226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.999584, 36.883606, 48.985188>,  <36.610241, 36.838863, 48.905125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999584, 36.883606, 48.985188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201496, 0.000666, 0.979489,
		0.109427, -0.993724, 0.023187,
		0.973358, 0.111855, 0.200159,
		37.291592, 36.917160, 49.045235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014481, 36.433258, 48.917576>,  <36.610241, 36.838863, 48.905125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014481, 36.433258, 48.917576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.640507, 36.313057, 48.993046>,  <35.416122, 36.240936, 49.038326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.640507, 36.313057, 48.993046>,  <36.014481, 36.433258, 48.917576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640507, 36.313057, 48.993046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184762, -0.041658, -0.981900,
		0.302920, -0.952872, -0.016573,
		-0.934935, -0.300499, 0.188674,
		35.360027, 36.222908, 49.049648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901310, 35.708401, 48.673771>,  <36.014481, 36.433258, 48.917576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901310, 35.708401, 48.673771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.562271, 35.918484, 48.704063>,  <35.358849, 36.044533, 48.722237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.562271, 35.918484, 48.704063>,  <35.901310, 35.708401, 48.673771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562271, 35.918484, 48.704063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209951, -0.200859, -0.956858,
		-0.487342, -0.826928, 0.280516,
		-0.847596, 0.525211, 0.075727,
		35.307991, 36.076046, 48.726780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357620, 35.274929, 48.283302>,  <35.901310, 35.708401, 48.673771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357620, 35.274929, 48.283302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.187325, 35.632725, 48.337910>,  <35.085148, 35.847401, 48.370674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.187325, 35.632725, 48.337910>,  <35.357620, 35.274929, 48.283302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187325, 35.632725, 48.337910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415216, -0.059075, -0.907803,
		-0.803951, -0.443177, 0.396556,
		-0.425744, 0.894485, 0.136521,
		35.059601, 35.901070, 48.378864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584221, 35.231163, 48.085522>,  <35.357620, 35.274929, 48.283302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584221, 35.231163, 48.085522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.700771, 35.609711, 48.029686>,  <34.770702, 35.836838, 47.996185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.700771, 35.609711, 48.029686>,  <34.584221, 35.231163, 48.085522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700771, 35.609711, 48.029686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331549, -0.036971, -0.942714,
		-0.897316, 0.320965, 0.302995,
		0.291376, 0.946370, -0.139590,
		34.788185, 35.893623, 47.987808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.059521, 35.514755, 47.708500>,  <34.584221, 35.231163, 48.085522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.059521, 35.514755, 47.708500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.373070, 35.758320, 47.659882>,  <34.561199, 35.904457, 47.630711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.373070, 35.758320, 47.659882>,  <34.059521, 35.514755, 47.708500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373070, 35.758320, 47.659882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043822, -0.141007, -0.989038,
		-0.619376, 0.780604, -0.083847,
		0.783870, 0.608912, -0.121544,
		34.608231, 35.940994, 47.623417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850029, 35.965481, 47.213188>,  <34.059521, 35.514755, 47.708500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850029, 35.965481, 47.213188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.249043, 35.990574, 47.225842>,  <34.488449, 36.005630, 47.233433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.249043, 35.990574, 47.225842>,  <33.850029, 35.965481, 47.213188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249043, 35.990574, 47.225842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033714, -0.032405, -0.998906,
		-0.061635, 0.997505, -0.034439,
		0.997529, 0.062729, 0.031633,
		34.548302, 36.009392, 47.235332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097515, 36.579609, 46.781689>,  <33.850029, 35.965481, 47.213188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097515, 36.579609, 46.781689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.436234, 36.366970, 46.789173>,  <34.639465, 36.239388, 46.793663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.436234, 36.366970, 46.789173>,  <34.097515, 36.579609, 46.781689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436234, 36.366970, 46.789173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008283, -0.021988, -0.999724,
		0.531857, 0.846715, -0.014216,
		0.846793, -0.531593, 0.018707,
		34.690273, 36.207493, 46.794785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<38.741669, 31.265261, 51.395756> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.823986, 31.653494, 51.345768>,  <38.873375, 31.886435, 51.315777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.823986, 31.653494, 51.345768>,  <38.741669, 31.265261, 51.395756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823986, 31.653494, 51.345768> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374468, -0.039877, -0.926382,
		-0.904114, 0.237440, 0.355246,
		0.205794, 0.970583, -0.124967,
		38.885723, 31.944670, 51.308277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095367, 31.620895, 51.109638>,  <38.741669, 31.265261, 51.395756>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095367, 31.620895, 51.109638> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.442818, 31.792860, 51.011116>,  <38.651287, 31.896040, 50.952003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.442818, 31.792860, 51.011116>,  <38.095367, 31.620895, 51.109638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442818, 31.792860, 51.011116> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305926, 0.074323, -0.949150,
		-0.389746, 0.899806, 0.196081,
		0.868624, 0.429914, -0.246306,
		38.703403, 31.921835, 50.937225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948246, 32.289867, 50.695942>,  <38.095367, 31.620895, 51.109638>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948246, 32.289867, 50.695942> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.296600, 32.125633, 50.587887>,  <38.505615, 32.027092, 50.523052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.296600, 32.125633, 50.587887>,  <37.948246, 32.289867, 50.695942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296600, 32.125633, 50.587887> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267433, 0.065274, -0.961363,
		0.412352, 0.909484, -0.052957,
		0.870888, -0.410583, -0.270142,
		38.557865, 32.002457, 50.506844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071209, 32.679333, 50.022793>,  <37.948246, 32.289867, 50.695942>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071209, 32.679333, 50.022793> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.309513, 32.358330, 50.009766>,  <38.452496, 32.165730, 50.001949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.309513, 32.358330, 50.009766>,  <38.071209, 32.679333, 50.022793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309513, 32.358330, 50.009766> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343536, -0.217960, -0.913497,
		0.725986, 0.555411, -0.405540,
		0.595758, -0.802504, -0.032568,
		38.488239, 32.117580, 49.999996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478661, 32.750351, 49.395191>,  <38.071209, 32.679333, 50.022793>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478661, 32.750351, 49.395191> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.484398, 32.373177, 49.528263>,  <38.487843, 32.146873, 49.608105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.484398, 32.373177, 49.528263>,  <38.478661, 32.750351, 49.395191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.484398, 32.373177, 49.528263> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017188, -0.332894, -0.942808,
		0.999749, 0.007809, -0.020983,
		0.014348, -0.942932, 0.332676,
		38.488701, 32.090298, 49.628067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114964, 32.411133, 49.001011>,  <38.478661, 32.750351, 49.395191>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114964, 32.411133, 49.001011> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.828739, 32.157990, 49.119305>,  <38.657005, 32.006104, 49.190281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.828739, 32.157990, 49.119305>,  <39.114964, 32.411133, 49.001011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828739, 32.157990, 49.119305> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154107, -0.269904, -0.950475,
		0.681339, -0.725697, 0.095604,
		-0.715561, -0.632862, 0.295731,
		38.614071, 31.968130, 49.208023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271381, 31.959314, 48.601971>,  <39.114964, 32.411133, 49.001011>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271381, 31.959314, 48.601971> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.899395, 31.860298, 48.710705>,  <38.676205, 31.800888, 48.775944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.899395, 31.860298, 48.710705>,  <39.271381, 31.959314, 48.601971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899395, 31.860298, 48.710705> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183719, -0.327546, -0.926802,
		0.318460, -0.911832, 0.259127,
		-0.929963, -0.247542, 0.271831,
		38.620407, 31.786036, 48.792255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140728, 31.359182, 48.320114>,  <39.271381, 31.959314, 48.601971>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140728, 31.359182, 48.320114> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.768764, 31.484116, 48.397797>,  <38.545586, 31.559076, 48.444405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.768764, 31.484116, 48.397797>,  <39.140728, 31.359182, 48.320114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768764, 31.484116, 48.397797> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279600, -0.257297, -0.924999,
		-0.238939, -0.914465, 0.326591,
		-0.929910, 0.312333, 0.194206,
		38.489792, 31.577816, 48.456059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753185, 30.928858, 48.012360>,  <39.140728, 31.359182, 48.320114>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753185, 30.928858, 48.012360> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.522484, 31.253210, 48.052006>,  <38.384064, 31.447821, 48.075794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.522484, 31.253210, 48.052006>,  <38.753185, 30.928858, 48.012360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522484, 31.253210, 48.052006> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393235, -0.169233, -0.903729,
		-0.716043, -0.560207, 0.416473,
		-0.576757, 0.810881, 0.099115,
		38.349457, 31.496475, 48.081741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055161, 30.709732, 47.841419>,  <38.753185, 30.928858, 48.012360>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055161, 30.709732, 47.841419> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.051304, 31.105225, 47.781662>,  <38.048988, 31.342520, 47.745808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.051304, 31.105225, 47.781662>,  <38.055161, 30.709732, 47.841419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051304, 31.105225, 47.781662> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473319, -0.136120, -0.870311,
		-0.880838, 0.062319, 0.469298,
		-0.009644, 0.988730, -0.149397,
		38.048412, 31.401844, 47.736843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337425, 30.805408, 47.559788>,  <38.055161, 30.709732, 47.841419>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337425, 30.805408, 47.559788> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.537575, 31.140841, 47.473621>,  <37.657665, 31.342100, 47.421921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.537575, 31.140841, 47.473621>,  <37.337425, 30.805408, 47.559788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.537575, 31.140841, 47.473621> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513658, 0.087234, -0.853549,
		-0.696979, 0.537746, 0.474394,
		0.500376, 0.838582, -0.215417,
		37.687687, 31.392414, 47.408997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862453, 31.295256, 47.307873>,  <37.337425, 30.805408, 47.559788>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862453, 31.295256, 47.307873> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.203865, 31.437517, 47.155560>,  <37.408710, 31.522873, 47.064171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.203865, 31.437517, 47.155560>,  <36.862453, 31.295256, 47.307873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203865, 31.437517, 47.155560> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469475, 0.207933, -0.858113,
		-0.226011, 0.911195, 0.344446,
		0.853530, 0.355652, -0.380788,
		37.459923, 31.544212, 47.041325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449509, 31.848042, 47.344559>,  <36.862453, 31.295256, 47.307873>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449509, 31.848042, 47.344559> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.108200, 32.052299, 47.386833>,  <35.903416, 32.174854, 47.412197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.108200, 32.052299, 47.386833>,  <36.449509, 31.848042, 47.344559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108200, 32.052299, 47.386833> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216427, 0.162404, 0.962696,
		0.474434, 0.844314, -0.249092,
		-0.853271, 0.510646, 0.105683,
		35.852219, 32.205494, 47.418537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538383, 32.455132, 47.669373>,  <36.449509, 31.848042, 47.344559>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538383, 32.455132, 47.669373> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.150322, 32.389450, 47.740749>,  <35.917484, 32.350040, 47.783573>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.150322, 32.389450, 47.740749>,  <36.538383, 32.455132, 47.669373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150322, 32.389450, 47.740749> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149427, 0.174737, 0.973210,
		-0.190984, 0.970827, -0.144985,
		-0.970153, -0.164203, 0.178440,
		35.859276, 32.340191, 47.794281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582699, 32.703869, 48.341911>,  <36.538383, 32.455132, 47.669373>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582699, 32.703869, 48.341911> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.212513, 32.564240, 48.283043>,  <35.990402, 32.480461, 48.247723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.212513, 32.564240, 48.283043>,  <36.582699, 32.703869, 48.341911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212513, 32.564240, 48.283043> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174688, 0.048528, 0.983427,
		-0.336143, 0.935839, -0.105890,
		-0.925469, -0.349070, -0.147167,
		35.934872, 32.459518, 48.238892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098915, 33.200642, 48.526722>,  <36.582699, 32.703869, 48.341911>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098915, 33.200642, 48.526722> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.929935, 32.839153, 48.554516>,  <35.828548, 32.622261, 48.571190>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.929935, 32.839153, 48.554516>,  <36.098915, 33.200642, 48.526722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929935, 32.839153, 48.554516> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062836, 0.105672, 0.992414,
		-0.904208, 0.414874, -0.101427,
		-0.422445, -0.903722, 0.069481,
		35.803204, 32.568035, 48.575359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539307, 33.265114, 49.075523>,  <36.098915, 33.200642, 48.526722>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539307, 33.265114, 49.075523> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.644608, 32.879646, 49.057468>,  <35.707787, 32.648365, 49.046635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.644608, 32.879646, 49.057468>,  <35.539307, 33.265114, 49.075523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644608, 32.879646, 49.057468> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063661, -0.029333, 0.997540,
		-0.962624, -0.265477, 0.053627,
		0.263251, -0.963671, -0.045137,
		35.723583, 32.590546, 49.043926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912369, 32.836086, 49.164371>,  <35.539307, 33.265114, 49.075523>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912369, 32.836086, 49.164371> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.194630, 32.586063, 49.297855>,  <35.363987, 32.436050, 49.377945>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.194630, 32.586063, 49.297855>,  <34.912369, 32.836086, 49.164371>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194630, 32.586063, 49.297855> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218923, 0.255594, 0.941671,
		-0.673894, -0.737545, 0.043520,
		0.705649, -0.625059, 0.333709,
		35.406322, 32.398544, 49.397968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663609, 32.332836, 49.778488>,  <34.912369, 32.836086, 49.164371>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663609, 32.332836, 49.778488> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.059727, 32.324764, 49.833488>,  <35.297398, 32.319920, 49.866489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.059727, 32.324764, 49.833488>,  <34.663609, 32.332836, 49.778488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059727, 32.324764, 49.833488> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130024, 0.214748, 0.967976,
		-0.049061, -0.976461, 0.210040,
		0.990296, -0.020180, 0.137499,
		35.356815, 32.318710, 49.874737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847031, 31.988802, 50.433575>,  <34.663609, 32.332836, 49.778488>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.847031, 31.988802, 50.433575> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.154510, 32.232155, 50.354610>,  <35.338997, 32.378166, 50.307232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.154510, 32.232155, 50.354610>,  <34.847031, 31.988802, 50.433575>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154510, 32.232155, 50.354610> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024921, 0.279917, 0.959701,
		0.639123, -0.742642, 0.200010,
		0.768700, 0.608382, -0.197409,
		35.385120, 32.414669, 50.295387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248753, 31.947176, 51.086956>,  <34.847031, 31.988802, 50.433575>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248753, 31.947176, 51.086956> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.392460, 32.257908, 50.880089>,  <35.478683, 32.444347, 50.755970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.392460, 32.257908, 50.880089>,  <35.248753, 31.947176, 51.086956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392460, 32.257908, 50.880089> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120726, 0.510823, 0.851167,
		0.925391, -0.368235, 0.089740,
		0.359271, 0.776829, -0.517167,
		35.500240, 32.490955, 50.724937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891232, 32.091587, 51.450760>,  <35.248753, 31.947176, 51.086956>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891232, 32.091587, 51.450760> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.825909, 32.411610, 51.219849>,  <35.786716, 32.603622, 51.081303>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.825909, 32.411610, 51.219849>,  <35.891232, 32.091587, 51.450760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825909, 32.411610, 51.219849> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004059, 0.585668, 0.810541,
		0.986568, 0.130021, -0.098890,
		-0.163304, 0.800054, -0.577274,
		35.776917, 32.651627, 51.046665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384094, 32.707100, 51.618378>,  <35.891232, 32.091587, 51.450760>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384094, 32.707100, 51.618378> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.061707, 32.873791, 51.450211>,  <35.868275, 32.973804, 51.349312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.061707, 32.873791, 51.450211>,  <36.384094, 32.707100, 51.618378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.061707, 32.873791, 51.450211> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069123, 0.639103, 0.766009,
		0.587910, 0.646439, -0.486291,
		-0.805968, 0.416730, -0.420419,
		35.819916, 32.998810, 51.324085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415649, 33.441063, 51.711258>,  <36.384094, 32.707100, 51.618378>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415649, 33.441063, 51.711258> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.026295, 33.367771, 51.656197>,  <35.792683, 33.323795, 51.623158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.026295, 33.367771, 51.656197>,  <36.415649, 33.441063, 51.711258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026295, 33.367771, 51.656197> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209342, 0.466448, 0.859420,
		-0.093260, 0.865363, -0.492391,
		-0.973385, -0.183228, -0.137655,
		35.734280, 33.312801, 51.614899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923988, 34.093197, 51.603008>,  <36.415649, 33.441063, 51.711258>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923988, 34.093197, 51.603008> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.733788, 33.783264, 51.769642>,  <35.619667, 33.597305, 51.869621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.733788, 33.783264, 51.769642>,  <35.923988, 34.093197, 51.603008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733788, 33.783264, 51.769642> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214638, 0.561412, 0.799217,
		-0.853130, 0.290612, -0.433259,
		-0.475499, -0.774830, 0.416581,
		35.591137, 33.550816, 51.894615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860691, 34.824375, 51.686733>,  <35.923988, 34.093197, 51.603008>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860691, 34.824375, 51.686733> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.711697, 35.146015, 51.872066>,  <35.622299, 35.339001, 51.983265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.711697, 35.146015, 51.872066>,  <35.860691, 34.824375, 51.686733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711697, 35.146015, 51.872066> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485751, 0.256482, -0.835621,
		-0.790759, -0.536323, 0.295056,
		-0.372487, 0.804099, 0.463335,
		35.599949, 35.387245, 52.011066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139336, 34.896706, 51.521202>,  <35.860691, 34.824375, 51.686733>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139336, 34.896706, 51.521202> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.292416, 35.252312, 51.621758>,  <35.384266, 35.465675, 51.682091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.292416, 35.252312, 51.621758>,  <35.139336, 34.896706, 51.521202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292416, 35.252312, 51.621758> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351775, 0.391828, -0.850132,
		-0.854278, 0.236917, 0.462687,
		0.382704, 0.889012, 0.251388,
		35.407227, 35.519016, 51.697174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537731, 35.403091, 51.437405>,  <35.139336, 34.896706, 51.521202>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537731, 35.403091, 51.437405> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.887272, 35.597244, 51.426216>,  <35.096996, 35.713737, 51.419502>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.887272, 35.597244, 51.426216>,  <34.537731, 35.403091, 51.437405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887272, 35.597244, 51.426216> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256132, 0.410698, -0.875056,
		-0.413252, 0.771834, 0.483212,
		0.873853, 0.485385, -0.027970,
		35.149429, 35.742859, 51.417824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437614, 36.139732, 51.296761>,  <34.537731, 35.403091, 51.437405>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437614, 36.139732, 51.296761> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.824257, 36.093704, 51.205166>,  <35.056244, 36.066086, 51.150208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.824257, 36.093704, 51.205166>,  <34.437614, 36.139732, 51.296761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824257, 36.093704, 51.205166> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152437, 0.460095, -0.874686,
		0.206006, 0.880381, 0.427189,
		0.966605, -0.115071, -0.228985,
		35.114239, 36.059181, 51.136471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.650208, 36.731476, 50.993172>,  <34.437614, 36.139732, 51.296761>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.650208, 36.731476, 50.993172> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.921112, 36.465546, 50.867104>,  <35.083656, 36.305988, 50.791462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.921112, 36.465546, 50.867104>,  <34.650208, 36.731476, 50.993172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921112, 36.465546, 50.867104> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087907, 0.352179, -0.931795,
		0.730472, 0.658774, 0.180075,
		0.677261, -0.664821, -0.315168,
		35.124290, 36.266098, 50.772552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030975, 37.076233, 50.466629>,  <34.650208, 36.731476, 50.993172>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030975, 37.076233, 50.466629> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.139328, 36.699753, 50.385868>,  <35.204338, 36.473866, 50.337410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.139328, 36.699753, 50.385868>,  <35.030975, 37.076233, 50.466629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139328, 36.699753, 50.385868> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021417, 0.203803, -0.978778,
		0.962375, 0.269456, 0.035049,
		0.270880, -0.941200, -0.201906,
		35.220592, 36.417393, 50.325294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387825, 37.109688, 49.823547>,  <35.030975, 37.076233, 50.466629>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.387825, 37.109688, 49.823547> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.321712, 36.716396, 49.854401>,  <35.282043, 36.480423, 49.872913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.321712, 36.716396, 49.854401>,  <35.387825, 37.109688, 49.823547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321712, 36.716396, 49.854401> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079782, -0.091279, -0.992624,
		0.983014, -0.157911, 0.093531,
		-0.165283, -0.983226, 0.077130,
		35.272129, 36.421429, 49.877541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949078, 36.771061, 49.526917>,  <35.387825, 37.109688, 49.823547>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949078, 36.771061, 49.526917> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.643406, 36.513493, 49.511959>,  <35.460003, 36.358952, 49.502983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.643406, 36.513493, 49.511959>,  <35.949078, 36.771061, 49.526917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643406, 36.513493, 49.511959> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047894, 0.001171, -0.998852,
		0.643225, -0.765092, 0.029945,
		-0.764178, -0.643920, -0.037397,
		35.414154, 36.320316, 49.500740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683155, 36.566219, 49.592522>,  <35.949078, 36.771061, 49.526917>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683155, 36.566219, 49.592522> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.020775, 36.778511, 49.561760>,  <37.223347, 36.905888, 49.543304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.020775, 36.778511, 49.561760>,  <36.683155, 36.566219, 49.592522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020775, 36.778511, 49.561760> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130379, -0.063979, 0.989398,
		0.520182, -0.845123, -0.123198,
		0.844045, 0.530730, -0.076906,
		37.273987, 36.937729, 49.538689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127625, 36.173458, 50.003422>,  <36.683155, 36.566219, 49.592522>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127625, 36.173458, 50.003422> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.282028, 36.541241, 49.973495>,  <37.374672, 36.761909, 49.955540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.282028, 36.541241, 49.973495>,  <37.127625, 36.173458, 50.003422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282028, 36.541241, 49.973495> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388138, -0.088301, 0.917361,
		0.836868, -0.383148, -0.390961,
		0.386008, 0.919457, -0.074818,
		37.397831, 36.817078, 49.951050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711498, 36.096588, 50.336967>,  <37.127625, 36.173458, 50.003422>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711498, 36.096588, 50.336967> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.679199, 36.494953, 50.320747>,  <37.659821, 36.733971, 50.311016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.679199, 36.494953, 50.320747>,  <37.711498, 36.096588, 50.336967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679199, 36.494953, 50.320747> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438585, 0.072036, 0.895798,
		0.895054, 0.054553, -0.442608,
		-0.080752, 0.995909, -0.040550,
		37.654972, 36.793724, 50.308582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439262, 36.500950, 50.596581>,  <37.711498, 36.096588, 50.336967>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439262, 36.500950, 50.596581> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.118603, 36.727543, 50.672962>,  <37.926208, 36.863499, 50.718792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.118603, 36.727543, 50.672962>,  <38.439262, 36.500950, 50.596581>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118603, 36.727543, 50.672962> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320892, 0.138268, 0.936968,
		0.504373, 0.812392, -0.292622,
		-0.801646, 0.566481, 0.190952,
		37.878109, 36.897488, 50.730247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751514, 37.143936, 50.854900>,  <38.439262, 36.500950, 50.596581>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751514, 37.143936, 50.854900> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.367233, 37.147797, 50.965862>,  <38.136665, 37.150112, 51.032440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.367233, 37.147797, 50.965862>,  <38.751514, 37.143936, 50.854900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367233, 37.147797, 50.965862> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272989, 0.213698, 0.937982,
		-0.050230, 0.976852, -0.207935,
		-0.960705, 0.009650, 0.277404,
		38.079021, 37.150692, 51.049084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750488, 37.715218, 51.334614>,  <38.751514, 37.143936, 50.854900>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750488, 37.715218, 51.334614> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.403477, 37.530224, 51.407837>,  <38.195271, 37.419228, 51.451771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.403477, 37.530224, 51.407837>,  <38.750488, 37.715218, 51.334614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403477, 37.530224, 51.407837> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136236, 0.133015, 0.981706,
		-0.478371, 0.876594, -0.052386,
		-0.867525, -0.462483, 0.183054,
		38.143219, 37.391479, 51.462753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406494, 38.145702, 51.791176>,  <38.750488, 37.715218, 51.334614>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406494, 38.145702, 51.791176> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.220306, 37.799488, 51.865139>,  <38.108593, 37.591759, 51.909519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.220306, 37.799488, 51.865139>,  <38.406494, 38.145702, 51.791176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220306, 37.799488, 51.865139> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100877, 0.155682, 0.982643,
		-0.879298, 0.476041, 0.014848,
		-0.465466, -0.865534, 0.184912,
		38.080666, 37.539829, 51.920612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133747, 38.312805, 52.394058>,  <38.406494, 38.145702, 51.791176>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133747, 38.312805, 52.394058> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.157211, 37.913940, 52.375210>,  <38.171291, 37.674622, 52.363899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.157211, 37.913940, 52.375210>,  <38.133747, 38.312805, 52.394058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157211, 37.913940, 52.375210> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441640, -0.016408, 0.897042,
		-0.895272, -0.073435, 0.439425,
		0.058664, -0.997165, -0.047121,
		38.174812, 37.614792, 52.361073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918129, 38.078617, 53.074467>,  <38.133747, 38.312805, 52.394058>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918129, 38.078617, 53.074467> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.126545, 37.786251, 52.898155>,  <38.251595, 37.610832, 52.792370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.126545, 37.786251, 52.898155>,  <37.918129, 38.078617, 53.074467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126545, 37.786251, 52.898155> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545917, -0.111593, 0.830374,
		-0.656117, -0.673287, 0.340873,
		0.521042, -0.730911, -0.440777,
		38.282856, 37.566978, 52.765923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.894043, 37.021370, 36.338345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228336, 36.805969, 36.381367>,  <37.428913, 36.676731, 36.407181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228336, 36.805969, 36.381367>,  <36.894043, 37.021370, 36.338345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228336, 36.805969, 36.381367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252688, -0.203224, 0.945964,
		-0.487544, -0.817751, -0.305914,
		0.835733, -0.538501, 0.107555,
		37.479057, 36.644421, 36.413635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754570, 36.307350, 36.659870>,  <36.894043, 37.021370, 36.338345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754570, 36.307350, 36.659870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.144581, 36.367580, 36.725163>,  <37.378590, 36.403717, 36.764336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.144581, 36.367580, 36.725163>,  <36.754570, 36.307350, 36.659870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144581, 36.367580, 36.725163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103385, -0.342733, 0.933727,
		0.196537, -0.927287, -0.318608,
		0.975031, 0.150572, 0.163228,
		37.437092, 36.412750, 36.774132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775864, 35.807873, 36.946438>,  <36.754570, 36.307350, 36.659870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775864, 35.807873, 36.946438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094265, 36.030895, 37.040672>,  <37.285305, 36.164711, 37.097214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094265, 36.030895, 37.040672>,  <36.775864, 35.807873, 36.946438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094265, 36.030895, 37.040672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087173, -0.279548, 0.956166,
		0.598977, -0.781652, -0.173918,
		0.796008, 0.557560, 0.235582,
		37.333069, 36.198162, 37.111347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344501, 35.365002, 37.236240>,  <36.775864, 35.807873, 36.946438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344501, 35.365002, 37.236240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343727, 35.747330, 37.353817>,  <37.343262, 35.976727, 37.424362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343727, 35.747330, 37.353817>,  <37.344501, 35.365002, 37.236240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343727, 35.747330, 37.353817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081457, -0.293120, 0.952599,
		0.996675, -0.022096, 0.078427,
		-0.001940, 0.955820, 0.293945,
		37.343143, 36.034077, 37.442001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.701630, 35.285637, 37.907459>,  <37.344501, 35.365002, 37.236240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.701630, 35.285637, 37.907459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580853, 35.666954, 37.904449>,  <37.508385, 35.895744, 37.902645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580853, 35.666954, 37.904449>,  <37.701630, 35.285637, 37.907459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580853, 35.666954, 37.904449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053008, 0.024667, 0.998290,
		0.951851, 0.301028, -0.057980,
		-0.301944, 0.953296, -0.007522,
		37.490269, 35.952942, 37.902191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216888, 35.621986, 38.285046>,  <37.701630, 35.285637, 37.907459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.216888, 35.621986, 38.285046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.868053, 35.815853, 38.312065>,  <37.658752, 35.932171, 38.328278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.868053, 35.815853, 38.312065>,  <38.216888, 35.621986, 38.285046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.868053, 35.815853, 38.312065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057849, -0.034967, 0.997713,
		0.485919, 0.874001, 0.002457,
		-0.872087, 0.484665, 0.067551,
		37.606426, 35.961254, 38.332329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335930, 36.157146, 38.666637>,  <38.216888, 35.621986, 38.285046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335930, 36.157146, 38.666637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.938908, 36.138462, 38.711639>,  <37.700695, 36.127251, 38.738640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.938908, 36.138462, 38.711639>,  <38.335930, 36.157146, 38.666637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938908, 36.138462, 38.711639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096362, 0.263892, 0.959727,
		-0.074519, 0.963421, -0.257425,
		-0.992553, -0.046712, 0.112502,
		37.641140, 36.124447, 38.745392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162468, 36.777157, 39.141541>,  <38.335930, 36.157146, 38.666637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162468, 36.777157, 39.141541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.849705, 36.527969, 39.132271>,  <37.662048, 36.378456, 39.126709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.849705, 36.527969, 39.132271>,  <38.162468, 36.777157, 39.141541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.849705, 36.527969, 39.132271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254402, 0.284928, 0.924173,
		-0.569127, 0.728510, -0.381271,
		-0.781904, -0.622968, -0.023175,
		37.615135, 36.341080, 39.125317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801262, 37.110088, 39.558231>,  <38.162468, 36.777157, 39.141541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801262, 37.110088, 39.558231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.626320, 36.750626, 39.544743>,  <37.521355, 36.534946, 39.536648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.626320, 36.750626, 39.544743>,  <37.801262, 37.110088, 39.558231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626320, 36.750626, 39.544743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317690, 0.119311, 0.940658,
		-0.841306, 0.422113, -0.337676,
		-0.437352, -0.898657, -0.033724,
		37.495113, 36.481030, 39.534626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071167, 37.188602, 39.803661>,  <37.801262, 37.110088, 39.558231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.071167, 37.188602, 39.803661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.195087, 36.811188, 39.850605>,  <37.269440, 36.584740, 39.878773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.195087, 36.811188, 39.850605>,  <37.071167, 37.188602, 39.803661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195087, 36.811188, 39.850605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042491, 0.109568, 0.993071,
		-0.949853, -0.312637, -0.006148,
		0.309797, -0.943532, 0.117358,
		37.288025, 36.528130, 39.885811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650608, 36.998482, 40.352997>,  <37.071167, 37.188602, 39.803661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.650608, 36.998482, 40.352997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.929855, 36.713032, 40.329750>,  <37.097404, 36.541763, 40.315804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.929855, 36.713032, 40.329750>,  <36.650608, 36.998482, 40.352997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929855, 36.713032, 40.329750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083915, -0.162163, 0.983189,
		-0.711050, -0.681504, -0.173092,
		0.698116, -0.713621, -0.058118,
		37.139290, 36.498947, 40.312313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321159, 36.518276, 40.719002>,  <36.650608, 36.998482, 40.352997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321159, 36.518276, 40.719002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.719040, 36.477566, 40.713284>,  <36.957767, 36.453140, 40.709850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.719040, 36.477566, 40.713284>,  <36.321159, 36.518276, 40.719002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719040, 36.477566, 40.713284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013143, -0.012012, 0.999842,
		-0.101934, -0.994735, -0.010611,
		0.994705, -0.101778, -0.014298,
		37.017452, 36.447033, 40.708996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877129, 35.833061, 40.675621>,  <36.321159, 36.518276, 40.719002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877129, 35.833061, 40.675621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.499653, 35.760281, 40.786148>,  <35.273167, 35.716614, 40.852463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.499653, 35.760281, 40.786148>,  <35.877129, 35.833061, 40.675621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499653, 35.760281, 40.786148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209551, -0.317586, -0.924785,
		0.256022, -0.930609, 0.261572,
		-0.943684, -0.181953, 0.276319,
		35.216549, 35.705696, 40.869045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670803, 35.130859, 40.505268>,  <35.877129, 35.833061, 40.675621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670803, 35.130859, 40.505268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.338253, 35.351860, 40.529125>,  <35.138721, 35.484459, 40.543442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.338253, 35.351860, 40.529125>,  <35.670803, 35.130859, 40.505268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338253, 35.351860, 40.529125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219411, -0.227742, -0.948679,
		-0.510560, -0.801797, 0.310564,
		-0.831377, 0.552499, 0.059647,
		35.088840, 35.517609, 40.547020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218323, 34.812382, 40.157227>,  <35.670803, 35.130859, 40.505268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218323, 34.812382, 40.157227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046265, 35.173187, 40.142525>,  <34.943031, 35.389671, 40.133705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046265, 35.173187, 40.142525>,  <35.218323, 34.812382, 40.157227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046265, 35.173187, 40.142525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276093, -0.170206, -0.945940,
		-0.859504, -0.396744, 0.322253,
		-0.430146, 0.902011, -0.036755,
		34.917221, 35.443790, 40.131500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564674, 34.689449, 39.930725>,  <35.218323, 34.812382, 40.157227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.564674, 34.689449, 39.930725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.642433, 35.069630, 39.833694>,  <34.689091, 35.297737, 39.775475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.642433, 35.069630, 39.833694>,  <34.564674, 34.689449, 39.930725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642433, 35.069630, 39.833694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449257, -0.133566, -0.883362,
		-0.871996, 0.280707, 0.401033,
		0.194402, 0.950455, -0.242578,
		34.700752, 35.354767, 39.760921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017071, 34.919624, 39.596191>,  <34.564674, 34.689449, 39.930725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017071, 34.919624, 39.596191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287098, 35.197540, 39.496952>,  <34.449112, 35.364288, 39.437408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287098, 35.197540, 39.496952>,  <34.017071, 34.919624, 39.596191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287098, 35.197540, 39.496952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390883, 0.051624, -0.918991,
		-0.625699, 0.717356, 0.306432,
		0.675063, 0.694791, -0.248102,
		34.489616, 35.405979, 39.422523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696289, 35.440277, 39.227173>,  <34.017071, 34.919624, 39.596191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696289, 35.440277, 39.227173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.076710, 35.487041, 39.112751>,  <34.304962, 35.515099, 39.044098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.076710, 35.487041, 39.112751>,  <33.696289, 35.440277, 39.227173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076710, 35.487041, 39.112751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305514, 0.216559, -0.927234,
		-0.046454, 0.969244, 0.241676,
		0.951054, 0.116909, -0.286058,
		34.362026, 35.522114, 39.026936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614243, 35.962219, 38.771347>,  <33.696289, 35.440277, 39.227173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614243, 35.962219, 38.771347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.971481, 35.792629, 38.711189>,  <34.185825, 35.690876, 38.675095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.971481, 35.792629, 38.711189>,  <33.614243, 35.962219, 38.771347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.971481, 35.792629, 38.711189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162295, 0.008131, -0.986709,
		0.419562, 0.905638, -0.061547,
		0.893100, -0.423975, -0.150392,
		34.239410, 35.665436, 38.666073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020103, 36.379463, 38.282078>,  <33.614243, 35.962219, 38.771347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020103, 36.379463, 38.282078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206047, 36.025497, 38.270588>,  <34.317612, 35.813118, 38.263695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206047, 36.025497, 38.270588>,  <34.020103, 36.379463, 38.282078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206047, 36.025497, 38.270588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209711, -0.078528, -0.974605,
		0.860190, 0.459078, -0.222081,
		0.464859, -0.884918, -0.028725,
		34.345505, 35.760021, 38.261971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506714, 36.376842, 37.667637>,  <34.020103, 36.379463, 38.282078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506714, 36.376842, 37.667637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416122, 35.998795, 37.761837>,  <34.361767, 35.771965, 37.818359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416122, 35.998795, 37.761837>,  <34.506714, 36.376842, 37.667637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416122, 35.998795, 37.761837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254017, -0.176109, -0.951031,
		0.940311, -0.275206, -0.200191,
		-0.226474, -0.945117, 0.235504,
		34.348179, 35.715260, 37.832489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670654, 35.955360, 37.063614>,  <34.506714, 36.376842, 37.667637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670654, 35.955360, 37.063614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.426228, 35.715290, 37.270065>,  <34.279572, 35.571247, 37.393936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.426228, 35.715290, 37.270065>,  <34.670654, 35.955360, 37.063614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426228, 35.715290, 37.270065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541281, -0.158949, -0.825682,
		0.577594, -0.783914, -0.227737,
		-0.611065, -0.600178, 0.516126,
		34.242908, 35.535236, 37.424904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704952, 35.295071, 36.620064>,  <34.670654, 35.955360, 37.063614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704952, 35.295071, 36.620064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.375641, 35.287312, 36.846985>,  <34.178055, 35.282654, 36.983135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.375641, 35.287312, 36.846985>,  <34.704952, 35.295071, 36.620064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375641, 35.287312, 36.846985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549564, -0.222907, -0.805166,
		0.142078, -0.974647, 0.172852,
		-0.823282, -0.019403, 0.567301,
		34.128654, 35.281490, 37.017174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451244, 34.790134, 36.356598>,  <34.704952, 35.295071, 36.620064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451244, 34.790134, 36.356598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139233, 34.983936, 36.514992>,  <33.952026, 35.100220, 36.610027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139233, 34.983936, 36.514992>,  <34.451244, 34.790134, 36.356598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139233, 34.983936, 36.514992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547399, -0.221779, -0.806950,
		-0.303156, -0.846206, 0.438216,
		-0.780032, 0.484510, 0.395979,
		33.905224, 35.129288, 36.633785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941631, 34.265770, 36.508755>,  <34.451244, 34.790134, 36.356598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941631, 34.265770, 36.508755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.794998, 34.631855, 36.441811>,  <33.707020, 34.851505, 36.401646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.794998, 34.631855, 36.441811>,  <33.941631, 34.265770, 36.508755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.794998, 34.631855, 36.441811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286454, -0.282166, -0.915601,
		-0.885191, -0.287700, 0.365602,
		-0.366579, 0.915211, -0.167358,
		33.685024, 34.906418, 36.391602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196087, 34.249947, 36.386887>,  <33.941631, 34.265770, 36.508755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196087, 34.249947, 36.386887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.354031, 34.556816, 36.184685>,  <33.448795, 34.740936, 36.063366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.354031, 34.556816, 36.184685>,  <33.196087, 34.249947, 36.386887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.354031, 34.556816, 36.184685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453409, -0.315823, -0.833472,
		-0.799067, 0.558302, 0.223137,
		0.394858, 0.767173, -0.505503,
		33.472488, 34.786968, 36.033035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036983, 34.527374, 36.938072>,  <33.196087, 34.249947, 36.386887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036983, 34.527374, 36.938072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037529, 34.156013, 36.789448>,  <33.037857, 33.933197, 36.700272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037529, 34.156013, 36.789448>,  <33.036983, 34.527374, 36.938072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037529, 34.156013, 36.789448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426528, -0.336613, 0.839503,
		-0.904473, 0.157334, -0.396452,
		0.001368, -0.928406, -0.371565,
		33.037941, 33.877491, 36.677979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419170, 34.122387, 36.980618>,  <33.036983, 34.527374, 36.938072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419170, 34.122387, 36.980618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711037, 33.850845, 37.013454>,  <32.886158, 33.687920, 37.033157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711037, 33.850845, 37.013454>,  <32.419170, 34.122387, 36.980618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711037, 33.850845, 37.013454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429475, -0.361552, 0.827546,
		-0.532106, -0.639088, -0.555365,
		0.729668, -0.678856, 0.082088,
		32.929935, 33.647190, 37.038082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102917, 33.475670, 37.282330>,  <32.419170, 34.122387, 36.980618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.102917, 33.475670, 37.282330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.498241, 33.449173, 37.337250>,  <32.735435, 33.433273, 37.370201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.498241, 33.449173, 37.337250>,  <32.102917, 33.475670, 37.282330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498241, 33.449173, 37.337250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151851, -0.348388, 0.924969,
		-0.013440, -0.935007, -0.354375,
		0.988312, -0.066243, 0.137300,
		32.794735, 33.429298, 37.378441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.221577, 33.338577, 37.929390>,  <32.102917, 33.475670, 37.282330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.221577, 33.338577, 37.929390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.611279, 33.305550, 37.845478>,  <32.845100, 33.285732, 37.795132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.611279, 33.305550, 37.845478>,  <32.221577, 33.338577, 37.929390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.611279, 33.305550, 37.845478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171598, -0.331920, 0.927569,
		-0.146222, -0.939687, -0.309206,
		0.974255, -0.082572, -0.209782,
		32.903557, 33.280777, 37.782543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.518700, 32.569382, 38.174572>,  <32.221577, 33.338577, 37.929390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.518700, 32.569382, 38.174572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.850731, 32.787266, 38.126808>,  <33.049950, 32.917995, 38.098152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.850731, 32.787266, 38.126808>,  <32.518700, 32.569382, 38.174572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.850731, 32.787266, 38.126808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325180, -0.298864, 0.897183,
		0.453022, -0.783560, -0.425211,
		0.830077, 0.544714, -0.119407,
		33.099754, 32.950680, 38.090984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087971, 32.131107, 38.363956>,  <32.518700, 32.569382, 38.174572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087971, 32.131107, 38.363956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228897, 32.504025, 38.396690>,  <33.313454, 32.727776, 38.416332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228897, 32.504025, 38.396690>,  <33.087971, 32.131107, 38.363956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228897, 32.504025, 38.396690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307641, -0.197955, 0.930683,
		0.883871, -0.302721, -0.356555,
		0.352319, 0.932295, 0.081838,
		33.334595, 32.783714, 38.421242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631687, 31.968472, 38.728539>,  <33.087971, 32.131107, 38.363956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631687, 31.968472, 38.728539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569176, 32.360981, 38.773579>,  <33.531670, 32.596485, 38.800602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569176, 32.360981, 38.773579>,  <33.631687, 31.968472, 38.728539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569176, 32.360981, 38.773579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353058, -0.050974, 0.934212,
		0.922457, 0.185752, -0.338480,
		-0.156278, 0.981273, 0.112603,
		33.522293, 32.655361, 38.807358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259491, 32.218494, 38.921864>,  <33.631687, 31.968472, 38.728539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259491, 32.218494, 38.921864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.966248, 32.457600, 39.051620>,  <33.790302, 32.601063, 39.129475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.966248, 32.457600, 39.051620>,  <34.259491, 32.218494, 38.921864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966248, 32.457600, 39.051620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334707, -0.098111, 0.937201,
		0.592052, 0.795646, -0.128150,
		-0.733107, 0.597764, 0.324395,
		33.746315, 32.636929, 39.148937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612328, 32.588539, 39.374882>,  <34.259491, 32.218494, 38.921864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612328, 32.588539, 39.374882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.252636, 32.711769, 39.499119>,  <34.036819, 32.785709, 39.573662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.252636, 32.711769, 39.499119>,  <34.612328, 32.588539, 39.374882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.252636, 32.711769, 39.499119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376695, 0.184262, 0.907826,
		0.222451, 0.933346, -0.281746,
		-0.899231, 0.308079, 0.310597,
		33.982868, 32.804192, 39.592297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625156, 33.242283, 39.828465>,  <34.612328, 32.588539, 39.374882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625156, 33.242283, 39.828465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279652, 33.066456, 39.927010>,  <34.072350, 32.960960, 39.986137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279652, 33.066456, 39.927010>,  <34.625156, 33.242283, 39.828465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.279652, 33.066456, 39.927010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212442, 0.125668, 0.969060,
		-0.456925, 0.889376, -0.015165,
		-0.863764, -0.439566, 0.246361,
		34.020523, 32.934586, 40.000919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257565, 33.665741, 40.220692>,  <34.625156, 33.242283, 39.828465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257565, 33.665741, 40.220692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104881, 33.304592, 40.299801>,  <34.013271, 33.087902, 40.347267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104881, 33.304592, 40.299801>,  <34.257565, 33.665741, 40.220692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104881, 33.304592, 40.299801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138275, 0.155786, 0.978065,
		-0.913881, 0.400684, 0.065380,
		-0.381710, -0.902875, 0.197775,
		33.990368, 33.033730, 40.359135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782860, 33.867439, 40.722576>,  <34.257565, 33.665741, 40.220692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782860, 33.867439, 40.722576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830231, 33.471394, 40.752617>,  <33.858654, 33.233765, 40.770641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830231, 33.471394, 40.752617>,  <33.782860, 33.867439, 40.722576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830231, 33.471394, 40.752617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090563, 0.086088, 0.992163,
		-0.988824, -0.110697, 0.099863,
		0.118426, -0.990119, 0.075101,
		33.865757, 33.174358, 40.775146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436134, 33.636814, 41.343811>,  <33.782860, 33.867439, 40.722576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436134, 33.636814, 41.343811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688755, 33.332436, 41.284336>,  <33.840328, 33.149811, 41.248653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688755, 33.332436, 41.284336>,  <33.436134, 33.636814, 41.343811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688755, 33.332436, 41.284336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009627, -0.199449, 0.979861,
		-0.775274, -0.617402, -0.133288,
		0.631552, -0.760944, -0.148683,
		33.878220, 33.104153, 41.239731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.272354, 33.169216, 41.886879>,  <33.436134, 33.636814, 41.343811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.272354, 33.169216, 41.886879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.645287, 33.052258, 41.801781>,  <33.869045, 32.982082, 41.750721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.645287, 33.052258, 41.801781>,  <33.272354, 33.169216, 41.886879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645287, 33.052258, 41.801781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184829, -0.120336, 0.975376,
		-0.310794, -0.948697, -0.058151,
		0.932333, -0.292393, -0.212746,
		33.924988, 32.964539, 41.737957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.358398, 32.528530, 42.252422>,  <33.272354, 33.169216, 41.886879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.358398, 32.528530, 42.252422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.721859, 32.664055, 42.154808>,  <33.939938, 32.745369, 42.096241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.721859, 32.664055, 42.154808>,  <33.358398, 32.528530, 42.252422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721859, 32.664055, 42.154808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278982, -0.057778, 0.958557,
		0.310674, -0.939077, -0.147024,
		0.908653, 0.338815, -0.244035,
		33.994453, 32.765697, 42.081596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683853, 32.025703, 42.572365>,  <33.358398, 32.528530, 42.252422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683853, 32.025703, 42.572365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938904, 32.328064, 42.512974>,  <34.091934, 32.509480, 42.477341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938904, 32.328064, 42.512974>,  <33.683853, 32.025703, 42.572365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938904, 32.328064, 42.512974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265400, -0.034622, 0.963516,
		0.723181, -0.653772, -0.222691,
		0.637630, 0.755899, -0.148473,
		34.130192, 32.554832, 42.468433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305576, 31.803322, 42.771660>,  <33.683853, 32.025703, 42.572365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305576, 31.803322, 42.771660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.309006, 32.201683, 42.807674>,  <34.311066, 32.440701, 42.829281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.309006, 32.201683, 42.807674>,  <34.305576, 31.803322, 42.771660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.309006, 32.201683, 42.807674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516187, -0.081524, 0.852587,
		0.856433, 0.039161, -0.514771,
		0.008578, 0.995902, 0.090034,
		34.311581, 32.500454, 42.834686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932808, 31.907080, 43.017395>,  <34.305576, 31.803322, 42.771660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932808, 31.907080, 43.017395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771927, 32.263264, 43.102543>,  <34.675400, 32.476974, 43.153633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771927, 32.263264, 43.102543>,  <34.932808, 31.907080, 43.017395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771927, 32.263264, 43.102543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426264, -0.023647, 0.904290,
		0.810268, 0.454446, -0.370060,
		-0.402200, 0.890460, 0.212874,
		34.651268, 32.530403, 43.166405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504410, 32.265545, 43.310722>,  <34.932808, 31.907080, 43.017395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504410, 32.265545, 43.310722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173397, 32.442726, 43.448696>,  <34.974789, 32.549034, 43.531479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173397, 32.442726, 43.448696>,  <35.504410, 32.265545, 43.310722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173397, 32.442726, 43.448696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358882, -0.055096, 0.931755,
		0.431733, 0.894848, -0.113376,
		-0.827533, 0.442958, 0.344932,
		34.925137, 32.575615, 43.552177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755306, 32.714298, 43.843479>,  <35.504410, 32.265545, 43.310722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755306, 32.714298, 43.843479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363171, 32.676434, 43.912735>,  <35.127892, 32.653713, 43.954288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363171, 32.676434, 43.912735>,  <35.755306, 32.714298, 43.843479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363171, 32.676434, 43.912735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188244, -0.185438, 0.964457,
		-0.059194, 0.978085, 0.199612,
		-0.980337, -0.094666, 0.173141,
		35.069069, 32.648033, 43.964676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521984, 33.241165, 44.357464>,  <35.755306, 32.714298, 43.843479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521984, 33.241165, 44.357464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.272476, 32.928596, 44.364227>,  <35.122772, 32.741055, 44.368286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.272476, 32.928596, 44.364227>,  <35.521984, 33.241165, 44.357464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272476, 32.928596, 44.364227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180057, -0.122614, 0.975984,
		-0.760584, 0.611835, 0.217183,
		-0.623771, -0.781424, 0.016907,
		35.085346, 32.694168, 44.369301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052197, 33.344776, 44.865337>,  <35.521984, 33.241165, 44.357464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052197, 33.344776, 44.865337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048168, 32.948887, 44.808281>,  <35.045750, 32.711353, 44.774048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048168, 32.948887, 44.808281>,  <35.052197, 33.344776, 44.865337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048168, 32.948887, 44.808281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082436, -0.142984, 0.986286,
		-0.996545, -0.001822, 0.083029,
		-0.010075, -0.989723, -0.142640,
		35.045147, 32.651970, 44.765488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580048, 33.153652, 45.483829>,  <35.052197, 33.344776, 44.865337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580048, 33.153652, 45.483829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768307, 32.839443, 45.323109>,  <34.881260, 32.650917, 45.226677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768307, 32.839443, 45.323109>,  <34.580048, 33.153652, 45.483829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768307, 32.839443, 45.323109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223369, -0.334481, 0.915549,
		-0.853582, -0.520647, 0.018040,
		0.470643, -0.785525, -0.401803,
		34.909500, 32.603786, 45.202568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.250156, 32.540989, 45.697754>,  <34.580048, 33.153652, 45.483829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.250156, 32.540989, 45.697754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632011, 32.462669, 45.608025>,  <34.861126, 32.415676, 45.554188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632011, 32.462669, 45.608025>,  <34.250156, 32.540989, 45.697754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632011, 32.462669, 45.608025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166208, -0.274671, 0.947064,
		-0.247042, -0.941393, -0.229671,
		0.954644, -0.195792, -0.224322,
		34.918404, 32.403931, 45.540726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356319, 32.022869, 46.109951>,  <34.250156, 32.540989, 45.697754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356319, 32.022869, 46.109951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726223, 32.129440, 46.001266>,  <34.948166, 32.193382, 45.936054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726223, 32.129440, 46.001266>,  <34.356319, 32.022869, 46.109951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726223, 32.129440, 46.001266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304049, -0.087933, 0.948589,
		0.228840, -0.959835, -0.162325,
		0.924763, 0.266430, -0.271714,
		35.003651, 32.209370, 45.919754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806782, 31.482388, 46.447418>,  <34.356319, 32.022869, 46.109951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806782, 31.482388, 46.447418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011082, 31.819382, 46.378883>,  <35.133663, 32.021576, 46.337761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011082, 31.819382, 46.378883>,  <34.806782, 31.482388, 46.447418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011082, 31.819382, 46.378883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437855, -0.083394, 0.895170,
		0.739878, -0.532228, -0.411479,
		0.510749, 0.842484, -0.171337,
		35.164307, 32.072128, 46.327480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378498, 31.319590, 46.838528>,  <34.806782, 31.482388, 46.447418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378498, 31.319590, 46.838528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.392277, 31.716261, 46.788902>,  <35.400543, 31.954264, 46.759129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.392277, 31.716261, 46.788902>,  <35.378498, 31.319590, 46.838528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392277, 31.716261, 46.788902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590620, 0.079940, 0.802981,
		0.806214, -0.100929, -0.582951,
		0.034443, 0.991677, -0.124059,
		35.402611, 32.013763, 46.751686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126297, 31.484133, 46.822582>,  <35.378498, 31.319590, 46.838528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126297, 31.484133, 46.822582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908211, 31.799469, 46.936607>,  <35.777359, 31.988670, 47.005020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908211, 31.799469, 46.936607>,  <36.126297, 31.484133, 46.822582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908211, 31.799469, 46.936607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407356, -0.048048, 0.912005,
		0.732669, 0.613357, -0.294940,
		-0.545213, 0.788343, 0.285058,
		35.744648, 32.035973, 47.022125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673729, 32.060997, 46.616714>,  <36.126297, 31.484133, 46.822582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673729, 32.060997, 46.616714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.061382, 31.963951, 46.599224>,  <37.293976, 31.905724, 46.588730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.061382, 31.963951, 46.599224>,  <36.673729, 32.060997, 46.616714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061382, 31.963951, 46.599224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013688, 0.230076, -0.973077,
		0.246142, 0.942446, 0.226296,
		0.969137, -0.242612, -0.043731,
		37.352123, 31.891167, 46.586105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015892, 32.431282, 46.130795>,  <36.673729, 32.060997, 46.616714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015892, 32.431282, 46.130795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.327465, 32.181103, 46.149010>,  <37.514408, 32.030994, 46.159939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.327465, 32.181103, 46.149010>,  <37.015892, 32.431282, 46.130795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327465, 32.181103, 46.149010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063793, 0.006790, -0.997940,
		0.623852, 0.780235, 0.045188,
		0.778934, -0.625450, 0.045537,
		37.561146, 31.993467, 46.162670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628380, 32.731136, 45.874744>,  <37.015892, 32.431282, 46.130795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628380, 32.731136, 45.874744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.629910, 32.333553, 45.830879>,  <37.630825, 32.095001, 45.804558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.629910, 32.333553, 45.830879>,  <37.628380, 32.731136, 45.874744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629910, 32.333553, 45.830879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257211, 0.106956, -0.960418,
		0.966348, -0.024537, 0.256067,
		0.003822, -0.993961, -0.109668,
		37.631058, 32.035366, 45.797977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217583, 32.595009, 45.472191>,  <37.628380, 32.731136, 45.874744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217583, 32.595009, 45.472191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.998520, 32.264267, 45.420982>,  <37.867081, 32.065823, 45.390259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.998520, 32.264267, 45.420982>,  <38.217583, 32.595009, 45.472191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998520, 32.264267, 45.420982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304984, -0.054799, -0.950780,
		0.779139, -0.559743, 0.282187,
		-0.547656, -0.826853, -0.128017,
		37.834225, 32.016212, 45.382576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605621, 32.047588, 45.121597>,  <38.217583, 32.595009, 45.472191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605621, 32.047588, 45.121597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.224632, 31.955782, 45.041473>,  <37.996040, 31.900698, 44.993401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.224632, 31.955782, 45.041473>,  <38.605621, 32.047588, 45.121597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224632, 31.955782, 45.041473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194926, 0.046133, -0.979732,
		0.234105, -0.972211, 0.000798,
		-0.952470, -0.229516, -0.200309,
		37.938892, 31.886929, 44.981380>
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
