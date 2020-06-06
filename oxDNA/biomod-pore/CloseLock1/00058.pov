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
	<23.868057, 35.138927, 35.056240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.167664, 35.395409, 35.122974>,  <24.347427, 35.549297, 35.163013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.167664, 35.395409, 35.122974>,  <23.868057, 35.138927, 35.056240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.167664, 35.395409, 35.122974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661948, -0.713489, -0.229692,
		-0.028243, 0.282480, -0.958857,
		0.749018, 0.641201, 0.166836,
		24.392368, 35.587769, 35.173023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.347603, 35.291901, 34.498543>,  <23.868057, 35.138927, 35.056240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.347603, 35.291901, 34.498543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.539980, 35.325066, 34.847672>,  <24.655407, 35.344967, 35.057148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.539980, 35.325066, 34.847672>,  <24.347603, 35.291901, 34.498543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.539980, 35.325066, 34.847672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613851, -0.742648, -0.267695,
		0.626004, 0.664529, -0.408070,
		0.480943, 0.082916, 0.872822,
		24.684263, 35.349941, 35.109520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.100279, 35.280106, 34.460762>,  <24.347603, 35.291901, 34.498543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.100279, 35.280106, 34.460762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.033211, 35.198425, 34.846546>,  <24.992970, 35.149418, 35.078018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.033211, 35.198425, 34.846546>,  <25.100279, 35.280106, 34.460762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.033211, 35.198425, 34.846546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846939, -0.530542, 0.034906,
		0.504560, 0.822694, 0.261905,
		-0.167668, -0.204205, 0.964462,
		24.982910, 35.137165, 35.135883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.556820, 35.531116, 34.915279>,  <25.100279, 35.280106, 34.460762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.556820, 35.531116, 34.915279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.405167, 35.222851, 35.120152>,  <25.314175, 35.037891, 35.243076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.405167, 35.222851, 35.120152>,  <25.556820, 35.531116, 34.915279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.405167, 35.222851, 35.120152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911767, -0.405589, 0.064640,
		0.157921, 0.491500, 0.856440,
		-0.379133, -0.770666, 0.512184,
		25.291426, 34.991650, 35.273808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.910563, 35.727379, 34.316933>,  <25.556820, 35.531116, 34.915279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.910563, 35.727379, 34.316933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.180223, 35.793262, 34.604931>,  <26.342020, 35.832794, 34.777729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.180223, 35.793262, 34.604931>,  <25.910563, 35.727379, 34.316933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.180223, 35.793262, 34.604931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716562, 0.090461, -0.691632,
		-0.179049, 0.982185, -0.057040,
		0.674151, 0.164709, 0.719994,
		26.382469, 35.842674, 34.820930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.289703, 36.370380, 34.398613>,  <25.910563, 35.727379, 34.316933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.289703, 36.370380, 34.398613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.513977, 36.060623, 34.515881>,  <26.648542, 35.874767, 34.586243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.513977, 36.060623, 34.515881>,  <26.289703, 36.370380, 34.398613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.513977, 36.060623, 34.515881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650891, 0.193337, -0.734140,
		0.511831, 0.602444, 0.612446,
		0.560686, -0.774391, 0.293170,
		26.682182, 35.828304, 34.603832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.874495, 36.477200, 33.979115>,  <26.289703, 36.370380, 34.398613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.874495, 36.477200, 33.979115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.943737, 36.111488, 34.125614>,  <26.985283, 35.892063, 34.213512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.943737, 36.111488, 34.125614>,  <26.874495, 36.477200, 33.979115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.943737, 36.111488, 34.125614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735707, -0.127193, -0.665249,
		0.654804, 0.384609, 0.650620,
		0.173106, -0.914274, 0.366246,
		26.995668, 35.837208, 34.235489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.659569, 36.397503, 33.954388>,  <26.874495, 36.477200, 33.979115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.659569, 36.397503, 33.954388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.486614, 36.036995, 33.965412>,  <27.382841, 35.820690, 33.972027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.486614, 36.036995, 33.965412>,  <27.659569, 36.397503, 33.954388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.486614, 36.036995, 33.965412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596625, -0.308884, -0.740695,
		0.676076, -0.303824, 0.671276,
		-0.432388, -0.901266, 0.027560,
		27.356897, 35.766617, 33.973679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.201115, 35.967468, 33.818336>,  <27.659569, 36.397503, 33.954388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.201115, 35.967468, 33.818336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.885019, 35.735558, 33.738949>,  <27.695362, 35.596413, 33.691315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.885019, 35.735558, 33.738949>,  <28.201115, 35.967468, 33.818336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.885019, 35.735558, 33.738949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501536, -0.425800, -0.753098,
		0.352118, -0.694665, 0.627260,
		-0.790237, -0.579772, -0.198468,
		27.647947, 35.561626, 33.679409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.467625, 35.282131, 33.814228>,  <28.201115, 35.967468, 33.818336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.467625, 35.282131, 33.814228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.130186, 35.275158, 33.599548>,  <27.927723, 35.270973, 33.470741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.130186, 35.275158, 33.599548>,  <28.467625, 35.282131, 33.814228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.130186, 35.275158, 33.599548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454362, -0.555846, -0.696125,
		-0.286187, -0.831103, 0.476828,
		-0.843594, -0.017430, -0.536697,
		27.877108, 35.269928, 33.438538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.441769, 34.554344, 33.591965>,  <28.467625, 35.282131, 33.814228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.441769, 34.554344, 33.591965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.195429, 34.761566, 33.354530>,  <28.047625, 34.885899, 33.212070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.195429, 34.761566, 33.354530>,  <28.441769, 34.554344, 33.591965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.195429, 34.761566, 33.354530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328671, -0.515794, -0.791159,
		-0.716033, -0.682331, 0.147383,
		-0.615851, 0.518055, -0.593587,
		28.010674, 34.916985, 33.176453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.256739, 34.060894, 32.992981>,  <28.441769, 34.554344, 33.591965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.256739, 34.060894, 32.992981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.147640, 34.418274, 32.850235>,  <28.082180, 34.632702, 32.764587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.147640, 34.418274, 32.850235>,  <28.256739, 34.060894, 32.992981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.147640, 34.418274, 32.850235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210763, -0.306433, -0.928266,
		-0.938716, -0.328397, -0.104727,
		-0.272748, 0.893451, -0.356867,
		28.065815, 34.686310, 32.743176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.698294, 33.962196, 32.512043>,  <28.256739, 34.060894, 32.992981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.698294, 33.962196, 32.512043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.918133, 34.290630, 32.450378>,  <28.050037, 34.487690, 32.413380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.918133, 34.290630, 32.450378>,  <27.698294, 33.962196, 32.512043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.918133, 34.290630, 32.450378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144207, -0.274996, -0.950569,
		-0.822888, 0.500201, -0.269543,
		0.549599, 0.821082, -0.154158,
		28.083012, 34.536957, 32.404129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.577255, 34.019093, 31.898901>,  <27.698294, 33.962196, 32.512043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.577255, 34.019093, 31.898901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.901249, 34.248447, 31.948133>,  <28.095646, 34.386059, 31.977673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.901249, 34.248447, 31.948133>,  <27.577255, 34.019093, 31.898901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.901249, 34.248447, 31.948133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313422, -0.245858, -0.917235,
		-0.495671, 0.781524, -0.378853,
		0.809986, 0.573388, 0.123082,
		28.144245, 34.420464, 31.985058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.669580, 34.436741, 31.263731>,  <27.577255, 34.019093, 31.898901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.669580, 34.436741, 31.263731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.027445, 34.471451, 31.439024>,  <28.242165, 34.492279, 31.544199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.027445, 34.471451, 31.439024>,  <27.669580, 34.436741, 31.263731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.027445, 34.471451, 31.439024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446683, -0.157977, -0.880634,
		-0.007188, 0.983622, -0.180098,
		0.894663, 0.086777, 0.438232,
		28.295843, 34.497482, 31.570494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.038082, 34.584793, 30.782804>,  <27.669580, 34.436741, 31.263731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.038082, 34.584793, 30.782804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.325352, 34.501793, 31.048487>,  <28.497713, 34.451992, 31.207895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.325352, 34.501793, 31.048487>,  <28.038082, 34.584793, 30.782804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.325352, 34.501793, 31.048487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665107, -0.075947, -0.742876,
		0.204595, 0.975281, 0.083469,
		0.718174, -0.207505, 0.664204,
		28.540804, 34.439541, 31.247747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.661572, 34.885983, 30.511814>,  <28.038082, 34.584793, 30.782804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.661572, 34.885983, 30.511814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.766647, 34.604118, 30.775465>,  <28.829693, 34.435001, 30.933657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.766647, 34.604118, 30.775465>,  <28.661572, 34.885983, 30.511814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.766647, 34.604118, 30.775465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630683, -0.391594, -0.669994,
		0.730228, 0.591702, 0.341549,
		0.262688, -0.704658, 0.659130,
		28.845453, 34.392719, 30.973204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.337759, 34.939369, 30.509068>,  <28.661572, 34.885983, 30.511814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.337759, 34.939369, 30.509068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.268507, 34.571312, 30.649565>,  <29.226955, 34.350479, 30.733862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.268507, 34.571312, 30.649565>,  <29.337759, 34.939369, 30.509068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.268507, 34.571312, 30.649565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540815, -0.386868, -0.746895,
		0.823131, 0.060646, 0.564603,
		-0.173131, -0.920138, 0.351241,
		29.216568, 34.295269, 30.754936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.010113, 34.693550, 30.517204>,  <29.337759, 34.939369, 30.509068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.010113, 34.693550, 30.517204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.742117, 34.396603, 30.516336>,  <29.581320, 34.218433, 30.515816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.742117, 34.396603, 30.516336>,  <30.010113, 34.693550, 30.517204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.742117, 34.396603, 30.516336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503255, -0.452038, -0.736475,
		0.545754, -0.494523, 0.676461,
		-0.669991, -0.742367, -0.002170,
		29.541121, 34.173893, 30.515686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.450195, 34.115875, 30.573536>,  <30.010113, 34.693550, 30.517204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.450195, 34.115875, 30.573536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.101667, 33.977409, 30.434410>,  <29.892551, 33.894329, 30.350935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.101667, 33.977409, 30.434410>,  <30.450195, 34.115875, 30.573536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.101667, 33.977409, 30.434410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482481, -0.475017, -0.735915,
		0.089529, -0.809030, 0.580908,
		-0.871319, -0.346163, -0.347814,
		29.840271, 33.873562, 30.330067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.499880, 33.346172, 30.398252>,  <30.450195, 34.115875, 30.573536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.499880, 33.346172, 30.398252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.177607, 33.461758, 30.191420>,  <29.984243, 33.531109, 30.067320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.177607, 33.461758, 30.191420>,  <30.499880, 33.346172, 30.398252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.177607, 33.461758, 30.191420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331472, -0.503525, -0.797865,
		-0.490917, -0.814226, 0.309899,
		-0.805684, 0.288962, -0.517082,
		29.935902, 33.548447, 30.036295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.192007, 32.767212, 30.048517>,  <30.499880, 33.346172, 30.398252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.192007, 32.767212, 30.048517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.106968, 33.096592, 29.838097>,  <30.055944, 33.294220, 29.711845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.106968, 33.096592, 29.838097>,  <30.192007, 32.767212, 30.048517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.106968, 33.096592, 29.838097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494615, -0.373605, -0.784714,
		-0.842710, -0.427019, -0.327865,
		-0.212596, 0.823453, -0.526050,
		30.043190, 33.343628, 29.680281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.003515, 32.470718, 29.478621>,  <30.192007, 32.767212, 30.048517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.003515, 32.470718, 29.478621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.065287, 32.852352, 29.375950>,  <30.102350, 33.081333, 29.314348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.065287, 32.852352, 29.375950>,  <30.003515, 32.470718, 29.478621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.065287, 32.852352, 29.375950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393320, -0.297687, -0.869874,
		-0.906339, 0.033378, -0.421231,
		0.154430, 0.954080, -0.256677,
		30.111616, 33.138577, 29.298946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.716227, 32.558575, 28.774534>,  <30.003515, 32.470718, 29.478621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.716227, 32.558575, 28.774534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.974115, 32.860825, 28.820782>,  <30.128849, 33.042175, 28.848530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.974115, 32.860825, 28.820782>,  <29.716227, 32.558575, 28.774534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.974115, 32.860825, 28.820782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501110, -0.303565, -0.810393,
		-0.577255, 0.580415, -0.574365,
		0.644721, 0.755623, 0.115618,
		30.167532, 33.087513, 28.855467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.744040, 32.974472, 28.134556>,  <29.716227, 32.558575, 28.774534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.744040, 32.974472, 28.134556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.086792, 33.027821, 28.333740>,  <30.292444, 33.059830, 28.453251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.086792, 33.027821, 28.333740>,  <29.744040, 32.974472, 28.134556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.086792, 33.027821, 28.333740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513864, -0.298176, -0.804385,
		0.041196, 0.945147, -0.324038,
		0.856882, 0.133373, 0.497960,
		30.343857, 33.067833, 28.483128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.244486, 32.997200, 27.631666>,  <29.744040, 32.974472, 28.134556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.244486, 32.997200, 27.631666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.454929, 32.949268, 27.968439>,  <30.581196, 32.920509, 28.170504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.454929, 32.949268, 27.968439>,  <30.244486, 32.997200, 27.631666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.454929, 32.949268, 27.968439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667396, -0.555404, -0.496093,
		0.527059, 0.822902, -0.212231,
		0.526110, -0.119828, 0.841932,
		30.612762, 32.913319, 28.221018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.979544, 33.007915, 27.460693>,  <30.244486, 32.997200, 27.631666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.979544, 33.007915, 27.460693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.984898, 32.837826, 27.822689>,  <30.988110, 32.735771, 28.039886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.984898, 32.837826, 27.822689>,  <30.979544, 33.007915, 27.460693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.984898, 32.837826, 27.822689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911611, -0.366679, -0.185774,
		0.410836, 0.827483, 0.382734,
		0.013385, -0.425227, 0.904988,
		30.988913, 32.710258, 28.094185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.538059, 33.160561, 27.989128>,  <30.979544, 33.007915, 27.460693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.538059, 33.160561, 27.989128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.359594, 32.804630, 27.950859>,  <31.252516, 32.591072, 27.927898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.359594, 32.804630, 27.950859>,  <31.538059, 33.160561, 27.989128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.359594, 32.804630, 27.950859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796034, -0.345722, -0.496795,
		0.408985, -0.297808, 0.862578,
		-0.446162, -0.889824, -0.095670,
		31.225746, 32.537682, 27.922157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.589128, 32.681801, 28.502089>,  <31.538059, 33.160561, 27.989128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.589128, 32.681801, 28.502089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.577063, 32.487843, 28.152468>,  <31.569822, 32.371468, 27.942696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.577063, 32.487843, 28.152468>,  <31.589128, 32.681801, 28.502089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.577063, 32.487843, 28.152468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987310, -0.150854, 0.049616,
		-0.155913, -0.861461, 0.483297,
		-0.030165, -0.484899, -0.874050,
		31.568014, 32.342373, 27.890253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774878, 31.860510, 28.440668>,  <31.589128, 32.681801, 28.502089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774878, 31.860510, 28.440668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.878609, 32.087090, 28.127775>,  <31.940847, 32.223038, 27.940039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.878609, 32.087090, 28.127775>,  <31.774878, 31.860510, 28.440668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.878609, 32.087090, 28.127775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964354, -0.196014, 0.177761,
		-0.052636, -0.800447, -0.597088,
		0.259326, 0.566448, -0.782232,
		31.956406, 32.257023, 27.893106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.442066, 31.748014, 27.991228>,  <31.774878, 31.860510, 28.440668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.442066, 31.748014, 27.991228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681087, 31.437000, 27.912868>,  <32.824501, 31.250393, 27.865852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681087, 31.437000, 27.912868>,  <32.442066, 31.748014, 27.991228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681087, 31.437000, 27.912868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188992, -0.374006, 0.907966,
		-0.779242, -0.505530, -0.370435,
		0.597549, -0.777534, -0.195900,
		32.860352, 31.203741, 27.854099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034420, 31.086542, 27.990702>,  <32.442066, 31.748014, 27.991228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.034420, 31.086542, 27.990702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415806, 31.045200, 28.103996>,  <32.644638, 31.020395, 28.171972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415806, 31.045200, 28.103996>,  <32.034420, 31.086542, 27.990702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.415806, 31.045200, 28.103996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300327, -0.242683, 0.922447,
		-0.026601, -0.964585, -0.262429,
		0.953465, -0.103352, 0.283235,
		32.701847, 31.014194, 28.188967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282436, 30.425041, 28.250317>,  <32.034420, 31.086542, 27.990702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282436, 30.425041, 28.250317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.448471, 30.757051, 28.399321>,  <32.548092, 30.956257, 28.488724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.448471, 30.757051, 28.399321>,  <32.282436, 30.425041, 28.250317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.448471, 30.757051, 28.399321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353757, -0.229977, 0.906624,
		0.838188, -0.508105, 0.198166,
		0.415087, 0.830024, 0.372510,
		32.572998, 31.006058, 28.511074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587894, 30.189175, 28.869699>,  <32.282436, 30.425041, 28.250317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587894, 30.189175, 28.869699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510323, 30.581553, 28.874439>,  <32.463779, 30.816978, 28.877283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510323, 30.581553, 28.874439>,  <32.587894, 30.189175, 28.869699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510323, 30.581553, 28.874439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531082, -0.115133, 0.839462,
		0.824829, 0.156505, 0.543290,
		-0.193930, 0.980944, 0.011848,
		32.452145, 30.875835, 28.877995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.612209, 30.338871, 29.545364>,  <32.587894, 30.189175, 28.869699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.612209, 30.338871, 29.545364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494320, 30.698381, 29.415541>,  <32.423588, 30.914087, 29.337646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494320, 30.698381, 29.415541>,  <32.612209, 30.338871, 29.545364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494320, 30.698381, 29.415541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405556, 0.189892, 0.894128,
		0.865253, 0.395147, 0.308539,
		-0.294723, 0.898777, -0.324559,
		32.405903, 30.968014, 29.318172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839951, 30.837875, 30.032690>,  <32.612209, 30.338871, 29.545364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.839951, 30.837875, 30.032690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544762, 31.017057, 29.830805>,  <32.367649, 31.124567, 29.709673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544762, 31.017057, 29.830805>,  <32.839951, 30.837875, 30.032690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544762, 31.017057, 29.830805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288700, 0.466441, 0.836113,
		0.609959, 0.762738, -0.214896,
		-0.737971, 0.447954, -0.504713,
		32.323372, 31.151443, 29.679390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.866852, 31.473362, 30.321856>,  <32.839951, 30.837875, 30.032690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.866852, 31.473362, 30.321856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.503323, 31.420807, 30.163475>,  <32.285206, 31.389273, 30.068447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.503323, 31.420807, 30.163475>,  <32.866852, 31.473362, 30.321856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.503323, 31.420807, 30.163475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408362, 0.474322, 0.779910,
		0.085338, 0.870492, -0.484728,
		-0.908822, -0.131389, -0.395953,
		32.230675, 31.381390, 30.044689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498753, 31.977077, 30.690990>,  <32.866852, 31.473362, 30.321856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498753, 31.977077, 30.690990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.180706, 31.786922, 30.540363>,  <31.989880, 31.672831, 30.449987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.180706, 31.786922, 30.540363>,  <32.498753, 31.977077, 30.690990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.180706, 31.786922, 30.540363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598018, 0.511341, 0.617175,
		-0.100842, 0.715918, -0.690863,
		-0.795113, -0.475386, -0.376567,
		31.942171, 31.644306, 30.427393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929752, 32.513172, 30.789062>,  <32.498753, 31.977077, 30.690990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929752, 32.513172, 30.789062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.784311, 32.142666, 30.749399>,  <31.697046, 31.920362, 30.725601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.784311, 32.142666, 30.749399>,  <31.929752, 32.513172, 30.789062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.784311, 32.142666, 30.749399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723554, 0.213766, 0.656334,
		-0.586740, 0.310391, -0.747926,
		-0.363602, -0.926262, -0.099160,
		31.675230, 31.864788, 30.719652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.313660, 32.495941, 30.577723>,  <31.929752, 32.513172, 30.789062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.313660, 32.495941, 30.577723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.342131, 32.144310, 30.766258>,  <31.359213, 31.933332, 30.879379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.342131, 32.144310, 30.766258>,  <31.313660, 32.495941, 30.577723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.342131, 32.144310, 30.766258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751961, 0.263176, 0.604395,
		-0.655354, -0.397450, -0.642297,
		0.071179, -0.879075, 0.471340,
		31.363485, 31.880589, 30.907660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.691885, 32.441338, 30.916965>,  <31.313660, 32.495941, 30.577723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.691885, 32.441338, 30.916965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.889740, 32.136398, 31.083893>,  <31.008453, 31.953434, 31.184050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.889740, 32.136398, 31.083893>,  <30.691885, 32.441338, 30.916965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.889740, 32.136398, 31.083893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602697, 0.045071, 0.796697,
		-0.626172, -0.645592, -0.437172,
		0.494637, -0.762351, 0.417319,
		31.038132, 31.907694, 31.209089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.148338, 31.881327, 31.010723>,  <30.691885, 32.441338, 30.916965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.148338, 31.881327, 31.010723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.457394, 31.782738, 31.244743>,  <30.642826, 31.723585, 31.385155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.457394, 31.782738, 31.244743>,  <30.148338, 31.881327, 31.010723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.457394, 31.782738, 31.244743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597585, 0.028715, 0.801291,
		-0.214296, -0.968724, -0.125103,
		0.772637, -0.246473, 0.585049,
		30.689184, 31.708796, 31.420258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.952782, 31.299711, 31.531775>,  <30.148338, 31.881327, 31.010723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.952782, 31.299711, 31.531775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.246626, 31.518627, 31.692184>,  <30.422934, 31.649977, 31.788429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.246626, 31.518627, 31.692184>,  <29.952782, 31.299711, 31.531775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.246626, 31.518627, 31.692184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508452, 0.052707, 0.859475,
		0.449246, -0.835281, 0.316990,
		0.734611, 0.547291, 0.401022,
		30.467009, 31.682814, 31.812490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.908197, 31.069889, 32.231606>,  <29.952782, 31.299711, 31.531775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.908197, 31.069889, 32.231606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.148153, 31.386433, 32.278736>,  <30.292128, 31.576359, 32.307014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.148153, 31.386433, 32.278736>,  <29.908197, 31.069889, 32.231606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.148153, 31.386433, 32.278736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276363, 0.066746, 0.958733,
		0.750837, -0.607698, 0.258742,
		0.599890, 0.791359, 0.117830,
		30.328121, 31.623840, 32.314087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.297346, 31.013350, 32.857635>,  <29.908197, 31.069889, 32.231606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.297346, 31.013350, 32.857635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.312881, 31.409386, 32.803661>,  <30.322203, 31.647007, 32.771275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.312881, 31.409386, 32.803661>,  <30.297346, 31.013350, 32.857635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.312881, 31.409386, 32.803661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198053, 0.139987, 0.970144,
		0.979422, -0.010954, 0.201527,
		0.038839, 0.990093, -0.134937,
		30.324533, 31.706413, 32.763180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.714323, 31.214861, 33.374119>,  <30.297346, 31.013350, 32.857635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.714323, 31.214861, 33.374119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.522455, 31.546202, 33.258358>,  <30.407335, 31.745007, 33.188900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.522455, 31.546202, 33.258358>,  <30.714323, 31.214861, 33.374119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.522455, 31.546202, 33.258358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258847, 0.181559, 0.948702,
		0.838401, 0.529973, 0.127328,
		-0.479669, 0.828351, -0.289401,
		30.378555, 31.794706, 33.171539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.881126, 31.707094, 33.868412>,  <30.714323, 31.214861, 33.374119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.881126, 31.707094, 33.868412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.552071, 31.861750, 33.701664>,  <30.354637, 31.954544, 33.601616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.552071, 31.861750, 33.701664>,  <30.881126, 31.707094, 33.868412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552071, 31.861750, 33.701664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284052, 0.355651, 0.890408,
		0.492526, 0.850894, -0.182746,
		-0.822637, 0.386640, -0.416867,
		30.305279, 31.977741, 33.576603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.754576, 32.341911, 34.110043>,  <30.881126, 31.707094, 33.868412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.754576, 32.341911, 34.110043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.395914, 32.301674, 33.937580>,  <30.180717, 32.277531, 33.834103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.395914, 32.301674, 33.937580>,  <30.754576, 32.341911, 34.110043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.395914, 32.301674, 33.937580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425266, 0.466543, 0.775556,
		0.123140, 0.878760, -0.461104,
		-0.896652, -0.100590, -0.431157,
		30.126919, 32.271496, 33.808231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.491259, 32.986237, 34.099018>,  <30.754576, 32.341911, 34.110043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.491259, 32.986237, 34.099018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.180351, 32.734589, 34.095860>,  <29.993807, 32.583599, 34.093964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.180351, 32.734589, 34.095860>,  <30.491259, 32.986237, 34.099018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.180351, 32.734589, 34.095860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396347, 0.479861, 0.782715,
		-0.488635, 0.611507, -0.622330,
		-0.777268, -0.629120, -0.007892,
		29.947170, 32.545853, 34.093491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.956299, 33.458668, 34.177113>,  <30.491259, 32.986237, 34.099018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.956299, 33.458668, 34.177113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.770462, 33.118538, 34.275986>,  <29.658960, 32.914459, 34.335308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.770462, 33.118538, 34.275986>,  <29.956299, 33.458668, 34.177113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.770462, 33.118538, 34.275986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518862, 0.487600, 0.702160,
		-0.717592, 0.197964, -0.667737,
		-0.464591, -0.850327, 0.247181,
		29.631084, 32.863441, 34.350140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.216555, 33.577667, 34.066666>,  <29.956299, 33.458668, 34.177113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.216555, 33.577667, 34.066666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.239609, 33.242290, 34.283440>,  <29.253441, 33.041065, 34.413506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.239609, 33.242290, 34.283440>,  <29.216555, 33.577667, 34.066666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.239609, 33.242290, 34.283440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526755, 0.435586, 0.729927,
		-0.848061, -0.327536, -0.416549,
		0.057634, -0.838442, 0.541935,
		29.256899, 32.990757, 34.446018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.537891, 33.516167, 34.210026>,  <29.216555, 33.577667, 34.066666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.537891, 33.516167, 34.210026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.767548, 33.327248, 34.477547>,  <28.905342, 33.213898, 34.638058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.767548, 33.327248, 34.477547>,  <28.537891, 33.516167, 34.210026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.767548, 33.327248, 34.477547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426551, 0.524701, 0.736711,
		-0.698866, -0.708256, 0.099796,
		0.574143, -0.472295, 0.668803,
		28.939791, 33.185558, 34.678188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.180794, 33.424782, 34.865253>,  <28.537891, 33.516167, 34.210026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.180794, 33.424782, 34.865253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.546822, 33.364437, 35.014858>,  <28.766439, 33.328232, 35.104622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.546822, 33.364437, 35.014858>,  <28.180794, 33.424782, 34.865253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.546822, 33.364437, 35.014858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247815, 0.521322, 0.816585,
		-0.318170, -0.839920, 0.439661,
		0.915071, -0.150858, 0.374014,
		28.821342, 33.319180, 35.127064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.091921, 33.277237, 35.577366>,  <28.180794, 33.424782, 34.865253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.091921, 33.277237, 35.577366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.480383, 33.370182, 35.555954>,  <28.713461, 33.425949, 35.543106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.480383, 33.370182, 35.555954>,  <28.091921, 33.277237, 35.577366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.480383, 33.370182, 35.555954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056378, 0.441886, 0.895298,
		0.231688, -0.866456, 0.442240,
		0.971156, 0.232362, -0.053530,
		28.771729, 33.439892, 35.539894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.411457, 33.073845, 36.234512>,  <28.091921, 33.277237, 35.577366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.411457, 33.073845, 36.234512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.600393, 33.376217, 36.053200>,  <28.713755, 33.557640, 35.944412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.600393, 33.376217, 36.053200>,  <28.411457, 33.073845, 36.234512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.600393, 33.376217, 36.053200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027712, 0.501279, 0.864842,
		0.880979, -0.421063, 0.215828,
		0.472343, 0.755926, -0.453285,
		28.742096, 33.602993, 35.917213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.810781, 33.218033, 36.697933>,  <28.411457, 33.073845, 36.234512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.810781, 33.218033, 36.697933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.800623, 33.553219, 36.479881>,  <28.794527, 33.754330, 36.349049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.800623, 33.553219, 36.479881>,  <28.810781, 33.218033, 36.697933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.800623, 33.553219, 36.479881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162089, 0.534639, 0.829390,
		0.986449, 0.109425, 0.122246,
		-0.025398, 0.837966, -0.545131,
		28.793003, 33.804607, 36.316341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.266500, 33.800705, 36.952248>,  <28.810781, 33.218033, 36.697933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.266500, 33.800705, 36.952248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.981108, 33.988758, 36.744434>,  <28.809872, 34.101589, 36.619747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.981108, 33.988758, 36.744434>,  <29.266500, 33.800705, 36.952248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.981108, 33.988758, 36.744434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068970, 0.690757, 0.719790,
		0.697271, 0.549389, -0.460417,
		-0.713482, 0.470134, -0.519537,
		28.767063, 34.129799, 36.588573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.310238, 34.656628, 36.916786>,  <29.266500, 33.800705, 36.952248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.310238, 34.656628, 36.916786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.936100, 34.518078, 36.888073>,  <28.711617, 34.434948, 36.870846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.936100, 34.518078, 36.888073>,  <29.310238, 34.656628, 36.916786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.936100, 34.518078, 36.888073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296461, 0.656899, 0.693249,
		-0.192969, 0.669709, -0.717114,
		-0.935347, -0.346372, -0.071782,
		28.655497, 34.414165, 36.866539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.430624, 35.279308, 36.406857>,  <29.310238, 34.656628, 36.916786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.430624, 35.279308, 36.406857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.779465, 35.408710, 36.260006>,  <29.988770, 35.486351, 36.171894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.779465, 35.408710, 36.260006>,  <29.430624, 35.279308, 36.406857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.779465, 35.408710, 36.260006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222933, 0.405199, 0.886631,
		0.435596, -0.855075, 0.281252,
		0.872100, 0.323512, -0.367128,
		30.041096, 35.505764, 36.149868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.984034, 34.990864, 36.833214>,  <29.430624, 35.279308, 36.406857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.984034, 34.990864, 36.833214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.086607, 35.328255, 36.644413>,  <30.148151, 35.530689, 36.531132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.086607, 35.328255, 36.644413>,  <29.984034, 34.990864, 36.833214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.086607, 35.328255, 36.644413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385745, 0.358446, 0.850128,
		0.886253, -0.400071, -0.233452,
		0.256431, 0.843481, -0.471999,
		30.163536, 35.581299, 36.502811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.676622, 35.238819, 37.108807>,  <29.984034, 34.990864, 36.833214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.676622, 35.238819, 37.108807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.456770, 35.548317, 36.982803>,  <30.324860, 35.734016, 36.907200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.456770, 35.548317, 36.982803>,  <30.676622, 35.238819, 37.108807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.456770, 35.548317, 36.982803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223219, 0.499381, 0.837133,
		0.805034, 0.389798, -0.447188,
		-0.549630, 0.773742, -0.315008,
		30.291882, 35.780441, 36.888302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.954893, 35.880520, 36.892605>,  <30.676622, 35.238819, 37.108807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.954893, 35.880520, 36.892605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.611788, 35.848003, 37.095634>,  <30.405926, 35.828491, 37.217453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.611788, 35.848003, 37.095634>,  <30.954893, 35.880520, 36.892605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.611788, 35.848003, 37.095634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471587, 0.268509, 0.839946,
		-0.204572, 0.959841, -0.191979,
		-0.857762, -0.081295, 0.507577,
		30.354460, 35.823616, 37.247910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.835102, 36.359421, 37.394516>,  <30.954893, 35.880520, 36.892605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.835102, 36.359421, 37.394516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.651243, 36.027863, 37.522049>,  <30.540928, 35.828926, 37.598568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.651243, 36.027863, 37.522049>,  <30.835102, 36.359421, 37.394516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.651243, 36.027863, 37.522049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313501, 0.184459, 0.931500,
		-0.830929, 0.528115, 0.175074,
		-0.459646, -0.828896, 0.318837,
		30.513350, 35.779194, 37.617699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.323603, 36.458218, 38.027065>,  <30.835102, 36.359421, 37.394516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.323603, 36.458218, 38.027065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.496254, 36.097778, 38.010468>,  <30.599846, 35.881516, 38.000511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.496254, 36.097778, 38.010468>,  <30.323603, 36.458218, 38.027065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.496254, 36.097778, 38.010468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352534, 0.126169, 0.927255,
		-0.830311, -0.414858, 0.372126,
		0.431629, -0.901096, -0.041492,
		30.625742, 35.827450, 37.998020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.284975, 36.007355, 38.703197>,  <30.323603, 36.458218, 38.027065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.284975, 36.007355, 38.703197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.601305, 35.884777, 38.491276>,  <30.791103, 35.811230, 38.364124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.601305, 35.884777, 38.491276>,  <30.284975, 36.007355, 38.703197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.601305, 35.884777, 38.491276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603604, 0.247236, 0.757982,
		-0.101294, -0.919220, 0.380492,
		0.790823, -0.306445, -0.529802,
		30.838552, 35.792843, 38.332336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.529480, 35.543324, 39.122646>,  <30.284975, 36.007355, 38.703197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.529480, 35.543324, 39.122646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.812622, 35.670757, 38.870472>,  <30.982508, 35.747219, 38.719170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.812622, 35.670757, 38.870472>,  <30.529480, 35.543324, 39.122646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.812622, 35.670757, 38.870472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588414, 0.227817, 0.775802,
		0.390782, -0.920111, -0.026198,
		0.707855, 0.318585, -0.630432,
		31.024979, 35.766331, 38.681343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.015093, 35.329754, 39.407345>,  <30.529480, 35.543324, 39.122646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.015093, 35.329754, 39.407345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.199570, 35.582123, 39.157787>,  <31.310257, 35.733543, 39.008053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.199570, 35.582123, 39.157787>,  <31.015093, 35.329754, 39.407345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.199570, 35.582123, 39.157787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591426, 0.305579, 0.746215,
		0.661450, -0.713135, -0.232211,
		0.461193, 0.630920, -0.623892,
		31.337927, 35.771400, 38.970619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.741066, 35.190666, 39.464512>,  <31.015093, 35.329754, 39.407345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.741066, 35.190666, 39.464512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.688480, 35.563602, 39.329784>,  <31.656929, 35.787365, 39.248947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.688480, 35.563602, 39.329784>,  <31.741066, 35.190666, 39.464512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.688480, 35.563602, 39.329784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568185, 0.349292, 0.745091,
		0.812331, -0.093423, -0.575665,
		-0.131466, 0.932345, -0.336822,
		31.649040, 35.843307, 39.228737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346870, 35.521839, 39.566975>,  <31.741066, 35.190666, 39.464512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346870, 35.521839, 39.566975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075615, 35.812935, 39.525959>,  <31.912861, 35.987595, 39.501350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075615, 35.812935, 39.525959>,  <32.346870, 35.521839, 39.566975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.075615, 35.812935, 39.525959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449654, 0.521208, 0.725365,
		0.581322, 0.445794, -0.680685,
		-0.678142, 0.727743, -0.102537,
		31.872173, 36.031258, 39.495197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718346, 36.066990, 39.755932>,  <32.346870, 35.521839, 39.566975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718346, 36.066990, 39.755932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.357174, 36.238640, 39.746311>,  <32.140472, 36.341629, 39.740540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.357174, 36.238640, 39.746311>,  <32.718346, 36.066990, 39.755932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.357174, 36.238640, 39.746311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313895, 0.696635, 0.645113,
		0.293592, 0.574937, -0.763709,
		-0.902925, 0.429124, -0.024056,
		32.086296, 36.367378, 39.739094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.888485, 36.792023, 39.533363>,  <32.718346, 36.066990, 39.755932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.888485, 36.792023, 39.533363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.543102, 36.787193, 39.735077>,  <32.335873, 36.784294, 39.856106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.543102, 36.787193, 39.735077>,  <32.888485, 36.792023, 39.533363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.543102, 36.787193, 39.735077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376341, 0.650254, 0.659952,
		-0.335880, 0.759621, -0.556921,
		-0.863454, -0.012072, 0.504284,
		32.284065, 36.783573, 39.886360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682899, 37.531803, 39.691242>,  <32.888485, 36.792023, 39.533363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682899, 37.531803, 39.691242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475483, 37.299385, 39.942162>,  <32.351032, 37.159935, 40.092712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475483, 37.299385, 39.942162>,  <32.682899, 37.531803, 39.691242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475483, 37.299385, 39.942162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310161, 0.555849, 0.771253,
		-0.796815, 0.594490, -0.108014,
		-0.518542, -0.581045, 0.627297,
		32.319920, 37.125072, 40.130352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.261166, 37.997971, 40.289173>,  <32.682899, 37.531803, 39.691242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.261166, 37.997971, 40.289173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298607, 37.630360, 40.442345>,  <32.321072, 37.409794, 40.534248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298607, 37.630360, 40.442345>,  <32.261166, 37.997971, 40.289173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298607, 37.630360, 40.442345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182556, 0.393939, 0.900825,
		-0.978729, -0.014417, 0.204648,
		0.093606, -0.919024, 0.382927,
		32.326691, 37.354652, 40.557224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955681, 38.031998, 40.926128>,  <32.261166, 37.997971, 40.289173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955681, 38.031998, 40.926128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.156418, 37.687202, 40.954765>,  <32.276859, 37.480324, 40.971947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.156418, 37.687202, 40.954765>,  <31.955681, 38.031998, 40.926128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.156418, 37.687202, 40.954765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198801, 0.195504, 0.960342,
		-0.841803, -0.467707, 0.269477,
		0.501843, -0.861991, 0.071595,
		32.306973, 37.428604, 40.976242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746956, 37.694717, 41.476833>,  <31.955681, 38.031998, 40.926128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746956, 37.694717, 41.476833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.117378, 37.550583, 41.431969>,  <32.339630, 37.464104, 41.405048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.117378, 37.550583, 41.431969>,  <31.746956, 37.694717, 41.476833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.117378, 37.550583, 41.431969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235267, 0.318841, 0.918145,
		-0.295075, -0.876642, 0.380039,
		0.926056, -0.360332, -0.112163,
		32.395195, 37.442482, 41.398319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.814659, 37.203720, 41.949654>,  <31.746956, 37.694717, 41.476833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.814659, 37.203720, 41.949654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.179928, 37.333279, 41.850697>,  <32.399090, 37.411015, 41.791321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.179928, 37.333279, 41.850697>,  <31.814659, 37.203720, 41.949654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.179928, 37.333279, 41.850697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213416, 0.137127, 0.967290,
		0.347228, -0.936102, 0.056095,
		0.913174, 0.323898, -0.247393,
		32.453880, 37.430447, 41.776478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.240986, 36.880001, 42.422726>,  <31.814659, 37.203720, 41.949654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.240986, 36.880001, 42.422726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.444424, 37.198982, 42.292866>,  <32.566486, 37.390369, 42.214951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.444424, 37.198982, 42.292866>,  <32.240986, 36.880001, 42.422726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.444424, 37.198982, 42.292866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273170, 0.208128, 0.939181,
		0.816522, -0.566348, -0.111987,
		0.508595, 0.797454, -0.324651,
		32.597004, 37.438217, 42.195469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.819084, 36.919449, 42.866428>,  <32.240986, 36.880001, 42.422726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.819084, 36.919449, 42.866428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843903, 37.284096, 42.703896>,  <32.858795, 37.502884, 42.606377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843903, 37.284096, 42.703896>,  <32.819084, 36.919449, 42.866428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843903, 37.284096, 42.703896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283221, 0.374303, 0.882996,
		0.957046, -0.169869, -0.234964,
		0.062046, 0.911615, -0.406336,
		32.862518, 37.557579, 42.581993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500645, 37.285294, 42.921810>,  <32.819084, 36.919449, 42.866428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.500645, 37.285294, 42.921810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223770, 37.572254, 42.890278>,  <33.057644, 37.744431, 42.871357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223770, 37.572254, 42.890278>,  <33.500645, 37.285294, 42.921810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223770, 37.572254, 42.890278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385694, 0.460022, 0.799763,
		0.610011, 0.523183, -0.595118,
		-0.692190, 0.717397, -0.078830,
		33.016113, 37.787472, 42.866631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759022, 37.945068, 43.212242>,  <33.500645, 37.285294, 42.921810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759022, 37.945068, 43.212242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.376919, 38.063374, 43.213207>,  <33.147655, 38.134357, 43.213787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.376919, 38.063374, 43.213207>,  <33.759022, 37.945068, 43.212242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.376919, 38.063374, 43.213207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164521, 0.524554, 0.835330,
		0.245791, 0.798354, -0.549744,
		-0.955259, 0.295761, 0.002416,
		33.090340, 38.152103, 43.213932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705257, 38.718678, 43.379868>,  <33.759022, 37.945068, 43.212242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705257, 38.718678, 43.379868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.343586, 38.566456, 43.457470>,  <33.126583, 38.475124, 43.504032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.343586, 38.566456, 43.457470>,  <33.705257, 38.718678, 43.379868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.343586, 38.566456, 43.457470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049870, 0.545128, 0.836868,
		-0.424229, 0.747005, -0.511872,
		-0.904181, -0.380551, 0.194006,
		33.072330, 38.452290, 43.515671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385300, 39.261097, 43.803627>,  <33.705257, 38.718678, 43.379868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385300, 39.261097, 43.803627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160019, 38.937298, 43.869984>,  <33.024849, 38.743019, 43.909798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160019, 38.937298, 43.869984>,  <33.385300, 39.261097, 43.803627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160019, 38.937298, 43.869984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281616, 0.376772, 0.882460,
		-0.776850, 0.450287, -0.440166,
		-0.563202, -0.809497, 0.165888,
		32.991058, 38.694450, 43.919750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707840, 39.526360, 44.048641>,  <33.385300, 39.261097, 43.803627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707840, 39.526360, 44.048641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741760, 39.145718, 44.166798>,  <32.762112, 38.917332, 44.237694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741760, 39.145718, 44.166798>,  <32.707840, 39.526360, 44.048641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741760, 39.145718, 44.166798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313329, 0.255955, 0.914501,
		-0.945851, -0.170108, -0.276459,
		0.084803, -0.951604, 0.295395,
		32.767200, 38.860237, 44.255417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.161270, 39.368004, 44.426365>,  <32.707840, 39.526360, 44.048641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.161270, 39.368004, 44.426365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.410873, 39.078011, 44.542995>,  <32.560635, 38.904015, 44.612976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.410873, 39.078011, 44.542995>,  <32.161270, 39.368004, 44.426365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.410873, 39.078011, 44.542995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205633, 0.207640, 0.956348,
		-0.753878, -0.656724, -0.019512,
		0.624005, -0.724982, 0.291579,
		32.598076, 38.860516, 44.630470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.795488, 39.043510, 44.908390>,  <32.161270, 39.368004, 44.426365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.795488, 39.043510, 44.908390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175877, 38.947922, 44.986927>,  <32.404110, 38.890568, 45.034050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175877, 38.947922, 44.986927>,  <31.795488, 39.043510, 44.908390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175877, 38.947922, 44.986927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100386, 0.361968, 0.926770,
		-0.292543, -0.901039, 0.320230,
		0.950968, -0.238974, 0.196343,
		32.461166, 38.876228, 45.045830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813915, 38.662872, 45.539925>,  <31.795488, 39.043510, 44.908390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813915, 38.662872, 45.539925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.188324, 38.803589, 45.535801>,  <32.412968, 38.888020, 45.533329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.188324, 38.803589, 45.535801>,  <31.813915, 38.662872, 45.539925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188324, 38.803589, 45.535801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010000, 0.055853, 0.998389,
		0.351799, -0.934411, 0.055798,
		0.936023, 0.351790, -0.010305,
		32.469131, 38.909126, 45.532711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.023380, 38.493290, 46.117153>,  <31.813915, 38.662872, 45.539925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.023380, 38.493290, 46.117153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.315285, 38.750633, 46.024601>,  <32.490429, 38.905037, 45.969070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.315285, 38.750633, 46.024601>,  <32.023380, 38.493290, 46.117153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.315285, 38.750633, 46.024601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152175, 0.177094, 0.972358,
		0.666548, -0.744803, 0.031335,
		0.729765, 0.643355, -0.231382,
		32.534214, 38.943638, 45.955185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550907, 38.343067, 46.559383>,  <32.023380, 38.493290, 46.117153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550907, 38.343067, 46.559383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654770, 38.710995, 46.441734>,  <32.717087, 38.931751, 46.371143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654770, 38.710995, 46.441734>,  <32.550907, 38.343067, 46.559383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654770, 38.710995, 46.441734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323842, 0.203995, 0.923857,
		0.909782, -0.335138, -0.244907,
		0.259660, 0.919820, -0.294123,
		32.732670, 38.986942, 46.353497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.040363, 38.470116, 47.013241>,  <32.550907, 38.343067, 46.559383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.040363, 38.470116, 47.013241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974480, 38.829788, 46.851082>,  <32.934952, 39.045589, 46.753784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974480, 38.829788, 46.851082>,  <33.040363, 38.470116, 47.013241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974480, 38.829788, 46.851082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232660, 0.434833, 0.869937,
		0.958510, 0.048965, -0.280823,
		-0.164707, 0.899179, -0.405399,
		32.925068, 39.099541, 46.729462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626659, 38.907211, 47.173435>,  <33.040363, 38.470116, 47.013241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626659, 38.907211, 47.173435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.307285, 39.134594, 47.094074>,  <33.115662, 39.271023, 47.046459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.307285, 39.134594, 47.094074>,  <33.626659, 38.907211, 47.173435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307285, 39.134594, 47.094074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204719, 0.566211, 0.798433,
		0.566211, 0.596878, -0.568455,
		-0.798433, 0.568455, -0.198403,
		33.067757, 39.305130, 47.034554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.813869, 39.578121, 47.430122>,  <33.626659, 38.907211, 47.173435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.813869, 39.578121, 47.430122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418087, 39.595551, 47.374863>,  <33.180618, 39.606007, 47.341705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418087, 39.595551, 47.374863>,  <33.813869, 39.578121, 47.430122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418087, 39.595551, 47.374863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099283, 0.490475, 0.865781,
		0.105482, 0.870366, -0.480975,
		-0.989453, 0.043571, -0.138149,
		33.121250, 39.608624, 47.333420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608768, 40.334415, 47.446217>,  <33.813869, 39.578121, 47.430122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608768, 40.334415, 47.446217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298847, 40.102684, 47.547462>,  <33.112896, 39.963646, 47.608208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298847, 40.102684, 47.547462>,  <33.608768, 40.334415, 47.446217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298847, 40.102684, 47.547462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051595, 0.456973, 0.887983,
		-0.630095, 0.674951, -0.383954,
		-0.774802, -0.579324, 0.253112,
		33.066406, 39.928886, 47.623398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038322, 40.791454, 47.703300>,  <33.608768, 40.334415, 47.446217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038322, 40.791454, 47.703300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014309, 40.416260, 47.839870>,  <32.999901, 40.191143, 47.921814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014309, 40.416260, 47.839870>,  <33.038322, 40.791454, 47.703300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014309, 40.416260, 47.839870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045427, 0.339124, 0.939644,
		-0.997162, 0.071916, 0.022253,
		-0.060029, -0.937989, 0.341429,
		32.996300, 40.134865, 47.942299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595066, 40.912418, 48.233471>,  <33.038322, 40.791454, 47.703300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595066, 40.912418, 48.233471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739147, 40.551491, 48.328186>,  <32.825596, 40.334934, 48.385014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739147, 40.551491, 48.328186>,  <32.595066, 40.912418, 48.233471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.739147, 40.551491, 48.328186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115971, 0.295167, 0.948381,
		-0.925636, -0.314153, 0.210964,
		0.360206, -0.902322, 0.236784,
		32.847210, 40.280796, 48.399220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.157207, 40.589294, 48.696884>,  <32.595066, 40.912418, 48.233471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.157207, 40.589294, 48.696884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527290, 40.442818, 48.736675>,  <32.749340, 40.354931, 48.760551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527290, 40.442818, 48.736675>,  <32.157207, 40.589294, 48.696884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527290, 40.442818, 48.736675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049790, 0.377045, 0.924856,
		-0.376184, -0.850729, 0.367077,
		0.925206, -0.366193, 0.099481,
		32.804852, 40.332958, 48.766518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.165539, 40.677155, 49.475677>,  <32.157207, 40.589294, 48.696884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.165539, 40.677155, 49.475677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.529682, 40.585194, 49.338047>,  <32.748169, 40.530018, 49.255470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.529682, 40.585194, 49.338047>,  <32.165539, 40.677155, 49.475677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.529682, 40.585194, 49.338047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403247, 0.306153, 0.862359,
		-0.092915, -0.923806, 0.371416,
		0.910362, -0.229898, -0.344076,
		32.802792, 40.516224, 49.234825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.554901, 40.257496, 49.932892>,  <32.165539, 40.677155, 49.475677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.554901, 40.257496, 49.932892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862488, 40.400185, 49.720692>,  <33.047039, 40.485798, 49.593372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862488, 40.400185, 49.720692>,  <32.554901, 40.257496, 49.932892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862488, 40.400185, 49.720692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391665, 0.392976, 0.831966,
		0.505260, -0.847535, 0.162469,
		0.768967, 0.356726, -0.530505,
		33.093178, 40.507202, 49.561539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179405, 40.089958, 50.204655>,  <32.554901, 40.257496, 49.932892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179405, 40.089958, 50.204655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.269512, 40.429230, 50.012886>,  <33.323578, 40.632793, 49.897823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.269512, 40.429230, 50.012886>,  <33.179405, 40.089958, 50.204655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269512, 40.429230, 50.012886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524297, 0.309216, 0.793409,
		0.821198, -0.430089, -0.375042,
		0.225268, 0.848180, -0.479422,
		33.337093, 40.683685, 49.869061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925987, 40.173248, 50.178249>,  <33.179405, 40.089958, 50.204655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.925987, 40.173248, 50.178249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.764671, 40.538925, 50.162174>,  <33.667881, 40.758331, 50.152531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.764671, 40.538925, 50.162174>,  <33.925987, 40.173248, 50.178249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764671, 40.538925, 50.162174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505514, 0.259181, 0.822971,
		0.762766, 0.311582, -0.566661,
		-0.403291, 0.914189, -0.040186,
		33.643684, 40.813183, 50.150120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483562, 40.550133, 50.263142>,  <33.925987, 40.173248, 50.178249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483562, 40.550133, 50.263142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167332, 40.781364, 50.343945>,  <33.977592, 40.920101, 50.392426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167332, 40.781364, 50.343945>,  <34.483562, 40.550133, 50.263142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167332, 40.781364, 50.343945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492212, 0.403645, 0.771232,
		0.364292, 0.709153, -0.603651,
		-0.790582, 0.578077, 0.202009,
		33.930157, 40.954788, 50.404549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835419, 41.260986, 50.277981>,  <34.483562, 40.550133, 50.263142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835419, 41.260986, 50.277981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484684, 41.215515, 50.464844>,  <34.274242, 41.188232, 50.576962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484684, 41.215515, 50.464844>,  <34.835419, 41.260986, 50.277981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484684, 41.215515, 50.464844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386378, 0.411654, 0.825381,
		-0.286132, 0.904223, -0.317032,
		-0.876836, -0.113673, 0.467159,
		34.221634, 41.181412, 50.604992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769562, 41.792679, 50.670330>,  <34.835419, 41.260986, 50.277981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.769562, 41.792679, 50.670330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498013, 41.552807, 50.839802>,  <34.335083, 41.408882, 50.941486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498013, 41.552807, 50.839802>,  <34.769562, 41.792679, 50.670330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498013, 41.552807, 50.839802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280930, 0.320983, 0.904460,
		-0.678384, 0.733043, -0.049439,
		-0.678877, -0.599682, 0.423683,
		34.294350, 41.372902, 50.966908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648880, 42.054604, 51.239574>,  <34.769562, 41.792679, 50.670330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648880, 42.054604, 51.239574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463139, 41.707615, 51.310993>,  <34.351696, 41.499424, 51.353844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463139, 41.707615, 51.310993>,  <34.648880, 42.054604, 51.239574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463139, 41.707615, 51.310993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023878, 0.189260, 0.981637,
		-0.885329, 0.460087, -0.067170,
		-0.464351, -0.867468, 0.178544,
		34.323833, 41.447376, 51.364555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107452, 42.208500, 51.706928>,  <34.648880, 42.054604, 51.239574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107452, 42.208500, 51.706928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.248241, 41.835217, 51.735889>,  <34.332714, 41.611248, 51.753265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.248241, 41.835217, 51.735889>,  <34.107452, 42.208500, 51.706928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248241, 41.835217, 51.735889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275864, 0.177337, 0.944696,
		-0.894435, -0.312535, 0.319855,
		0.351973, -0.933206, 0.072400,
		34.353832, 41.555256, 51.757610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052185, 42.119411, 52.352051>,  <34.107452, 42.208500, 51.706928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052185, 42.119411, 52.352051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299713, 41.813385, 52.280792>,  <34.448231, 41.629768, 52.238037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299713, 41.813385, 52.280792>,  <34.052185, 42.119411, 52.352051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299713, 41.813385, 52.280792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342247, 0.058461, 0.937790,
		-0.707053, -0.641297, 0.298018,
		0.618824, -0.765063, -0.178147,
		34.485359, 41.583866, 52.227348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018833, 41.698658, 52.974262>,  <34.052185, 42.119411, 52.352051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018833, 41.698658, 52.974262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356979, 41.637798, 52.769440>,  <34.559868, 41.601284, 52.646545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356979, 41.637798, 52.769440>,  <34.018833, 41.698658, 52.974262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356979, 41.637798, 52.769440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533898, 0.209230, 0.819253,
		-0.017508, -0.965957, 0.258107,
		0.845367, -0.152146, -0.512060,
		34.610588, 41.592155, 52.615822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447186, 41.108936, 53.211372>,  <34.018833, 41.698658, 52.974262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447186, 41.108936, 53.211372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.662163, 41.415123, 53.069828>,  <34.791149, 41.598835, 52.984901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.662163, 41.415123, 53.069828>,  <34.447186, 41.108936, 53.211372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662163, 41.415123, 53.069828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524710, 0.024955, 0.850915,
		0.660175, -0.642995, -0.388235,
		0.537446, 0.765463, -0.353861,
		34.823395, 41.644760, 52.963669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189182, 41.151608, 52.959747>,  <34.447186, 41.108936, 53.211372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189182, 41.151608, 52.959747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007584, 41.459957, 53.138470>,  <34.898624, 41.644966, 53.245705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007584, 41.459957, 53.138470>,  <35.189182, 41.151608, 52.959747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007584, 41.459957, 53.138470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546320, -0.155304, 0.823052,
		0.703864, 0.617760, -0.350640,
		-0.453993, 0.770879, 0.446807,
		34.871387, 41.691219, 53.272511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039677, 40.416138, 53.138405>,  <35.189182, 41.151608, 52.959747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.039677, 40.416138, 53.138405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280586, 40.100468, 53.186527>,  <35.425133, 39.911068, 53.215401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280586, 40.100468, 53.186527>,  <35.039677, 40.416138, 53.138405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280586, 40.100468, 53.186527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781702, 0.552468, -0.289345,
		0.161879, 0.268306, 0.949635,
		0.602276, -0.789171, 0.120302,
		35.461269, 39.863716, 53.222618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686565, 40.513325, 53.530800>,  <35.039677, 40.416138, 53.138405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686565, 40.513325, 53.530800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.744743, 40.252369, 53.233280>,  <35.779648, 40.095795, 53.054768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.744743, 40.252369, 53.233280>,  <35.686565, 40.513325, 53.530800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744743, 40.252369, 53.233280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659613, 0.624269, -0.418567,
		0.737399, -0.429743, 0.521118,
		0.145441, -0.652387, -0.743800,
		35.788376, 40.056652, 53.010139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504230, 40.312595, 53.403316>,  <35.686565, 40.513325, 53.530800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504230, 40.312595, 53.403316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.288719, 40.353615, 53.068844>,  <36.159412, 40.378227, 52.868160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.288719, 40.353615, 53.068844>,  <36.504230, 40.312595, 53.403316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288719, 40.353615, 53.068844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612540, 0.729113, -0.305268,
		0.578366, -0.676667, -0.455647,
		-0.538783, 0.102545, -0.836180,
		36.127083, 40.384377, 52.817989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150906, 40.541920, 53.094677>,  <36.504230, 40.312595, 53.403316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150906, 40.541920, 53.094677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.431713, 40.586258, 52.813286>,  <37.600197, 40.612862, 52.644451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.431713, 40.586258, 52.813286>,  <37.150906, 40.541920, 53.094677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431713, 40.586258, 52.813286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299152, -0.850537, -0.432545,
		-0.646279, 0.514103, -0.563935,
		0.702020, 0.110842, -0.703478,
		37.642319, 40.619511, 52.602242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758888, 40.665203, 52.417496>,  <37.150906, 40.541920, 53.094677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758888, 40.665203, 52.417496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.109978, 40.473644, 52.423950>,  <37.320629, 40.358707, 52.427822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.109978, 40.473644, 52.423950>,  <36.758888, 40.665203, 52.417496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109978, 40.473644, 52.423950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415114, -0.776768, -0.473617,
		0.239349, 0.409006, -0.880583,
		0.877720, -0.478902, 0.016135,
		37.373295, 40.329975, 52.428791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048679, 40.535213, 51.741978>,  <36.758888, 40.665203, 52.417496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048679, 40.535213, 51.741978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141647, 40.242023, 51.997707>,  <37.197430, 40.066109, 52.151146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141647, 40.242023, 51.997707>,  <37.048679, 40.535213, 51.741978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141647, 40.242023, 51.997707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480967, -0.657943, -0.579467,
		0.845371, -0.172814, -0.505453,
		0.232420, -0.732971, 0.639324,
		37.211372, 40.022133, 52.189503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450745, 40.039974, 51.529694>,  <37.048679, 40.535213, 51.741978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450745, 40.039974, 51.529694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.180523, 39.880264, 51.777630>,  <37.018391, 39.784439, 51.926392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.180523, 39.880264, 51.777630>,  <37.450745, 40.039974, 51.529694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180523, 39.880264, 51.777630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381064, -0.530625, -0.757118,
		0.631201, -0.747675, 0.206318,
		-0.675556, -0.399274, 0.619843,
		36.977856, 39.760483, 51.963581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429386, 39.252327, 51.449593>,  <37.450745, 40.039974, 51.529694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.429386, 39.252327, 51.449593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.083843, 39.410717, 51.574150>,  <36.876518, 39.505749, 51.648884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.083843, 39.410717, 51.574150>,  <37.429386, 39.252327, 51.449593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083843, 39.410717, 51.574150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464419, -0.386589, -0.796783,
		-0.195124, -0.832919, 0.517854,
		-0.863852, 0.395973, 0.311391,
		36.824688, 39.529510, 51.667568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023952, 38.700542, 51.545654>,  <37.429386, 39.252327, 51.449593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023952, 38.700542, 51.545654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.764393, 39.001411, 51.499760>,  <36.608658, 39.181934, 51.472225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.764393, 39.001411, 51.499760>,  <37.023952, 38.700542, 51.545654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764393, 39.001411, 51.499760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196997, -0.311736, -0.929523,
		-0.734927, -0.580567, 0.350462,
		-0.648902, 0.752172, -0.114733,
		36.569721, 39.227062, 51.465340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544453, 38.381710, 51.199650>,  <37.023952, 38.700542, 51.545654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544453, 38.381710, 51.199650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420288, 38.757534, 51.141869>,  <36.345787, 38.983028, 51.107201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420288, 38.757534, 51.141869>,  <36.544453, 38.381710, 51.199650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420288, 38.757534, 51.141869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156500, -0.200398, -0.967134,
		-0.937630, -0.277607, 0.209248,
		-0.310416, 0.939561, -0.144454,
		36.327164, 39.039402, 51.098534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933205, 38.308399, 50.849792>,  <36.544453, 38.381710, 51.199650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933205, 38.308399, 50.849792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.065792, 38.671638, 50.747433>,  <36.145344, 38.889584, 50.686016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.065792, 38.671638, 50.747433>,  <35.933205, 38.308399, 50.849792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065792, 38.671638, 50.747433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236244, -0.182709, -0.954362,
		-0.913410, 0.376795, 0.153971,
		0.331467, 0.908098, -0.255904,
		36.165234, 38.944069, 50.670662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484795, 38.603386, 50.343994>,  <35.933205, 38.308399, 50.849792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484795, 38.603386, 50.343994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818146, 38.819637, 50.298042>,  <36.018158, 38.949387, 50.270470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818146, 38.819637, 50.298042>,  <35.484795, 38.603386, 50.343994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818146, 38.819637, 50.298042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185652, 0.078039, -0.979512,
		-0.520585, 0.837635, 0.165405,
		0.833381, 0.540627, -0.114882,
		36.068161, 38.981827, 50.263577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398804, 39.110817, 49.829525>,  <35.484795, 38.603386, 50.343994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398804, 39.110817, 49.829525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796608, 39.069210, 49.834015>,  <36.035290, 39.044247, 49.836708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796608, 39.069210, 49.834015>,  <35.398804, 39.110817, 49.829525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796608, 39.069210, 49.834015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018339, 0.067657, -0.997540,
		0.103003, 0.992271, 0.069194,
		0.994512, -0.104019, 0.011228,
		36.094963, 39.038006, 49.837383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569393, 39.528584, 49.277142>,  <35.398804, 39.110817, 49.829525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569393, 39.528584, 49.277142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893051, 39.308617, 49.359970>,  <36.087246, 39.176636, 49.409668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893051, 39.308617, 49.359970>,  <35.569393, 39.528584, 49.277142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893051, 39.308617, 49.359970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203432, -0.068441, -0.976694,
		0.551276, 0.832408, 0.056493,
		0.809141, -0.549921, 0.207068,
		36.135792, 39.143639, 49.422092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259552, 39.774281, 48.926758>,  <35.569393, 39.528584, 49.277142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259552, 39.774281, 48.926758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293091, 39.381245, 48.993076>,  <36.313213, 39.145424, 49.032867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293091, 39.381245, 48.993076>,  <36.259552, 39.774281, 48.926758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293091, 39.381245, 48.993076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388986, -0.120908, -0.913275,
		0.917420, 0.141064, 0.372076,
		0.083844, -0.982589, 0.165796,
		36.318245, 39.086468, 49.042816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706722, 39.579144, 48.376507>,  <36.259552, 39.774281, 48.926758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706722, 39.579144, 48.376507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.608498, 39.220520, 48.523956>,  <36.549564, 39.005344, 48.612427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.608498, 39.220520, 48.523956>,  <36.706722, 39.579144, 48.376507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608498, 39.220520, 48.523956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349137, -0.436542, -0.829177,
		0.904324, -0.074915, 0.420220,
		-0.245562, -0.896560, 0.368619,
		36.534828, 38.951553, 48.634541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252575, 39.146793, 48.090565>,  <36.706722, 39.579144, 48.376507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252575, 39.146793, 48.090565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962868, 38.895012, 48.203156>,  <36.789043, 38.743942, 48.270710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962868, 38.895012, 48.203156>,  <37.252575, 39.146793, 48.090565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962868, 38.895012, 48.203156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189536, -0.574240, -0.796445,
		0.662961, -0.523486, 0.535205,
		-0.724264, -0.629452, 0.281480,
		36.745590, 38.706177, 48.287598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551735, 38.501938, 48.211189>,  <37.252575, 39.146793, 48.090565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551735, 38.501938, 48.211189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.166019, 38.451420, 48.118073>,  <36.934589, 38.421108, 48.062202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.166019, 38.451420, 48.118073>,  <37.551735, 38.501938, 48.211189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166019, 38.451420, 48.118073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264583, -0.498200, -0.825708,
		-0.011696, -0.857816, 0.513824,
		-0.964292, -0.126291, -0.232790,
		36.876732, 38.413532, 48.048237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594975, 37.945404, 47.861771>,  <37.551735, 38.501938, 48.211189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594975, 37.945404, 47.861771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.216095, 38.030678, 47.765957>,  <36.988770, 38.081841, 47.708469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.216095, 38.030678, 47.765957>,  <37.594975, 37.945404, 47.861771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216095, 38.030678, 47.765957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114652, -0.472466, -0.873860,
		-0.299461, -0.855178, 0.423075,
		-0.947195, 0.213181, -0.239533,
		36.931938, 38.094631, 47.694096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385761, 37.313171, 47.609314>,  <37.594975, 37.945404, 47.861771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385761, 37.313171, 47.609314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174091, 37.618134, 47.460335>,  <37.047089, 37.801109, 47.370945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174091, 37.618134, 47.460335>,  <37.385761, 37.313171, 47.609314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174091, 37.618134, 47.460335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072529, -0.396696, -0.915081,
		-0.845408, -0.511250, 0.154624,
		-0.529174, 0.762401, -0.372450,
		37.015339, 37.846855, 47.348598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143681, 37.024303, 46.943901>,  <37.385761, 37.313171, 47.609314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143681, 37.024303, 46.943901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.996449, 37.393093, 46.895763>,  <36.908112, 37.614368, 46.866882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.996449, 37.393093, 46.895763>,  <37.143681, 37.024303, 46.943901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996449, 37.393093, 46.895763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044079, -0.146585, -0.988216,
		-0.928751, -0.358433, 0.094594,
		-0.368076, 0.921975, -0.120341,
		36.886024, 37.669685, 46.859661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515591, 37.004219, 46.697109>,  <37.143681, 37.024303, 46.943901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515591, 37.004219, 46.697109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.627254, 37.372101, 46.586678>,  <36.694252, 37.592831, 46.520420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.627254, 37.372101, 46.586678>,  <36.515591, 37.004219, 46.697109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627254, 37.372101, 46.586678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293410, -0.192059, -0.936495,
		-0.914320, 0.342434, 0.216234,
		0.279158, 0.919702, -0.276077,
		36.711002, 37.648010, 46.503853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903912, 37.385712, 46.411644>,  <36.515591, 37.004219, 46.697109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903912, 37.385712, 46.411644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.222706, 37.565540, 46.250301>,  <36.413982, 37.673439, 46.153496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.222706, 37.565540, 46.250301>,  <35.903912, 37.385712, 46.411644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222706, 37.565540, 46.250301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297544, -0.288922, -0.909941,
		-0.525621, 0.845228, -0.096500,
		0.796988, 0.449571, -0.403356,
		36.461803, 37.700413, 46.129295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706520, 37.878101, 45.872002>,  <35.903912, 37.385712, 46.411644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706520, 37.878101, 45.872002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082623, 37.768143, 45.791656>,  <36.308285, 37.702168, 45.743450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082623, 37.768143, 45.791656>,  <35.706520, 37.878101, 45.872002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082623, 37.768143, 45.791656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289506, -0.335099, -0.896602,
		0.179161, 0.901189, -0.394663,
		0.940259, -0.274893, -0.200863,
		36.364700, 37.685677, 45.731396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849972, 38.040558, 45.115417>,  <35.706520, 37.878101, 45.872002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849972, 38.040558, 45.115417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.156033, 37.799740, 45.206699>,  <36.339668, 37.655247, 45.261471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.156033, 37.799740, 45.206699>,  <35.849972, 38.040558, 45.115417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156033, 37.799740, 45.206699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078585, -0.439120, -0.894985,
		0.639033, 0.666868, -0.383306,
		0.765154, -0.602047, 0.228207,
		36.385578, 37.619125, 45.275162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282051, 38.050632, 44.526516>,  <35.849972, 38.040558, 45.115417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282051, 38.050632, 44.526516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.372303, 37.710266, 44.716267>,  <36.426456, 37.506046, 44.830116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.372303, 37.710266, 44.716267>,  <36.282051, 38.050632, 44.526516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.372303, 37.710266, 44.716267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096413, -0.504045, -0.858280,
		0.969430, 0.147921, -0.195768,
		0.225633, -0.850916, 0.474375,
		36.439991, 37.454990, 44.858578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672661, 37.796135, 44.045475>,  <36.282051, 38.050632, 44.526516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672661, 37.796135, 44.045475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.558426, 37.492615, 44.279625>,  <36.489887, 37.310501, 44.420113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.558426, 37.492615, 44.279625>,  <36.672661, 37.796135, 44.045475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558426, 37.492615, 44.279625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298084, -0.510182, -0.806759,
		0.910817, -0.404888, -0.080487,
		-0.285585, -0.758802, 0.585373,
		36.472752, 37.264973, 44.455238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897644, 37.116039, 43.764587>,  <36.672661, 37.796135, 44.045475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897644, 37.116039, 43.764587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.588432, 37.010265, 43.995239>,  <36.402905, 36.946800, 44.133629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.588432, 37.010265, 43.995239>,  <36.897644, 37.116039, 43.764587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588432, 37.010265, 43.995239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340971, -0.593308, -0.729194,
		0.534946, -0.760300, 0.368477,
		-0.773027, -0.264440, 0.576628,
		36.356525, 36.930935, 44.168228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762161, 36.451019, 43.561047>,  <36.897644, 37.116039, 43.764587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762161, 36.451019, 43.561047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.419250, 36.541138, 43.746227>,  <36.213505, 36.595207, 43.857334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.419250, 36.541138, 43.746227>,  <36.762161, 36.451019, 43.561047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419250, 36.541138, 43.746227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507482, -0.521398, -0.686007,
		0.086827, -0.823035, 0.561314,
		-0.857277, 0.225293, 0.462947,
		36.162067, 36.608727, 43.885113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431175, 35.835182, 43.552280>,  <36.762161, 36.451019, 43.561047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431175, 35.835182, 43.552280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137959, 36.094769, 43.633762>,  <35.962029, 36.250519, 43.682652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137959, 36.094769, 43.633762>,  <36.431175, 35.835182, 43.552280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137959, 36.094769, 43.633762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584444, -0.447747, -0.676718,
		-0.347960, -0.615115, 0.707501,
		-0.733041, 0.648966, 0.203702,
		35.918045, 36.289459, 43.694874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806519, 35.387871, 43.620975>,  <36.431175, 35.835182, 43.552280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806519, 35.387871, 43.620975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.712700, 35.763165, 43.519234>,  <35.656410, 35.988342, 43.458187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.712700, 35.763165, 43.519234>,  <35.806519, 35.387871, 43.620975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712700, 35.763165, 43.519234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638993, -0.345987, -0.687009,
		-0.732583, 0.001402, 0.680677,
		-0.234542, 0.938238, -0.254359,
		35.642338, 36.044636, 43.442924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135300, 35.397709, 43.414719>,  <35.806519, 35.387871, 43.620975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135300, 35.397709, 43.414719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.285618, 35.734917, 43.260780>,  <35.375809, 35.937241, 43.168419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.285618, 35.734917, 43.260780>,  <35.135300, 35.397709, 43.414719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.285618, 35.734917, 43.260780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519602, -0.152182, -0.840746,
		-0.767328, 0.515912, 0.380844,
		0.375793, 0.843016, -0.384843,
		35.398357, 35.987820, 43.145329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648457, 35.664150, 42.981556>,  <35.135300, 35.397709, 43.414719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648457, 35.664150, 42.981556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981853, 35.832542, 42.838413>,  <35.181892, 35.933578, 42.752529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981853, 35.832542, 42.838413>,  <34.648457, 35.664150, 42.981556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981853, 35.832542, 42.838413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335647, -0.128692, -0.933156,
		-0.438890, 0.897896, 0.034035,
		0.833497, 0.420976, -0.357858,
		35.231903, 35.958836, 42.731056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408909, 36.107250, 42.419388>,  <34.648457, 35.664150, 42.981556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408909, 36.107250, 42.419388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795925, 36.029362, 42.354950>,  <35.028133, 35.982628, 42.316288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795925, 36.029362, 42.354950>,  <34.408909, 36.107250, 42.419388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795925, 36.029362, 42.354950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197761, -0.186457, -0.962354,
		0.157353, 0.962973, -0.218912,
		0.967539, -0.194722, -0.161099,
		35.086185, 35.970943, 42.306622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415283, 36.366566, 41.871651>,  <34.408909, 36.107250, 42.419388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415283, 36.366566, 41.871651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.748322, 36.145046, 41.867790>,  <34.948143, 36.012135, 41.865475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.748322, 36.145046, 41.867790>,  <34.415283, 36.366566, 41.871651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.748322, 36.145046, 41.867790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049169, -0.056542, -0.997189,
		0.551697, 0.830728, -0.074306,
		0.832594, -0.553800, -0.009652,
		34.998100, 35.978905, 41.864895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811852, 36.615849, 41.357037>,  <34.415283, 36.366566, 41.871651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811852, 36.615849, 41.357037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.955379, 36.248173, 41.421963>,  <35.041496, 36.027569, 41.460918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.955379, 36.248173, 41.421963>,  <34.811852, 36.615849, 41.357037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955379, 36.248173, 41.421963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002124, -0.174701, -0.984619,
		0.933406, 0.352952, -0.064638,
		0.358816, -0.919187, 0.162317,
		35.063023, 35.972416, 41.470657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248768, 36.553734, 40.805206>,  <34.811852, 36.615849, 41.357037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248768, 36.553734, 40.805206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189365, 36.179375, 40.932980>,  <35.153725, 35.954758, 41.009644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189365, 36.179375, 40.932980>,  <35.248768, 36.553734, 40.805206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189365, 36.179375, 40.932980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128641, -0.338551, -0.932113,
		0.980509, -0.097332, 0.170672,
		-0.148505, -0.935900, 0.319432,
		35.144814, 35.898605, 41.028809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811211, 36.264320, 40.485962>,  <35.248768, 36.553734, 40.805206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811211, 36.264320, 40.485962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.535931, 35.985455, 40.566307>,  <35.370762, 35.818134, 40.614513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.535931, 35.985455, 40.566307>,  <35.811211, 36.264320, 40.485962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535931, 35.985455, 40.566307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144452, -0.139647, -0.979608,
		0.710999, -0.703179, -0.004602,
		-0.688197, -0.697165, 0.200865,
		35.329472, 35.776306, 40.626568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852745, 35.869068, 39.986309>,  <35.811211, 36.264320, 40.485962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852745, 35.869068, 39.986309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.486214, 35.780125, 40.119518>,  <35.266296, 35.726757, 40.199444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.486214, 35.780125, 40.119518>,  <35.852745, 35.869068, 39.986309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.486214, 35.780125, 40.119518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309435, -0.134661, -0.941338,
		0.254159, -0.965621, 0.054588,
		-0.916326, -0.222358, 0.333022,
		35.211315, 35.713417, 40.219425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652149, 35.352768, 39.517349>,  <35.852745, 35.869068, 39.986309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652149, 35.352768, 39.517349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313976, 35.516716, 39.654312>,  <35.111073, 35.615086, 39.736492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313976, 35.516716, 39.654312>,  <35.652149, 35.352768, 39.517349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313976, 35.516716, 39.654312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385709, -0.025113, -0.922279,
		-0.369418, -0.911797, 0.179323,
		-0.845434, 0.409873, 0.342411,
		35.060345, 35.639679, 39.757034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191109, 35.013004, 39.028606>,  <35.652149, 35.352768, 39.517349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191109, 35.013004, 39.028606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004501, 35.320824, 39.203030>,  <34.892536, 35.505516, 39.307682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004501, 35.320824, 39.203030>,  <35.191109, 35.013004, 39.028606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004501, 35.320824, 39.203030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584906, 0.101410, -0.804736,
		-0.663507, -0.630480, 0.402806,
		-0.466522, 0.769552, 0.436058,
		34.864544, 35.551689, 39.333847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504784, 34.957695, 39.006527>,  <35.191109, 35.013004, 39.028606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504784, 34.957695, 39.006527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.570454, 35.351345, 39.033470>,  <34.609856, 35.587536, 39.049637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.570454, 35.351345, 39.033470>,  <34.504784, 34.957695, 39.006527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570454, 35.351345, 39.033470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648704, 0.159151, -0.744214,
		-0.743122, 0.078485, 0.664537,
		0.164172, 0.984129, 0.067355,
		34.619705, 35.646584, 39.053677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865845, 35.256271, 38.906822>,  <34.504784, 34.957695, 39.006527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865845, 35.256271, 38.906822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127674, 35.554005, 38.853901>,  <34.284771, 35.732643, 38.822147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127674, 35.554005, 38.853901>,  <33.865845, 35.256271, 38.906822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127674, 35.554005, 38.853901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558292, 0.357929, -0.748463,
		-0.509751, 0.563786, 0.649846,
		0.654572, 0.744333, -0.132302,
		34.324047, 35.777306, 38.814209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434711, 35.893417, 38.671597>,  <33.865845, 35.256271, 38.906822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434711, 35.893417, 38.671597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817459, 35.970936, 38.585018>,  <34.047108, 36.017445, 38.533073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817459, 35.970936, 38.585018>,  <33.434711, 35.893417, 38.671597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817459, 35.970936, 38.585018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288137, 0.537786, -0.792315,
		-0.037145, 0.820506, 0.570430,
		0.956869, 0.193792, -0.216442,
		34.104519, 36.029072, 38.520084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529716, 36.635380, 38.533150>,  <33.434711, 35.893417, 38.671597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529716, 36.635380, 38.533150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851765, 36.476696, 38.356785>,  <34.044994, 36.381485, 38.250965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851765, 36.476696, 38.356785>,  <33.529716, 36.635380, 38.533150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851765, 36.476696, 38.356785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187263, 0.535340, -0.823616,
		0.562774, 0.745676, 0.356724,
		0.805120, -0.396708, -0.440914,
		34.093300, 36.357685, 38.224510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.879639, 37.193947, 38.210972>,  <33.529716, 36.635380, 38.533150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.879639, 37.193947, 38.210972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.975639, 36.852337, 38.026348>,  <34.033241, 36.647369, 37.915573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.975639, 36.852337, 38.026348>,  <33.879639, 37.193947, 38.210972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975639, 36.852337, 38.026348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161928, 0.433580, -0.886447,
		0.957172, 0.287490, -0.034230,
		0.240003, -0.854025, -0.461563,
		34.047642, 36.596130, 37.887878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457718, 37.289616, 37.696861>,  <33.879639, 37.193947, 38.210972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457718, 37.289616, 37.696861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.252895, 36.969925, 37.570976>,  <34.130001, 36.778111, 37.495445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.252895, 36.969925, 37.570976>,  <34.457718, 37.289616, 37.696861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.252895, 36.969925, 37.570976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091504, 0.415058, -0.905182,
		0.854065, -0.434706, -0.285665,
		-0.512055, -0.799223, -0.314709,
		34.099277, 36.730160, 37.476562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151985, 37.238503, 37.262501>,  <34.457718, 37.289616, 37.696861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151985, 37.238503, 37.262501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491215, 37.160225, 37.065536>,  <35.694752, 37.113258, 36.947357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491215, 37.160225, 37.065536>,  <35.151985, 37.238503, 37.262501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491215, 37.160225, 37.065536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373495, -0.438407, 0.817496,
		-0.375860, -0.877212, -0.298710,
		0.848075, -0.195697, -0.492415,
		35.745636, 37.101517, 36.917812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442062, 36.559029, 37.297321>,  <35.151985, 37.238503, 37.262501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.442062, 36.559029, 37.297321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.757809, 36.792236, 37.220383>,  <35.947254, 36.932159, 37.174221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.757809, 36.792236, 37.220383>,  <35.442062, 36.559029, 37.297321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757809, 36.792236, 37.220383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415504, -0.276703, 0.866483,
		0.451953, -0.763888, -0.460665,
		0.789364, 0.583018, -0.192342,
		35.994617, 36.967140, 37.162682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011078, 36.176693, 37.475586>,  <35.442062, 36.559029, 37.297321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011078, 36.176693, 37.475586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.171917, 36.541893, 37.503151>,  <36.268421, 36.761013, 37.519688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.171917, 36.541893, 37.503151>,  <36.011078, 36.176693, 37.475586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171917, 36.541893, 37.503151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466492, -0.269049, 0.842614,
		0.787845, -0.306670, -0.534091,
		0.402101, 0.912998, 0.068910,
		36.292549, 36.815792, 37.523823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693096, 36.067711, 37.684673>,  <36.011078, 36.176693, 37.475586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693096, 36.067711, 37.684673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623978, 36.449017, 37.783806>,  <36.582508, 36.677799, 37.843285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623978, 36.449017, 37.783806>,  <36.693096, 36.067711, 37.684673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623978, 36.449017, 37.783806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532838, -0.121151, 0.837500,
		0.828387, 0.276771, -0.487003,
		-0.172795, 0.953268, 0.247834,
		36.572140, 36.734997, 37.858154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324924, 36.366310, 37.906693>,  <36.693096, 36.067711, 37.684673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324924, 36.366310, 37.906693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.025810, 36.579536, 38.065014>,  <36.846340, 36.707470, 38.160007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.025810, 36.579536, 38.065014>,  <37.324924, 36.366310, 37.906693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025810, 36.579536, 38.065014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477946, 0.018398, 0.878197,
		0.460853, 0.845875, -0.268533,
		-0.747785, 0.533063, 0.395804,
		36.801476, 36.739456, 38.183754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631413, 36.887737, 38.289783>,  <37.324924, 36.366310, 37.906693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631413, 36.887737, 38.289783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.263325, 36.889568, 38.446339>,  <37.042473, 36.890667, 38.540272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.263325, 36.889568, 38.446339>,  <37.631413, 36.887737, 38.289783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.263325, 36.889568, 38.446339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388360, 0.135266, 0.911526,
		-0.048771, 0.990799, -0.126251,
		-0.920216, 0.004574, 0.391384,
		36.987259, 36.890942, 38.563755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537758, 37.466255, 38.693153>,  <37.631413, 36.887737, 38.289783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537758, 37.466255, 38.693153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.260868, 37.219574, 38.843086>,  <37.094734, 37.071564, 38.933044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.260868, 37.219574, 38.843086>,  <37.537758, 37.466255, 38.693153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260868, 37.219574, 38.843086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261461, 0.269790, 0.926742,
		-0.672654, 0.739517, -0.025510,
		-0.692224, -0.616707, 0.374830,
		37.053200, 37.034561, 38.955536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214569, 37.871479, 39.215836>,  <37.537758, 37.466255, 38.693153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214569, 37.871479, 39.215836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.105236, 37.496120, 39.300411>,  <37.039639, 37.270905, 39.351154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.105236, 37.496120, 39.300411>,  <37.214569, 37.871479, 39.215836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105236, 37.496120, 39.300411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149260, 0.175769, 0.973050,
		-0.950270, 0.297522, 0.092022,
		-0.273329, -0.938395, 0.211436,
		37.023239, 37.214603, 39.363842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859608, 37.903439, 39.912956>,  <37.214569, 37.871479, 39.215836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859608, 37.903439, 39.912956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.909168, 37.507744, 39.881821>,  <36.938904, 37.270329, 39.863140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.909168, 37.507744, 39.881821>,  <36.859608, 37.903439, 39.912956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909168, 37.507744, 39.881821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216747, -0.049567, 0.974969,
		-0.968334, -0.137669, 0.208272,
		0.123899, -0.989237, -0.077837,
		36.946339, 37.210972, 39.858471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384094, 37.557053, 40.370434>,  <36.859608, 37.903439, 39.912956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384094, 37.557053, 40.370434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.698776, 37.328907, 40.275955>,  <36.887585, 37.192020, 40.219269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.698776, 37.328907, 40.275955>,  <36.384094, 37.557053, 40.370434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698776, 37.328907, 40.275955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298915, 0.017180, 0.954125,
		-0.540141, -0.821212, 0.184006,
		0.786700, -0.570364, -0.236193,
		36.934788, 37.157799, 40.205097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389545, 37.065018, 40.858574>,  <36.384094, 37.557053, 40.370434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389545, 37.065018, 40.858574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.763817, 37.106892, 40.723793>,  <36.988380, 37.132015, 40.642925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.763817, 37.106892, 40.723793>,  <36.389545, 37.065018, 40.858574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763817, 37.106892, 40.723793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344841, -0.069108, 0.936113,
		0.074713, -0.992101, -0.100764,
		0.935683, 0.104688, -0.336954,
		37.044521, 37.138298, 40.622707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699108, 36.609253, 41.306610>,  <36.389545, 37.065018, 40.858574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699108, 36.609253, 41.306610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.974033, 36.851131, 41.145641>,  <37.138988, 36.996258, 41.049061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.974033, 36.851131, 41.145641>,  <36.699108, 36.609253, 41.306610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974033, 36.851131, 41.145641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398735, 0.148984, 0.904884,
		0.607133, -0.782399, -0.138714,
		0.687314, 0.604695, -0.402422,
		37.180229, 37.032539, 41.024914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379688, 36.410610, 41.510689>,  <36.699108, 36.609253, 41.306610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.379688, 36.410610, 41.510689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.434105, 36.799923, 41.436707>,  <37.466755, 37.033512, 41.392319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.434105, 36.799923, 41.436707>,  <37.379688, 36.410610, 41.510689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434105, 36.799923, 41.436707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246613, 0.147544, 0.957817,
		0.959519, -0.175911, -0.219953,
		0.136037, 0.973286, -0.184953,
		37.474915, 37.091908, 41.381222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936268, 36.602871, 41.901752>,  <37.379688, 36.410610, 41.510689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936268, 36.602871, 41.901752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.821320, 36.970173, 41.792774>,  <37.752350, 37.190556, 41.727386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.821320, 36.970173, 41.792774>,  <37.936268, 36.602871, 41.901752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821320, 36.970173, 41.792774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354942, 0.366282, 0.860148,
		0.889626, 0.150480, -0.431186,
		-0.287370, 0.918256, -0.272442,
		37.735107, 37.245651, 41.711040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553772, 37.177994, 41.927444>,  <37.936268, 36.602871, 41.901752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553772, 37.177994, 41.927444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.189285, 37.330597, 41.989582>,  <37.970592, 37.422157, 42.026867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.189285, 37.330597, 41.989582>,  <38.553772, 37.177994, 41.927444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.189285, 37.330597, 41.989582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335333, 0.468000, 0.817635,
		0.239232, 0.797138, -0.554383,
		-0.911219, 0.381507, 0.155346,
		37.915920, 37.445049, 42.036186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.741776, 37.886101, 42.031364>,  <38.553772, 37.177994, 41.927444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.741776, 37.886101, 42.031364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.375088, 37.838112, 42.183804>,  <38.155075, 37.809319, 42.275265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.375088, 37.838112, 42.183804>,  <38.741776, 37.886101, 42.031364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375088, 37.838112, 42.183804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264726, 0.532020, 0.804285,
		-0.299245, 0.838188, -0.455952,
		-0.916718, -0.119976, 0.381094,
		38.100071, 37.802120, 42.298130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614975, 38.531384, 42.339176>,  <38.741776, 37.886101, 42.031364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614975, 38.531384, 42.339176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345821, 38.300129, 42.523777>,  <38.184330, 38.161377, 42.634537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345821, 38.300129, 42.523777>,  <38.614975, 38.531384, 42.339176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345821, 38.300129, 42.523777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025592, 0.605301, 0.795585,
		-0.739302, 0.547150, -0.392504,
		-0.672887, -0.578133, 0.461503,
		38.143955, 38.126690, 42.662228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188839, 38.978550, 42.566402>,  <38.614975, 38.531384, 42.339176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188839, 38.978550, 42.566402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.133373, 38.657658, 42.798676>,  <38.100094, 38.465122, 42.938042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.133373, 38.657658, 42.798676>,  <38.188839, 38.978550, 42.566402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.133373, 38.657658, 42.798676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063174, 0.577991, 0.813594,
		-0.988323, 0.149499, -0.029466,
		-0.138663, -0.802232, 0.580686,
		38.091774, 38.416988, 42.972881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676418, 39.231682, 43.109081>,  <38.188839, 38.978550, 42.566402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676418, 39.231682, 43.109081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.795738, 38.885838, 43.270805>,  <37.867332, 38.678329, 43.367840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.795738, 38.885838, 43.270805>,  <37.676418, 39.231682, 43.109081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795738, 38.885838, 43.270805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024109, 0.430282, 0.902373,
		-0.954167, -0.259433, 0.149199,
		0.298303, -0.864611, 0.404306,
		37.885231, 38.626453, 43.392097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170399, 39.069717, 43.617138>,  <37.676418, 39.231682, 43.109081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170399, 39.069717, 43.617138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.527218, 38.915241, 43.711029>,  <37.741310, 38.822556, 43.767365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.527218, 38.915241, 43.711029>,  <37.170399, 39.069717, 43.617138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527218, 38.915241, 43.711029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103708, 0.330596, 0.938057,
		-0.439873, -0.861138, 0.254857,
		0.892051, -0.386195, 0.234727,
		37.794834, 38.799381, 43.781448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089497, 38.712036, 44.333263>,  <37.170399, 39.069717, 43.617138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089497, 38.712036, 44.333263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.486664, 38.741714, 44.296165>,  <37.724964, 38.759521, 44.273907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.486664, 38.741714, 44.296165>,  <37.089497, 38.712036, 44.333263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486664, 38.741714, 44.296165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081672, 0.140409, 0.986719,
		0.086231, -0.987310, 0.133356,
		0.992922, 0.074194, -0.092743,
		37.784542, 38.763973, 44.268341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464252, 38.284489, 44.750648>,  <37.089497, 38.712036, 44.333263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464252, 38.284489, 44.750648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.722019, 38.579323, 44.669231>,  <37.876678, 38.756222, 44.620380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.722019, 38.579323, 44.669231>,  <37.464252, 38.284489, 44.750648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722019, 38.579323, 44.669231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293145, 0.007711, 0.956037,
		0.706249, -0.675757, -0.211103,
		0.644421, 0.737084, -0.203540,
		37.915344, 38.800449, 44.608170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098957, 38.214981, 45.258678>,  <37.464252, 38.284489, 44.750648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098957, 38.214981, 45.258678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.137154, 38.583366, 45.107571>,  <38.160072, 38.804398, 45.016907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.137154, 38.583366, 45.107571>,  <38.098957, 38.214981, 45.258678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137154, 38.583366, 45.107571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341051, 0.326265, 0.881610,
		0.935182, -0.213027, -0.282939,
		0.095494, 0.920962, -0.377770,
		38.165802, 38.859653, 44.994240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734093, 38.456558, 45.455215>,  <38.098957, 38.214981, 45.258678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.734093, 38.456558, 45.455215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559986, 38.802662, 45.355713>,  <38.455524, 39.010323, 45.296013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559986, 38.802662, 45.355713>,  <38.734093, 38.456558, 45.455215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559986, 38.802662, 45.355713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390747, 0.430477, 0.813638,
		0.811088, 0.256946, -0.525466,
		-0.435262, 0.865256, -0.248754,
		38.429409, 39.062241, 45.281086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224186, 38.960114, 45.619694>,  <38.734093, 38.456558, 45.455215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224186, 38.960114, 45.619694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.870300, 39.146557, 45.621510>,  <38.657970, 39.258423, 45.622597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.870300, 39.146557, 45.621510>,  <39.224186, 38.960114, 45.619694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.870300, 39.146557, 45.621510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295009, 0.552363, 0.779656,
		0.360901, 0.691112, -0.626191,
		-0.884715, 0.466111, 0.004536,
		38.604885, 39.286388, 45.622871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261051, 39.623947, 45.842964>,  <39.224186, 38.960114, 45.619694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261051, 39.623947, 45.842964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881031, 39.543148, 45.938126>,  <38.653019, 39.494667, 45.995220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881031, 39.543148, 45.938126>,  <39.261051, 39.623947, 45.842964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881031, 39.543148, 45.938126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125166, 0.451666, 0.883364,
		-0.285892, 0.869018, -0.403823,
		-0.950052, -0.202001, 0.237899,
		38.596016, 39.482548, 46.009495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979954, 40.243732, 46.032429>,  <39.261051, 39.623947, 45.842964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979954, 40.243732, 46.032429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.751213, 39.958836, 46.195251>,  <38.613968, 39.787895, 46.292946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.751213, 39.958836, 46.195251>,  <38.979954, 40.243732, 46.032429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.751213, 39.958836, 46.195251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053394, 0.462831, 0.884837,
		-0.818620, 0.527728, -0.226640,
		-0.571849, -0.712244, 0.407060,
		38.579659, 39.745163, 46.317368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582130, 40.594193, 46.494919>,  <38.979954, 40.243732, 46.032429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582130, 40.594193, 46.494919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.516895, 40.222855, 46.628536>,  <38.477757, 40.000053, 46.708706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.516895, 40.222855, 46.628536>,  <38.582130, 40.594193, 46.494919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516895, 40.222855, 46.628536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009844, 0.340095, 0.940340,
		-0.986563, 0.150065, -0.064603,
		-0.163083, -0.928340, 0.334048,
		38.467972, 39.944351, 46.728752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974648, 40.645493, 46.894318>,  <38.582130, 40.594193, 46.494919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974648, 40.645493, 46.894318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187187, 40.325989, 47.007217>,  <38.314709, 40.134289, 47.074955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187187, 40.325989, 47.007217>,  <37.974648, 40.645493, 46.894318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187187, 40.325989, 47.007217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111856, 0.264102, 0.957987,
		-0.839738, -0.540593, 0.050983,
		0.531345, -0.798755, 0.282245,
		38.346592, 40.086361, 47.091892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609802, 40.337692, 47.412109>,  <37.974648, 40.645493, 46.894318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609802, 40.337692, 47.412109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.986973, 40.219193, 47.472923>,  <38.213276, 40.148090, 47.509411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.986973, 40.219193, 47.472923>,  <37.609802, 40.337692, 47.412109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986973, 40.219193, 47.472923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098074, 0.189255, 0.977018,
		-0.318219, -0.936171, 0.149400,
		0.942931, -0.296253, 0.152038,
		38.269852, 40.130318, 47.518536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555359, 39.958092, 47.993710>,  <37.609802, 40.337692, 47.412109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555359, 39.958092, 47.993710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.942402, 40.056087, 47.969357>,  <38.174629, 40.114887, 47.954742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.942402, 40.056087, 47.969357>,  <37.555359, 39.958092, 47.993710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.942402, 40.056087, 47.969357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037303, 0.377302, 0.925339,
		0.249672, -0.893097, 0.374221,
		0.967612, 0.244990, -0.060887,
		38.232685, 40.129585, 47.951092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890034, 39.859035, 48.639217>,  <37.555359, 39.958092, 47.993710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890034, 39.859035, 48.639217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.168915, 40.094234, 48.475185>,  <38.336243, 40.235355, 48.376766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.168915, 40.094234, 48.475185>,  <37.890034, 39.859035, 48.639217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168915, 40.094234, 48.475185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080442, 0.504252, 0.859802,
		0.712345, -0.632445, 0.304267,
		0.697204, 0.588000, -0.410077,
		38.378075, 40.270634, 48.352161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425896, 39.952240, 49.116463>,  <37.890034, 39.859035, 48.639217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425896, 39.952240, 49.116463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.447460, 40.263710, 48.866421>,  <38.460400, 40.450592, 48.716396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.447460, 40.263710, 48.866421>,  <38.425896, 39.952240, 49.116463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.447460, 40.263710, 48.866421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200657, 0.604799, 0.770685,
		0.978177, -0.166982, -0.123640,
		0.053913, 0.778675, -0.625107,
		38.463634, 40.497314, 48.678890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971619, 40.320473, 49.381287>,  <38.425896, 39.952240, 49.116463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971619, 40.320473, 49.381287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785809, 40.577446, 49.137486>,  <38.674320, 40.731628, 48.991203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785809, 40.577446, 49.137486>,  <38.971619, 40.320473, 49.381287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785809, 40.577446, 49.137486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089836, 0.718909, 0.689274,
		0.880990, 0.265431, -0.391667,
		-0.464527, 0.642430, -0.609507,
		38.646450, 40.770176, 48.954632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198032, 41.050957, 49.527092>,  <38.971619, 40.320473, 49.381287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198032, 41.050957, 49.527092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.871925, 41.140984, 49.313671>,  <38.676262, 41.195000, 49.185619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.871925, 41.140984, 49.313671>,  <39.198032, 41.050957, 49.527092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871925, 41.140984, 49.313671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107661, 0.846405, 0.521543,
		0.568988, 0.482640, -0.665816,
		-0.815268, 0.225069, -0.533556,
		38.627346, 41.208504, 49.153603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191120, 41.827629, 49.292591>,  <39.198032, 41.050957, 49.527092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.191120, 41.827629, 49.292591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.804836, 41.723877, 49.297031>,  <38.573067, 41.661625, 49.299694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.804836, 41.723877, 49.297031>,  <39.191120, 41.827629, 49.292591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804836, 41.723877, 49.297031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213031, 0.816124, 0.537177,
		-0.148390, 0.516394, -0.843397,
		-0.965711, -0.259381, 0.011096,
		38.515121, 41.646061, 49.300362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683998, 42.422169, 49.014332>,  <39.191120, 41.827629, 49.292591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683998, 42.422169, 49.014332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.519039, 42.163162, 49.270660>,  <38.420063, 42.007759, 49.424458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.519039, 42.163162, 49.270660>,  <38.683998, 42.422169, 49.014332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519039, 42.163162, 49.270660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176256, 0.746847, 0.641212,
		-0.893790, 0.151486, -0.422128,
		-0.412400, -0.647512, 0.640824,
		38.395321, 41.968910, 49.462906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975758, 42.525047, 49.141796>,  <38.683998, 42.422169, 49.014332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.975758, 42.525047, 49.141796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108997, 42.336384, 49.468372>,  <38.188942, 42.223186, 49.664318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108997, 42.336384, 49.468372>,  <37.975758, 42.525047, 49.141796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108997, 42.336384, 49.468372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387348, 0.721002, 0.574558,
		-0.859655, -0.507632, 0.057468,
		0.333099, -0.471662, 0.816444,
		38.208927, 42.194885, 49.713306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552849, 42.687229, 49.677326>,  <37.975758, 42.525047, 49.141796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552849, 42.687229, 49.677326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.741386, 43.039612, 49.660587>,  <37.854507, 43.251041, 49.650543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.741386, 43.039612, 49.660587>,  <37.552849, 42.687229, 49.677326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741386, 43.039612, 49.660587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210962, 0.066550, -0.975226,
		-0.856346, 0.468496, 0.217216,
		0.471345, 0.880956, -0.041845,
		37.882790, 43.303898, 49.648033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180653, 43.085800, 49.251549>,  <37.552849, 42.687229, 49.677326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180653, 43.085800, 49.251549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.530544, 43.279434, 49.242527>,  <37.740479, 43.395615, 49.237114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.530544, 43.279434, 49.242527>,  <37.180653, 43.085800, 49.251549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530544, 43.279434, 49.242527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098984, 0.132909, -0.986173,
		-0.474391, 0.864869, 0.164176,
		0.874732, 0.484083, -0.022557,
		37.792965, 43.424660, 49.235760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098797, 43.607864, 48.798370>,  <37.180653, 43.085800, 49.251549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098797, 43.607864, 48.798370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.496750, 43.568489, 48.807549>,  <37.735519, 43.544865, 48.813057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.496750, 43.568489, 48.807549>,  <37.098797, 43.607864, 48.798370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496750, 43.568489, 48.807549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027235, 0.042470, -0.998726,
		0.097339, 0.994237, 0.044933,
		0.994878, -0.098438, 0.022945,
		37.795212, 43.538956, 48.814430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407139, 44.147934, 48.365097>,  <37.098797, 43.607864, 48.798370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407139, 44.147934, 48.365097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.690449, 43.867584, 48.398876>,  <37.860435, 43.699375, 48.419144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.690449, 43.867584, 48.398876>,  <37.407139, 44.147934, 48.365097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690449, 43.867584, 48.398876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044652, -0.074910, -0.996190,
		0.704526, 0.709345, -0.021761,
		0.708272, -0.700870, 0.084450,
		37.902931, 43.657322, 48.424210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901241, 44.381336, 47.877323>,  <37.407139, 44.147934, 48.365097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901241, 44.381336, 47.877323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962624, 43.991714, 47.943863>,  <37.999451, 43.757942, 47.983788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962624, 43.991714, 47.943863>,  <37.901241, 44.381336, 47.877323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962624, 43.991714, 47.943863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252685, -0.124069, -0.959561,
		0.955302, 0.189281, 0.227090,
		0.153451, -0.974053, 0.166352,
		38.008659, 43.699497, 47.993767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626419, 44.252960, 47.645214>,  <37.901241, 44.381336, 47.877323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626419, 44.252960, 47.645214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.401897, 43.921940, 47.641186>,  <38.267185, 43.723328, 47.638767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.401897, 43.921940, 47.641186>,  <38.626419, 44.252960, 47.645214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401897, 43.921940, 47.641186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279140, -0.177850, -0.943636,
		0.779117, -0.532474, 0.330830,
		-0.561300, -0.827551, -0.010070,
		38.233509, 43.673676, 47.638165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920128, 43.739010, 47.133984>,  <38.626419, 44.252960, 47.645214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920128, 43.739010, 47.133984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.573887, 43.548840, 47.196857>,  <38.366142, 43.434738, 47.234581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.573887, 43.548840, 47.196857>,  <38.920128, 43.739010, 47.133984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573887, 43.548840, 47.196857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106896, -0.482121, -0.869559,
		0.489189, -0.735890, 0.468145,
		-0.865603, -0.475422, 0.157185,
		38.314205, 43.406212, 47.244011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980534, 42.948421, 47.025414>,  <38.920128, 43.739010, 47.133984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980534, 42.948421, 47.025414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585987, 43.009411, 47.000660>,  <38.349258, 43.046005, 46.985806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585987, 43.009411, 47.000660>,  <38.980534, 42.948421, 47.025414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585987, 43.009411, 47.000660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043637, -0.605001, -0.795028,
		-0.158659, -0.781490, 0.603408,
		-0.986368, 0.152469, -0.061887,
		38.290077, 43.055153, 46.982094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657379, 42.302036, 46.924309>,  <38.980534, 42.948421, 47.025414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657379, 42.302036, 46.924309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.374638, 42.559074, 46.806034>,  <38.204990, 42.713295, 46.735069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.374638, 42.559074, 46.806034>,  <38.657379, 42.302036, 46.924309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374638, 42.559074, 46.806034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119380, -0.520388, -0.845544,
		-0.697211, -0.562379, 0.444552,
		-0.706856, 0.642593, -0.295684,
		38.162582, 42.751854, 46.717331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124439, 41.941471, 46.629681>,  <38.657379, 42.302036, 46.924309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124439, 41.941471, 46.629681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.088425, 42.292065, 46.440506>,  <38.066818, 42.502422, 46.327003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.088425, 42.292065, 46.440506>,  <38.124439, 41.941471, 46.629681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088425, 42.292065, 46.440506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042649, -0.477818, -0.877423,
		-0.995025, -0.058827, 0.080401,
		-0.090033, 0.876487, -0.472932,
		38.061417, 42.555012, 46.298626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828491, 41.710152, 46.026756>,  <38.124439, 41.941471, 46.629681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828491, 41.710152, 46.026756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.902775, 42.097366, 45.959320>,  <37.947346, 42.329693, 45.918858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.902775, 42.097366, 45.959320>,  <37.828491, 41.710152, 46.026756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902775, 42.097366, 45.959320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215653, -0.127237, -0.968145,
		-0.958648, 0.216149, 0.185130,
		0.185708, 0.968034, -0.168589,
		37.958488, 42.387775, 45.908745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298325, 41.946609, 45.547031>,  <37.828491, 41.710152, 46.026756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298325, 41.946609, 45.547031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.644917, 42.144218, 45.518314>,  <37.852871, 42.262783, 45.501083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.644917, 42.144218, 45.518314>,  <37.298325, 41.946609, 45.547031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644917, 42.144218, 45.518314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010822, -0.162371, -0.986671,
		-0.499096, 0.854153, -0.146037,
		0.866480, 0.494023, -0.071795,
		37.904861, 42.292427, 45.496777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322746, 42.337692, 44.964008>,  <37.298325, 41.946609, 45.547031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.322746, 42.337692, 44.964008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.705444, 42.268036, 45.057224>,  <37.935062, 42.226242, 45.113155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.705444, 42.268036, 45.057224>,  <37.322746, 42.337692, 44.964008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705444, 42.268036, 45.057224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217541, -0.103604, -0.970537,
		0.193152, 0.979256, -0.061241,
		0.956749, -0.174139, 0.233039,
		37.992470, 42.215794, 45.127136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726070, 42.484123, 44.301960>,  <37.322746, 42.337692, 44.964008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726070, 42.484123, 44.301960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.006687, 42.293304, 44.513721>,  <38.175056, 42.178814, 44.640778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.006687, 42.293304, 44.513721>,  <37.726070, 42.484123, 44.301960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006687, 42.293304, 44.513721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324640, -0.447386, -0.833340,
		0.634389, 0.756487, -0.158991,
		0.701541, -0.477046, 0.529403,
		38.217148, 42.150192, 44.672543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380280, 42.618000, 44.045403>,  <37.726070, 42.484123, 44.301960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380280, 42.618000, 44.045403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.413876, 42.260624, 44.221905>,  <38.434032, 42.046196, 44.327805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.413876, 42.260624, 44.221905>,  <38.380280, 42.618000, 44.045403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413876, 42.260624, 44.221905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271785, -0.405490, -0.872760,
		0.958686, 0.193231, 0.208767,
		0.083992, -0.893442, 0.441255,
		38.439072, 41.992592, 44.354282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942860, 42.336319, 43.660622>,  <38.380280, 42.618000, 44.045403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942860, 42.336319, 43.660622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.757168, 42.031189, 43.840660>,  <38.645752, 41.848110, 43.948685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.757168, 42.031189, 43.840660>,  <38.942860, 42.336319, 43.660622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.757168, 42.031189, 43.840660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067672, -0.537237, -0.840712,
		0.883125, -0.359827, 0.301024,
		-0.464232, -0.762824, 0.450097,
		38.617897, 41.802341, 43.975689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443459, 41.708450, 43.497337>,  <38.942860, 42.336319, 43.660622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443459, 41.708450, 43.497337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070595, 41.593552, 43.585491>,  <38.846878, 41.524612, 43.638386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070595, 41.593552, 43.585491>,  <39.443459, 41.708450, 43.497337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070595, 41.593552, 43.585491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040947, -0.688455, -0.724123,
		0.359728, -0.665973, 0.653511,
		-0.932158, -0.287246, 0.220386,
		38.790947, 41.507378, 43.651608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459370, 40.972908, 43.495377>,  <39.443459, 41.708450, 43.497337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.459370, 40.972908, 43.495377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070488, 41.055424, 43.451088>,  <38.837158, 41.104935, 43.424515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070488, 41.055424, 43.451088>,  <39.459370, 40.972908, 43.495377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070488, 41.055424, 43.451088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039956, -0.612167, -0.789718,
		-0.230690, -0.763345, 0.603395,
		-0.972207, 0.206289, -0.110721,
		38.778828, 41.117310, 43.417873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152859, 40.305038, 43.366688>,  <39.459370, 40.972908, 43.495377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152859, 40.305038, 43.366688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879723, 40.575581, 43.256214>,  <38.715839, 40.737904, 43.189930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879723, 40.575581, 43.256214>,  <39.152859, 40.305038, 43.366688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879723, 40.575581, 43.256214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127118, -0.482267, -0.866752,
		-0.719424, -0.556745, 0.415288,
		-0.682840, 0.676353, -0.276183,
		38.674870, 40.778488, 43.173359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700550, 39.880013, 43.041340>,  <39.152859, 40.305038, 43.366688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700550, 39.880013, 43.041340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.604019, 40.243725, 42.905708>,  <38.546101, 40.461952, 42.824329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.604019, 40.243725, 42.905708>,  <38.700550, 39.880013, 43.041340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604019, 40.243725, 42.905708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106711, -0.372147, -0.922019,
		-0.964560, -0.186321, 0.186838,
		-0.241322, 0.909281, -0.339076,
		38.531624, 40.516510, 42.803986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035118, 39.787361, 42.765575>,  <38.700550, 39.880013, 43.041340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035118, 39.787361, 42.765575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237812, 40.080292, 42.583622>,  <38.359428, 40.256050, 42.474449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237812, 40.080292, 42.583622>,  <38.035118, 39.787361, 42.765575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237812, 40.080292, 42.583622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175484, -0.428976, -0.886107,
		-0.844053, 0.528845, -0.088865,
		0.506734, 0.732327, -0.454882,
		38.389832, 40.299992, 42.447159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689732, 39.805309, 42.124172>,  <38.035118, 39.787361, 42.765575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.689732, 39.805309, 42.124172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.030193, 40.007851, 42.068836>,  <38.234470, 40.129375, 42.035633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.030193, 40.007851, 42.068836>,  <37.689732, 39.805309, 42.124172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030193, 40.007851, 42.068836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121060, -0.445807, -0.886905,
		-0.510764, 0.738146, -0.440750,
		0.851155, 0.506356, -0.138342,
		38.285542, 40.159756, 42.027332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574974, 40.124561, 41.556122>,  <37.689732, 39.805309, 42.124172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574974, 40.124561, 41.556122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.972980, 40.124691, 41.595993>,  <38.211784, 40.124771, 41.619915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.972980, 40.124691, 41.595993>,  <37.574974, 40.124561, 41.556122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972980, 40.124691, 41.595993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098513, -0.155786, -0.982866,
		0.015206, 0.987791, -0.155042,
		0.995020, 0.000328, 0.099679,
		38.271488, 40.124790, 41.625896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619217, 40.346394, 40.914173>,  <37.574974, 40.124561, 41.556122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619217, 40.346394, 40.914173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.960686, 40.198700, 41.061096>,  <38.165565, 40.110085, 41.149250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.960686, 40.198700, 41.061096>,  <37.619217, 40.346394, 40.914173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960686, 40.198700, 41.061096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175841, -0.459512, -0.870591,
		0.490232, 0.807785, -0.327346,
		0.853670, -0.369231, 0.367310,
		38.216785, 40.087933, 41.171288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031567, 40.429646, 40.298126>,  <37.619217, 40.346394, 40.914173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031567, 40.429646, 40.298126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.209450, 40.166237, 40.540974>,  <38.316177, 40.008190, 40.686680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.209450, 40.166237, 40.540974>,  <38.031567, 40.429646, 40.298126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209450, 40.166237, 40.540974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403685, -0.457717, -0.792170,
		0.799547, 0.597364, 0.062287,
		0.444704, -0.658521, 0.607114,
		38.342861, 39.968681, 40.723106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622917, 40.344112, 40.029823>,  <38.031567, 40.429646, 40.298126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622917, 40.344112, 40.029823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.601246, 40.013855, 40.254456>,  <38.588245, 39.815701, 40.389236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.601246, 40.013855, 40.254456>,  <38.622917, 40.344112, 40.029823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601246, 40.013855, 40.254456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362994, -0.540216, -0.759212,
		0.930215, 0.162721, 0.328970,
		-0.054175, -0.825644, 0.561584,
		38.584995, 39.766163, 40.422932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350754, 40.037617, 40.159679>,  <38.622917, 40.344112, 40.029823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.350754, 40.037617, 40.159679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.088066, 39.737679, 40.191807>,  <38.930454, 39.557716, 40.211082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.088066, 39.737679, 40.191807>,  <39.350754, 40.037617, 40.159679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088066, 39.737679, 40.191807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504855, -0.516260, -0.691807,
		0.560211, -0.413777, 0.717601,
		-0.656723, -0.749843, 0.080317,
		38.891048, 39.512726, 40.215900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698063, 39.425129, 40.351402>,  <39.350754, 40.037617, 40.159679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.698063, 39.425129, 40.351402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.361523, 39.277512, 40.193447>,  <39.159599, 39.188942, 40.098675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.361523, 39.277512, 40.193447>,  <39.698063, 39.425129, 40.351402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361523, 39.277512, 40.193447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535336, -0.468284, -0.702940,
		0.074498, -0.802816, 0.591554,
		-0.841347, -0.369048, -0.394890,
		39.109119, 39.166798, 40.074982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.917767, 38.732704, 40.181274>,  <39.698063, 39.425129, 40.351402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.917767, 38.732704, 40.181274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.561577, 38.758541, 40.001106>,  <39.347862, 38.774044, 39.893005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.561577, 38.758541, 40.001106>,  <39.917767, 38.732704, 40.181274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561577, 38.758541, 40.001106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330079, -0.589669, -0.737115,
		-0.313213, -0.805057, 0.503766,
		-0.890475, 0.064592, -0.450424,
		39.294434, 38.777920, 39.865978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787930, 38.082603, 40.070488>,  <39.917767, 38.732704, 40.181274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.787930, 38.082603, 40.070488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.598782, 38.318977, 39.809048>,  <39.485294, 38.460800, 39.652184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.598782, 38.318977, 39.809048>,  <39.787930, 38.082603, 40.070488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598782, 38.318977, 39.809048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299974, -0.589499, -0.750004,
		-0.828498, -0.550718, 0.101493,
		-0.472871, 0.590932, -0.653600,
		39.456921, 38.496258, 39.612968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403790, 37.661213, 39.569447>,  <39.787930, 38.082603, 40.070488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403790, 37.661213, 39.569447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.434475, 38.020210, 39.395725>,  <39.452888, 38.235607, 39.291492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.434475, 38.020210, 39.395725>,  <39.403790, 37.661213, 39.569447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.434475, 38.020210, 39.395725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249248, -0.439022, -0.863212,
		-0.965396, -0.042026, -0.257380,
		0.076718, 0.897493, -0.434305,
		39.457489, 38.289459, 39.265434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090137, 37.510231, 38.970619>,  <39.403790, 37.661213, 39.569447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090137, 37.510231, 38.970619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.288948, 37.850777, 38.903526>,  <39.408234, 38.055103, 38.863270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.288948, 37.850777, 38.903526>,  <39.090137, 37.510231, 38.970619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288948, 37.850777, 38.903526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017379, -0.203029, -0.979018,
		-0.867559, 0.483687, -0.115708,
		0.497031, 0.851367, -0.167734,
		39.438057, 38.106186, 38.853207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688652, 37.907742, 38.498638>,  <39.090137, 37.510231, 38.970619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688652, 37.907742, 38.498638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.063980, 38.038960, 38.454926>,  <39.289177, 38.117691, 38.428699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.063980, 38.038960, 38.454926>,  <38.688652, 37.907742, 38.498638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063980, 38.038960, 38.454926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097230, -0.052962, -0.993852,
		-0.331817, 0.943176, -0.017800,
		0.938320, 0.328046, -0.109279,
		39.345474, 38.137375, 38.422142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716084, 38.612251, 38.155365>,  <38.688652, 37.907742, 38.498638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716084, 38.612251, 38.155365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.059597, 38.412148, 38.111115>,  <39.265705, 38.292084, 38.084564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.059597, 38.412148, 38.111115>,  <38.716084, 38.612251, 38.155365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059597, 38.412148, 38.111115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227088, -0.178103, -0.957450,
		0.459269, 0.847361, -0.266554,
		0.858780, -0.500258, -0.110628,
		39.317230, 38.262070, 38.077927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955875, 38.872459, 37.544575>,  <38.716084, 38.612251, 38.155365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955875, 38.872459, 37.544575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139687, 38.519642, 37.586216>,  <39.249973, 38.307953, 37.611202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139687, 38.519642, 37.586216>,  <38.955875, 38.872459, 37.544575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139687, 38.519642, 37.586216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095468, -0.165590, -0.981563,
		0.883019, 0.441114, -0.160300,
		0.459525, -0.882042, 0.104107,
		39.277542, 38.255028, 37.617447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307167, 38.816082, 36.914650>,  <38.955875, 38.872459, 37.544575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.307167, 38.816082, 36.914650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.312649, 38.448895, 37.073215>,  <39.315937, 38.228580, 37.168354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.312649, 38.448895, 37.073215>,  <39.307167, 38.816082, 36.914650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312649, 38.448895, 37.073215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017784, -0.396166, -0.918007,
		0.999748, 0.019627, 0.010898,
		0.013700, -0.917969, 0.396416,
		39.316757, 38.173504, 37.192139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596001, 38.496803, 36.387604>,  <39.307167, 38.816082, 36.914650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.596001, 38.496803, 36.387604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435104, 38.206730, 36.611145>,  <39.338566, 38.032684, 36.745270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435104, 38.206730, 36.611145>,  <39.596001, 38.496803, 36.387604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435104, 38.206730, 36.611145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202877, -0.524633, -0.826802,
		0.892774, -0.445949, 0.063904,
		-0.402237, -0.725183, 0.558852,
		39.314434, 37.989174, 36.778801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.886551, 37.909317, 36.126362>,  <39.596001, 38.496803, 36.387604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.886551, 37.909317, 36.126362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.543690, 37.786777, 36.291981>,  <39.337971, 37.713253, 36.391354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.543690, 37.786777, 36.291981>,  <39.886551, 37.909317, 36.126362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543690, 37.786777, 36.291981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292816, -0.371505, -0.881046,
		0.423727, -0.876434, 0.228735,
		-0.857155, -0.306346, 0.414051,
		39.286545, 37.694874, 36.416195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776669, 37.250748, 35.845772>,  <39.886551, 37.909317, 36.126362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776669, 37.250748, 35.845772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.415356, 37.382618, 35.955608>,  <39.198566, 37.461739, 36.021511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.415356, 37.382618, 35.955608>,  <39.776669, 37.250748, 35.845772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415356, 37.382618, 35.955608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392364, -0.375789, -0.839543,
		-0.173585, -0.866083, 0.468795,
		-0.903282, 0.329670, 0.274589,
		39.144371, 37.481518, 36.037983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.266895, 36.879051, 36.285061>,  <39.776669, 37.250748, 35.845772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.266895, 36.879051, 36.285061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.654388, 36.842285, 36.377247>,  <40.886883, 36.820225, 36.432556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.654388, 36.842285, 36.377247>,  <40.266895, 36.879051, 36.285061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.654388, 36.842285, 36.377247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147756, -0.959898, 0.238251,
		0.199320, -0.264853, -0.943464,
		0.968731, -0.091915, 0.230461,
		40.945007, 36.814713, 36.446384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563213, 36.305355, 35.954193>,  <40.266895, 36.879051, 36.285061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.563213, 36.305355, 35.954193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.774715, 36.394657, 36.281750>,  <40.901615, 36.448238, 36.478283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.774715, 36.394657, 36.281750>,  <40.563213, 36.305355, 35.954193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.774715, 36.394657, 36.281750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242103, -0.885035, 0.397617,
		0.813516, -0.408495, -0.413912,
		0.528751, 0.223258, 0.818888,
		40.933342, 36.461636, 36.527416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.107826, 36.499504, 35.441704>,  <40.563213, 36.305355, 35.954193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.107826, 36.499504, 35.441704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.249115, 36.816769, 35.243256>,  <41.333889, 37.007126, 35.124187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.249115, 36.816769, 35.243256>,  <41.107826, 36.499504, 35.441704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.249115, 36.816769, 35.243256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921472, -0.203340, 0.330973,
		0.161632, -0.574069, -0.802695,
		0.353221, 0.793157, -0.496123,
		41.355080, 37.054714, 35.094418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.713058, 36.279640, 35.048344>,  <41.107826, 36.499504, 35.441704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.713058, 36.279640, 35.048344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.740505, 36.677593, 35.078007>,  <41.756973, 36.916367, 35.095806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.740505, 36.677593, 35.078007>,  <41.713058, 36.279640, 35.048344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.740505, 36.677593, 35.078007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953664, -0.087238, 0.287949,
		0.292945, 0.050962, -0.954770,
		0.068617, 0.994883, 0.074156,
		41.761089, 36.976059, 35.100254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.339417, 36.340183, 34.604683>,  <41.713058, 36.279640, 35.048344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.339417, 36.340183, 34.604683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.279655, 36.625622, 34.878460>,  <42.243797, 36.796886, 35.042725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.279655, 36.625622, 34.878460>,  <42.339417, 36.340183, 34.604683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.279655, 36.625622, 34.878460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963831, -0.049400, 0.261896,
		0.220700, 0.698811, -0.680408,
		-0.149403, 0.713598, 0.684438,
		42.234833, 36.839703, 35.083790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.969528, 36.821594, 34.581913>,  <42.339417, 36.340183, 34.604683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.969528, 36.821594, 34.581913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.794662, 36.804489, 34.941257>,  <42.689743, 36.794228, 35.156864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.794662, 36.804489, 34.941257>,  <42.969528, 36.821594, 34.581913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.794662, 36.804489, 34.941257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892435, -0.144542, 0.427396,
		0.111575, 0.988574, 0.101352,
		-0.437162, -0.042764, 0.898365,
		42.663513, 36.791660, 35.210766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.765263, 37.518692, 34.749905>,  <42.969528, 36.821594, 34.581913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.765263, 37.518692, 34.749905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.072239, 37.435196, 34.507431>,  <43.256424, 37.385098, 34.361946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.072239, 37.435196, 34.507431>,  <42.765263, 37.518692, 34.749905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.072239, 37.435196, 34.507431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605460, -0.546908, -0.578195,
		-0.210831, 0.810751, -0.546107,
		0.767443, -0.208744, -0.606183,
		43.302471, 37.372574, 34.325577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.525261, 37.212906, 34.144234>,  <42.765263, 37.518692, 34.749905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.525261, 37.212906, 34.144234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.884014, 37.078079, 34.029697>,  <43.099266, 36.997185, 33.960976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.884014, 37.078079, 34.029697>,  <42.525261, 37.212906, 34.144234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.884014, 37.078079, 34.029697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440058, -0.615397, -0.653939,
		0.044208, 0.712511, -0.700267,
		0.896881, -0.337067, -0.286341,
		43.153080, 36.976959, 33.943794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.362492, 36.815014, 33.672142>,  <42.525261, 37.212906, 34.144234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.362492, 36.815014, 33.672142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.758942, 36.774796, 33.637360>,  <42.996811, 36.750664, 33.616489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.758942, 36.774796, 33.637360>,  <42.362492, 36.815014, 33.672142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.758942, 36.774796, 33.637360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128588, -0.559279, -0.818946,
		0.033712, 0.822859, -0.567244,
		0.991125, -0.100549, -0.086956,
		43.056278, 36.744629, 33.611275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.513863, 36.957100, 32.962540>,  <42.362492, 36.815014, 33.672142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.513863, 36.957100, 32.962540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.819584, 36.740124, 33.102032>,  <43.003017, 36.609940, 33.185726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.819584, 36.740124, 33.102032>,  <42.513863, 36.957100, 32.962540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.819584, 36.740124, 33.102032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014485, -0.526199, -0.850238,
		0.644699, 0.654887, -0.394316,
		0.764299, -0.542436, 0.348726,
		43.048874, 36.577393, 33.206650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.963642, 36.915798, 32.418255>,  <42.513863, 36.957100, 32.962540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.963642, 36.915798, 32.418255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.065567, 36.611900, 32.657539>,  <43.126724, 36.429562, 32.801109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.065567, 36.611900, 32.657539>,  <42.963642, 36.915798, 32.418255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.065567, 36.611900, 32.657539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114691, -0.590524, -0.798829,
		0.960164, 0.272164, -0.063339,
		0.254815, -0.759742, 0.598214,
		43.142010, 36.383976, 32.837002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.580006, 36.666847, 32.169563>,  <42.963642, 36.915798, 32.418255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.580006, 36.666847, 32.169563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.448463, 36.358967, 32.388439>,  <43.369537, 36.174240, 32.519764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.448463, 36.358967, 32.388439>,  <43.580006, 36.666847, 32.169563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.448463, 36.358967, 32.388439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218986, -0.625772, -0.748635,
		0.918640, -0.126367, 0.374343,
		-0.328856, -0.769702, 0.547187,
		43.349808, 36.128056, 32.552597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.961781, 36.018532, 31.935869>,  <43.580006, 36.666847, 32.169563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.961781, 36.018532, 31.935869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.632671, 35.874264, 32.111580>,  <43.435207, 35.787701, 32.217007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.632671, 35.874264, 32.111580>,  <43.961781, 36.018532, 31.935869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.632671, 35.874264, 32.111580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020120, -0.790864, -0.611662,
		0.568020, -0.494418, 0.657955,
		-0.822769, -0.360674, 0.439279,
		43.385841, 35.766060, 32.243362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.093830, 35.275158, 32.007462>,  <43.961781, 36.018532, 31.935869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.093830, 35.275158, 32.007462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.696884, 35.317398, 32.032951>,  <43.458717, 35.342743, 32.048244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.696884, 35.317398, 32.032951>,  <44.093830, 35.275158, 32.007462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.696884, 35.317398, 32.032951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122970, -0.807312, -0.577170,
		-0.009506, -0.580599, 0.814134,
		-0.992365, 0.105601, 0.063721,
		43.399174, 35.349079, 32.052067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.852413, 34.587044, 31.965267>,  <44.093830, 35.275158, 32.007462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.852413, 34.587044, 31.965267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.523113, 34.798481, 31.882467>,  <43.325535, 34.925343, 31.832787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.523113, 34.798481, 31.882467>,  <43.852413, 34.587044, 31.965267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.523113, 34.798481, 31.882467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257352, -0.672540, -0.693873,
		-0.505991, -0.517959, 0.689704,
		-0.823252, 0.528590, -0.207001,
		43.276138, 34.957058, 31.820366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.294540, 34.132545, 31.889742>,  <43.852413, 34.587044, 31.965267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.294540, 34.132545, 31.889742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.154701, 34.451588, 31.693127>,  <43.070797, 34.643013, 31.575157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.154701, 34.451588, 31.693127>,  <43.294540, 34.132545, 31.889742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.154701, 34.451588, 31.693127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162852, -0.568386, -0.806484,
		-0.922639, -0.201896, 0.328597,
		-0.349596, 0.797606, -0.491536,
		43.049824, 34.690868, 31.545666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.759453, 33.821381, 31.515316>,  <43.294540, 34.132545, 31.889742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.759453, 33.821381, 31.515316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.852070, 34.162281, 31.327673>,  <42.907639, 34.366821, 31.215088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.852070, 34.162281, 31.327673>,  <42.759453, 33.821381, 31.515316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.852070, 34.162281, 31.327673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084401, -0.462793, -0.882439,
		-0.969157, 0.243914, -0.035225,
		0.231541, 0.852249, -0.469106,
		42.921532, 34.417957, 31.186941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.329132, 33.838951, 30.957487>,  <42.759453, 33.821381, 31.515316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.329132, 33.838951, 30.957487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.548744, 34.146206, 30.825714>,  <42.680511, 34.330559, 30.746651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.548744, 34.146206, 30.825714>,  <42.329132, 33.838951, 30.957487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.548744, 34.146206, 30.825714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065889, -0.353146, -0.933245,
		-0.833202, 0.534085, -0.143275,
		0.549029, 0.768141, -0.329432,
		42.713451, 34.376648, 30.726885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.952648, 34.192532, 30.509005>,  <42.329132, 33.838951, 30.957487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.952648, 34.192532, 30.509005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.340107, 34.239780, 30.421577>,  <42.572582, 34.268131, 30.369122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.340107, 34.239780, 30.421577>,  <41.952648, 34.192532, 30.509005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.340107, 34.239780, 30.421577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131189, -0.503918, -0.853731,
		-0.210986, 0.855636, -0.472622,
		0.968646, 0.118123, -0.218570,
		42.630699, 34.275219, 30.356007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.961491, 34.346802, 29.723911>,  <41.952648, 34.192532, 30.509005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.961491, 34.346802, 29.723911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.339951, 34.251183, 29.811234>,  <42.567028, 34.193810, 29.863626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.339951, 34.251183, 29.811234>,  <41.961491, 34.346802, 29.723911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.339951, 34.251183, 29.811234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079309, -0.482638, -0.872222,
		0.313866, 0.842565, -0.437689,
		0.946149, -0.239048, 0.218306,
		42.623795, 34.179466, 29.876726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.388351, 34.608585, 29.148203>,  <41.961491, 34.346802, 29.723911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.388351, 34.608585, 29.148203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.573654, 34.303749, 29.329138>,  <42.684837, 34.120850, 29.437698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.573654, 34.303749, 29.329138>,  <42.388351, 34.608585, 29.148203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.573654, 34.303749, 29.329138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010578, -0.505621, -0.862691,
		0.886159, 0.404436, -0.226173,
		0.463261, -0.762089, 0.452339,
		42.712631, 34.075123, 29.464840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.737736, 34.309528, 28.627737>,  <42.388351, 34.608585, 29.148203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.737736, 34.309528, 28.627737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.793777, 34.028904, 28.907217>,  <42.827404, 33.860527, 29.074905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.793777, 34.028904, 28.907217>,  <42.737736, 34.309528, 28.627737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.793777, 34.028904, 28.907217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395105, -0.607429, -0.689146,
		0.907889, 0.372613, 0.192086,
		0.140106, -0.701563, 0.698699,
		42.835808, 33.818436, 29.116827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.504684, 34.148220, 28.650362>,  <42.737736, 34.309528, 28.627737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.504684, 34.148220, 28.650362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.297150, 33.834625, 28.786695>,  <43.172630, 33.646469, 28.868496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.297150, 33.834625, 28.786695>,  <43.504684, 34.148220, 28.650362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.297150, 33.834625, 28.786695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465425, -0.593478, -0.656630,
		0.717068, -0.182052, 0.672808,
		-0.518837, -0.783991, 0.340832,
		43.141499, 33.599426, 28.888945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.927151, 33.571896, 28.664486>,  <43.504684, 34.148220, 28.650362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.927151, 33.571896, 28.664486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.562225, 33.409161, 28.645882>,  <43.343269, 33.311520, 28.634720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.562225, 33.409161, 28.645882>,  <43.927151, 33.571896, 28.664486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.562225, 33.409161, 28.645882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322896, -0.644891, -0.692714,
		0.251829, -0.646992, 0.719711,
		-0.912316, -0.406837, -0.046509,
		43.288532, 33.287109, 28.631929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.015636, 32.917816, 28.544050>,  <43.927151, 33.571896, 28.664486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.015636, 32.917816, 28.544050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.623264, 32.926910, 28.466845>,  <43.387840, 32.932369, 28.420521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.623264, 32.926910, 28.466845>,  <44.015636, 32.917816, 28.544050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.623264, 32.926910, 28.466845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132859, -0.646373, -0.751365,
		-0.141842, -0.762682, 0.631028,
		-0.980933, 0.022737, -0.193013,
		43.328983, 32.933731, 28.408941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.771992, 32.210369, 28.489275>,  <44.015636, 32.917816, 28.544050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.771992, 32.210369, 28.489275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.493484, 32.423138, 28.296497>,  <43.326382, 32.550800, 28.180832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.493484, 32.423138, 28.296497>,  <43.771992, 32.210369, 28.489275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.493484, 32.423138, 28.296497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099498, -0.593425, -0.798715,
		-0.710854, -0.604071, 0.360257,
		-0.696266, 0.531925, -0.481943,
		43.284603, 32.582714, 28.151915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.287571, 31.671280, 28.191692>,  <43.771992, 32.210369, 28.489275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.287571, 31.671280, 28.191692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.260715, 32.024368, 28.005663>,  <43.244602, 32.236221, 27.894045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.260715, 32.024368, 28.005663>,  <43.287571, 31.671280, 28.191692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.260715, 32.024368, 28.005663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040519, -0.463328, -0.885260,
		-0.996921, -0.078277, -0.004662,
		-0.067135, 0.882723, -0.465073,
		43.240574, 32.289185, 27.866140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.088257, 31.468494, 27.552706>,  <43.287571, 31.671280, 28.191692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.088257, 31.468494, 27.552706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.182697, 31.850557, 27.481228>,  <43.239361, 32.079796, 27.438341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.182697, 31.850557, 27.481228>,  <43.088257, 31.468494, 27.552706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.182697, 31.850557, 27.481228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148281, -0.217156, -0.964809,
		-0.960348, 0.201298, -0.192903,
		0.236104, 0.955156, -0.178697,
		43.253529, 32.137104, 27.427618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.683342, 31.690680, 26.964115>,  <43.088257, 31.468494, 27.552706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.683342, 31.690680, 26.964115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.004425, 31.925892, 27.003872>,  <43.197075, 32.067020, 27.027725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.004425, 31.925892, 27.003872>,  <42.683342, 31.690680, 26.964115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.004425, 31.925892, 27.003872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336590, -0.309134, -0.889462,
		-0.492306, 0.747433, -0.446070,
		0.802709, 0.588031, 0.099390,
		43.245239, 32.102303, 27.033689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.795242, 32.211575, 26.419186>,  <42.683342, 31.690680, 26.964115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.795242, 32.211575, 26.419186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.103497, 32.025341, 26.593245>,  <43.288448, 31.913601, 26.697680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.103497, 32.025341, 26.593245>,  <42.795242, 32.211575, 26.419186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.103497, 32.025341, 26.593245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151915, -0.528922, -0.834963,
		0.618905, 0.709557, -0.336876,
		0.770635, -0.465586, 0.435145,
		43.334686, 31.885666, 26.723787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.491058, 32.441654, 26.093334>,  <42.795242, 32.211575, 26.419186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.491058, 32.441654, 26.093334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.382492, 32.079666, 26.224401>,  <43.317352, 31.862474, 26.303041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.382492, 32.079666, 26.224401>,  <43.491058, 32.441654, 26.093334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.382492, 32.079666, 26.224401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119707, -0.306065, -0.944454,
		0.954989, -0.295562, -0.025261,
		-0.271414, -0.904968, 0.327670,
		43.301067, 31.808176, 26.322702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.557007, 31.582064, 25.747536>,  <43.491058, 32.441654, 26.093334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.557007, 31.582064, 25.747536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.627449, 31.236141, 25.935621>,  <43.669716, 31.028587, 26.048471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.627449, 31.236141, 25.935621>,  <43.557007, 31.582064, 25.747536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.627449, 31.236141, 25.935621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723059, -0.210490, -0.657936,
		0.667961, 0.455860, 0.588235,
		0.176109, -0.864804, 0.470212,
		43.680283, 30.976700, 26.076685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.167583, 31.427956, 25.715139>,  <43.557007, 31.582064, 25.747536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.167583, 31.427956, 25.715139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.053253, 31.045368, 25.738693>,  <43.984653, 30.815815, 25.752825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.053253, 31.045368, 25.738693>,  <44.167583, 31.427956, 25.715139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.053253, 31.045368, 25.738693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551281, -0.214383, -0.806306,
		0.783831, -0.198004, 0.588560,
		-0.285829, -0.956470, 0.058884,
		43.967503, 30.758427, 25.756359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.769356, 31.131960, 25.442030>,  <44.167583, 31.427956, 25.715139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.769356, 31.131960, 25.442030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.815437, 31.399792, 25.148531>,  <44.843086, 31.560492, 24.972431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.815437, 31.399792, 25.148531>,  <44.769356, 31.131960, 25.442030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.815437, 31.399792, 25.148531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585478, 0.550954, 0.594697,
		0.802461, -0.498107, -0.328552,
		0.115205, 0.669581, -0.733750,
		44.849998, 31.600666, 24.928406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.917507, 30.526484, 25.917850>,  <44.769356, 31.131960, 25.442030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.917507, 30.526484, 25.917850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.283489, 30.552395, 26.077183>,  <45.503078, 30.567942, 26.172783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.283489, 30.552395, 26.077183>,  <44.917507, 30.526484, 25.917850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.283489, 30.552395, 26.077183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180988, 0.948072, 0.261542,
		-0.360704, -0.311391, 0.879164,
		0.914952, 0.064779, 0.398331,
		45.557976, 30.571829, 26.196682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.835064, 30.738363, 26.606218>,  <44.917507, 30.526484, 25.917850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.835064, 30.738363, 26.606218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.207939, 30.831055, 26.494991>,  <45.431664, 30.886669, 26.428255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.207939, 30.831055, 26.494991>,  <44.835064, 30.738363, 26.606218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.207939, 30.831055, 26.494991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067107, 0.865538, 0.496328,
		0.355689, -0.444013, 0.822398,
		0.932192, 0.231727, -0.278065,
		45.487598, 30.900574, 26.411572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.914948, 31.312973, 26.922943>,  <44.835064, 30.738363, 26.606218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.914948, 31.312973, 26.922943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.279408, 31.293417, 26.759275>,  <45.498085, 31.281683, 26.661076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.279408, 31.293417, 26.759275>,  <44.914948, 31.312973, 26.922943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.279408, 31.293417, 26.759275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243603, 0.864762, 0.439141,
		0.332363, -0.499797, 0.799836,
		0.911149, -0.048889, -0.409167,
		45.552753, 31.278749, 26.636526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.437714, 31.405172, 27.451481>,  <44.914948, 31.312973, 26.922943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.437714, 31.405172, 27.451481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.596542, 31.514551, 27.101038>,  <45.691837, 31.580177, 26.890772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.596542, 31.514551, 27.101038>,  <45.437714, 31.405172, 27.451481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.596542, 31.514551, 27.101038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460013, 0.766726, 0.447794,
		0.794182, -0.580825, 0.178654,
		0.397068, 0.273447, -0.876107,
		45.715664, 31.596584, 26.838205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.237335, 31.441236, 27.503073>,  <45.437714, 31.405172, 27.451481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.237335, 31.441236, 27.503073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.101898, 31.692675, 27.223009>,  <46.020638, 31.843538, 27.054972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.101898, 31.692675, 27.223009>,  <46.237335, 31.441236, 27.503073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.101898, 31.692675, 27.223009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448339, 0.761990, 0.467293,
		0.827253, -0.155686, -0.539828,
		-0.338593, 0.628596, -0.700159,
		46.000320, 31.881254, 27.012962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.924953, 31.812515, 27.315681>,  <46.237335, 31.441236, 27.503073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.924953, 31.812515, 27.315681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.580166, 32.012016, 27.279339>,  <46.373295, 32.131718, 27.257534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.580166, 32.012016, 27.279339>,  <46.924953, 31.812515, 27.315681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.580166, 32.012016, 27.279339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321714, 0.676651, 0.662301,
		0.391802, 0.541654, -0.743709,
		-0.861969, 0.498753, -0.090856,
		46.321575, 32.161644, 27.252083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.159374, 32.450665, 27.232994>,  <46.924953, 31.812515, 27.315681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.159374, 32.450665, 27.232994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.778751, 32.477890, 27.352936>,  <46.550377, 32.494225, 27.424900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.778751, 32.477890, 27.352936>,  <47.159374, 32.450665, 27.232994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.778751, 32.477890, 27.352936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276905, 0.613628, 0.739449,
		-0.133672, 0.786657, -0.602746,
		-0.951554, 0.068060, 0.299854,
		46.493286, 32.498306, 27.442892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.132984, 33.157810, 27.309467>,  <47.159374, 32.450665, 27.232994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.132984, 33.157810, 27.309467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.843018, 32.987663, 27.526190>,  <46.669037, 32.885574, 27.656223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.843018, 32.987663, 27.526190>,  <47.132984, 33.157810, 27.309467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.843018, 32.987663, 27.526190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071194, 0.736081, 0.673139,
		-0.685144, 0.526546, -0.503316,
		-0.724920, -0.425364, 0.541808,
		46.625542, 32.860054, 27.688732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.675308, 33.621029, 27.589457>,  <47.132984, 33.157810, 27.309467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.675308, 33.621029, 27.589457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.579651, 33.317860, 27.832228>,  <46.522255, 33.135960, 27.977890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.579651, 33.317860, 27.832228>,  <46.675308, 33.621029, 27.589457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.579651, 33.317860, 27.832228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060562, 0.635490, 0.769730,
		-0.969093, 0.147320, -0.197876,
		-0.239145, -0.757924, 0.606927,
		46.507908, 33.090481, 28.014305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.250137, 33.939518, 28.020086>,  <46.675308, 33.621029, 27.589457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.250137, 33.939518, 28.020086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.319946, 33.595711, 28.212238>,  <46.361832, 33.389427, 28.327530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.319946, 33.595711, 28.212238>,  <46.250137, 33.939518, 28.020086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.319946, 33.595711, 28.212238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263469, 0.429316, 0.863870,
		-0.948749, -0.277331, -0.151531,
		0.174524, -0.859520, 0.480381,
		46.372303, 33.337856, 28.356352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.652103, 33.841442, 28.396126>,  <46.250137, 33.939518, 28.020086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.652103, 33.841442, 28.396126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.952995, 33.627773, 28.550430>,  <46.133530, 33.499573, 28.643013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.952995, 33.627773, 28.550430>,  <45.652103, 33.841442, 28.396126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.952995, 33.627773, 28.550430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294803, 0.250745, 0.922073,
		-0.589276, -0.807332, 0.031141,
		0.752227, -0.534175, 0.385762,
		46.178665, 33.467522, 28.666159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.300255, 33.436333, 28.897852>,  <45.652103, 33.841442, 28.396126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.300255, 33.436333, 28.897852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.680111, 33.419861, 29.022108>,  <45.908024, 33.409977, 29.096661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.680111, 33.419861, 29.022108>,  <45.300255, 33.436333, 28.897852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.680111, 33.419861, 29.022108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280067, 0.333109, 0.900333,
		-0.140552, -0.941988, 0.304800,
		0.949635, -0.041179, 0.310639,
		45.965000, 33.407509, 29.115299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.356396, 33.130329, 29.641743>,  <45.300255, 33.436333, 28.897852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.356396, 33.130329, 29.641743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.676231, 33.358940, 29.567970>,  <45.868134, 33.496109, 29.523706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.676231, 33.358940, 29.567970>,  <45.356396, 33.130329, 29.641743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.676231, 33.358940, 29.567970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110057, 0.441351, 0.890560,
		0.590383, -0.691780, 0.415799,
		0.799585, 0.571532, -0.184431,
		45.916107, 33.530399, 29.512642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.747051, 33.063984, 30.253225>,  <45.356396, 33.130329, 29.641743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.747051, 33.063984, 30.253225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.867279, 33.391727, 30.057961>,  <45.939415, 33.588375, 29.940802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.867279, 33.391727, 30.057961>,  <45.747051, 33.063984, 30.253225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.867279, 33.391727, 30.057961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154207, 0.463348, 0.872656,
		0.941211, -0.337573, 0.012917,
		0.300570, 0.819362, -0.488164,
		45.957451, 33.637535, 29.911510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.222103, 33.288376, 30.724628>,  <45.747051, 33.063984, 30.253225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.222103, 33.288376, 30.724628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.116161, 33.588276, 30.482067>,  <46.052597, 33.768215, 30.336531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.116161, 33.588276, 30.482067>,  <46.222103, 33.288376, 30.724628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.116161, 33.588276, 30.482067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062542, 0.640896, 0.765076,
		0.962257, 0.164711, -0.216637,
		-0.264859, 0.749748, -0.606405,
		46.036705, 33.813202, 30.300146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.647652, 33.781406, 30.927486>,  <46.222103, 33.288376, 30.724628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.647652, 33.781406, 30.927486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.359280, 33.984818, 30.739164>,  <46.186256, 34.106865, 30.626171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.359280, 33.984818, 30.739164>,  <46.647652, 33.781406, 30.927486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.359280, 33.984818, 30.739164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018060, 0.665350, 0.746313,
		0.692770, 0.546544, -0.470489,
		-0.720933, 0.508526, -0.470805,
		46.143002, 34.137375, 30.597923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.771095, 34.448994, 31.046043>,  <46.647652, 33.781406, 30.927486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.771095, 34.448994, 31.046043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.382294, 34.459244, 30.952612>,  <46.149014, 34.465393, 30.896553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.382294, 34.459244, 30.952612>,  <46.771095, 34.448994, 31.046043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.382294, 34.459244, 30.952612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146865, 0.709709, 0.689016,
		0.183428, 0.704028, -0.686074,
		-0.972000, 0.025625, -0.233578,
		46.090694, 34.466930, 30.882538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.631416, 35.123413, 31.160704>,  <46.771095, 34.448994, 31.046043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.631416, 35.123413, 31.160704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.277763, 34.936577, 31.165230>,  <46.065571, 34.824474, 31.167946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.277763, 34.936577, 31.165230>,  <46.631416, 35.123413, 31.160704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.277763, 34.936577, 31.165230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292456, 0.572135, 0.766245,
		-0.364383, 0.674154, -0.642449,
		-0.884135, -0.467095, 0.011316,
		46.012524, 34.796448, 31.168625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.282310, 35.719807, 31.445005>,  <46.631416, 35.123413, 31.160704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.282310, 35.719807, 31.445005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.012821, 35.425434, 31.471867>,  <45.851128, 35.248810, 31.487984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.012821, 35.425434, 31.471867>,  <46.282310, 35.719807, 31.445005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.012821, 35.425434, 31.471867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443419, 0.475280, 0.759927,
		-0.591168, 0.482202, -0.646530,
		-0.673721, -0.735928, 0.067153,
		45.810703, 35.204655, 31.492012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.645271, 36.032650, 31.399097>,  <46.282310, 35.719807, 31.445005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.645271, 36.032650, 31.399097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.607059, 35.694889, 31.609945>,  <45.584133, 35.492233, 31.736454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.607059, 35.694889, 31.609945>,  <45.645271, 36.032650, 31.399097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.607059, 35.694889, 31.609945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016578, 0.528116, 0.849010,
		-0.995289, 0.089844, -0.036452,
		-0.095529, -0.844406, 0.527117,
		45.578400, 35.441566, 31.768080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.180397, 36.158131, 31.941212>,  <45.645271, 36.032650, 31.399097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.180397, 36.158131, 31.941212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.384861, 35.837780, 32.065987>,  <45.507542, 35.645569, 32.140854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.384861, 35.837780, 32.065987>,  <45.180397, 36.158131, 31.941212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.384861, 35.837780, 32.065987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091583, 0.310118, 0.946276,
		-0.854590, -0.512270, 0.085174,
		0.511163, -0.800878, 0.311939,
		45.538212, 35.597515, 32.159569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.690769, 35.892490, 32.433834>,  <45.180397, 36.158131, 31.941212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.690769, 35.892490, 32.433834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.058380, 35.750595, 32.502590>,  <45.278946, 35.665459, 32.543842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.058380, 35.750595, 32.502590>,  <44.690769, 35.892490, 32.433834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.058380, 35.750595, 32.502590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142353, 0.107952, 0.983912,
		-0.367588, -0.928712, 0.048713,
		0.919029, -0.354740, 0.171887,
		45.334087, 35.644173, 32.554157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.697155, 35.417976, 33.107086>,  <44.690769, 35.892490, 32.433834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.697155, 35.417976, 33.107086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.078121, 35.535172, 33.073448>,  <45.306702, 35.605488, 33.053265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.078121, 35.535172, 33.073448>,  <44.697155, 35.417976, 33.107086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.078121, 35.535172, 33.073448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026151, 0.196342, 0.980187,
		0.303695, -0.935739, 0.179336,
		0.952410, 0.292988, -0.084098,
		45.363846, 35.623066, 33.048218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.076332, 35.200668, 33.800087>,  <44.697155, 35.417976, 33.107086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.076332, 35.200668, 33.800087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.304489, 35.493938, 33.651978>,  <45.441383, 35.669903, 33.563114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.304489, 35.493938, 33.651978>,  <45.076332, 35.200668, 33.800087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.304489, 35.493938, 33.651978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123268, 0.369278, 0.921107,
		0.812068, -0.571037, 0.120257,
		0.570395, 0.733178, -0.370269,
		45.475609, 35.713890, 33.540897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.656250, 35.143379, 34.219124>,  <45.076332, 35.200668, 33.800087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.656250, 35.143379, 34.219124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.660294, 35.502110, 34.042217>,  <45.662720, 35.717346, 33.936073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.660294, 35.502110, 34.042217>,  <45.656250, 35.143379, 34.219124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.660294, 35.502110, 34.042217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277625, 0.422387, 0.862852,
		0.960636, -0.131507, -0.244711,
		0.010108, 0.896825, -0.442270,
		45.663326, 35.771156, 33.909538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.229992, 35.444492, 34.528400>,  <45.656250, 35.143379, 34.219124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.229992, 35.444492, 34.528400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.014671, 35.741451, 34.368862>,  <45.885479, 35.919628, 34.273140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.014671, 35.741451, 34.368862>,  <46.229992, 35.444492, 34.528400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.014671, 35.741451, 34.368862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148962, 0.549630, 0.822021,
		0.829485, 0.383079, -0.406454,
		-0.538298, 0.742400, -0.398845,
		45.853184, 35.964172, 34.249210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.634258, 35.996994, 34.548077>,  <46.229992, 35.444492, 34.528400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.634258, 35.996994, 34.548077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.258354, 36.130863, 34.520226>,  <46.032814, 36.211185, 34.503513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.258354, 36.130863, 34.520226>,  <46.634258, 35.996994, 34.548077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.258354, 36.130863, 34.520226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243620, 0.798587, 0.550372,
		0.239801, 0.500253, -0.832011,
		-0.939758, 0.334674, -0.069630,
		45.976425, 36.231266, 34.499336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.669216, 35.700142, 35.207668>,  <46.634258, 35.996994, 34.548077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.669216, 35.700142, 35.207668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.921558, 36.010063, 35.191216>,  <47.072964, 36.196018, 35.181343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.921558, 36.010063, 35.191216>,  <46.669216, 35.700142, 35.207668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.921558, 36.010063, 35.191216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524403, 0.464846, 0.713386,
		0.571859, -0.428473, 0.699563,
		0.630856, 0.774809, -0.041134,
		47.110817, 36.242504, 35.178875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.258080, 35.386772, 35.100368>,  <46.669216, 35.700142, 35.207668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.258080, 35.386772, 35.100368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.555611, 35.516544, 34.866627>,  <47.734131, 35.594406, 34.726383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.555611, 35.516544, 34.866627>,  <47.258080, 35.386772, 35.100368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.555611, 35.516544, 34.866627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279500, -0.945161, -0.168971,
		-0.607125, -0.037641, -0.793714,
		0.743827, 0.324430, -0.584351,
		47.778759, 35.613873, 34.691322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.968266, 35.261749, 34.986534>,  <47.258080, 35.386772, 35.100368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.968266, 35.261749, 34.986534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.627979, 35.054630, 34.950367>,  <47.423809, 34.930359, 34.928665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.627979, 35.054630, 34.950367>,  <47.968266, 35.261749, 34.986534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.627979, 35.054630, 34.950367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520454, -0.805693, -0.282819,
		0.073593, -0.287657, 0.954902,
		-0.850712, -0.517796, -0.090419,
		47.372765, 34.899292, 34.923241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.301567, 42.248688, 44.580620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.983242, 42.019760, 44.659756>,  <33.792248, 41.882404, 44.707237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.983242, 42.019760, 44.659756>,  <34.301567, 42.248688, 44.580620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983242, 42.019760, 44.659756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240292, -0.598348, -0.764356,
		0.555832, -0.560741, 0.613694,
		-0.795808, -0.572319, 0.197839,
		33.744499, 41.848064, 44.719109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534462, 41.591740, 44.577492>,  <34.301567, 42.248688, 44.580620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534462, 41.591740, 44.577492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.137215, 41.564163, 44.539619>,  <33.898865, 41.547619, 44.516895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.137215, 41.564163, 44.539619>,  <34.534462, 41.591740, 44.577492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137215, 41.564163, 44.539619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117099, -0.569844, -0.813367,
		0.002124, -0.818856, 0.573995,
		-0.993118, -0.068942, -0.094677,
		33.839279, 41.543480, 44.511215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376053, 40.807228, 44.513779>,  <34.534462, 41.591740, 44.577492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376053, 40.807228, 44.513779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.058651, 41.004925, 44.371754>,  <33.868210, 41.123543, 44.286537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.058651, 41.004925, 44.371754>,  <34.376053, 40.807228, 44.513779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058651, 41.004925, 44.371754> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011593, -0.571066, -0.820823,
		-0.608455, -0.655442, 0.447413,
		-0.793504, 0.494246, -0.355066,
		33.820599, 41.153198, 44.265236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877251, 40.282314, 44.347363>,  <34.376053, 40.807228, 44.513779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877251, 40.282314, 44.347363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.760475, 40.598175, 44.131500>,  <33.690411, 40.787689, 44.001984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.760475, 40.598175, 44.131500>,  <33.877251, 40.282314, 44.347363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760475, 40.598175, 44.131500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031802, -0.571935, -0.819682,
		-0.955909, -0.222133, 0.192081,
		-0.291937, 0.789650, -0.539653,
		33.672894, 40.835072, 43.969604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307228, 40.111591, 44.111141>,  <33.877251, 40.282314, 44.347363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307228, 40.111591, 44.111141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.446552, 40.399448, 43.870876>,  <33.530148, 40.572163, 43.726719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.446552, 40.399448, 43.870876>,  <33.307228, 40.111591, 44.111141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446552, 40.399448, 43.870876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144741, -0.591810, -0.792977,
		-0.926139, 0.363139, -0.101969,
		0.348306, 0.719647, -0.600659,
		33.551044, 40.615341, 43.690678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847069, 40.105034, 43.506275>,  <33.307228, 40.111591, 44.111141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847069, 40.105034, 43.506275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.183464, 40.281429, 43.380882>,  <33.385300, 40.387268, 43.305645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.183464, 40.281429, 43.380882>,  <32.847069, 40.105034, 43.506275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183464, 40.281429, 43.380882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025560, -0.546356, -0.837163,
		-0.540454, 0.712054, -0.448206,
		0.840985, 0.440992, -0.313481,
		33.435760, 40.413727, 43.286839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760189, 40.299698, 42.726665>,  <32.847069, 40.105034, 43.506275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760189, 40.299698, 42.726665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.154526, 40.305290, 42.793503>,  <33.391129, 40.308647, 42.833603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.154526, 40.305290, 42.793503>,  <32.760189, 40.299698, 42.726665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154526, 40.305290, 42.793503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166014, -0.221285, -0.960975,
		0.023540, 0.975109, -0.220473,
		0.985843, 0.013980, 0.167090,
		33.450279, 40.309483, 42.843632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076977, 40.813717, 42.238091>,  <32.760189, 40.299698, 42.726665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076977, 40.813717, 42.238091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.334503, 40.527927, 42.347652>,  <33.489021, 40.356453, 42.413391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.334503, 40.527927, 42.347652>,  <33.076977, 40.813717, 42.238091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334503, 40.527927, 42.347652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273201, -0.119730, -0.954477,
		0.714744, 0.689341, 0.118111,
		0.643818, -0.714475, 0.273905,
		33.527649, 40.313583, 42.429825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.569042, 40.920876, 41.861099>,  <33.076977, 40.813717, 42.238091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.569042, 40.920876, 41.861099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.674553, 40.553749, 41.979778>,  <33.737858, 40.333473, 42.050987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.674553, 40.553749, 41.979778>,  <33.569042, 40.920876, 41.861099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674553, 40.553749, 41.979778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375374, -0.185671, -0.908086,
		0.888548, 0.350903, 0.295550,
		0.263775, -0.917820, 0.296697,
		33.753685, 40.278404, 42.068787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206493, 40.878922, 41.524036>,  <33.569042, 40.920876, 41.861099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206493, 40.878922, 41.524036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.079075, 40.510357, 41.613052>,  <34.002625, 40.289219, 41.666462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.079075, 40.510357, 41.613052>,  <34.206493, 40.878922, 41.524036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079075, 40.510357, 41.613052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192077, -0.292642, -0.936732,
		0.928243, -0.255647, 0.270202,
		-0.318545, -0.921415, 0.222539,
		33.983513, 40.233932, 41.679813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662113, 40.534428, 41.159401>,  <34.206493, 40.878922, 41.524036>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662113, 40.534428, 41.159401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.396580, 40.248211, 41.246418>,  <34.237259, 40.076481, 41.298626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.396580, 40.248211, 41.246418>,  <34.662113, 40.534428, 41.159401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396580, 40.248211, 41.246418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260145, -0.493635, -0.829849,
		0.701178, -0.494290, 0.513836,
		-0.663833, -0.715543, 0.217539,
		34.197430, 40.033546, 41.311680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038090, 39.992638, 41.229458>,  <34.662113, 40.534428, 41.159401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038090, 39.992638, 41.229458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.674694, 39.838882, 41.163860>,  <34.456657, 39.746628, 41.124500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.674694, 39.838882, 41.163860>,  <35.038090, 39.992638, 41.229458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674694, 39.838882, 41.163860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342918, -0.461363, -0.818261,
		0.238869, -0.799618, 0.550956,
		-0.908487, -0.384390, -0.163998,
		34.402149, 39.723564, 41.114662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121571, 39.165161, 41.098553>,  <35.038090, 39.992638, 41.229458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121571, 39.165161, 41.098553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.801205, 39.336372, 40.931061>,  <34.608986, 39.439098, 40.830566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.801205, 39.336372, 40.931061>,  <35.121571, 39.165161, 41.098553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801205, 39.336372, 40.931061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223326, -0.435319, -0.872137,
		-0.555578, -0.792018, 0.253063,
		-0.800911, 0.428025, -0.418732,
		34.560932, 39.464779, 40.805443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869789, 38.692879, 40.665985>,  <35.121571, 39.165161, 41.098553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869789, 38.692879, 40.665985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.687744, 39.022999, 40.532272>,  <34.578518, 39.221073, 40.452045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.687744, 39.022999, 40.532272>,  <34.869789, 38.692879, 40.665985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687744, 39.022999, 40.532272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131439, -0.309040, -0.941923,
		-0.880678, -0.472621, 0.032171,
		-0.455114, 0.825303, -0.334285,
		34.551208, 39.270588, 40.431988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399258, 38.443794, 40.217422>,  <34.869789, 38.692879, 40.665985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399258, 38.443794, 40.217422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.493969, 38.818790, 40.115410>,  <34.550797, 39.043789, 40.054203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.493969, 38.818790, 40.115410>,  <34.399258, 38.443794, 40.217422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493969, 38.818790, 40.115410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068165, -0.277881, -0.958194,
		-0.969170, 0.209495, -0.129700,
		0.236778, 0.937494, -0.255033,
		34.565002, 39.100037, 40.038898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.083717, 38.583683, 39.616577>,  <34.399258, 38.443794, 40.217422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.083717, 38.583683, 39.616577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.319843, 38.904751, 39.582527>,  <34.461521, 39.097393, 39.562099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.319843, 38.904751, 39.582527>,  <34.083717, 38.583683, 39.616577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.319843, 38.904751, 39.582527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035001, -0.130811, -0.990789,
		-0.806412, 0.581901, -0.105314,
		0.590317, 0.802670, -0.085121,
		34.496937, 39.145554, 39.556992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871986, 38.892281, 39.031929>,  <34.083717, 38.583683, 39.616577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871986, 38.892281, 39.031929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.234997, 39.056110, 39.069145>,  <34.452801, 39.154408, 39.091476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.234997, 39.056110, 39.069145>,  <33.871986, 38.892281, 39.031929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234997, 39.056110, 39.069145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158247, -0.128241, -0.979036,
		-0.389053, 0.903220, -0.181195,
		0.907522, 0.409570, 0.093040,
		34.507252, 39.178982, 39.097057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863068, 39.455780, 38.630493>,  <33.871986, 38.892281, 39.031929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863068, 39.455780, 38.630493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.245480, 39.341625, 38.657497>,  <34.474926, 39.273132, 38.673698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.245480, 39.341625, 38.657497>,  <33.863068, 39.455780, 38.630493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245480, 39.341625, 38.657497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054839, -0.052158, -0.997132,
		0.288088, 0.956993, -0.034214,
		0.956032, -0.285386, 0.067507,
		34.532288, 39.256008, 38.677750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318192, 39.858463, 38.116077>,  <33.863068, 39.455780, 38.630493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318192, 39.858463, 38.116077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.544342, 39.545055, 38.219189>,  <34.680035, 39.357010, 38.281055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.544342, 39.545055, 38.219189>,  <34.318192, 39.858463, 38.116077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544342, 39.545055, 38.219189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284972, -0.107725, -0.952463,
		0.774039, 0.611963, 0.162374,
		0.565380, -0.783516, 0.257776,
		34.713955, 39.310001, 38.296520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875427, 39.956120, 37.731594>,  <34.318192, 39.858463, 38.116077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875427, 39.956120, 37.731594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.876350, 39.560669, 37.791740>,  <34.876904, 39.323399, 37.827827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.876350, 39.560669, 37.791740>,  <34.875427, 39.956120, 37.731594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876350, 39.560669, 37.791740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418105, -0.135633, -0.898216,
		0.908396, 0.064943, 0.413037,
		0.002311, -0.988628, 0.150361,
		34.877045, 39.264080, 37.836849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476170, 39.724899, 37.525578>,  <34.875427, 39.956120, 37.731594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476170, 39.724899, 37.525578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.264900, 39.385376, 37.516113>,  <35.138138, 39.181664, 37.510437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.264900, 39.385376, 37.516113>,  <35.476170, 39.724899, 37.525578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264900, 39.385376, 37.516113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265550, -0.138649, -0.954075,
		0.806547, -0.510197, 0.298632,
		-0.528171, -0.848808, -0.023656,
		35.106449, 39.130733, 37.509018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933319, 39.314659, 37.204552>,  <35.476170, 39.724899, 37.525578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933319, 39.314659, 37.204552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.552235, 39.200848, 37.161877>,  <35.323586, 39.132561, 37.136272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.552235, 39.200848, 37.161877>,  <35.933319, 39.314659, 37.204552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552235, 39.200848, 37.161877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146157, -0.121235, -0.981805,
		0.266419, -0.950970, 0.157088,
		-0.952711, -0.284531, -0.106692,
		35.266422, 39.115490, 37.129868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582115, 38.997234, 37.178490>,  <35.933319, 39.314659, 37.204552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582115, 38.997234, 37.178490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.849396, 39.244606, 37.013058>,  <37.009766, 39.393028, 36.913799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.849396, 39.244606, 37.013058>,  <36.582115, 38.997234, 37.178490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849396, 39.244606, 37.013058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001453, 0.554821, 0.831969,
		0.743978, -0.556524, 0.369834,
		0.668202, 0.618429, -0.413583,
		37.049858, 39.430134, 36.888985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148357, 39.129852, 37.707214>,  <36.582115, 38.997234, 37.178490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.148357, 39.129852, 37.707214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.153381, 39.429184, 37.441929>,  <37.156395, 39.608784, 37.282757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.153381, 39.429184, 37.441929>,  <37.148357, 39.129852, 37.707214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153381, 39.429184, 37.441929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001059, 0.663252, 0.748396,
		0.999921, -0.010099, 0.007535,
		0.012556, 0.748328, -0.663210,
		37.157146, 39.653683, 37.242966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666824, 39.607338, 37.983082>,  <37.148357, 39.129852, 37.707214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666824, 39.607338, 37.983082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.421265, 39.821594, 37.751148>,  <37.273930, 39.950150, 37.611988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.421265, 39.821594, 37.751148>,  <37.666824, 39.607338, 37.983082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421265, 39.821594, 37.751148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081976, 0.687314, 0.721720,
		0.785113, 0.490599, -0.378035,
		-0.613903, 0.535642, -0.579837,
		37.237095, 39.982288, 37.577198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901546, 40.261768, 37.964573>,  <37.666824, 39.607338, 37.983082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901546, 40.261768, 37.964573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.526051, 40.316532, 37.838062>,  <37.300755, 40.349392, 37.762157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.526051, 40.316532, 37.838062>,  <37.901546, 40.261768, 37.964573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526051, 40.316532, 37.838062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160427, 0.638612, 0.752620,
		0.305019, 0.757251, -0.577524,
		-0.938737, 0.136913, -0.316272,
		37.244431, 40.357605, 37.743179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850677, 40.958435, 38.073193>,  <37.901546, 40.261768, 37.964573>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850677, 40.958435, 38.073193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.496792, 40.773487, 38.049515>,  <37.284462, 40.662518, 38.035309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.496792, 40.773487, 38.049515>,  <37.850677, 40.958435, 38.073193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496792, 40.773487, 38.049515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341887, 0.557309, 0.756650,
		-0.316862, 0.689653, -0.651134,
		-0.884710, -0.462368, -0.059193,
		37.231380, 40.634777, 38.031757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344902, 41.582165, 38.124012>,  <37.850677, 40.958435, 38.073193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344902, 41.582165, 38.124012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.136360, 41.258156, 38.231384>,  <37.011234, 41.063751, 38.295807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.136360, 41.258156, 38.231384>,  <37.344902, 41.582165, 38.124012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136360, 41.258156, 38.231384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234063, 0.438246, 0.867845,
		-0.820614, 0.389621, -0.418076,
		-0.521351, -0.810022, 0.268435,
		36.979954, 41.015148, 38.311916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829494, 41.844173, 38.576019>,  <37.344902, 41.582165, 38.124012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829494, 41.844173, 38.576019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.826038, 41.448460, 38.634319>,  <36.823963, 41.211033, 38.669300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.826038, 41.448460, 38.634319>,  <36.829494, 41.844173, 38.576019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826038, 41.448460, 38.634319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244114, 0.143437, 0.959080,
		-0.969708, -0.027290, -0.242738,
		-0.008644, -0.989283, 0.145753,
		36.823444, 41.151676, 38.678047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227699, 41.771519, 38.841335>,  <36.829494, 41.844173, 38.576019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227699, 41.771519, 38.841335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.434334, 41.444798, 38.944073>,  <36.558315, 41.248764, 39.005714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.434334, 41.444798, 38.944073>,  <36.227699, 41.771519, 38.841335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434334, 41.444798, 38.944073> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349536, 0.072666, 0.934101,
		-0.781641, -0.572321, -0.247964,
		0.516587, -0.816803, 0.256845,
		36.589310, 41.199757, 39.021126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.782295, 41.609798, 39.374680>,  <36.227699, 41.771519, 38.841335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.782295, 41.609798, 39.374680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.103432, 41.377949, 39.430515>,  <36.296112, 41.238838, 39.464016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.103432, 41.377949, 39.430515>,  <35.782295, 41.609798, 39.374680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103432, 41.377949, 39.430515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248163, -0.111999, 0.962222,
		-0.542094, -0.807150, -0.233759,
		0.802838, -0.579625, 0.139590,
		36.344284, 41.204060, 39.472393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538727, 41.019188, 39.729824>,  <35.782295, 41.609798, 39.374680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538727, 41.019188, 39.729824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.930767, 41.026604, 39.808876>,  <36.165993, 41.031052, 39.856308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.930767, 41.026604, 39.808876>,  <35.538727, 41.019188, 39.729824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930767, 41.026604, 39.808876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198490, 0.097506, 0.975241,
		-0.001195, -0.995062, 0.099245,
		0.980102, 0.018533, 0.197626,
		36.224796, 41.032166, 39.868164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638447, 40.497643, 40.261795>,  <35.538727, 41.019188, 39.729824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638447, 40.497643, 40.261795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.937519, 40.761143, 40.295311>,  <36.116962, 40.919243, 40.315422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.937519, 40.761143, 40.295311>,  <35.638447, 40.497643, 40.261795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937519, 40.761143, 40.295311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239304, 0.149583, 0.959353,
		0.619438, -0.737344, 0.269482,
		0.747683, 0.658748, 0.083792,
		36.161823, 40.958767, 40.320450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970440, 40.360928, 40.938251>,  <35.638447, 40.497643, 40.261795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970440, 40.360928, 40.938251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.103710, 40.725941, 40.843365>,  <36.183674, 40.944950, 40.786434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.103710, 40.725941, 40.843365>,  <35.970440, 40.360928, 40.938251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103710, 40.725941, 40.843365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062376, 0.229710, 0.971258,
		0.940799, -0.338398, 0.019614,
		0.333177, 0.912535, -0.237218,
		36.203663, 40.999702, 40.772198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478333, 40.473000, 41.460896>,  <35.970440, 40.360928, 40.938251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478333, 40.473000, 41.460896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.380268, 40.836002, 41.324471>,  <36.321430, 41.053806, 41.242615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.380268, 40.836002, 41.324471>,  <36.478333, 40.473000, 41.460896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380268, 40.836002, 41.324471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073970, 0.368283, 0.926766,
		0.966657, 0.201976, -0.157417,
		-0.245159, 0.907509, -0.341063,
		36.306721, 41.108253, 41.222153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838306, 40.966431, 41.828758>,  <36.478333, 40.473000, 41.460896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838306, 40.966431, 41.828758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.538502, 41.181896, 41.674839>,  <36.358620, 41.311176, 41.582485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.538502, 41.181896, 41.674839>,  <36.838306, 40.966431, 41.828758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538502, 41.181896, 41.674839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110363, 0.471471, 0.874948,
		0.652725, 0.698253, -0.293926,
		-0.749513, 0.538663, -0.384802,
		36.313648, 41.343494, 41.559399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057404, 41.517052, 42.004978>,  <36.838306, 40.966431, 41.828758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057404, 41.517052, 42.004978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.667282, 41.572323, 41.936066>,  <36.433208, 41.605488, 41.894718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.667282, 41.572323, 41.936066>,  <37.057404, 41.517052, 42.004978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667282, 41.572323, 41.936066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098407, 0.426467, 0.899134,
		0.197716, 0.893886, -0.402339,
		-0.975307, 0.138180, -0.172284,
		36.374691, 41.613777, 41.884380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942768, 42.294376, 42.248116>,  <37.057404, 41.517052, 42.004978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942768, 42.294376, 42.248116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.596283, 42.095692, 42.226414>,  <36.388390, 41.976479, 42.213394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.596283, 42.095692, 42.226414>,  <36.942768, 42.294376, 42.248116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596283, 42.095692, 42.226414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274210, 0.381795, 0.882633,
		-0.417704, 0.779428, -0.466921,
		-0.866217, -0.496714, -0.054250,
		36.336418, 41.946678, 42.210140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517014, 42.875977, 42.189972>,  <36.942768, 42.294376, 42.248116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517014, 42.875977, 42.189972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.326721, 42.546627, 42.313732>,  <36.212547, 42.349018, 42.387989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.326721, 42.546627, 42.313732>,  <36.517014, 42.875977, 42.189972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326721, 42.546627, 42.313732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176635, 0.434020, 0.883418,
		-0.861673, 0.365617, -0.351913,
		-0.475730, -0.823378, 0.309402,
		36.184002, 42.299614, 42.406551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811180, 43.062668, 42.352707>,  <36.517014, 42.875977, 42.189972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811180, 43.062668, 42.352707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.919067, 42.730751, 42.548130>,  <35.983799, 42.531601, 42.665386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.919067, 42.730751, 42.548130>,  <35.811180, 43.062668, 42.352707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919067, 42.730751, 42.548130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252830, 0.428539, 0.867428,
		-0.929156, -0.357482, -0.094214,
		0.269715, -0.829796, 0.488562,
		35.999981, 42.481812, 42.694698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.223198, 42.919571, 42.894810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.509895, 42.674889, 43.028736>,  <35.681915, 42.528080, 43.109093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.509895, 42.674889, 43.028736>,  <35.223198, 42.919571, 42.894810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509895, 42.674889, 43.028736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257412, 0.214135, 0.942276,
		-0.648087, -0.761556, -0.003979,
		0.716744, -0.611701, 0.334812,
		35.724918, 42.491379, 43.129181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864910, 42.692890, 43.440826>,  <35.223198, 42.919571, 42.894810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864910, 42.692890, 43.440826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.255966, 42.625523, 43.491192>,  <35.490601, 42.585102, 43.521412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.255966, 42.625523, 43.491192>,  <34.864910, 42.692890, 43.440826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.255966, 42.625523, 43.491192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115400, 0.070851, 0.990789,
		-0.175787, -0.983166, 0.049832,
		0.977641, -0.168417, 0.125912,
		35.549259, 42.574997, 43.528965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985031, 42.116714, 43.900364>,  <34.864910, 42.692890, 43.440826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985031, 42.116714, 43.900364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.321968, 42.330555, 43.927681>,  <35.524128, 42.458858, 43.944073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.321968, 42.330555, 43.927681>,  <34.985031, 42.116714, 43.900364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321968, 42.330555, 43.927681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126201, 0.072459, 0.989355,
		0.523966, -0.841990, 0.128503,
		0.842338, 0.534606, 0.068295,
		35.574669, 42.490936, 43.948170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356167, 41.857563, 44.461559>,  <34.985031, 42.116714, 43.900364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356167, 41.857563, 44.461559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.503654, 42.224258, 44.400078>,  <35.592148, 42.444275, 44.363190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.503654, 42.224258, 44.400078>,  <35.356167, 41.857563, 44.461559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503654, 42.224258, 44.400078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163199, 0.226633, 0.960210,
		0.915101, -0.328967, 0.233176,
		0.368723, 0.916743, -0.153705,
		35.614273, 42.499283, 44.353966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647533, 41.967655, 45.043045>,  <35.356167, 41.857563, 44.461559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.647533, 41.967655, 45.043045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.625217, 42.336479, 44.889839>,  <35.611828, 42.557774, 44.797916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.625217, 42.336479, 44.889839>,  <35.647533, 41.967655, 45.043045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625217, 42.336479, 44.889839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214082, 0.363641, 0.906606,
		0.975221, 0.132579, 0.177107,
		-0.055794, 0.922056, -0.383013,
		35.608479, 42.613094, 44.774937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072227, 42.274170, 45.439548>,  <35.647533, 41.967655, 45.043045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072227, 42.274170, 45.439548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.812222, 42.536461, 45.285923>,  <35.656219, 42.693836, 45.193748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.812222, 42.536461, 45.285923>,  <36.072227, 42.274170, 45.439548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812222, 42.536461, 45.285923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068787, 0.452552, 0.889081,
		0.756806, 0.604330, -0.249058,
		-0.650011, 0.655730, -0.384064,
		35.617218, 42.733181, 45.170704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457558, 42.900528, 45.583199>,  <36.072227, 42.274170, 45.439548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457558, 42.900528, 45.583199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.084801, 43.015781, 45.495052>,  <35.861149, 43.084934, 45.442165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.084801, 43.015781, 45.495052>,  <36.457558, 42.900528, 45.583199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084801, 43.015781, 45.495052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002618, 0.612823, 0.790216,
		0.362733, 0.735817, -0.571838,
		-0.931889, 0.288134, -0.220365,
		35.805233, 43.102222, 45.428944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466209, 43.604527, 45.420353>,  <36.457558, 42.900528, 45.583199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466209, 43.604527, 45.420353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.092209, 43.521790, 45.535591>,  <35.867809, 43.472149, 45.604733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.092209, 43.521790, 45.535591>,  <36.466209, 43.604527, 45.420353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092209, 43.521790, 45.535591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050325, 0.726725, 0.685083,
		-0.351066, 0.655049, -0.669077,
		-0.934997, -0.206838, 0.288093,
		35.811710, 43.459740, 45.622021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194088, 44.194416, 45.633099>,  <36.466209, 43.604527, 45.420353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.194088, 44.194416, 45.633099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.931240, 43.948940, 45.808178>,  <35.773529, 43.801655, 45.913227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.931240, 43.948940, 45.808178>,  <36.194088, 44.194416, 45.633099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931240, 43.948940, 45.808178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032717, 0.603339, 0.796813,
		-0.753075, 0.509283, -0.416545,
		-0.657121, -0.613688, 0.437697,
		35.734104, 43.764835, 45.939487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631573, 44.634640, 46.040157>,  <36.194088, 44.194416, 45.633099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631573, 44.634640, 46.040157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.666302, 44.265850, 46.191113>,  <35.687138, 44.044575, 46.281685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.666302, 44.265850, 46.191113>,  <35.631573, 44.634640, 46.040157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666302, 44.265850, 46.191113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046040, 0.374697, 0.926004,
		-0.995160, -0.097770, -0.009916,
		0.086819, -0.921978, 0.377384,
		35.692348, 43.989258, 46.304329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288448, 44.776405, 46.552483>,  <35.631573, 44.634640, 46.040157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288448, 44.776405, 46.552483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.477394, 44.433319, 46.633659>,  <35.590763, 44.227467, 46.682365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.477394, 44.433319, 46.633659>,  <35.288448, 44.776405, 46.552483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.477394, 44.433319, 46.633659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082452, 0.272242, 0.958690,
		-0.877536, -0.436121, 0.199319,
		0.472368, -0.857719, 0.202943,
		35.619106, 44.176003, 46.694542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838982, 44.603001, 46.994125>,  <35.288448, 44.776405, 46.552483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.838982, 44.603001, 46.994125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.194241, 44.428253, 47.051170>,  <35.407398, 44.323406, 47.085396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.194241, 44.428253, 47.051170>,  <34.838982, 44.603001, 46.994125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194241, 44.428253, 47.051170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045623, 0.224967, 0.973298,
		-0.457285, -0.870940, 0.179873,
		0.888149, -0.436868, 0.142609,
		35.460686, 44.297192, 47.093952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818256, 44.164642, 47.637901>,  <34.838982, 44.603001, 46.994125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818256, 44.164642, 47.637901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.204086, 44.252186, 47.578976>,  <35.435585, 44.304710, 47.543621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.204086, 44.252186, 47.578976>,  <34.818256, 44.164642, 47.637901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204086, 44.252186, 47.578976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108947, 0.178109, 0.977961,
		0.240277, -0.959362, 0.147954,
		0.964571, 0.218863, -0.147315,
		35.493458, 44.317844, 47.534782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039040, 43.978981, 48.283321>,  <34.818256, 44.164642, 47.637901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.039040, 43.978981, 48.283321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.346901, 44.166256, 48.109692>,  <35.531620, 44.278622, 48.005512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.346901, 44.166256, 48.109692>,  <35.039040, 43.978981, 48.283321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346901, 44.166256, 48.109692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376779, 0.215797, 0.900816,
		0.515427, -0.856871, -0.010314,
		0.769657, 0.468191, -0.434078,
		35.577797, 44.306713, 47.979469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625916, 43.800652, 48.676643>,  <35.039040, 43.978981, 48.283321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625916, 43.800652, 48.676643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.734447, 44.140190, 48.495163>,  <35.799568, 44.343914, 48.386276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.734447, 44.140190, 48.495163>,  <35.625916, 43.800652, 48.676643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734447, 44.140190, 48.495163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384422, 0.336577, 0.859614,
		0.882382, -0.407654, -0.234990,
		0.271333, 0.848843, -0.453701,
		35.815849, 44.394844, 48.359055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355751, 43.920647, 48.855461>,  <35.625916, 43.800652, 48.676643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355751, 43.920647, 48.855461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.191528, 44.274841, 48.768410>,  <36.092995, 44.487358, 48.716179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.191528, 44.274841, 48.768410>,  <36.355751, 43.920647, 48.855461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191528, 44.274841, 48.768410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313640, 0.361245, 0.878141,
		0.856195, 0.292273, -0.426036,
		-0.410560, 0.885482, -0.217628,
		36.068359, 44.540485, 48.703121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942749, 44.423664, 48.895554>,  <36.355751, 43.920647, 48.855461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942749, 44.423664, 48.895554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.590195, 44.609238, 48.931160>,  <36.378662, 44.720581, 48.952522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.590195, 44.609238, 48.931160>,  <36.942749, 44.423664, 48.895554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590195, 44.609238, 48.931160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312132, 0.430490, 0.846907,
		0.354591, 0.774236, -0.524237,
		-0.881385, 0.463937, 0.089016,
		36.325779, 44.748417, 48.957863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139091, 44.986435, 49.275028>,  <36.942749, 44.423664, 48.895554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139091, 44.986435, 49.275028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.743576, 44.998375, 49.333561>,  <36.506268, 45.005539, 49.368679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.743576, 44.998375, 49.333561>,  <37.139091, 44.986435, 49.275028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743576, 44.998375, 49.333561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141226, 0.505532, 0.851172,
		-0.048572, 0.862292, -0.504077,
		-0.988785, 0.029846, 0.146333,
		36.446941, 45.007328, 49.377460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904373, 45.684959, 49.451328>,  <37.139091, 44.986435, 49.275028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904373, 45.684959, 49.451328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.626198, 45.437164, 49.596989>,  <36.459293, 45.288486, 49.684383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.626198, 45.437164, 49.596989>,  <36.904373, 45.684959, 49.451328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626198, 45.437164, 49.596989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031695, 0.479819, 0.876795,
		-0.717885, 0.621299, -0.314050,
		-0.695439, -0.619484, 0.364147,
		36.417564, 45.251320, 49.706234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527386, 46.072296, 49.900768>,  <36.904373, 45.684959, 49.451328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527386, 46.072296, 49.900768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.421288, 45.702869, 50.011524>,  <36.357628, 45.481213, 50.077980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.421288, 45.702869, 50.011524>,  <36.527386, 46.072296, 49.900768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421288, 45.702869, 50.011524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233698, 0.340198, 0.910852,
		-0.935430, 0.176890, -0.306072,
		-0.265245, -0.923567, 0.276892,
		36.341713, 45.425800, 50.094593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958790, 46.166798, 50.372047>,  <36.527386, 46.072296, 49.900768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958790, 46.166798, 50.372047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.075775, 45.793282, 50.454517>,  <36.145966, 45.569172, 50.503998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.075775, 45.793282, 50.454517>,  <35.958790, 46.166798, 50.372047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075775, 45.793282, 50.454517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179626, 0.158119, 0.970944,
		-0.939254, -0.321001, -0.121489,
		0.292464, -0.933786, 0.206174,
		36.163513, 45.513145, 50.516369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420860, 45.827545, 50.800507>,  <35.958790, 46.166798, 50.372047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420860, 45.827545, 50.800507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.764080, 45.631702, 50.862522>,  <35.970013, 45.514198, 50.899731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.764080, 45.631702, 50.862522>,  <35.420860, 45.827545, 50.800507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764080, 45.631702, 50.862522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084948, 0.162420, 0.983058,
		-0.506492, -0.856683, 0.097773,
		0.858050, -0.489605, 0.155038,
		36.021496, 45.484821, 50.909035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421871, 45.258289, 51.267136>,  <35.420860, 45.827545, 50.800507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421871, 45.258289, 51.267136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.805977, 45.360920, 51.311050>,  <36.036442, 45.422501, 51.337399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.805977, 45.360920, 51.311050>,  <35.421871, 45.258289, 51.267136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805977, 45.360920, 51.311050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072279, -0.151317, 0.985839,
		0.269559, -0.954605, -0.126760,
		0.960268, 0.256579, 0.109787,
		36.094059, 45.437893, 51.343987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526249, 44.858971, 51.956615>,  <35.421871, 45.258289, 51.267136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526249, 44.858971, 51.956615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.849575, 45.088989, 51.906113>,  <36.043571, 45.227001, 51.875813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.849575, 45.088989, 51.906113>,  <35.526249, 44.858971, 51.956615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.849575, 45.088989, 51.906113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196339, -0.061116, 0.978630,
		0.555045, -0.815832, -0.162306,
		0.808317, 0.575051, -0.126258,
		36.092072, 45.261505, 51.868237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876308, 44.750732, 51.559761>,  <35.526249, 44.858971, 51.956615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876308, 44.750732, 51.559761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.601410, 44.623287, 51.820889>,  <34.436470, 44.546822, 51.977566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.601410, 44.623287, 51.820889>,  <34.876308, 44.750732, 51.559761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601410, 44.623287, 51.820889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462263, -0.501421, -0.731361,
		0.560358, -0.804403, 0.197320,
		-0.687250, -0.318610, 0.652821,
		34.395233, 44.527702, 52.016735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874889, 44.114403, 51.465992>,  <34.876308, 44.750732, 51.559761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874889, 44.114403, 51.465992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.523434, 44.225750, 51.621174>,  <34.312561, 44.292557, 51.714283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.523434, 44.225750, 51.621174>,  <34.874889, 44.114403, 51.465992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523434, 44.225750, 51.621174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477463, -0.520139, -0.708155,
		0.004662, -0.807446, 0.589924,
		-0.878639, 0.278366, 0.387951,
		34.259842, 44.309261, 51.737560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489292, 43.450165, 51.610188>,  <34.874889, 44.114403, 51.465992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489292, 43.450165, 51.610188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.215000, 43.737366, 51.562443>,  <34.050426, 43.909687, 51.533794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.215000, 43.737366, 51.562443>,  <34.489292, 43.450165, 51.610188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.215000, 43.737366, 51.562443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383497, -0.495791, -0.779180,
		-0.618635, -0.488528, 0.615330,
		-0.685726, 0.718005, -0.119364,
		34.009281, 43.952766, 51.526634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855652, 43.106236, 51.458370>,  <34.489292, 43.450165, 51.610188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855652, 43.106236, 51.458370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.771687, 43.477688, 51.336006>,  <33.721306, 43.700558, 51.262589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.771687, 43.477688, 51.336006>,  <33.855652, 43.106236, 51.458370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771687, 43.477688, 51.336006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488160, -0.370639, -0.790143,
		-0.847134, -0.016527, 0.531122,
		-0.209913, 0.928630, -0.305913,
		33.708714, 43.756275, 51.244232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124596, 43.116859, 51.358330>,  <33.855652, 43.106236, 51.458370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124596, 43.116859, 51.358330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.282936, 43.400566, 51.125004>,  <33.377941, 43.570789, 50.985008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.282936, 43.400566, 51.125004>,  <33.124596, 43.116859, 51.358330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.282936, 43.400566, 51.125004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347337, -0.472371, -0.810076,
		-0.850096, 0.523272, 0.059366,
		0.395847, 0.709262, -0.583312,
		33.401691, 43.613346, 50.950012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583023, 43.200668, 50.841442>,  <33.124596, 43.116859, 51.358330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.583023, 43.200668, 50.841442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.938763, 43.314808, 50.698544>,  <33.152206, 43.383289, 50.612804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.938763, 43.314808, 50.698544>,  <32.583023, 43.200668, 50.841442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938763, 43.314808, 50.698544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212219, -0.434469, -0.875328,
		-0.404987, 0.854291, -0.325841,
		0.889353, 0.285347, -0.357251,
		33.205570, 43.400414, 50.591370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449150, 43.386147, 50.072643>,  <32.583023, 43.200668, 50.841442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449150, 43.386147, 50.072643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.845314, 43.354801, 50.118168>,  <33.083012, 43.335995, 50.145481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.845314, 43.354801, 50.118168>,  <32.449150, 43.386147, 50.072643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.845314, 43.354801, 50.118168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087019, -0.286108, -0.954238,
		0.107336, 0.954988, -0.276545,
		0.990407, -0.078360, 0.113812,
		33.142437, 43.331295, 50.152313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.717999, 43.742729, 49.457664>,  <32.449150, 43.386147, 50.072643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.717999, 43.742729, 49.457664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.996315, 43.502575, 49.615356>,  <33.163303, 43.358482, 49.709972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.996315, 43.502575, 49.615356>,  <32.717999, 43.742729, 49.457664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.996315, 43.502575, 49.615356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231847, -0.331755, -0.914432,
		0.679798, 0.727652, -0.091633,
		0.695788, -0.600384, 0.394231,
		33.205051, 43.322460, 49.733627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.302254, 43.879349, 48.981701>,  <32.717999, 43.742729, 49.457664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.302254, 43.879349, 48.981701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.358932, 43.528851, 49.165928>,  <33.392941, 43.318554, 49.276463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.358932, 43.528851, 49.165928>,  <33.302254, 43.879349, 48.981701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358932, 43.528851, 49.165928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187191, -0.433145, -0.881672,
		0.972050, 0.211147, 0.102648,
		0.141701, -0.876243, 0.460563,
		33.401443, 43.265976, 49.304096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830902, 43.631981, 48.683983>,  <33.302254, 43.879349, 48.981701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830902, 43.631981, 48.683983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.687447, 43.298740, 48.852421>,  <33.601372, 43.098797, 48.953484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.687447, 43.298740, 48.852421>,  <33.830902, 43.631981, 48.683983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687447, 43.298740, 48.852421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143773, -0.495022, -0.856903,
		0.922338, -0.246777, 0.297312,
		-0.358640, -0.833100, 0.421098,
		33.579853, 43.048809, 48.978748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367558, 43.060547, 48.548485>,  <33.830902, 43.631981, 48.683983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367558, 43.060547, 48.548485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.001415, 42.911457, 48.609406>,  <33.781731, 42.822002, 48.645958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.001415, 42.911457, 48.609406>,  <34.367558, 43.060547, 48.548485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001415, 42.911457, 48.609406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031256, -0.442902, -0.896025,
		0.401427, -0.815422, 0.417064,
		-0.915357, -0.372725, 0.152306,
		33.726807, 42.799641, 48.655098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363052, 42.361309, 48.354572>,  <34.367558, 43.060547, 48.548485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363052, 42.361309, 48.354572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.979259, 42.471386, 48.330338>,  <33.748985, 42.537430, 48.315796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.979259, 42.471386, 48.330338>,  <34.363052, 42.361309, 48.354572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979259, 42.471386, 48.330338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075879, -0.459398, -0.884983,
		-0.271372, -0.844526, 0.461664,
		-0.959478, 0.275190, -0.060586,
		33.691418, 42.553944, 48.312160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131535, 41.857674, 47.947124>,  <34.363052, 42.361309, 48.354572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131535, 41.857674, 47.947124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.819550, 42.107994, 47.949432>,  <33.632359, 42.258186, 47.950817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.819550, 42.107994, 47.949432>,  <34.131535, 41.857674, 47.947124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819550, 42.107994, 47.949432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128236, -0.150782, -0.980215,
		-0.612550, -0.765269, 0.197854,
		-0.779960, 0.625803, 0.005773,
		33.585560, 42.295734, 47.951164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584953, 41.467045, 47.696136>,  <34.131535, 41.857674, 47.947124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584953, 41.467045, 47.696136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.448925, 41.835514, 47.620457>,  <33.367310, 42.056595, 47.575050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.448925, 41.835514, 47.620457>,  <33.584953, 41.467045, 47.696136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448925, 41.835514, 47.620457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046332, -0.217358, -0.974992,
		-0.939258, -0.322800, 0.116597,
		-0.340070, 0.921171, -0.189200,
		33.346905, 42.111866, 47.563698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.903568, 41.436203, 47.346962>,  <33.584953, 41.467045, 47.696136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.903568, 41.436203, 47.346962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.107670, 41.770374, 47.265285>,  <33.230129, 41.970879, 47.216278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.107670, 41.770374, 47.265285>,  <32.903568, 41.436203, 47.346962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.107670, 41.770374, 47.265285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009553, -0.231908, -0.972691,
		-0.859971, 0.498269, -0.110351,
		0.510253, 0.835432, -0.204194,
		33.260746, 42.021004, 47.204029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581982, 41.668789, 46.770622>,  <32.903568, 41.436203, 47.346962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581982, 41.668789, 46.770622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.909565, 41.898159, 46.779488>,  <33.106113, 42.035782, 46.784805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.909565, 41.898159, 46.779488>,  <32.581982, 41.668789, 46.770622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909565, 41.898159, 46.779488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091601, -0.092502, -0.991490,
		-0.566498, 0.814017, -0.128282,
		0.818956, 0.573428, 0.022162,
		33.155251, 42.070187, 46.786137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.412106, 42.261856, 46.283237>,  <32.581982, 41.668789, 46.770622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.412106, 42.261856, 46.283237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.810776, 42.229900, 46.289612>,  <33.049976, 42.210728, 46.293438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.810776, 42.229900, 46.289612>,  <32.412106, 42.261856, 46.283237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810776, 42.229900, 46.289612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007824, -0.100899, -0.994866,
		0.081083, 0.991684, -0.099939,
		0.996677, -0.079885, 0.015940,
		33.109779, 42.205936, 46.294395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498226, 42.483624, 45.588497>,  <32.412106, 42.261856, 46.283237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498226, 42.483624, 45.588497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.856327, 42.354942, 45.711807>,  <33.071186, 42.277733, 45.785793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.856327, 42.354942, 45.711807>,  <32.498226, 42.483624, 45.588497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.856327, 42.354942, 45.711807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281062, -0.129118, -0.950964,
		0.345731, 0.937996, -0.025175,
		0.895251, -0.321702, 0.308275,
		33.124901, 42.258430, 45.804291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958385, 42.783680, 45.074142>,  <32.498226, 42.483624, 45.588497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.958385, 42.783680, 45.074142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.118298, 42.469353, 45.262894>,  <33.214245, 42.280758, 45.376144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.118298, 42.469353, 45.262894>,  <32.958385, 42.783680, 45.074142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118298, 42.469353, 45.262894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235126, -0.409669, -0.881412,
		0.885941, 0.463323, 0.020988,
		0.399780, -0.785814, 0.471882,
		33.238232, 42.233608, 45.404457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555542, 42.742863, 44.744606>,  <32.958385, 42.783680, 45.074142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555542, 42.742863, 44.744606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.486393, 42.388405, 44.916588>,  <33.444904, 42.175728, 45.019775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.486393, 42.388405, 44.916588>,  <33.555542, 42.742863, 44.744606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486393, 42.388405, 44.916588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324263, -0.463395, -0.824693,
		0.930037, -0.003148, 0.367452,
		-0.172872, -0.886146, 0.429953,
		33.434532, 42.122562, 45.045574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.235359, 32.940422, 27.059299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.935463, 32.675835, 27.066730>,  <43.755527, 32.517082, 27.071190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.935463, 32.675835, 27.066730>,  <44.235359, 32.940422, 27.059299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.935463, 32.675835, 27.066730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306333, 0.371822, 0.876304,
		-0.586559, 0.651308, -0.481400,
		-0.749739, -0.661473, 0.018579,
		43.710541, 32.477394, 27.072304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.755833, 33.305069, 27.371296>,  <44.235359, 32.940422, 27.059299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.755833, 33.305069, 27.371296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.571930, 32.949921, 27.378290>,  <43.461586, 32.736832, 27.382486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.571930, 32.949921, 27.378290>,  <43.755833, 33.305069, 27.371296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.571930, 32.949921, 27.378290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591962, 0.321091, 0.739244,
		-0.661967, 0.329525, -0.673211,
		-0.459761, -0.887870, 0.017485,
		43.434002, 32.683559, 27.383535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.013382, 33.374588, 27.239695>,  <43.755833, 33.305069, 27.371296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.013382, 33.374588, 27.239695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.058605, 33.026562, 27.431612>,  <43.085739, 32.817745, 27.546762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.058605, 33.026562, 27.431612>,  <43.013382, 33.374588, 27.239695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.058605, 33.026562, 27.431612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573672, 0.337108, 0.746498,
		-0.811245, -0.359638, -0.461022,
		0.113055, -0.870068, 0.479791,
		43.092522, 32.765541, 27.575550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.326164, 33.189503, 27.541861>,  <43.013382, 33.374588, 27.239695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.326164, 33.189503, 27.541861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.623318, 33.008411, 27.739105>,  <42.801609, 32.899757, 27.857452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.623318, 33.008411, 27.739105>,  <42.326164, 33.189503, 27.541861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.623318, 33.008411, 27.739105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315513, 0.412875, 0.854392,
		-0.590402, -0.790297, 0.163876,
		0.742884, -0.452730, 0.493111,
		42.846184, 32.872593, 27.887039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.064941, 32.940048, 28.138334>,  <42.326164, 33.189503, 27.541861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.064941, 32.940048, 28.138334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.455544, 32.951866, 28.223713>,  <42.689907, 32.958958, 28.274940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.455544, 32.951866, 28.223713>,  <42.064941, 32.940048, 28.138334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.455544, 32.951866, 28.223713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203410, 0.453278, 0.867850,
		-0.071115, -0.890880, 0.448638,
		0.976508, 0.029541, 0.213449,
		42.748497, 32.960728, 28.287748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.038673, 32.792057, 28.766195>,  <42.064941, 32.940048, 28.138334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.038673, 32.792057, 28.766195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.416107, 32.920769, 28.734919>,  <42.642567, 32.997993, 28.716152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.416107, 32.920769, 28.734919>,  <42.038673, 32.792057, 28.766195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.416107, 32.920769, 28.734919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052481, 0.378466, 0.924126,
		0.326957, -0.867884, 0.374000,
		0.943581, 0.321777, -0.078195,
		42.699181, 33.017300, 28.711460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.426922, 32.633869, 29.409910>,  <42.038673, 32.792057, 28.766195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.426922, 32.633869, 29.409910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.621841, 32.936447, 29.235401>,  <42.738792, 33.117992, 29.130695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.621841, 32.936447, 29.235401>,  <42.426922, 32.633869, 29.409910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.621841, 32.936447, 29.235401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115056, 0.550867, 0.826625,
		0.865621, -0.352619, 0.355471,
		0.487301, 0.756443, -0.436271,
		42.768032, 33.163380, 29.104521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.008324, 32.735931, 29.751537>,  <42.426922, 32.633869, 29.409910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.008324, 32.735931, 29.751537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.934296, 33.094681, 29.590853>,  <42.889877, 33.309929, 29.494442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.934296, 33.094681, 29.590853>,  <43.008324, 32.735931, 29.751537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.934296, 33.094681, 29.590853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094664, 0.423141, 0.901105,
		0.978155, 0.128740, -0.163212,
		-0.185071, 0.896871, -0.401711,
		42.878773, 33.363743, 29.470339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.483002, 33.143471, 30.062355>,  <43.008324, 32.735931, 29.751537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.483002, 33.143471, 30.062355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.251919, 33.412701, 29.877653>,  <43.113270, 33.574238, 29.766832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.251919, 33.412701, 29.877653>,  <43.483002, 33.143471, 30.062355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.251919, 33.412701, 29.877653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436497, 0.732779, 0.522021,
		0.689725, 0.100022, -0.717130,
		-0.577711, 0.673076, -0.461756,
		43.078606, 33.614624, 29.739126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.816952, 33.837189, 30.111084>,  <43.483002, 33.143471, 30.062355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.816952, 33.837189, 30.111084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.447941, 33.956142, 30.012693>,  <43.226536, 34.027515, 29.953659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.447941, 33.956142, 30.012693>,  <43.816952, 33.837189, 30.111084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.447941, 33.956142, 30.012693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137404, 0.848689, 0.510731,
		0.360642, 0.437365, -0.823801,
		-0.922528, 0.297385, -0.245978,
		43.171181, 34.045357, 29.938900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.857998, 34.578621, 30.008699>,  <43.816952, 33.837189, 30.111084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.857998, 34.578621, 30.008699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.477505, 34.506824, 30.109047>,  <43.249207, 34.463749, 30.169256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.477505, 34.506824, 30.109047>,  <43.857998, 34.578621, 30.008699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.477505, 34.506824, 30.109047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017402, 0.780759, 0.624591,
		-0.307976, 0.598498, -0.739561,
		-0.951235, -0.179489, 0.250870,
		43.192135, 34.452976, 30.184307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.565388, 35.175697, 30.228048>,  <43.857998, 34.578621, 30.008699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.565388, 35.175697, 30.228048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.281590, 34.944557, 30.389389>,  <43.111309, 34.805874, 30.486195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.281590, 34.944557, 30.389389>,  <43.565388, 35.175697, 30.228048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.281590, 34.944557, 30.389389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070872, 0.510960, 0.856678,
		-0.701132, 0.636399, -0.321573,
		-0.709500, -0.577854, 0.403353,
		43.068741, 34.771202, 30.510395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.013580, 35.542522, 30.466400>,  <43.565388, 35.175697, 30.228048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.013580, 35.542522, 30.466400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.987801, 35.215115, 30.694738>,  <42.972332, 35.018669, 30.831741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.987801, 35.215115, 30.694738>,  <43.013580, 35.542522, 30.466400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.987801, 35.215115, 30.694738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043532, 0.569186, 0.821056,
		-0.996971, 0.077764, -0.001050,
		-0.064446, -0.818523, 0.570847,
		42.968468, 34.969559, 30.865993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.516933, 35.706497, 30.963902>,  <43.013580, 35.542522, 30.466400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.516933, 35.706497, 30.963902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.686737, 35.390774, 31.141344>,  <42.788620, 35.201340, 31.247810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.686737, 35.390774, 31.141344>,  <42.516933, 35.706497, 30.963902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.686737, 35.390774, 31.141344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044525, 0.471153, 0.880927,
		-0.904330, -0.393709, 0.164863,
		0.424505, -0.789308, 0.443608,
		42.814087, 35.153980, 31.274426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.175282, 35.602833, 31.605152>,  <42.516933, 35.706497, 30.963902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.175282, 35.602833, 31.605152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.527363, 35.420383, 31.657608>,  <42.738613, 35.310913, 31.689081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.527363, 35.420383, 31.657608>,  <42.175282, 35.602833, 31.605152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.527363, 35.420383, 31.657608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018981, 0.309926, 0.950571,
		-0.474217, -0.834207, 0.281456,
		0.880204, -0.456119, 0.131138,
		42.791424, 35.283546, 31.696949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.093475, 35.523163, 32.244148>,  <42.175282, 35.602833, 31.605152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.093475, 35.523163, 32.244148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.486439, 35.472626, 32.189144>,  <42.722218, 35.442303, 32.156143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.486439, 35.472626, 32.189144>,  <42.093475, 35.523163, 32.244148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.486439, 35.472626, 32.189144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172595, 0.333219, 0.926918,
		-0.071293, -0.934346, 0.349164,
		0.982410, -0.126347, -0.137507,
		42.781162, 35.434723, 32.147892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.314171, 35.518509, 32.883549>,  <42.093475, 35.523163, 32.244148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.314171, 35.518509, 32.883549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.649426, 35.582382, 32.674923>,  <42.850578, 35.620705, 32.549747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.649426, 35.582382, 32.674923>,  <42.314171, 35.518509, 32.883549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.649426, 35.582382, 32.674923> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422376, 0.415056, 0.805808,
		0.345154, -0.895673, 0.280427,
		0.838133, 0.159682, -0.521569,
		42.900867, 35.630287, 32.518452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.782585, 35.342899, 33.381268>,  <42.314171, 35.518509, 32.883549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.782585, 35.342899, 33.381268> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.980957, 35.563053, 33.112606>,  <43.099979, 35.695145, 32.951408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.980957, 35.563053, 33.112606>,  <42.782585, 35.342899, 33.381268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.980957, 35.563053, 33.112606> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385760, 0.553326, 0.738254,
		0.777973, -0.625222, 0.062094,
		0.495931, 0.550389, -0.671658,
		43.129738, 35.728168, 32.911110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.572262, 35.401726, 33.542992>,  <42.782585, 35.342899, 33.381268>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.572262, 35.401726, 33.542992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.446514, 35.718792, 33.334053>,  <43.371063, 35.909031, 33.208691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.446514, 35.718792, 33.334053>,  <43.572262, 35.401726, 33.542992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.446514, 35.718792, 33.334053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356873, 0.608568, 0.708722,
		0.879665, 0.036391, -0.474199,
		-0.314374, 0.792667, -0.522349,
		43.352203, 35.956593, 33.177349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.079258, 35.940014, 33.670105>,  <43.572262, 35.401726, 33.542992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.079258, 35.940014, 33.670105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.762215, 36.138969, 33.529037>,  <43.571987, 36.258343, 33.444397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.762215, 36.138969, 33.529037>,  <44.079258, 35.940014, 33.670105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.762215, 36.138969, 33.529037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139484, 0.710971, 0.689250,
		0.593564, 0.497112, -0.632899,
		-0.792607, 0.497393, -0.352668,
		43.524433, 36.288189, 33.423237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.331406, 36.648140, 33.525829>,  <44.079258, 35.940014, 33.670105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.331406, 36.648140, 33.525829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.934265, 36.647396, 33.573551>,  <43.695980, 36.646950, 33.602184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.934265, 36.647396, 33.573551>,  <44.331406, 36.648140, 33.525829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.934265, 36.647396, 33.573551> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091239, 0.632490, 0.769176,
		-0.076893, 0.774566, -0.627802,
		-0.992856, -0.001864, 0.119304,
		43.636410, 36.646835, 33.609341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.012642, 36.886688, 33.752079>,  <44.331406, 36.648140, 33.525829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.012642, 36.886688, 33.752079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.265942, 36.615940, 33.902191>,  <45.417923, 36.453491, 33.992260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.265942, 36.615940, 33.902191>,  <45.012642, 36.886688, 33.752079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.265942, 36.615940, 33.902191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176532, -0.345788, -0.921557,
		0.753544, 0.649826, -0.099481,
		0.633251, -0.676873, 0.375282,
		45.455917, 36.412880, 34.014774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.581684, 36.903904, 33.297024>,  <45.012642, 36.886688, 33.752079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.581684, 36.903904, 33.297024> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.610863, 36.553913, 33.488480>,  <45.628368, 36.343918, 33.603355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.610863, 36.553913, 33.488480>,  <45.581684, 36.903904, 33.297024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.610863, 36.553913, 33.488480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241540, -0.450136, -0.859672,
		0.967645, 0.178321, 0.178506,
		0.072946, -0.874974, 0.478644,
		45.632748, 36.291420, 33.632072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.195866, 36.586288, 32.865265>,  <45.581684, 36.903904, 33.297024>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.195866, 36.586288, 32.865265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.975719, 36.323143, 33.070911>,  <45.843632, 36.165257, 33.194298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.975719, 36.323143, 33.070911>,  <46.195866, 36.586288, 32.865265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.975719, 36.323143, 33.070911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158600, -0.686926, -0.709211,
		0.819719, -0.308789, 0.482400,
		-0.550369, -0.657862, 0.514112,
		45.810608, 36.125786, 33.225143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.579460, 35.920013, 32.865219>,  <46.195866, 36.586288, 32.865265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.579460, 35.920013, 32.865219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.198326, 35.822327, 32.937283>,  <45.969643, 35.763714, 32.980522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.198326, 35.822327, 32.937283>,  <46.579460, 35.920013, 32.865219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.198326, 35.822327, 32.937283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032653, -0.672708, -0.739187,
		0.301712, -0.698444, 0.648957,
		-0.952839, -0.244212, 0.180157,
		45.912476, 35.749062, 32.991329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.514397, 35.167778, 32.819420>,  <46.579460, 35.920013, 32.865219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.514397, 35.167778, 32.819420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.149620, 35.313904, 32.744682>,  <45.930756, 35.401577, 32.699841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.149620, 35.313904, 32.744682>,  <46.514397, 35.167778, 32.819420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.149620, 35.313904, 32.744682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099911, -0.639354, -0.762394,
		-0.397970, -0.676591, 0.619552,
		-0.911941, 0.365311, -0.186845,
		45.876038, 35.423496, 32.688629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.137424, 34.568398, 32.638577>,  <46.514397, 35.167778, 32.819420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.137424, 34.568398, 32.638577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.909756, 34.862572, 32.491512>,  <45.773155, 35.039078, 32.403275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.909756, 34.862572, 32.491512>,  <46.137424, 34.568398, 32.638577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.909756, 34.862572, 32.491512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101591, -0.506635, -0.856155,
		-0.815919, -0.449948, 0.363075,
		-0.569172, 0.735438, -0.367662,
		45.739002, 35.083202, 32.381214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.553154, 34.269669, 32.386822>,  <46.137424, 34.568398, 32.638577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.553154, 34.269669, 32.386822> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.575443, 34.623222, 32.201073>,  <45.588818, 34.835354, 32.089622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.575443, 34.623222, 32.201073>,  <45.553154, 34.269669, 32.386822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.575443, 34.623222, 32.201073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126157, -0.455136, -0.881440,
		-0.990444, 0.107704, 0.086145,
		0.055727, 0.883884, -0.464374,
		45.592163, 34.888386, 32.061760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.043903, 34.208248, 31.854919>,  <45.553154, 34.269669, 32.386822>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.043903, 34.208248, 31.854919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.294918, 34.495945, 31.735662>,  <45.445526, 34.668564, 31.664108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.294918, 34.495945, 31.735662>,  <45.043903, 34.208248, 31.854919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.294918, 34.495945, 31.735662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027298, -0.362366, -0.931636,
		-0.778110, 0.592773, -0.207763,
		0.627535, 0.719244, -0.298142,
		45.483177, 34.711720, 31.646219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.815239, 34.333237, 31.241562>,  <45.043903, 34.208248, 31.854919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.815239, 34.333237, 31.241562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.193600, 34.460968, 31.218563>,  <45.420616, 34.537609, 31.204763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.193600, 34.460968, 31.218563>,  <44.815239, 34.333237, 31.241562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.193600, 34.460968, 31.218563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075536, -0.389063, -0.918109,
		-0.315551, 0.864094, -0.392134,
		0.945898, 0.319330, -0.057499,
		45.477367, 34.556767, 31.201313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.853321, 34.606667, 30.546917>,  <44.815239, 34.333237, 31.241562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.853321, 34.606667, 30.546917> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.237923, 34.552147, 30.642355>,  <45.468685, 34.519436, 30.699617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.237923, 34.552147, 30.642355>,  <44.853321, 34.606667, 30.546917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.237923, 34.552147, 30.642355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186287, -0.314973, -0.930639,
		0.201998, 0.939263, -0.277458,
		0.961506, -0.136300, 0.238596,
		45.526375, 34.511257, 30.713934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.235931, 34.858391, 30.019386>,  <44.853321, 34.606667, 30.546917>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.235931, 34.858391, 30.019386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.501534, 34.615532, 30.193958>,  <45.660896, 34.469818, 30.298702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.501534, 34.615532, 30.193958>,  <45.235931, 34.858391, 30.019386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.501534, 34.615532, 30.193958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288180, -0.330788, -0.898628,
		0.689964, 0.722463, -0.044677,
		0.664004, -0.607146, 0.436431,
		45.700733, 34.433388, 30.324888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.737453, 34.845585, 29.506378>,  <45.235931, 34.858391, 30.019386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.737453, 34.845585, 29.506378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.809803, 34.535507, 29.748487>,  <45.853210, 34.349461, 29.893753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.809803, 34.535507, 29.748487>,  <45.737453, 34.845585, 29.506378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.809803, 34.535507, 29.748487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515449, -0.449415, -0.729616,
		0.837615, 0.443952, 0.318289,
		0.180871, -0.775198, 0.605271,
		45.864063, 34.302948, 29.930069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.486156, 34.730183, 29.416580>,  <45.737453, 34.845585, 29.506378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.486156, 34.730183, 29.416580> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.306332, 34.401840, 29.557486>,  <46.198437, 34.204834, 29.642029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.306332, 34.401840, 29.557486>,  <46.486156, 34.730183, 29.416580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.306332, 34.401840, 29.557486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485155, -0.555510, -0.675302,
		0.750012, -0.132687, 0.647979,
		-0.449563, -0.820855, 0.352265,
		46.171463, 34.155582, 29.663166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.987759, 34.186489, 29.280560>,  <46.486156, 34.730183, 29.416580>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.987759, 34.186489, 29.280560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.660625, 33.975327, 29.372175>,  <46.464344, 33.848629, 29.427145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.660625, 33.975327, 29.372175>,  <46.987759, 34.186489, 29.280560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.660625, 33.975327, 29.372175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246092, -0.680638, -0.690051,
		0.520174, -0.507985, 0.686565,
		-0.817837, -0.527905, 0.229039,
		46.415276, 33.816956, 29.440887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.222572, 33.529453, 29.376740>,  <46.987759, 34.186489, 29.280560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.222572, 33.529453, 29.376740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.832588, 33.501492, 29.292290>,  <46.598598, 33.484715, 29.241621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.832588, 33.501492, 29.292290>,  <47.222572, 33.529453, 29.376740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.832588, 33.501492, 29.292290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206189, -0.639871, -0.740305,
		-0.083339, -0.765296, 0.638260,
		-0.974957, -0.069906, -0.211122,
		46.540100, 33.480518, 29.228952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.119541, 32.875706, 29.389956>,  <47.222572, 33.529453, 29.376740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.119541, 32.875706, 29.389956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.829765, 33.023071, 29.156900>,  <46.655899, 33.111492, 29.017067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.829765, 33.023071, 29.156900>,  <47.119541, 32.875706, 29.389956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.829765, 33.023071, 29.156900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187218, -0.708287, -0.680646,
		-0.663430, -0.602165, 0.444137,
		-0.724438, 0.368411, -0.582635,
		46.612434, 33.133595, 28.982109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.671085, 32.288456, 29.110968>,  <47.119541, 32.875706, 29.389956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.671085, 32.288456, 29.110968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.602936, 32.608479, 28.880877>,  <46.562046, 32.800491, 28.742823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.602936, 32.608479, 28.880877>,  <46.671085, 32.288456, 29.110968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.602936, 32.608479, 28.880877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139235, -0.597451, -0.789725,
		-0.975493, -0.054458, 0.213186,
		-0.170375, 0.800054, -0.575227,
		46.551823, 32.848495, 28.708309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.087254, 32.102547, 28.689177>,  <46.671085, 32.288456, 29.110968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.087254, 32.102547, 28.689177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.231075, 32.415707, 28.486082>,  <46.317368, 32.603603, 28.364225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.231075, 32.415707, 28.486082>,  <46.087254, 32.102547, 28.689177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.231075, 32.415707, 28.486082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326191, -0.404340, -0.854464,
		-0.874254, 0.472845, 0.109992,
		0.359555, 0.782896, -0.507734,
		46.338943, 32.650574, 28.333761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.503376, 32.361801, 28.315247>,  <46.087254, 32.102547, 28.689177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.503376, 32.361801, 28.315247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.816002, 32.522011, 28.123940>,  <46.003578, 32.618137, 28.009155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.816002, 32.522011, 28.123940>,  <45.503376, 32.361801, 28.315247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.816002, 32.522011, 28.123940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382840, -0.297367, -0.874647,
		-0.492539, 0.866691, -0.079074,
		0.781562, 0.400525, -0.478268,
		46.050472, 32.642170, 27.980459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.238358, 32.726570, 27.701027>,  <45.503376, 32.361801, 28.315247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.238358, 32.726570, 27.701027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.628380, 32.668037, 27.634262>,  <45.862392, 32.632915, 27.594204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.628380, 32.668037, 27.634262>,  <45.238358, 32.726570, 27.701027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.628380, 32.668037, 27.634262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204629, -0.301152, -0.931361,
		0.086026, 0.942281, -0.323584,
		0.975052, -0.146336, -0.166911,
		45.920895, 32.624138, 27.584188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.313938, 32.969517, 27.047308>,  <45.238358, 32.726570, 27.701027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.313938, 32.969517, 27.047308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.625767, 32.723038, 27.092150>,  <45.812862, 32.575150, 27.119055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.625767, 32.723038, 27.092150>,  <45.313938, 32.969517, 27.047308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.625767, 32.723038, 27.092150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184096, -0.396524, -0.899376,
		0.598647, 0.680490, -0.422558,
		0.779571, -0.616200, 0.112102,
		45.859638, 32.538177, 27.125780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.607830, 42.128613, 40.342957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482361, 41.775055, 40.481716>,  <36.407082, 41.562920, 40.564972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482361, 41.775055, 40.481716>,  <36.607830, 42.128613, 40.342957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482361, 41.775055, 40.481716> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297610, -0.438448, -0.848052,
		0.901687, -0.162768, 0.400584,
		-0.313671, -0.883895, 0.346902,
		36.388260, 41.509888, 40.585785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190231, 41.729721, 40.346748>,  <36.607830, 42.128613, 40.342957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.190231, 41.729721, 40.346748> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879940, 41.477310, 40.343834>,  <36.693764, 41.325863, 40.342087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879940, 41.477310, 40.343834>,  <37.190231, 41.729721, 40.346748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879940, 41.477310, 40.343834> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313876, -0.375786, -0.871933,
		0.547476, -0.678667, 0.489572,
		-0.775727, -0.631027, -0.007283,
		36.647221, 41.288002, 40.341648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477528, 41.093826, 40.070747>,  <37.190231, 41.729721, 40.346748>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477528, 41.093826, 40.070747> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083424, 41.059273, 40.011692>,  <36.846962, 41.038540, 39.976257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083424, 41.059273, 40.011692>,  <37.477528, 41.093826, 40.070747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083424, 41.059273, 40.011692> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166174, -0.278612, -0.945918,
		0.040576, -0.956511, 0.288861,
		-0.985261, -0.086383, -0.147642,
		36.787846, 41.033360, 39.967400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372009, 40.444969, 39.818916>,  <37.477528, 41.093826, 40.070747>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372009, 40.444969, 39.818916> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068230, 40.672894, 39.693344>,  <36.885963, 40.809650, 39.618000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068230, 40.672894, 39.693344>,  <37.372009, 40.444969, 39.818916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068230, 40.672894, 39.693344> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301977, -0.118657, -0.945902,
		-0.576238, -0.813162, -0.081957,
		-0.759447, 0.569814, -0.313931,
		36.840397, 40.843838, 39.599163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186493, 40.070580, 39.333321>,  <37.372009, 40.444969, 39.818916>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186493, 40.070580, 39.333321> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999180, 40.413116, 39.246250>,  <36.886791, 40.618641, 39.194008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999180, 40.413116, 39.246250>,  <37.186493, 40.070580, 39.333321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999180, 40.413116, 39.246250> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194946, -0.140156, -0.970748,
		-0.861805, -0.497019, -0.101308,
		-0.468282, 0.856346, -0.217679,
		36.858696, 40.670021, 39.180946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851791, 39.890942, 38.851601>,  <37.186493, 40.070580, 39.333321>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851791, 39.890942, 38.851601> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822266, 40.288494, 38.818752>,  <36.804550, 40.527027, 38.799042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822266, 40.288494, 38.818752>,  <36.851791, 39.890942, 38.851601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822266, 40.288494, 38.818752> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163648, -0.069160, -0.984092,
		-0.983753, -0.086083, -0.157542,
		-0.073818, 0.993885, -0.082124,
		36.800121, 40.586658, 38.794117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089813, 40.073639, 38.554272>,  <36.851791, 39.890942, 38.851601>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089813, 40.073639, 38.554272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391418, 40.323341, 38.472523>,  <36.572380, 40.473164, 38.423473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391418, 40.323341, 38.472523>,  <36.089813, 40.073639, 38.554272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391418, 40.323341, 38.472523> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066510, -0.236979, -0.969235,
		-0.653488, 0.744406, -0.137165,
		0.754009, 0.624261, -0.204373,
		36.617622, 40.510620, 38.411209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866302, 40.335861, 37.990707>,  <36.089813, 40.073639, 38.554272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866302, 40.335861, 37.990707> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265038, 40.367184, 37.996010>,  <36.504280, 40.385979, 37.999191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265038, 40.367184, 37.996010>,  <35.866302, 40.335861, 37.990707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265038, 40.367184, 37.996010> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016051, -0.035144, -0.999253,
		-0.077784, 0.996310, -0.036289,
		0.996841, 0.078308, 0.013259,
		36.564091, 40.390675, 37.999989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114147, 40.681076, 37.335182>,  <35.866302, 40.335861, 37.990707>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114147, 40.681076, 37.335182> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453030, 40.520977, 37.474922>,  <36.656361, 40.424919, 37.558765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453030, 40.520977, 37.474922>,  <36.114147, 40.681076, 37.335182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453030, 40.520977, 37.474922> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265480, -0.250639, -0.930967,
		0.460175, 0.881467, -0.106086,
		0.847207, -0.400244, 0.349350,
		36.707191, 40.400906, 37.579727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612419, 40.690781, 36.773876>,  <36.114147, 40.681076, 37.335182>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612419, 40.690781, 36.773876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818436, 40.437149, 37.004585>,  <36.942047, 40.284969, 37.143009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818436, 40.437149, 37.004585>,  <36.612419, 40.690781, 36.773876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818436, 40.437149, 37.004585> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162980, -0.588168, -0.792147,
		0.841526, 0.501994, -0.199590,
		0.515045, -0.634083, 0.576773,
		36.972950, 40.246925, 37.177616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287460, 40.675030, 36.505280>,  <36.612419, 40.690781, 36.773876>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287460, 40.675030, 36.505280> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222260, 40.341057, 36.715542>,  <37.183140, 40.140671, 36.841698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222260, 40.341057, 36.715542>,  <37.287460, 40.675030, 36.505280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222260, 40.341057, 36.715542> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289016, -0.549815, -0.783692,
		0.943345, 0.024180, 0.330930,
		-0.163001, -0.834936, 0.525654,
		37.173359, 40.090576, 36.873238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890556, 40.251846, 36.266140>,  <37.287460, 40.675030, 36.505280>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890556, 40.251846, 36.266140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611649, 40.016880, 36.430462>,  <37.444305, 39.875900, 36.529057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611649, 40.016880, 36.430462>,  <37.890556, 40.251846, 36.266140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611649, 40.016880, 36.430462> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217312, -0.719364, -0.659766,
		0.683076, -0.370760, 0.629241,
		-0.697268, -0.587412, 0.410810,
		37.402470, 39.840656, 36.553703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203266, 39.545696, 36.206795>,  <37.890556, 40.251846, 36.266140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203266, 39.545696, 36.206795> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810852, 39.498367, 36.268211>,  <37.575405, 39.469971, 36.305061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810852, 39.498367, 36.268211>,  <38.203266, 39.545696, 36.206795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.810852, 39.498367, 36.268211> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022314, -0.717895, -0.695794,
		0.192559, -0.686022, 0.701638,
		-0.981032, -0.118325, 0.153545,
		37.516544, 39.462872, 36.314274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967155, 38.859921, 36.236763>,  <38.203266, 39.545696, 36.206795>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967155, 38.859921, 36.236763> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645641, 39.047489, 36.090317>,  <37.452732, 39.160030, 36.002449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645641, 39.047489, 36.090317>,  <37.967155, 38.859921, 36.236763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645641, 39.047489, 36.090317> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151384, -0.756362, -0.636395,
		-0.575332, -0.456104, 0.678942,
		-0.803789, 0.468920, -0.366113,
		37.404507, 39.188164, 35.980484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334602, 38.501289, 35.836418>,  <37.967155, 38.859921, 36.236763>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334602, 38.501289, 35.836418> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489243, 38.133568, 35.806984>,  <38.582027, 37.912933, 35.789322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489243, 38.133568, 35.806984>,  <38.334602, 38.501289, 35.836418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489243, 38.133568, 35.806984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243174, 0.024644, 0.969670,
		-0.889611, -0.392767, 0.233079,
		0.386598, -0.919308, -0.073587,
		38.605221, 37.857777, 35.784908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020905, 38.003353, 36.396217>,  <38.334602, 38.501289, 35.836418>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020905, 38.003353, 36.396217> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365776, 37.844101, 36.270908>,  <38.572701, 37.748550, 36.195724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365776, 37.844101, 36.270908>,  <38.020905, 38.003353, 36.396217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365776, 37.844101, 36.270908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285217, -0.129582, 0.949663,
		-0.418687, -0.908129, 0.001831,
		0.862179, -0.398134, -0.313268,
		38.624432, 37.724659, 36.176929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162365, 37.388962, 36.963791>,  <38.020905, 38.003353, 36.396217>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162365, 37.388962, 36.963791> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509495, 37.490776, 36.793102>,  <38.717773, 37.551865, 36.690689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509495, 37.490776, 36.793102>,  <38.162365, 37.388962, 36.963791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509495, 37.490776, 36.793102> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450653, -0.041515, 0.891733,
		0.209264, -0.966172, -0.150735,
		0.867825, 0.254537, -0.426721,
		38.769844, 37.567139, 36.665085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664818, 37.043457, 37.425323>,  <38.162365, 37.388962, 36.963791>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664818, 37.043457, 37.425323> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866543, 37.313839, 37.210381>,  <38.987579, 37.476067, 37.081417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866543, 37.313839, 37.210381>,  <38.664818, 37.043457, 37.425323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866543, 37.313839, 37.210381> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544105, 0.234464, 0.805591,
		0.670534, -0.698649, -0.249547,
		0.504315, 0.675956, -0.537354,
		39.017838, 37.516624, 37.049175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407066, 36.913258, 37.517353>,  <38.664818, 37.043457, 37.425323>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.407066, 36.913258, 37.517353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366550, 37.304272, 37.443413>,  <39.342243, 37.538879, 37.399048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366550, 37.304272, 37.443413>,  <39.407066, 36.913258, 37.517353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366550, 37.304272, 37.443413> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437170, 0.210637, 0.874365,
		0.893657, 0.007753, -0.448684,
		-0.101288, 0.977534, -0.184848,
		39.336163, 37.597530, 37.387959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038548, 37.261108, 37.933270>,  <39.407066, 36.913258, 37.517353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.038548, 37.261108, 37.933270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.817951, 37.572002, 37.812092>,  <39.685593, 37.758537, 37.739388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.817951, 37.572002, 37.812092>,  <40.038548, 37.261108, 37.933270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.817951, 37.572002, 37.812092> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396134, 0.563606, 0.724863,
		0.734125, 0.279748, -0.618709,
		-0.551487, 0.777232, -0.302940,
		39.652504, 37.805172, 37.721210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.484550, 37.873005, 37.781620>,  <40.038548, 37.261108, 37.933270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.484550, 37.873005, 37.781620> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115807, 37.963768, 37.907284>,  <39.894562, 38.018227, 37.982681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115807, 37.963768, 37.907284>,  <40.484550, 37.873005, 37.781620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.115807, 37.963768, 37.907284> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387165, 0.574525, 0.721127,
		-0.016863, 0.786406, -0.617480,
		-0.921856, 0.226907, 0.314157,
		39.839249, 38.031841, 38.001530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.529503, 38.556957, 38.153450>,  <40.484550, 37.873005, 37.781620>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.529503, 38.556957, 38.153450> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164394, 38.426079, 38.251259>,  <39.945328, 38.347553, 38.309944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164394, 38.426079, 38.251259>,  <40.529503, 38.556957, 38.153450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.164394, 38.426079, 38.251259> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005774, 0.588230, 0.808673,
		-0.408426, 0.739547, -0.535031,
		-0.912773, -0.327194, 0.244519,
		39.890564, 38.327919, 38.324615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214619, 39.076401, 38.590340>,  <40.529503, 38.556957, 38.153450>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214619, 39.076401, 38.590340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953255, 38.780571, 38.654953>,  <39.796436, 38.603073, 38.693722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953255, 38.780571, 38.654953>,  <40.214619, 39.076401, 38.590340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.953255, 38.780571, 38.654953> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282978, 0.436542, 0.854023,
		-0.702126, 0.512316, -0.494522,
		-0.653409, -0.739570, 0.161533,
		39.757233, 38.558701, 38.703411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507626, 39.319229, 38.544056>,  <40.214619, 39.076401, 38.590340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507626, 39.319229, 38.544056> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494843, 38.990387, 38.771435>,  <39.487171, 38.793083, 38.907860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494843, 38.990387, 38.771435>,  <39.507626, 39.319229, 38.544056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.494843, 38.990387, 38.771435> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444675, 0.521042, 0.728546,
		-0.895121, -0.229488, -0.382221,
		-0.031961, -0.822101, 0.568443,
		39.485256, 38.743755, 38.941967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825798, 39.346397, 38.799721>,  <39.507626, 39.319229, 38.544056>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.825798, 39.346397, 38.799721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031506, 39.109268, 39.047623>,  <39.154930, 38.966991, 39.196362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031506, 39.109268, 39.047623>,  <38.825798, 39.346397, 38.799721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031506, 39.109268, 39.047623> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495228, 0.384717, 0.778937,
		-0.700199, -0.707500, -0.095734,
		0.514267, -0.592821, 0.619752,
		39.185787, 38.931423, 39.233547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268494, 39.057873, 39.105740>,  <38.825798, 39.346397, 38.799721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.268494, 39.057873, 39.105740> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575840, 38.965382, 39.344456>,  <38.760246, 38.909885, 39.487686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575840, 38.965382, 39.344456>,  <38.268494, 39.057873, 39.105740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.575840, 38.965382, 39.344456> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488284, 0.391034, 0.780174,
		-0.413763, -0.890857, 0.187550,
		0.768362, -0.231230, 0.596786,
		38.806347, 38.896011, 39.523491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011913, 38.640041, 39.688606>,  <38.268494, 39.057873, 39.105740>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011913, 38.640041, 39.688606> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354851, 38.808701, 39.806709>,  <38.560612, 38.909897, 39.877571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354851, 38.808701, 39.806709>,  <38.011913, 38.640041, 39.688606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354851, 38.808701, 39.806709> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470881, 0.410735, 0.780748,
		0.207928, -0.808400, 0.550686,
		0.857343, 0.421647, 0.295257,
		38.612053, 38.935196, 39.895287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076801, 38.504196, 40.363708>,  <38.011913, 38.640041, 39.688606>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076801, 38.504196, 40.363708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327282, 38.815155, 40.339993>,  <38.477570, 39.001732, 40.325764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327282, 38.815155, 40.339993>,  <38.076801, 38.504196, 40.363708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327282, 38.815155, 40.339993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482049, 0.445816, 0.754239,
		0.612778, -0.443729, 0.653918,
		0.626205, 0.777401, -0.059287,
		38.515144, 39.048374, 40.322208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139336, 37.707169, 40.486134>,  <38.076801, 38.504196, 40.363708>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139336, 37.707169, 40.486134> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839779, 37.506622, 40.659473>,  <37.660046, 37.386295, 40.763477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839779, 37.506622, 40.659473>,  <38.139336, 37.707169, 40.486134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839779, 37.506622, 40.659473> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131249, -0.528751, -0.838568,
		0.649565, -0.684873, 0.330173,
		-0.748892, -0.501369, 0.433347,
		37.615112, 37.356213, 40.789478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281433, 36.939903, 40.270401>,  <38.139336, 37.707169, 40.486134>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281433, 36.939903, 40.270401> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901772, 37.014954, 40.371525>,  <37.673977, 37.059982, 40.432198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901772, 37.014954, 40.371525>,  <38.281433, 36.939903, 40.270401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901772, 37.014954, 40.371525> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311008, -0.434141, -0.845456,
		-0.048877, -0.881089, 0.470419,
		-0.949150, 0.187627, 0.252806,
		37.617027, 37.071243, 40.447365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935326, 36.366955, 40.164516>,  <38.281433, 36.939903, 40.270401>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935326, 36.366955, 40.164516> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622181, 36.615543, 40.152569>,  <37.434292, 36.764698, 40.145401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622181, 36.615543, 40.152569>,  <37.935326, 36.366955, 40.164516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622181, 36.615543, 40.152569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349785, -0.479307, -0.804932,
		-0.514562, -0.619704, 0.592615,
		-0.782864, 0.621475, -0.029870,
		37.387321, 36.801987, 40.143608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453144, 36.038818, 39.756474>,  <37.935326, 36.366955, 40.164516>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453144, 36.038818, 39.756474> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269863, 36.393730, 39.777622>,  <37.159897, 36.606678, 39.790310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269863, 36.393730, 39.777622>,  <37.453144, 36.038818, 39.756474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269863, 36.393730, 39.777622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422478, -0.165068, -0.891216,
		-0.782027, -0.430690, 0.450488,
		-0.458199, 0.887276, 0.052870,
		37.132404, 36.659912, 39.793484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731178, 35.968922, 39.653027>,  <37.453144, 36.038818, 39.756474>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731178, 35.968922, 39.653027> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809082, 36.349831, 39.559010>,  <36.855824, 36.578377, 39.502598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809082, 36.349831, 39.559010>,  <36.731178, 35.968922, 39.653027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809082, 36.349831, 39.559010> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456756, -0.124011, -0.880906,
		-0.868010, 0.278927, 0.410803,
		0.194764, 0.952272, -0.235045,
		36.867512, 36.635513, 39.488495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094700, 36.298431, 39.412651>,  <36.731178, 35.968922, 39.653027>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094700, 36.298431, 39.412651> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395622, 36.509621, 39.255028>,  <36.576176, 36.636333, 39.160454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395622, 36.509621, 39.255028>,  <36.094700, 36.298431, 39.412651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395622, 36.509621, 39.255028> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478655, 0.027037, -0.877587,
		-0.452692, 0.848828, 0.273059,
		0.752303, 0.527978, -0.394056,
		36.621315, 36.668015, 39.136810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792133, 36.883568, 39.084412>,  <36.094700, 36.298431, 39.412651>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792133, 36.883568, 39.084412> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152294, 36.858009, 38.912273>,  <36.368389, 36.842674, 38.808990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152294, 36.858009, 38.912273>,  <35.792133, 36.883568, 39.084412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152294, 36.858009, 38.912273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418564, 0.142597, -0.896923,
		0.118676, 0.987716, 0.101649,
		0.900400, -0.063897, -0.430346,
		36.422413, 36.838840, 38.783169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834789, 37.485935, 38.594631>,  <35.792133, 36.883568, 39.084412>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834789, 37.485935, 38.594631> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131073, 37.242161, 38.481537>,  <36.308842, 37.095894, 38.413681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131073, 37.242161, 38.481537>,  <35.834789, 37.485935, 38.594631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131073, 37.242161, 38.481537> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130554, 0.282250, -0.950416,
		0.659021, 0.740892, 0.129500,
		0.740707, -0.609438, -0.282735,
		36.353287, 37.059330, 38.396717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211315, 37.943001, 38.121925>,  <35.834789, 37.485935, 38.594631>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211315, 37.943001, 38.121925> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335720, 37.569164, 38.052860>,  <36.410362, 37.344864, 38.011421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335720, 37.569164, 38.052860>,  <36.211315, 37.943001, 38.121925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335720, 37.569164, 38.052860> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031173, 0.191609, -0.980976,
		0.949894, 0.299713, 0.088727,
		0.311012, -0.934590, -0.172666,
		36.429024, 37.288788, 38.001060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718788, 38.019707, 37.590351>,  <36.211315, 37.943001, 38.121925>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718788, 38.019707, 37.590351> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595341, 37.639317, 37.582287>,  <36.521271, 37.411083, 37.577450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595341, 37.639317, 37.582287>,  <36.718788, 38.019707, 37.590351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595341, 37.639317, 37.582287> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153218, 0.070621, -0.985666,
		0.938764, -0.301107, -0.167501,
		-0.308620, -0.950972, -0.020162,
		36.502754, 37.354027, 37.576237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081318, 37.757484, 37.102005>,  <36.718788, 38.019707, 37.590351>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081318, 37.757484, 37.102005> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750362, 37.534401, 37.128471>,  <36.551788, 37.400551, 37.144352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750362, 37.534401, 37.128471>,  <37.081318, 37.757484, 37.102005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.750362, 37.534401, 37.128471> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062088, -0.026250, -0.997725,
		0.558182, -0.829618, -0.012908,
		-0.827392, -0.557713, 0.066162,
		36.502144, 37.367088, 37.148319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160767, 37.159309, 36.743019>,  <37.081318, 37.757484, 37.102005>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160767, 37.159309, 36.743019> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765785, 37.222294, 36.747780>,  <36.528797, 37.260086, 36.750637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765785, 37.222294, 36.747780>,  <37.160767, 37.159309, 36.743019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765785, 37.222294, 36.747780> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049712, -0.238451, -0.969881,
		-0.149878, -0.958305, 0.243287,
		-0.987454, 0.157458, 0.011901,
		36.469547, 37.269531, 36.751350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.110703, 38.835888, 43.957363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.730408, 38.792480, 44.073517>,  <38.502232, 38.766438, 44.143208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.730408, 38.792480, 44.073517>,  <39.110703, 38.835888, 43.957363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.730408, 38.792480, 44.073517> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152877, -0.650765, -0.743730,
		0.269677, -0.751485, 0.602117,
		-0.950738, -0.108517, 0.290381,
		38.445187, 38.759926, 44.160629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931034, 38.125896, 44.059772>,  <39.110703, 38.835888, 43.957363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931034, 38.125896, 44.059772> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.589241, 38.315514, 43.974785>,  <38.384167, 38.429283, 43.923794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.589241, 38.315514, 43.974785>,  <38.931034, 38.125896, 44.059772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589241, 38.315514, 43.974785> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111786, -0.567210, -0.815952,
		-0.507312, -0.673465, 0.537662,
		-0.854482, 0.474045, -0.212468,
		38.332897, 38.457729, 43.911045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583862, 37.616066, 43.752583>,  <38.931034, 38.125896, 44.059772>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583862, 37.616066, 43.752583> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.346882, 37.923988, 43.657581>,  <38.204693, 38.108742, 43.600582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.346882, 37.923988, 43.657581>,  <38.583862, 37.616066, 43.752583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346882, 37.923988, 43.657581> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259209, -0.461286, -0.848544,
		-0.762769, -0.441155, 0.472827,
		-0.592448, 0.769804, -0.237503,
		38.169147, 38.154930, 43.586330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871365, 37.385342, 43.708210>,  <38.583862, 37.616066, 43.752583>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.871365, 37.385342, 43.708210> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.930851, 37.702389, 43.471687>,  <37.966541, 37.892616, 43.329773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.930851, 37.702389, 43.471687>,  <37.871365, 37.385342, 43.708210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930851, 37.702389, 43.471687> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293328, -0.535690, -0.791830,
		-0.944375, 0.291202, 0.152833,
		0.148711, 0.792615, -0.591309,
		37.975464, 37.940174, 43.294296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291416, 37.339104, 43.211224>,  <37.871365, 37.385342, 43.708210>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.291416, 37.339104, 43.211224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.565945, 37.582607, 43.052036>,  <37.730663, 37.728710, 42.956524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.565945, 37.582607, 43.052036>,  <37.291416, 37.339104, 43.211224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565945, 37.582607, 43.052036> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168771, -0.398944, -0.901310,
		-0.707445, 0.685754, -0.171063,
		0.686322, 0.608757, -0.397966,
		37.771843, 37.765236, 42.932648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.934032, 37.612053, 42.770885>,  <37.291416, 37.339104, 43.211224>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.934032, 37.612053, 42.770885> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.310768, 37.648373, 42.641457>,  <37.536808, 37.670166, 42.563801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.310768, 37.648373, 42.641457>,  <36.934032, 37.612053, 42.770885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310768, 37.648373, 42.641457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297276, -0.223967, -0.928152,
		-0.156746, 0.970357, -0.183948,
		0.941837, 0.090801, -0.323570,
		37.593319, 37.675613, 42.544384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816044, 38.084221, 42.044304>,  <36.934032, 37.612053, 42.770885>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.816044, 38.084221, 42.044304> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.175404, 37.908550, 42.045372>,  <37.391018, 37.803146, 42.046013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.175404, 37.908550, 42.045372>,  <36.816044, 38.084221, 42.044304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175404, 37.908550, 42.045372> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080659, -0.170969, -0.981969,
		0.431715, 0.881983, -0.189021,
		0.898397, -0.439177, 0.002670,
		37.444923, 37.776798, 42.046173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134438, 38.412281, 41.444283>,  <36.816044, 38.084221, 42.044304>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134438, 38.412281, 41.444283> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.329277, 38.073788, 41.530651>,  <37.446182, 37.870693, 41.582474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.329277, 38.073788, 41.530651>,  <37.134438, 38.412281, 41.444283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329277, 38.073788, 41.530651> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069468, -0.283993, -0.956307,
		0.870579, 0.450818, -0.197119,
		0.487101, -0.846234, 0.215921,
		37.475407, 37.819916, 41.595428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690174, 38.322662, 40.950752>,  <37.134438, 38.412281, 41.444283>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690174, 38.322662, 40.950752> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.629475, 37.952087, 41.088554>,  <37.593056, 37.729740, 41.171234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.629475, 37.952087, 41.088554>,  <37.690174, 38.322662, 40.950752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629475, 37.952087, 41.088554> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052134, -0.355554, -0.933201,
		0.987043, -0.123651, 0.102253,
		-0.151747, -0.926440, 0.344501,
		37.583950, 37.674156, 41.191906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365967, 38.626060, 41.021454>,  <37.690174, 38.322662, 40.950752>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365967, 38.626060, 41.021454> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.456818, 38.975861, 40.850029>,  <38.511326, 39.185741, 40.747173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.456818, 38.975861, 40.850029>,  <38.365967, 38.626060, 41.021454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456818, 38.975861, 40.850029> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111903, 0.460586, 0.880533,
		0.967416, -0.152032, 0.202468,
		0.227123, 0.874498, -0.428565,
		38.524956, 39.238209, 40.721458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799824, 38.997799, 41.508823>,  <38.365967, 38.626060, 41.021454>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799824, 38.997799, 41.508823> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.677570, 39.289654, 41.264133>,  <38.604218, 39.464767, 41.117317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.677570, 39.289654, 41.264133>,  <38.799824, 38.997799, 41.508823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677570, 39.289654, 41.264133> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105055, 0.664390, 0.739966,
		0.946334, 0.161897, -0.279715,
		-0.305638, 0.729641, -0.611727,
		38.585880, 39.508545, 41.080616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364601, 39.461323, 41.478642>,  <38.799824, 38.997799, 41.508823>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364601, 39.461323, 41.478642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.018520, 39.645863, 41.400074>,  <38.810871, 39.756588, 41.352936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.018520, 39.645863, 41.400074>,  <39.364601, 39.461323, 41.478642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018520, 39.645863, 41.400074> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097269, 0.538703, 0.836862,
		0.491895, 0.704951, -0.510963,
		-0.865204, 0.461349, -0.196416,
		38.758961, 39.784267, 41.341148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545971, 40.112396, 41.642937>,  <39.364601, 39.461323, 41.478642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545971, 40.112396, 41.642937> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.146217, 40.100052, 41.649548>,  <38.906364, 40.092644, 41.653515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.146217, 40.100052, 41.649548>,  <39.545971, 40.112396, 41.642937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146217, 40.100052, 41.649548> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000327, 0.463723, 0.885980,
		-0.035005, 0.885443, -0.463428,
		-0.999387, -0.030862, 0.016522,
		38.846401, 40.090794, 41.654503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407650, 40.759296, 41.770844>,  <39.545971, 40.112396, 41.642937>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.407650, 40.759296, 41.770844> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.054920, 40.590794, 41.855621>,  <38.843281, 40.489693, 41.906490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.054920, 40.590794, 41.855621>,  <39.407650, 40.759296, 41.770844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054920, 40.590794, 41.855621> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045606, 0.523529, 0.850786,
		-0.469359, 0.740582, -0.480875,
		-0.881829, -0.421255, 0.211948,
		38.790371, 40.464417, 41.919205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869926, 41.379726, 41.876202>,  <39.407650, 40.759296, 41.770844>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869926, 41.379726, 41.876202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.739899, 41.048702, 42.059277>,  <38.661884, 40.850086, 42.169121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.739899, 41.048702, 42.059277>,  <38.869926, 41.379726, 41.876202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739899, 41.048702, 42.059277> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292773, 0.548255, 0.783390,
		-0.899231, 0.120656, -0.420506,
		-0.325066, -0.827562, 0.457683,
		38.642380, 40.800434, 42.196583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367386, 41.633877, 42.265495>,  <38.869926, 41.379726, 41.876202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367386, 41.633877, 42.265495> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.425636, 41.286434, 42.454945>,  <38.460587, 41.077969, 42.568615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.425636, 41.286434, 42.454945>,  <38.367386, 41.633877, 42.265495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.425636, 41.286434, 42.454945> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309142, 0.414801, 0.855787,
		-0.939799, -0.271045, -0.208115,
		0.145630, -0.868605, 0.473621,
		38.469326, 41.025852, 42.597031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.701809, 41.553829, 42.687943>,  <38.367386, 41.633877, 42.265495>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.701809, 41.553829, 42.687943> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.002739, 41.335495, 42.835491>,  <38.183296, 41.204494, 42.924023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.002739, 41.335495, 42.835491>,  <37.701809, 41.553829, 42.687943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002739, 41.335495, 42.835491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174260, 0.375104, 0.910456,
		-0.635322, -0.749243, 0.187085,
		0.752329, -0.545831, 0.368875,
		38.228439, 41.171745, 42.946156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479031, 41.299747, 43.364174>,  <37.701809, 41.553829, 42.687943>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479031, 41.299747, 43.364174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.873207, 41.232296, 43.372868>,  <38.109715, 41.191826, 43.378082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.873207, 41.232296, 43.372868>,  <37.479031, 41.299747, 43.364174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873207, 41.232296, 43.372868> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040513, 0.357029, 0.933214,
		-0.165123, -0.918746, 0.358663,
		0.985440, -0.168626, 0.021733,
		38.168839, 41.181709, 43.379387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605453, 41.128036, 44.022739>,  <37.479031, 41.299747, 43.364174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605453, 41.128036, 44.022739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.977356, 41.219177, 43.907066>,  <38.200497, 41.273861, 43.837662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.977356, 41.219177, 43.907066>,  <37.605453, 41.128036, 44.022739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977356, 41.219177, 43.907066> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156299, 0.466885, 0.870396,
		0.333339, -0.854459, 0.398478,
		0.929761, 0.227855, -0.289182,
		38.256283, 41.287533, 43.820312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928402, 40.967716, 44.636021>,  <37.605453, 41.128036, 44.022739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928402, 40.967716, 44.636021> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.163765, 41.210045, 44.421825>,  <38.304985, 41.355442, 44.293308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.163765, 41.210045, 44.421825>,  <37.928402, 40.967716, 44.636021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163765, 41.210045, 44.421825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291437, 0.458851, 0.839357,
		0.754214, -0.649947, 0.093432,
		0.588408, 0.605826, -0.535491,
		38.340286, 41.391792, 44.261177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478775, 40.937313, 45.044952>,  <37.928402, 40.967716, 44.636021>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478775, 40.937313, 45.044952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.448074, 41.281128, 44.842842>,  <38.429653, 41.487415, 44.721577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.448074, 41.281128, 44.842842>,  <38.478775, 40.937313, 45.044952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448074, 41.281128, 44.842842> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222720, 0.508748, 0.831608,
		0.971857, -0.048710, -0.230483,
		-0.076750, 0.859537, -0.505278,
		38.425049, 41.538990, 44.691257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121799, 41.444813, 45.242947>,  <38.478775, 40.937313, 45.044952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121799, 41.444813, 45.242947> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.808159, 41.650578, 45.104053>,  <38.619976, 41.774036, 45.020718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.808159, 41.650578, 45.104053>,  <39.121799, 41.444813, 45.242947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808159, 41.650578, 45.104053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136111, 0.688379, 0.712466,
		0.605529, 0.511381, -0.609774,
		-0.784097, 0.514416, -0.347229,
		38.572929, 41.804901, 44.999886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265381, 42.248199, 45.321659>,  <39.121799, 41.444813, 45.242947>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265381, 42.248199, 45.321659> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.869179, 42.225346, 45.271633>,  <38.631458, 42.211632, 45.241619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.869179, 42.225346, 45.271633>,  <39.265381, 42.248199, 45.321659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869179, 42.225346, 45.271633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127159, 0.726650, 0.675138,
		0.052305, 0.684628, -0.727013,
		-0.990502, -0.057133, -0.125064,
		38.572029, 42.208206, 45.234116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.860943, 39.609692, 47.322678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.259953, 39.582890, 47.331188>,  <32.499359, 39.566807, 47.336292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.259953, 39.582890, 47.331188>,  <31.860943, 39.609692, 47.322678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.259953, 39.582890, 47.331188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004687, -0.238546, -0.971120,
		0.070148, 0.968817, -0.237641,
		0.997526, -0.067009, 0.021275,
		32.559212, 39.562786, 47.337570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.029976, 40.083080, 46.876110>,  <31.860943, 39.609692, 47.322678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.029976, 40.083080, 46.876110> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.327606, 39.819794, 46.921894>,  <32.506184, 39.661823, 46.949364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.327606, 39.819794, 46.921894>,  <32.029976, 40.083080, 46.876110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.327606, 39.819794, 46.921894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089270, -0.071833, -0.993414,
		0.662105, 0.749393, 0.005310,
		0.744076, -0.658218, 0.114459,
		32.550827, 39.622330, 46.956230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611679, 40.320747, 46.428730>,  <32.029976, 40.083080, 46.876110>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611679, 40.320747, 46.428730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.683365, 39.931572, 46.487080>,  <32.726376, 39.698067, 46.522091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.683365, 39.931572, 46.487080>,  <32.611679, 40.320747, 46.428730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683365, 39.931572, 46.487080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300338, -0.087089, -0.949849,
		0.936845, 0.214040, 0.276602,
		0.179216, -0.972935, 0.145873,
		32.737129, 39.639690, 46.530842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.158100, 40.159187, 46.011894>,  <32.611679, 40.320747, 46.428730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.158100, 40.159187, 46.011894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.025772, 39.791592, 46.097706>,  <32.946373, 39.571033, 46.149193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.025772, 39.791592, 46.097706>,  <33.158100, 40.159187, 46.011894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025772, 39.791592, 46.097706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151417, -0.276076, -0.949134,
		0.931466, -0.281511, 0.230482,
		-0.330822, -0.918985, 0.214530,
		32.926525, 39.515896, 46.162064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555645, 39.735420, 45.620945>,  <33.158100, 40.159187, 46.011894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555645, 39.735420, 45.620945> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.252193, 39.495762, 45.723320>,  <33.070122, 39.351967, 45.784744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.252193, 39.495762, 45.723320>,  <33.555645, 39.735420, 45.620945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252193, 39.495762, 45.723320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033609, -0.356319, -0.933760,
		0.650652, -0.716982, 0.250178,
		-0.758632, -0.599144, 0.255936,
		33.024605, 39.316017, 45.800102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742741, 39.035912, 45.450737>,  <33.555645, 39.735420, 45.620945>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742741, 39.035912, 45.450737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.343819, 39.021019, 45.476013>,  <33.104465, 39.012085, 45.491177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.343819, 39.021019, 45.476013>,  <33.742741, 39.035912, 45.450737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.343819, 39.021019, 45.476013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037821, -0.477075, -0.878049,
		0.062837, -0.878074, 0.474382,
		-0.997307, -0.037233, 0.063188,
		33.044628, 39.009850, 45.494968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677227, 38.395161, 45.325188>,  <33.742741, 39.035912, 45.450737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677227, 38.395161, 45.325188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.315659, 38.544624, 45.241947>,  <33.098717, 38.634300, 45.192001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.315659, 38.544624, 45.241947>,  <33.677227, 38.395161, 45.325188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315659, 38.544624, 45.241947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056084, -0.585916, -0.808429,
		-0.424004, -0.719086, 0.550578,
		-0.903922, 0.373656, -0.208101,
		33.044483, 38.656723, 45.179516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286724, 37.875626, 45.031799>,  <33.677227, 38.395161, 45.325188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286724, 37.875626, 45.031799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.071648, 38.192291, 44.915756>,  <32.942604, 38.382290, 44.846130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.071648, 38.192291, 44.915756>,  <33.286724, 37.875626, 45.031799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071648, 38.192291, 44.915756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094470, -0.398478, -0.912300,
		-0.837835, -0.463126, 0.289045,
		-0.537688, 0.791662, -0.290107,
		32.910339, 38.429790, 44.828724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657753, 37.642391, 44.675728>,  <33.286724, 37.875626, 45.031799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657753, 37.642391, 44.675728> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.711220, 38.011612, 44.531441>,  <32.743298, 38.233143, 44.444870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.711220, 38.011612, 44.531441>,  <32.657753, 37.642391, 44.675728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711220, 38.011612, 44.531441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047395, -0.357612, -0.932667,
		-0.989893, 0.141760, -0.004052,
		0.133664, 0.923048, -0.360716,
		32.751320, 38.288525, 44.423225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.268929, 37.592789, 44.100212>,  <32.657753, 37.642391, 44.675728>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.268929, 37.592789, 44.100212> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.472725, 37.933147, 44.049004>,  <32.595001, 38.137363, 44.018280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.472725, 37.933147, 44.049004>,  <32.268929, 37.592789, 44.100212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.472725, 37.933147, 44.049004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055848, -0.115767, -0.991705,
		-0.858661, 0.512416, -0.011461,
		0.509492, 0.850898, -0.128022,
		32.625572, 38.188416, 44.010597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.889790, 38.015438, 43.640232>,  <32.268929, 37.592789, 44.100212>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.889790, 38.015438, 43.640232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.271816, 38.132668, 43.622540>,  <32.501034, 38.203007, 43.611923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.271816, 38.132668, 43.622540>,  <31.889790, 38.015438, 43.640232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.271816, 38.132668, 43.622540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001647, -0.143980, -0.989579,
		-0.296391, 0.945186, -0.137027,
		0.955065, 0.293076, -0.044231,
		32.558334, 38.220589, 43.609272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.839050, 38.371506, 42.962746>,  <31.889790, 38.015438, 43.640232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.839050, 38.371506, 42.962746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.227711, 38.323219, 43.044060>,  <32.460907, 38.294247, 43.092850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.227711, 38.323219, 43.044060>,  <31.839050, 38.371506, 42.962746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227711, 38.323219, 43.044060> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173292, -0.221297, -0.959686,
		0.160836, 0.967706, -0.194104,
		0.971649, -0.120716, 0.203288,
		32.519207, 38.287006, 43.105045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329323, 38.858353, 42.511375>,  <31.839050, 38.371506, 42.962746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329323, 38.858353, 42.511375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.524418, 38.524342, 42.613235>,  <32.641476, 38.323936, 42.674351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.524418, 38.524342, 42.613235>,  <32.329323, 38.858353, 42.511375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.524418, 38.524342, 42.613235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056811, -0.321440, -0.945224,
		0.871139, 0.446556, -0.204218,
		0.487740, -0.835023, 0.254649,
		32.670738, 38.273834, 42.689629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830276, 38.731258, 41.975628>,  <32.329323, 38.858353, 42.511375>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830276, 38.731258, 41.975628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.797508, 38.381187, 42.166355>,  <32.777847, 38.171146, 42.280792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.797508, 38.381187, 42.166355>,  <32.830276, 38.731258, 41.975628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797508, 38.381187, 42.166355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010243, -0.477664, -0.878483,
		0.996587, -0.076848, 0.030165,
		-0.081918, -0.875175, 0.476821,
		32.772934, 38.118633, 42.309402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603394, 38.970795, 41.938515>,  <32.830276, 38.731258, 41.975628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.603394, 38.970795, 41.938515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.733501, 39.344696, 41.881325>,  <33.811565, 39.569035, 41.847012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.733501, 39.344696, 41.881325>,  <33.603394, 38.970795, 41.938515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733501, 39.344696, 41.881325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057191, 0.131474, 0.989669,
		0.943890, -0.330086, -0.010695,
		0.325270, 0.934750, -0.142975,
		33.831081, 39.625122, 41.838432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124386, 39.068645, 42.471031>,  <33.603394, 38.970795, 41.938515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124386, 39.068645, 42.471031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.017525, 39.430607, 42.338501>,  <33.953407, 39.647785, 42.258984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.017525, 39.430607, 42.338501>,  <34.124386, 39.068645, 42.471031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017525, 39.430607, 42.338501> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042224, 0.332500, 0.942158,
		0.962728, 0.265693, -0.050620,
		-0.267156, 0.904904, -0.331325,
		33.937378, 39.702080, 42.239105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604183, 39.619034, 42.736084>,  <34.124386, 39.068645, 42.471031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604183, 39.619034, 42.736084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.269062, 39.822147, 42.655834>,  <34.067989, 39.944016, 42.607685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.269062, 39.822147, 42.655834>,  <34.604183, 39.619034, 42.736084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269062, 39.822147, 42.655834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149373, 0.566613, 0.810331,
		0.525149, 0.648926, -0.550557,
		-0.837799, 0.507783, -0.200624,
		34.017723, 39.974483, 42.595646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724838, 40.275475, 43.016659>,  <34.604183, 39.619034, 42.736084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724838, 40.275475, 43.016659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.334942, 40.313217, 42.935692>,  <34.101002, 40.335865, 42.887112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.334942, 40.313217, 42.935692>,  <34.724838, 40.275475, 43.016659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334942, 40.313217, 42.935692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100032, 0.625887, 0.773472,
		0.199675, 0.774184, -0.600640,
		-0.974743, 0.094360, -0.202417,
		34.042519, 40.341526, 42.874966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463615, 40.986515, 42.767616>,  <34.724838, 40.275475, 43.016659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463615, 40.986515, 42.767616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.144482, 40.815228, 42.937366>,  <33.953003, 40.712456, 43.039219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.144482, 40.815228, 42.937366>,  <34.463615, 40.986515, 42.767616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144482, 40.815228, 42.937366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001422, 0.705253, 0.708954,
		-0.602878, 0.565023, -0.563282,
		-0.797832, -0.428215, 0.424378,
		33.905132, 40.686764, 43.064678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070156, 41.583122, 42.956879>,  <34.463615, 40.986515, 42.767616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070156, 41.583122, 42.956879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.901352, 41.280491, 43.156677>,  <33.800068, 41.098911, 43.276554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.901352, 41.280491, 43.156677>,  <34.070156, 41.583122, 42.956879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901352, 41.280491, 43.156677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236444, 0.623741, 0.745011,
		-0.875214, 0.196303, -0.442115,
		-0.422014, -0.756579, 0.499492,
		33.774746, 41.053516, 43.306526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400101, 41.929779, 43.254009>,  <34.070156, 41.583122, 42.956879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400101, 41.929779, 43.254009> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.444778, 41.602070, 43.478977>,  <33.471584, 41.405445, 43.613956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.444778, 41.602070, 43.478977>,  <33.400101, 41.929779, 43.254009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444778, 41.602070, 43.478977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311827, 0.508477, 0.802630,
		-0.943551, -0.265023, -0.198680,
		0.111691, -0.819277, 0.562415,
		33.478287, 41.356285, 43.647701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845501, 41.929256, 43.805988>,  <33.400101, 41.929779, 43.254009>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845501, 41.929256, 43.805988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.119179, 41.670364, 43.940430>,  <33.283386, 41.515030, 44.021095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.119179, 41.670364, 43.940430>,  <32.845501, 41.929256, 43.805988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119179, 41.670364, 43.940430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150888, 0.325257, 0.933510,
		-0.713517, -0.689419, 0.124881,
		0.684197, -0.647232, 0.336101,
		33.324436, 41.476196, 44.041260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530552, 41.442905, 44.326965>,  <32.845501, 41.929256, 43.805988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530552, 41.442905, 44.326965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.926811, 41.463619, 44.377445>,  <33.164566, 41.476048, 44.407734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.926811, 41.463619, 44.377445>,  <32.530552, 41.442905, 44.326965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.926811, 41.463619, 44.377445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136006, 0.303838, 0.942966,
		0.010490, -0.951315, 0.308041,
		0.990653, 0.051787, 0.126198,
		33.224007, 41.479156, 44.415306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707573, 41.108536, 45.011021>,  <32.530552, 41.442905, 44.326965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707573, 41.108536, 45.011021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.032372, 41.327835, 44.930931>,  <33.227249, 41.459415, 44.882877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.032372, 41.327835, 44.930931>,  <32.707573, 41.108536, 45.011021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032372, 41.327835, 44.930931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067548, 0.429009, 0.900771,
		0.579745, -0.717895, 0.385386,
		0.811993, 0.548250, -0.200223,
		33.275970, 41.492310, 44.870865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290066, 40.962135, 45.539371>,  <32.707573, 41.108536, 45.011021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290066, 40.962135, 45.539371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.317005, 41.330265, 45.385246>,  <33.333168, 41.551144, 45.292770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.317005, 41.330265, 45.385246>,  <33.290066, 40.962135, 45.539371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317005, 41.330265, 45.385246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055512, 0.389053, 0.919541,
		0.996184, -0.040543, 0.077293,
		0.067352, 0.920323, -0.385317,
		33.337212, 41.606361, 45.269650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849503, 41.226791, 45.997807>,  <33.290066, 40.962135, 45.539371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849503, 41.226791, 45.997807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.636829, 41.516132, 45.821590>,  <33.509228, 41.689739, 45.715862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.636829, 41.516132, 45.821590>,  <33.849503, 41.226791, 45.997807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636829, 41.516132, 45.821590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065900, 0.483239, 0.873005,
		0.844377, 0.493192, -0.209260,
		-0.531681, 0.723355, -0.440538,
		33.477325, 41.733139, 45.689430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230717, 41.707600, 46.153011>,  <33.849503, 41.226791, 45.997807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230717, 41.707600, 46.153011> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.878101, 41.862747, 46.045345>,  <33.666531, 41.955837, 45.980743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.878101, 41.862747, 46.045345>,  <34.230717, 41.707600, 46.153011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878101, 41.862747, 46.045345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051856, 0.487136, 0.871786,
		0.469259, 0.782469, -0.409315,
		-0.881537, 0.387868, -0.269168,
		33.613640, 41.979107, 45.964596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348366, 42.371498, 46.263149>,  <34.230717, 41.707600, 46.153011>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348366, 42.371498, 46.263149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.963329, 42.275181, 46.312843>,  <33.732307, 42.217388, 46.342659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.963329, 42.275181, 46.312843>,  <34.348366, 42.371498, 46.263149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.963329, 42.275181, 46.312843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012146, 0.419703, 0.907580,
		-0.270686, 0.875138, -0.401077,
		-0.962591, -0.240797, 0.124237,
		33.674553, 42.202942, 46.350113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646614, 43.057125, 45.900074>,  <34.348366, 42.371498, 46.263149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646614, 43.057125, 45.900074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.022171, 43.168854, 45.819622>,  <35.247505, 43.235893, 45.771351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.022171, 43.168854, 45.819622>,  <34.646614, 43.057125, 45.900074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022171, 43.168854, 45.819622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140957, -0.221075, -0.965017,
		-0.314019, 0.934400, -0.168193,
		0.938895, 0.279326, -0.201132,
		35.303841, 43.252651, 45.759281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547867, 43.303646, 45.196465>,  <34.646614, 43.057125, 45.900074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547867, 43.303646, 45.196465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.936909, 43.249645, 45.272171>,  <35.170334, 43.217243, 45.317596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.936909, 43.249645, 45.272171>,  <34.547867, 43.303646, 45.196465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936909, 43.249645, 45.272171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139079, -0.314482, -0.939020,
		0.186292, 0.939614, -0.287089,
		0.972601, -0.135004, 0.189266,
		35.228687, 43.209145, 45.328953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906914, 43.681210, 44.646458>,  <34.547867, 43.303646, 45.196465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906914, 43.681210, 44.646458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.135960, 43.400677, 44.816277>,  <35.273388, 43.232357, 44.918167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.135960, 43.400677, 44.816277>,  <34.906914, 43.681210, 44.646458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135960, 43.400677, 44.816277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309407, -0.294684, -0.904117,
		0.759196, 0.649071, 0.048257,
		0.572616, -0.701333, 0.424550,
		35.307743, 43.190277, 44.943642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584675, 43.869671, 44.381489>,  <34.906914, 43.681210, 44.646458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584675, 43.869671, 44.381489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.578876, 43.489235, 44.504917>,  <35.575397, 43.260975, 44.578976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.578876, 43.489235, 44.504917>,  <35.584675, 43.869671, 44.381489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578876, 43.489235, 44.504917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449468, -0.281866, -0.847662,
		0.893179, 0.126409, 0.431569,
		-0.014492, -0.951090, 0.308573,
		35.574528, 43.203907, 44.597488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182320, 43.674419, 44.201164>,  <35.584675, 43.869671, 44.381489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182320, 43.674419, 44.201164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.998333, 43.320564, 44.231762>,  <35.887939, 43.108253, 44.250118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.998333, 43.320564, 44.231762>,  <36.182320, 43.674419, 44.201164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998333, 43.320564, 44.231762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476059, -0.318409, -0.819746,
		0.749531, -0.340642, 0.567596,
		-0.459968, -0.884635, 0.076491,
		35.860344, 43.055172, 44.254707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683430, 43.168854, 43.994587>,  <36.182320, 43.674419, 44.201164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683430, 43.168854, 43.994587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.353710, 42.943573, 43.971512>,  <36.155880, 42.808403, 43.957664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.353710, 42.943573, 43.971512>,  <36.683430, 43.168854, 43.994587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353710, 42.943573, 43.971512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281754, -0.319705, -0.904657,
		0.491064, -0.761963, 0.422218,
		-0.824300, -0.563206, -0.057691,
		36.106419, 42.774612, 43.954205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.910061, 42.555042, 43.727932>,  <36.683430, 43.168854, 43.994587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.910061, 42.555042, 43.727932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.515003, 42.576202, 43.668922>,  <36.277969, 42.588898, 43.633518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.515003, 42.576202, 43.668922>,  <36.910061, 42.555042, 43.727932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515003, 42.576202, 43.668922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109414, -0.441162, -0.890733,
		-0.112201, -0.895867, 0.429923,
		-0.987643, 0.052901, -0.147519,
		36.218712, 42.592072, 43.624668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664032, 41.803402, 43.514610>,  <36.910061, 42.555042, 43.727932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664032, 41.803402, 43.514610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.396320, 42.079945, 43.405735>,  <36.235695, 42.245872, 43.340408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.396320, 42.079945, 43.405735>,  <36.664032, 41.803402, 43.514610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396320, 42.079945, 43.405735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084287, -0.434616, -0.896663,
		-0.738216, -0.577174, 0.349152,
		-0.669278, 0.691360, -0.272192,
		36.195538, 42.287354, 43.324078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112553, 41.273468, 43.237366>,  <36.664032, 41.803402, 43.514610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112553, 41.273468, 43.237366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.075169, 41.643574, 43.090317>,  <36.052738, 41.865639, 43.002087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.075169, 41.643574, 43.090317>,  <36.112553, 41.273468, 43.237366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075169, 41.643574, 43.090317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195489, -0.379105, -0.904469,
		-0.976242, -0.012665, 0.216311,
		-0.093460, 0.925267, -0.367622,
		36.047131, 41.921154, 42.980030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600327, 41.224197, 42.877388>,  <36.112553, 41.273468, 43.237366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600327, 41.224197, 42.877388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.756859, 41.561993, 42.731121>,  <35.850777, 41.764668, 42.643360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.756859, 41.561993, 42.731121>,  <35.600327, 41.224197, 42.877388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756859, 41.561993, 42.731121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073295, -0.367489, -0.927135,
		-0.917328, 0.389614, -0.081912,
		0.391327, 0.844484, -0.365664,
		35.874256, 41.815338, 42.621422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156998, 41.399460, 42.348068>,  <35.600327, 41.224197, 42.877388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156998, 41.399460, 42.348068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.515682, 41.561970, 42.277813>,  <35.730892, 41.659473, 42.235661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.515682, 41.561970, 42.277813>,  <35.156998, 41.399460, 42.348068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515682, 41.561970, 42.277813> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105663, -0.188864, -0.976302,
		-0.429815, 0.894022, -0.126429,
		0.896713, 0.406270, -0.175641,
		35.784695, 41.683849, 42.225121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092262, 41.740044, 41.653801>,  <35.156998, 41.399460, 42.348068>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092262, 41.740044, 41.653801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.487530, 41.717087, 41.710690>,  <35.724689, 41.703312, 41.744823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.487530, 41.717087, 41.710690>,  <35.092262, 41.740044, 41.653801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487530, 41.717087, 41.710690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140327, -0.035793, -0.989458,
		0.061876, 0.997710, -0.027316,
		0.988170, -0.057391, 0.142220,
		35.783981, 41.699871, 41.753357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435219, 42.223118, 41.113747>,  <35.092262, 41.740044, 41.653801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435219, 42.223118, 41.113747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.690929, 41.942741, 41.240246>,  <35.844357, 41.774517, 41.316143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.690929, 41.942741, 41.240246>,  <35.435219, 42.223118, 41.113747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690929, 41.942741, 41.240246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275900, -0.174803, -0.945158,
		0.717778, 0.691470, 0.081641,
		0.639277, -0.700938, 0.316246,
		35.882713, 41.732460, 41.335121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033092, 42.273994, 40.734974>,  <35.435219, 42.223118, 41.113747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033092, 42.273994, 40.734974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.103622, 41.910236, 40.885662>,  <36.145939, 41.691982, 40.976074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.103622, 41.910236, 40.885662>,  <36.033092, 42.273994, 40.734974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103622, 41.910236, 40.885662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316154, -0.310117, -0.896590,
		0.932178, 0.277192, 0.232826,
		0.176324, -0.909391, 0.376720,
		36.156521, 41.637421, 40.998676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.228373, 33.667934, 29.158484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.959824, 33.519703, 28.901756>,  <30.798695, 33.430763, 28.747719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.959824, 33.519703, 28.901756>,  <31.228373, 33.667934, 29.158484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.959824, 33.519703, 28.901756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731358, 0.471391, 0.492856,
		0.119906, 0.800289, -0.587503,
		-0.671371, -0.370579, -0.641820,
		30.758413, 33.408527, 28.709209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.847261, 34.234543, 29.008261>,  <31.228373, 33.667934, 29.158484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.847261, 34.234543, 29.008261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.638344, 33.896404, 28.963371>,  <30.512993, 33.693520, 28.936438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.638344, 33.896404, 28.963371>,  <30.847261, 34.234543, 29.008261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.638344, 33.896404, 28.963371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735810, 0.380225, 0.560368,
		-0.431036, 0.375252, -0.820606,
		-0.522294, -0.845349, -0.112224,
		30.481655, 33.642799, 28.929705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.188698, 34.401245, 28.884974>,  <30.847261, 34.234543, 29.008261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.188698, 34.401245, 28.884974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.179804, 34.024387, 29.018759>,  <30.174467, 33.798271, 29.099030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.179804, 34.024387, 29.018759>,  <30.188698, 34.401245, 28.884974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.179804, 34.024387, 29.018759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625948, 0.273976, 0.730155,
		-0.779547, -0.193121, -0.595827,
		-0.022234, -0.942147, 0.334461,
		30.173134, 33.741745, 29.119097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.490271, 34.330708, 28.968433>,  <30.188698, 34.401245, 28.884974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.490271, 34.330708, 28.968433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.679752, 34.049103, 29.180084>,  <29.793442, 33.880142, 29.307076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.679752, 34.049103, 29.180084>,  <29.490271, 34.330708, 28.968433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.679752, 34.049103, 29.180084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633269, 0.145241, 0.760181,
		-0.612026, -0.695180, -0.377027,
		0.473703, -0.704010, 0.529127,
		29.821863, 33.837898, 29.338821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.906084, 33.957874, 29.337086>,  <29.490271, 34.330708, 28.968433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.906084, 33.957874, 29.337086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.226530, 33.822807, 29.534752>,  <29.418797, 33.741768, 29.653351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.226530, 33.822807, 29.534752>,  <28.906084, 33.957874, 29.337086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.226530, 33.822807, 29.534752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476149, 0.140685, 0.868038,
		-0.362628, -0.930693, -0.048074,
		0.801114, -0.337665, 0.494165,
		29.466864, 33.721508, 29.683001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.675682, 33.500736, 29.857956>,  <28.906084, 33.957874, 29.337086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.675682, 33.500736, 29.857956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.031126, 33.597599, 30.013769>,  <29.244392, 33.655716, 30.107258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.031126, 33.597599, 30.013769>,  <28.675682, 33.500736, 29.857956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.031126, 33.597599, 30.013769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442521, 0.229283, 0.866952,
		0.120622, -0.942757, 0.310901,
		0.888609, 0.242154, 0.389533,
		29.297709, 33.670246, 30.130629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.674761, 33.251747, 30.499166>,  <28.675682, 33.500736, 29.857956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.674761, 33.251747, 30.499166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.966352, 33.525406, 30.508440>,  <29.141308, 33.689602, 30.514004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.966352, 33.525406, 30.508440>,  <28.674761, 33.251747, 30.499166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.966352, 33.525406, 30.508440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297235, 0.285846, 0.911012,
		0.616637, -0.670999, 0.411727,
		0.728979, 0.684143, 0.023182,
		29.185047, 33.730648, 30.515394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.017323, 33.124306, 31.251278>,  <28.674761, 33.251747, 30.499166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.017323, 33.124306, 31.251278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.080568, 33.486744, 31.094311>,  <29.118515, 33.704208, 31.000130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.080568, 33.486744, 31.094311>,  <29.017323, 33.124306, 31.251278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.080568, 33.486744, 31.094311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212484, 0.419331, 0.882617,
		0.964287, -0.056172, 0.258833,
		0.158115, 0.906094, -0.392420,
		29.128002, 33.758572, 30.976585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.376839, 33.460663, 31.734346>,  <29.017323, 33.124306, 31.251278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.376839, 33.460663, 31.734346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.179777, 33.719650, 31.501766>,  <29.061541, 33.875042, 31.362219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.179777, 33.719650, 31.501766>,  <29.376839, 33.460663, 31.734346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.179777, 33.719650, 31.501766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196610, 0.568070, 0.799150,
		0.847725, 0.508022, -0.152564,
		-0.492653, 0.647464, -0.581449,
		29.031981, 33.913891, 31.327332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.360647, 34.009785, 32.137157>,  <29.376839, 33.460663, 31.734346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.360647, 34.009785, 32.137157> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.120605, 34.163689, 31.856632>,  <28.976580, 34.256031, 31.688318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.120605, 34.163689, 31.856632>,  <29.360647, 34.009785, 32.137157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.120605, 34.163689, 31.856632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455475, 0.556366, 0.694982,
		0.657585, 0.736491, -0.158630,
		-0.600104, 0.384757, -0.701311,
		28.940575, 34.279118, 31.646238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.413504, 34.701660, 32.210632>,  <29.360647, 34.009785, 32.137157>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.413504, 34.701660, 32.210632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.070517, 34.658962, 32.009296>,  <28.864723, 34.633343, 31.888494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.070517, 34.658962, 32.009296>,  <29.413504, 34.701660, 32.210632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.070517, 34.658962, 32.009296> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476195, 0.535179, 0.697725,
		0.194896, 0.837967, -0.509733,
		-0.857469, -0.106748, -0.503340,
		28.813276, 34.626938, 31.858294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.081043, 35.293461, 32.143078>,  <29.413504, 34.701660, 32.210632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.081043, 35.293461, 32.143078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.789822, 35.023388, 32.095642>,  <28.615088, 34.861343, 32.067181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.789822, 35.023388, 32.095642>,  <29.081043, 35.293461, 32.143078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.789822, 35.023388, 32.095642> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582082, 0.517503, 0.627193,
		-0.362100, 0.525660, -0.769783,
		-0.728055, -0.675183, -0.118589,
		28.571405, 34.820831, 32.060066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.460537, 35.707211, 32.063869>,  <29.081043, 35.293461, 32.143078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.460537, 35.707211, 32.063869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.361330, 35.339638, 32.186543>,  <28.301805, 35.119095, 32.260147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.361330, 35.339638, 32.186543>,  <28.460537, 35.707211, 32.063869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.361330, 35.339638, 32.186543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576679, 0.394421, 0.715454,
		-0.778415, 0.000585, -0.627750,
		-0.248016, -0.918930, 0.306685,
		28.286924, 35.063957, 32.278549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.753901, 35.815022, 32.176346>,  <28.460537, 35.707211, 32.063869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.753901, 35.815022, 32.176346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.852684, 35.458672, 32.328846>,  <27.911955, 35.244862, 32.420349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.852684, 35.458672, 32.328846>,  <27.753901, 35.815022, 32.176346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.852684, 35.458672, 32.328846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677951, 0.122277, 0.724866,
		-0.692383, -0.437484, -0.573771,
		0.246959, -0.890874, 0.381255,
		27.926771, 35.191410, 32.443222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.135174, 35.472317, 32.417278>,  <27.753901, 35.815022, 32.176346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.135174, 35.472317, 32.417278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.411278, 35.285145, 32.638035>,  <27.576941, 35.172840, 32.770489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.411278, 35.285145, 32.638035>,  <27.135174, 35.472317, 32.417278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.411278, 35.285145, 32.638035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524659, 0.201567, 0.827106,
		-0.498269, -0.860473, -0.106369,
		0.690261, -0.467929, 0.551889,
		27.618357, 35.144768, 32.803600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.812815, 34.963806, 32.811497>,  <27.135174, 35.472317, 32.417278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.812815, 34.963806, 32.811497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.138367, 35.101997, 32.998363>,  <27.333698, 35.184914, 33.110485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.138367, 35.101997, 32.998363>,  <26.812815, 34.963806, 32.811497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.138367, 35.101997, 32.998363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562506, 0.267063, 0.782473,
		0.145559, -0.899625, 0.411688,
		0.813879, 0.345473, 0.467171,
		27.382530, 35.205639, 33.138515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.584246, 34.990154, 33.402000>,  <26.812815, 34.963806, 32.811497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.584246, 34.990154, 33.402000> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.945856, 35.142399, 33.479843>,  <27.162823, 35.233746, 33.526550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.945856, 35.142399, 33.479843>,  <26.584246, 34.990154, 33.402000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.945856, 35.142399, 33.479843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266247, 0.145161, 0.952912,
		0.334437, -0.913272, 0.232565,
		0.904027, 0.380609, 0.194609,
		27.217064, 35.256580, 33.538227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.837259, 34.570229, 34.012161>,  <26.584246, 34.990154, 33.402000>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.837259, 34.570229, 34.012161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.020433, 34.925541, 33.998016>,  <27.130339, 35.138729, 33.989529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.020433, 34.925541, 33.998016>,  <26.837259, 34.570229, 34.012161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.020433, 34.925541, 33.998016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281037, 0.182396, 0.942205,
		0.843393, -0.421532, 0.333166,
		0.457937, 0.888281, -0.035365,
		27.157814, 35.192024, 33.987408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.108606, 34.564610, 34.614311>,  <26.837259, 34.570229, 34.012161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.108606, 34.564610, 34.614311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.105709, 34.952950, 34.518475>,  <27.103971, 35.185951, 34.460972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.105709, 34.952950, 34.518475>,  <27.108606, 34.564610, 34.614311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.105709, 34.952950, 34.518475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280601, 0.227996, 0.932352,
		0.959797, 0.073983, 0.270769,
		-0.007244, 0.970848, -0.239589,
		27.103537, 35.244205, 34.446598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.430775, 34.990810, 35.163185>,  <27.108606, 34.564610, 34.614311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.430775, 34.990810, 35.163185> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.178530, 35.217026, 34.950588>,  <27.027182, 35.352757, 34.823029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.178530, 35.217026, 34.950588>,  <27.430775, 34.990810, 35.163185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.178530, 35.217026, 34.950588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494052, 0.235619, 0.836897,
		0.598531, 0.790345, 0.130823,
		-0.630613, 0.565542, -0.531497,
		26.989346, 35.386688, 34.791138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.957779, 34.625080, 35.704712>,  <27.430775, 34.990810, 35.163185>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.957779, 34.625080, 35.704712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.230421, 34.513561, 35.975323>,  <28.394007, 34.446651, 36.137688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.230421, 34.513561, 35.975323>,  <27.957779, 34.625080, 35.704712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.230421, 34.513561, 35.975323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365014, -0.671766, -0.644590,
		0.634176, 0.686297, -0.356114,
		0.681605, -0.278797, 0.676525,
		28.434902, 34.429924, 36.178280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.768078, 34.783390, 35.521629>,  <27.957779, 34.625080, 35.704712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.768078, 34.783390, 35.521629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.806864, 34.484524, 35.784637>,  <28.830135, 34.305202, 35.942444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.806864, 34.484524, 35.784637>,  <28.768078, 34.783390, 35.521629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.806864, 34.484524, 35.784637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459254, -0.552514, -0.695568,
		0.882997, 0.369414, 0.289567,
		0.096963, -0.747169, 0.657523,
		28.835953, 34.260372, 35.981895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.467577, 34.560947, 35.361614>,  <28.768078, 34.783390, 35.521629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.467577, 34.560947, 35.361614> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.253389, 34.277935, 35.546078>,  <29.124876, 34.108128, 35.656757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.253389, 34.277935, 35.546078>,  <29.467577, 34.560947, 35.361614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.253389, 34.277935, 35.546078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348494, -0.682495, -0.642459,
		0.769301, -0.183304, 0.612025,
		-0.535469, -0.707531, 0.461164,
		29.092749, 34.065674, 35.684425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.910429, 33.980465, 35.531700>,  <29.467577, 34.560947, 35.361614>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.910429, 33.980465, 35.531700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.551723, 33.803719, 35.522167>,  <29.336500, 33.697670, 35.516449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.551723, 33.803719, 35.522167>,  <29.910429, 33.980465, 35.531700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.551723, 33.803719, 35.522167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342377, -0.658708, -0.669986,
		0.280348, -0.608978, 0.741991,
		-0.896762, -0.441870, -0.023832,
		29.282694, 33.671158, 35.515018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.057625, 33.273350, 35.543175>,  <29.910429, 33.980465, 35.531700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.057625, 33.273350, 35.543175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.686903, 33.303112, 35.395935>,  <29.464470, 33.320969, 35.307590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.686903, 33.303112, 35.395935>,  <30.057625, 33.273350, 35.543175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.686903, 33.303112, 35.395935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169117, -0.792481, -0.585981,
		-0.335311, -0.605342, 0.721892,
		-0.926804, 0.074402, -0.368102,
		29.408861, 33.325432, 35.285503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.835958, 32.598984, 35.476887>,  <30.057625, 33.273350, 35.543175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.835958, 32.598984, 35.476887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.558149, 32.770840, 35.246044>,  <29.391464, 32.873955, 35.107540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.558149, 32.770840, 35.246044>,  <29.835958, 32.598984, 35.476887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.558149, 32.770840, 35.246044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120995, -0.720951, -0.682341,
		-0.709232, -0.543723, 0.448727,
		-0.694515, 0.429644, -0.577109,
		29.349792, 32.899731, 35.072914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.401804, 31.984316, 35.298058>,  <29.835958, 32.598984, 35.476887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.401804, 31.984316, 35.298058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.322840, 32.271469, 35.031025>,  <29.275461, 32.443760, 34.870804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.322840, 32.271469, 35.031025>,  <29.401804, 31.984316, 35.298058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.322840, 32.271469, 35.031025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107073, -0.661122, -0.742599,
		-0.974456, -0.218078, 0.053647,
		-0.197412, 0.717885, -0.667585,
		29.263617, 32.486835, 34.830750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.086426, 31.705698, 34.677795>,  <29.401804, 31.984316, 35.298058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.086426, 31.705698, 34.677795> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.265940, 32.041786, 34.556061>,  <29.373648, 32.243439, 34.483021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.265940, 32.041786, 34.556061>,  <29.086426, 31.705698, 34.677795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.265940, 32.041786, 34.556061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332734, -0.473177, -0.815715,
		-0.829385, 0.264819, -0.491926,
		0.448785, 0.840223, -0.304332,
		29.400576, 32.293854, 34.464760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.837616, 31.821981, 34.000130>,  <29.086426, 31.705698, 34.677795>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.837616, 31.821981, 34.000130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.171362, 32.037411, 34.047073>,  <29.371609, 32.166668, 34.075241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.171362, 32.037411, 34.047073>,  <28.837616, 31.821981, 34.000130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.171362, 32.037411, 34.047073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256275, -0.190519, -0.947642,
		-0.488015, 0.820756, -0.296986,
		0.834365, 0.538574, 0.117363,
		29.421671, 32.198982, 34.082283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.924410, 32.227711, 33.434395>,  <28.837616, 31.821981, 34.000130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.924410, 32.227711, 33.434395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.300632, 32.215759, 33.569721>,  <29.526365, 32.208588, 33.650917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.300632, 32.215759, 33.569721>,  <28.924410, 32.227711, 33.434395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.300632, 32.215759, 33.569721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338986, 0.021000, -0.940557,
		0.021000, 0.999333, 0.029881,
		0.940557, -0.029881, 0.338319,
		29.582800, 32.206795, 33.671215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.294230, 32.311283, 32.883125>,  <28.924410, 32.227711, 33.434395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.294230, 32.311283, 32.883125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.616970, 32.254013, 33.112385>,  <29.810614, 32.219650, 33.249939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.616970, 32.254013, 33.112385>,  <29.294230, 32.311283, 32.883125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.616970, 32.254013, 33.112385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589499, 0.131863, -0.796933,
		0.038526, 0.980873, 0.190796,
		0.806850, -0.143176, 0.573144,
		29.859024, 32.211060, 33.284328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.693520, 32.886856, 32.692894>,  <29.294230, 32.311283, 32.883125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.693520, 32.886856, 32.692894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.890314, 32.566151, 32.828617>,  <30.008390, 32.373726, 32.910049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.890314, 32.566151, 32.828617>,  <29.693520, 32.886856, 32.692894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.890314, 32.566151, 32.828617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461348, -0.090419, -0.882600,
		0.738315, 0.590763, 0.325407,
		0.491985, -0.801762, 0.339305,
		30.037909, 32.325623, 32.930408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.381756, 32.967518, 32.481518>,  <29.693520, 32.886856, 32.692894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.381756, 32.967518, 32.481518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.371841, 32.577850, 32.571297>,  <30.365892, 32.344048, 32.625164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.371841, 32.577850, 32.571297>,  <30.381756, 32.967518, 32.481518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.371841, 32.577850, 32.571297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623235, -0.190604, -0.758451,
		0.781642, 0.121087, 0.611861,
		-0.024785, -0.974171, 0.224449,
		30.364407, 32.285599, 32.638630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.077976, 32.706985, 32.483105>,  <30.381756, 32.967518, 32.481518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.077976, 32.706985, 32.483105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.855652, 32.381641, 32.414383>,  <30.722258, 32.186436, 32.373150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.855652, 32.381641, 32.414383>,  <31.077976, 32.706985, 32.483105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.855652, 32.381641, 32.414383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633730, -0.280809, -0.720786,
		0.538014, -0.509500, 0.671528,
		-0.555812, -0.813361, -0.171806,
		30.688908, 32.137634, 32.362843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.455772, 32.073883, 32.468414>,  <31.077976, 32.706985, 32.483105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.455772, 32.073883, 32.468414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.144358, 31.939949, 32.256088>,  <30.957508, 31.859587, 32.128693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.144358, 31.939949, 32.256088>,  <31.455772, 32.073883, 32.468414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.144358, 31.939949, 32.256088> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624532, -0.329810, -0.707945,
		0.061981, -0.882671, 0.465887,
		-0.778536, -0.334840, -0.530814,
		30.910797, 31.839497, 32.096844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712732, 31.582485, 32.222351>,  <31.455772, 32.073883, 32.468414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712732, 31.582485, 32.222351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.394344, 31.608477, 31.981617>,  <31.203312, 31.624071, 31.837175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.394344, 31.608477, 31.981617>,  <31.712732, 31.582485, 32.222351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.394344, 31.608477, 31.981617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515264, -0.449077, -0.729954,
		-0.317702, -0.891127, 0.323972,
		-0.795970, 0.064977, -0.601839,
		31.155554, 31.627970, 31.801065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622355, 30.912277, 31.818970>,  <31.712732, 31.582485, 32.222351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622355, 30.912277, 31.818970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.446259, 31.219545, 31.633020>,  <31.340601, 31.403906, 31.521452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.446259, 31.219545, 31.633020>,  <31.622355, 30.912277, 31.818970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.446259, 31.219545, 31.633020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417727, -0.283072, -0.863351,
		-0.794793, -0.574268, -0.196266,
		-0.440237, 0.768170, -0.464871,
		31.314188, 31.449997, 31.493559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380028, 30.613827, 31.244368>,  <31.622355, 30.912277, 31.818970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.380028, 30.613827, 31.244368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.370127, 31.000685, 31.143162>,  <31.364185, 31.232800, 31.082439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.370127, 31.000685, 31.143162>,  <31.380028, 30.613827, 31.244368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.370127, 31.000685, 31.143162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315810, -0.232565, -0.919879,
		-0.948499, -0.102675, -0.299678,
		-0.024754, 0.967146, -0.253013,
		31.362701, 31.290829, 31.067257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.981264, 30.734728, 30.577105>,  <31.380028, 30.613827, 31.244368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.981264, 30.734728, 30.577105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.200413, 31.068644, 30.598886>,  <31.331902, 31.268993, 30.611956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.200413, 31.068644, 30.598886>,  <30.981264, 30.734728, 30.577105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.200413, 31.068644, 30.598886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351560, -0.170683, -0.920474,
		-0.759107, 0.523444, -0.386991,
		0.547870, 0.834789, 0.054455,
		31.364773, 31.319080, 30.615223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.819944, 31.202223, 30.040689>,  <30.981264, 30.734728, 30.577105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.819944, 31.202223, 30.040689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.189760, 31.325993, 30.129667>,  <31.411650, 31.400255, 30.183054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.189760, 31.325993, 30.129667>,  <30.819944, 31.202223, 30.040689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.189760, 31.325993, 30.129667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286219, -0.178433, -0.941403,
		-0.251602, 0.934033, -0.253532,
		0.924540, 0.309425, 0.222444,
		31.467123, 31.418819, 30.196400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.054277, 31.364323, 29.394888>,  <30.819944, 31.202223, 30.040689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.054277, 31.364323, 29.394888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.392714, 31.368784, 29.608057>,  <31.595776, 31.371460, 29.735958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.392714, 31.368784, 29.608057>,  <31.054277, 31.364323, 29.394888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.392714, 31.368784, 29.608057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530729, 0.075399, -0.844181,
		-0.049596, 0.997091, 0.057875,
		0.846089, 0.011152, 0.532924,
		31.646540, 31.372129, 29.767935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.411455, 31.912567, 29.142426>,  <31.054277, 31.364323, 29.394888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.411455, 31.912567, 29.142426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.672905, 31.642019, 29.278248>,  <31.829775, 31.479691, 29.359741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.672905, 31.642019, 29.278248>,  <31.411455, 31.912567, 29.142426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.672905, 31.642019, 29.278248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468998, 0.009863, -0.883144,
		0.593985, 0.736494, 0.323664,
		0.653623, -0.676372, 0.339556,
		31.868992, 31.439108, 29.380114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.020252, 42.911884, 45.485016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.694374, 42.681255, 45.509766>,  <38.498848, 42.542877, 45.524616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.694374, 42.681255, 45.509766>,  <39.020252, 42.911884, 45.485016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694374, 42.681255, 45.509766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309025, 0.521969, 0.795017,
		-0.490686, 0.628576, -0.603423,
		-0.814697, -0.576576, 0.061877,
		38.449966, 42.508282, 45.528328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471214, 43.433880, 45.558556>,  <39.020252, 42.911884, 45.485016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471214, 43.433880, 45.558556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.339260, 43.080952, 45.692829>,  <38.260086, 42.869194, 45.773392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.339260, 43.080952, 45.692829>,  <38.471214, 43.433880, 45.558556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339260, 43.080952, 45.692829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275222, 0.430032, 0.859840,
		-0.903009, 0.191264, -0.384697,
		-0.329889, -0.882321, 0.335683,
		38.240292, 42.816254, 45.793533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870998, 43.720039, 45.883434>,  <38.471214, 43.433880, 45.558556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870998, 43.720039, 45.883434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.904015, 43.340229, 46.004490>,  <37.923824, 43.112343, 46.077122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.904015, 43.340229, 46.004490>,  <37.870998, 43.720039, 45.883434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904015, 43.340229, 46.004490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268497, 0.271260, 0.924298,
		-0.959738, -0.157549, -0.232555,
		0.082540, -0.949524, 0.302640,
		37.928776, 43.055370, 46.095284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348309, 43.674072, 46.381615>,  <37.870998, 43.720039, 45.883434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348309, 43.674072, 46.381615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.610889, 43.386528, 46.473091>,  <37.768436, 43.214001, 46.527977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.610889, 43.386528, 46.473091>,  <37.348309, 43.674072, 46.381615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610889, 43.386528, 46.473091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054345, 0.257308, 0.964800,
		-0.752407, -0.645775, 0.129844,
		0.656453, -0.718865, 0.228695,
		37.807827, 43.170868, 46.541698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006138, 43.268803, 46.886436>,  <37.348309, 43.674072, 46.381615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006138, 43.268803, 46.886436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.401917, 43.217228, 46.912899>,  <37.639381, 43.186283, 46.928776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.401917, 43.217228, 46.912899>,  <37.006138, 43.268803, 46.886436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401917, 43.217228, 46.912899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040617, 0.191499, 0.980652,
		-0.139109, -0.972987, 0.184240,
		0.989444, -0.128935, 0.066159,
		37.698750, 43.178547, 46.932747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197254, 42.835125, 47.363667>,  <37.006138, 43.268803, 46.886436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197254, 42.835125, 47.363667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.550468, 43.016705, 47.316036>,  <37.762398, 43.125652, 47.287457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.550468, 43.016705, 47.316036>,  <37.197254, 42.835125, 47.363667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.550468, 43.016705, 47.316036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143155, -0.018901, 0.989520,
		0.446941, -0.890827, -0.081676,
		0.883034, 0.453950, -0.119079,
		37.815380, 43.152889, 47.280312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699379, 42.426380, 47.688156>,  <37.197254, 42.835125, 47.363667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.699379, 42.426380, 47.688156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.849907, 42.796490, 47.669224>,  <37.940224, 43.018555, 47.657864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.849907, 42.796490, 47.669224>,  <37.699379, 42.426380, 47.688156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.849907, 42.796490, 47.669224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150698, -0.010727, 0.988522,
		0.914150, -0.379137, -0.143474,
		0.376324, 0.925279, -0.047329,
		37.962803, 43.074074, 47.655025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344872, 42.436043, 48.150307>,  <37.699379, 42.426380, 47.688156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344872, 42.436043, 48.150307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.260887, 42.825150, 48.111046>,  <38.210499, 43.058613, 48.087490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.260887, 42.825150, 48.111046>,  <38.344872, 42.436043, 48.150307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260887, 42.825150, 48.111046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139495, 0.129165, 0.981763,
		0.967708, 0.192438, -0.162816,
		-0.209958, 0.972771, -0.098150,
		38.197899, 43.116982, 48.081600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907581, 42.819183, 48.451595>,  <38.344872, 42.436043, 48.150307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907581, 42.819183, 48.451595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.578674, 43.046623, 48.461208>,  <38.381332, 43.183086, 48.466976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.578674, 43.046623, 48.461208>,  <38.907581, 42.819183, 48.451595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578674, 43.046623, 48.461208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171698, 0.207600, 0.963028,
		0.542586, 0.795990, -0.268329,
		-0.822265, 0.568597, 0.024028,
		38.331993, 43.217201, 48.468418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065357, 43.295158, 48.937702>,  <38.907581, 42.819183, 48.451595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065357, 43.295158, 48.937702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.672394, 43.366985, 48.917198>,  <38.436615, 43.410080, 48.904896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.672394, 43.366985, 48.917198>,  <39.065357, 43.295158, 48.937702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672394, 43.366985, 48.917198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009811, 0.323763, 0.946087,
		0.186480, 0.928943, -0.319830,
		-0.982410, 0.179564, -0.051262,
		38.377670, 43.420856, 48.901821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990936, 43.985836, 49.208893>,  <39.065357, 43.295158, 48.937702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990936, 43.985836, 49.208893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.626911, 43.821278, 49.229069>,  <38.408497, 43.722542, 49.241173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.626911, 43.821278, 49.229069>,  <38.990936, 43.985836, 49.208893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626911, 43.821278, 49.229069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089059, 0.312939, 0.945589,
		-0.404797, 0.856050, -0.321432,
		-0.910059, -0.411398, 0.050438,
		38.353893, 43.697857, 49.244202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557434, 44.448772, 49.583458>,  <38.990936, 43.985836, 49.208893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557434, 44.448772, 49.583458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.393997, 44.084156, 49.602009>,  <38.295937, 43.865387, 49.613140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.393997, 44.084156, 49.602009>,  <38.557434, 44.448772, 49.583458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393997, 44.084156, 49.602009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209943, 0.143308, 0.967154,
		-0.888245, 0.385433, -0.249925,
		-0.408590, -0.911539, 0.046374,
		38.271420, 43.810696, 49.615921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894287, 44.494717, 49.923466>,  <38.557434, 44.448772, 49.583458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894287, 44.494717, 49.923466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.031082, 44.121326, 49.966656>,  <38.113159, 43.897293, 49.992569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.031082, 44.121326, 49.966656>,  <37.894287, 44.494717, 49.923466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031082, 44.121326, 49.966656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049704, 0.132710, 0.989908,
		-0.938388, -0.333172, 0.091783,
		0.341990, -0.933480, 0.107973,
		38.133678, 43.841282, 49.999046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444473, 44.206223, 50.383568>,  <37.894287, 44.494717, 49.923466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444473, 44.206223, 50.383568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.799740, 44.022934, 50.397449>,  <38.012897, 43.912960, 50.405781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.799740, 44.022934, 50.397449>,  <37.444473, 44.206223, 50.383568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.799740, 44.022934, 50.397449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084639, -0.088888, 0.992439,
		-0.451668, -0.884385, -0.117730,
		0.888163, -0.458217, 0.034706,
		38.066189, 43.885468, 50.407860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107674, 44.727585, 50.931053>,  <37.444473, 44.206223, 50.383568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107674, 44.727585, 50.931053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.764809, 44.932613, 50.951221>,  <36.559090, 45.055630, 50.963322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.764809, 44.932613, 50.951221>,  <37.107674, 44.727585, 50.931053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764809, 44.932613, 50.951221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237829, -0.307076, -0.921489,
		-0.456848, -0.801856, 0.385119,
		-0.857163, 0.512573, 0.050418,
		36.507660, 45.086384, 50.966347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657646, 44.333054, 50.678215>,  <37.107674, 44.727585, 50.931053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657646, 44.333054, 50.678215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.486362, 44.693401, 50.649700>,  <36.383595, 44.909611, 50.632591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.486362, 44.693401, 50.649700>,  <36.657646, 44.333054, 50.678215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486362, 44.693401, 50.649700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294225, -0.213568, -0.931569,
		-0.854442, -0.377929, 0.356508,
		-0.428205, 0.900866, -0.071286,
		36.357903, 44.963661, 50.628315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055275, 44.180206, 50.359528>,  <36.657646, 44.333054, 50.678215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055275, 44.180206, 50.359528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.167557, 44.559494, 50.300098>,  <36.234928, 44.787067, 50.264439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.167557, 44.559494, 50.300098>,  <36.055275, 44.180206, 50.359528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167557, 44.559494, 50.300098> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186686, -0.097904, -0.977529,
		-0.941463, 0.302136, 0.149537,
		0.280707, 0.948224, -0.148577,
		36.251770, 44.843960, 50.255524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413155, 44.527943, 50.055134>,  <36.055275, 44.180206, 50.359528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413155, 44.527943, 50.055134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.732872, 44.736576, 49.935745>,  <35.924702, 44.861755, 49.864113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.732872, 44.736576, 49.935745>,  <35.413155, 44.527943, 50.055134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732872, 44.736576, 49.935745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278339, -0.118867, -0.953099,
		-0.532600, 0.844879, 0.050169,
		0.799290, 0.521585, -0.298471,
		35.972660, 44.893051, 49.846203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187122, 44.935532, 49.481976>,  <35.413155, 44.527943, 50.055134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187122, 44.935532, 49.481976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.585331, 44.953270, 49.448582>,  <35.824257, 44.963913, 49.428547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.585331, 44.953270, 49.448582>,  <35.187122, 44.935532, 49.481976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585331, 44.953270, 49.448582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083207, -0.008001, -0.996500,
		-0.044859, 0.998984, -0.004275,
		0.995522, 0.044346, -0.083482,
		35.883987, 44.966576, 49.423538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264271, 45.547035, 49.018951>,  <35.187122, 44.935532, 49.481976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.264271, 45.547035, 49.018951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.580006, 45.301498, 49.023735>,  <35.769447, 45.154179, 49.026604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.580006, 45.301498, 49.023735>,  <35.264271, 45.547035, 49.018951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580006, 45.301498, 49.023735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069149, -0.108239, -0.991717,
		0.610050, 0.781975, -0.127884,
		0.789340, -0.613840, 0.011959,
		35.816807, 45.117348, 49.027321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551735, 45.698666, 48.358944>,  <35.264271, 45.547035, 49.018951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551735, 45.698666, 48.358944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.726017, 45.353493, 48.461315>,  <35.830585, 45.146389, 48.522739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.726017, 45.353493, 48.461315>,  <35.551735, 45.698666, 48.358944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726017, 45.353493, 48.461315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158567, -0.353482, -0.921904,
		0.886010, 0.361100, -0.290849,
		0.435710, -0.862935, 0.255930,
		35.856731, 45.094612, 48.538094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021458, 45.536049, 47.839672>,  <35.551735, 45.698666, 48.358944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.021458, 45.536049, 47.839672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.930229, 45.185299, 48.008938>,  <35.875492, 44.974850, 48.110497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.930229, 45.185299, 48.008938>,  <36.021458, 45.536049, 47.839672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930229, 45.185299, 48.008938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154998, -0.396379, -0.904908,
		0.961227, -0.271976, -0.045510,
		-0.228074, -0.876877, 0.423167,
		35.861809, 44.922237, 48.135887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511646, 45.050484, 47.508202>,  <36.021458, 45.536049, 47.839672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511646, 45.050484, 47.508202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.229252, 44.821220, 47.674614>,  <36.059814, 44.683662, 47.774460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.229252, 44.821220, 47.674614>,  <36.511646, 45.050484, 47.508202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229252, 44.821220, 47.674614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035683, -0.615465, -0.787356,
		0.707329, -0.541015, 0.454960,
		-0.705984, -0.573154, 0.416031,
		36.017456, 44.649273, 47.799423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725739, 44.427414, 47.223866>,  <36.511646, 45.050484, 47.508202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725739, 44.427414, 47.223866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.345699, 44.391937, 47.343502>,  <36.117676, 44.370651, 47.415283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.345699, 44.391937, 47.343502>,  <36.725739, 44.427414, 47.223866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345699, 44.391937, 47.343502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180455, -0.625823, -0.758803,
		0.254476, -0.774907, 0.578586,
		-0.950093, -0.088688, 0.299093,
		36.060673, 44.365330, 47.433231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594822, 43.721828, 47.260910>,  <36.725739, 44.427414, 47.223866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594822, 43.721828, 47.260910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.238506, 43.893944, 47.202465>,  <36.024715, 43.997211, 47.167397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.238506, 43.893944, 47.202465>,  <36.594822, 43.721828, 47.260910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238506, 43.893944, 47.202465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181036, -0.630959, -0.754399,
		-0.416799, -0.645558, 0.639948,
		-0.890789, 0.430286, -0.146113,
		35.971272, 44.023029, 47.158630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328632, 43.116470, 47.071766>,  <36.594822, 43.721828, 47.260910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328632, 43.116470, 47.071766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.104721, 43.426029, 46.953285>,  <35.970375, 43.611763, 46.882195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.104721, 43.426029, 46.953285>,  <36.328632, 43.116470, 47.071766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.104721, 43.426029, 46.953285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346002, -0.543099, -0.765066,
		-0.752949, -0.325779, 0.571784,
		-0.559777, 0.773894, -0.296205,
		35.936787, 43.658195, 46.864422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628342, 42.830498, 46.831905>,  <36.328632, 43.116470, 47.071766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628342, 42.830498, 46.831905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.667706, 43.184856, 46.650578>,  <35.691322, 43.397472, 46.541782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.667706, 43.184856, 46.650578>,  <35.628342, 42.830498, 46.831905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667706, 43.184856, 46.650578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510634, -0.346035, -0.787091,
		-0.854148, 0.308938, 0.418317,
		0.098410, 0.885899, -0.453320,
		35.697227, 43.450626, 46.514580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886448, 43.032310, 46.588470>,  <35.628342, 42.830498, 46.831905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886448, 43.032310, 46.588470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.176895, 43.211868, 46.380146>,  <35.351166, 43.319603, 46.255150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.176895, 43.211868, 46.380146>,  <34.886448, 43.032310, 46.588470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176895, 43.211868, 46.380146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296707, -0.478738, -0.826302,
		-0.620254, 0.754523, -0.214431,
		0.726120, 0.448894, -0.520811,
		35.394730, 43.346535, 46.223904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061306, 42.937344, 46.608383>,  <34.886448, 43.032310, 46.588470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061306, 42.937344, 46.608383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.784885, 42.654514, 46.668381>,  <33.619034, 42.484818, 46.704380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.784885, 42.654514, 46.668381>,  <34.061306, 42.937344, 46.608383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784885, 42.654514, 46.668381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210455, 0.395352, 0.894095,
		-0.691492, 0.586295, -0.422015,
		-0.691048, -0.707075, 0.149994,
		33.577572, 42.442390, 46.713379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656532, 43.310368, 47.014179>,  <34.061306, 42.937344, 46.608383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656532, 43.310368, 47.014179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.533253, 42.935371, 47.078838>,  <33.459286, 42.710373, 47.117634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.533253, 42.935371, 47.078838>,  <33.656532, 43.310368, 47.014179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533253, 42.935371, 47.078838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223884, 0.236622, 0.945455,
		-0.924604, 0.255194, -0.282815,
		-0.308195, -0.937489, 0.161648,
		33.440796, 42.654125, 47.127331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030720, 43.355152, 47.273556>,  <33.656532, 43.310368, 47.014179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.030720, 43.355152, 47.273556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.136368, 42.983177, 47.375889>,  <33.199757, 42.759991, 47.437290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.136368, 42.983177, 47.375889>,  <33.030720, 43.355152, 47.273556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136368, 42.983177, 47.375889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015884, 0.269411, 0.962894,
		-0.964359, -0.250257, 0.085929,
		0.264121, -0.929940, 0.255833,
		33.215603, 42.704197, 47.452641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757156, 43.273872, 47.871223>,  <33.030720, 43.355152, 47.273556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.757156, 43.273872, 47.871223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.985138, 42.946461, 47.899956>,  <33.121929, 42.750015, 47.917194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.985138, 42.946461, 47.899956>,  <32.757156, 43.273872, 47.871223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985138, 42.946461, 47.899956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052342, 0.051077, 0.997322,
		-0.820006, -0.572190, -0.013732,
		0.569956, -0.818529, 0.071833,
		33.156124, 42.700901, 47.921505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.399765, 42.718552, 48.325809>,  <32.757156, 43.273872, 47.871223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.399765, 42.718552, 48.325809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.797230, 42.675423, 48.313046>,  <33.035709, 42.649544, 48.305386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.797230, 42.675423, 48.313046>,  <32.399765, 42.718552, 48.325809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797230, 42.675423, 48.313046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034225, 0.019670, 0.999221,
		-0.107113, -0.993975, 0.023236,
		0.993658, -0.107825, -0.031912,
		33.095325, 42.643074, 48.303471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.564579, 42.301506, 48.917301>,  <32.399765, 42.718552, 48.325809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.564579, 42.301506, 48.917301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.926971, 42.445644, 48.828445>,  <33.144405, 42.532127, 48.775131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.926971, 42.445644, 48.828445>,  <32.564579, 42.301506, 48.917301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.926971, 42.445644, 48.828445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190638, 0.121216, 0.974148,
		0.377959, -0.924908, 0.041123,
		0.905982, 0.360348, -0.222138,
		33.198765, 42.553749, 48.761803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.981888, 41.995052, 49.424274>,  <32.564579, 42.301506, 48.917301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.981888, 41.995052, 49.424274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.175957, 42.315144, 49.283283>,  <33.292400, 42.507198, 49.198689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.175957, 42.315144, 49.283283>,  <32.981888, 41.995052, 49.424274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.175957, 42.315144, 49.283283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287421, 0.234756, 0.928590,
		0.825829, -0.551839, -0.116104,
		0.485176, 0.800227, -0.352479,
		33.321510, 42.555210, 49.177540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404804, 41.454201, 49.124981>,  <32.981888, 41.995052, 49.424274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.404804, 41.454201, 49.124981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.546021, 41.159489, 49.355640>,  <33.630753, 40.982662, 49.494034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.546021, 41.159489, 49.355640>,  <33.404804, 41.454201, 49.124981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546021, 41.159489, 49.355640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213794, -0.663554, -0.716929,
		0.910853, 0.129824, -0.391782,
		0.353043, -0.736778, 0.576645,
		33.651932, 40.938454, 49.528633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019833, 41.067680, 48.811012>,  <33.404804, 41.454201, 49.124981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019833, 41.067680, 48.811012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.761951, 40.866112, 49.040943>,  <33.607224, 40.745171, 49.178902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.761951, 40.866112, 49.040943>,  <34.019833, 41.067680, 48.811012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761951, 40.866112, 49.040943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300236, -0.524615, -0.796642,
		0.703008, -0.686177, 0.186923,
		-0.644700, -0.503925, 0.574823,
		33.568542, 40.714935, 49.213390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.086311, 40.340221, 48.764431>,  <34.019833, 41.067680, 48.811012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.086311, 40.340221, 48.764431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.715202, 40.382973, 48.907440>,  <33.492538, 40.408623, 48.993244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.715202, 40.382973, 48.907440>,  <34.086311, 40.340221, 48.764431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715202, 40.382973, 48.907440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348801, -0.588846, -0.729107,
		0.132601, -0.801147, 0.583592,
		-0.927769, 0.106877, 0.357523,
		33.436871, 40.415035, 49.014698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880093, 39.581837, 48.876762>,  <34.086311, 40.340221, 48.764431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880093, 39.581837, 48.876762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.579025, 39.842510, 48.839233>,  <33.398384, 39.998913, 48.816715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.579025, 39.842510, 48.839233>,  <33.880093, 39.581837, 48.876762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579025, 39.842510, 48.839233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229871, -0.393639, -0.890061,
		-0.616971, -0.648350, 0.446081,
		-0.752666, 0.651683, -0.093827,
		33.353226, 40.038013, 48.811085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341209, 39.151669, 48.554890>,  <33.880093, 39.581837, 48.876762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341209, 39.151669, 48.554890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.218296, 39.528538, 48.501377>,  <33.144550, 39.754658, 48.469269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.218296, 39.528538, 48.501377>,  <33.341209, 39.151669, 48.554890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218296, 39.528538, 48.501377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463726, -0.271010, -0.843511,
		-0.830985, -0.197159, 0.520184,
		-0.307281, 0.942169, -0.133778,
		33.126110, 39.811188, 48.461243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.614975, 38.991211, 48.364449>,  <33.341209, 39.151669, 48.554890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.614975, 38.991211, 48.364449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.737057, 39.351761, 48.241562>,  <32.810307, 39.568089, 48.167831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.737057, 39.351761, 48.241562>,  <32.614975, 38.991211, 48.364449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.737057, 39.351761, 48.241562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254036, -0.233850, -0.938499,
		-0.917778, 0.364478, 0.157609,
		0.305205, 0.901371, -0.307213,
		32.828617, 39.622173, 48.149399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.041641, 39.156872, 47.852310>,  <32.614975, 38.991211, 48.364449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.041641, 39.156872, 47.852310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.367847, 39.382835, 47.802013>,  <32.563572, 39.518414, 47.771835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.367847, 39.382835, 47.802013>,  <32.041641, 39.156872, 47.852310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.367847, 39.382835, 47.802013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040295, -0.161326, -0.986078,
		-0.577330, 0.809230, -0.108800,
		0.815516, 0.564908, -0.125746,
		32.612503, 39.552307, 47.764290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.847466, 41.313568, 50.411400> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.724964, 41.633007, 50.204147>,  <37.651463, 41.824669, 50.079796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.724964, 41.633007, 50.204147>,  <37.847466, 41.313568, 50.411400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724964, 41.633007, 50.204147> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363981, -0.404695, -0.838892,
		-0.879619, -0.445499, -0.166736,
		-0.306249, 0.798594, -0.518131,
		37.633091, 41.872585, 50.048710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352440, 41.199657, 49.940533>,  <37.847466, 41.313568, 50.411400>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352440, 41.199657, 49.940533> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.622437, 41.467178, 49.815903>,  <37.784435, 41.627693, 49.741123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.622437, 41.467178, 49.815903>,  <37.352440, 41.199657, 49.940533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622437, 41.467178, 49.815903> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169582, -0.551618, -0.816676,
		-0.718069, 0.498414, -0.485757,
		0.674995, 0.668806, -0.311578,
		37.824936, 41.667820, 49.722431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273987, 41.314342, 49.273125>,  <37.352440, 41.199657, 49.940533>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273987, 41.314342, 49.273125> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.659088, 41.422325, 49.279202>,  <37.890148, 41.487114, 49.282848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.659088, 41.422325, 49.279202>,  <37.273987, 41.314342, 49.273125>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659088, 41.422325, 49.279202> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169485, -0.558760, -0.811826,
		-0.210671, 0.784163, -0.583701,
		0.962753, 0.269957, 0.015189,
		37.947914, 41.503311, 49.283760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511166, 41.487709, 48.609188>,  <37.273987, 41.314342, 49.273125>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511166, 41.487709, 48.609188> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.862282, 41.389488, 48.773712>,  <38.072952, 41.330555, 48.872429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.862282, 41.389488, 48.773712>,  <37.511166, 41.487709, 48.609188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862282, 41.389488, 48.773712> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174268, -0.636104, -0.751666,
		0.446214, 0.731487, -0.515576,
		0.877795, -0.245556, 0.411313,
		38.125622, 41.315823, 48.897106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088982, 41.620884, 48.154320>,  <37.511166, 41.487709, 48.609188>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088982, 41.620884, 48.154320> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.253979, 41.368198, 48.416859>,  <38.352978, 41.216587, 48.574383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.253979, 41.368198, 48.416859>,  <38.088982, 41.620884, 48.154320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.253979, 41.368198, 48.416859> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404615, -0.518474, -0.753307,
		0.816171, 0.576302, 0.041732,
		0.412495, -0.631713, 0.656343,
		38.377728, 41.178684, 48.613762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697903, 41.487469, 47.887699>,  <38.088982, 41.620884, 48.154320>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697903, 41.487469, 47.887699> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.618469, 41.176117, 48.125923>,  <38.570808, 40.989307, 48.268860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.618469, 41.176117, 48.125923>,  <38.697903, 41.487469, 47.887699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618469, 41.176117, 48.125923> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272312, -0.627559, -0.729394,
		0.941493, 0.017330, 0.336586,
		-0.198587, -0.778376, 0.595562,
		38.558891, 40.942604, 48.304592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145054, 41.046200, 47.706120>,  <38.697903, 41.487469, 47.887699>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145054, 41.046200, 47.706120> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.913876, 40.794708, 47.914227>,  <38.775169, 40.643814, 48.039089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.913876, 40.794708, 47.914227>,  <39.145054, 41.046200, 47.706120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913876, 40.794708, 47.914227> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304153, -0.757542, -0.577599,
		0.757276, -0.175582, 0.629050,
		-0.577947, -0.628730, 0.520265,
		38.740490, 40.606091, 48.070305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520466, 40.406506, 47.785801>,  <39.145054, 41.046200, 47.706120>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.520466, 40.406506, 47.785801> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.134827, 40.322414, 47.850693>,  <38.903442, 40.271961, 47.889626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.134827, 40.322414, 47.850693>,  <39.520466, 40.406506, 47.785801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134827, 40.322414, 47.850693> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031188, -0.696340, -0.717034,
		0.263704, -0.686233, 0.677897,
		-0.964100, -0.210227, 0.162225,
		38.845596, 40.259346, 47.899361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445717, 39.586521, 47.851692>,  <39.520466, 40.406506, 47.785801>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445717, 39.586521, 47.851692> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.099224, 39.749569, 47.736118>,  <38.891327, 39.847397, 47.666775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.099224, 39.749569, 47.736118>,  <39.445717, 39.586521, 47.851692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099224, 39.749569, 47.736118> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023722, -0.611187, -0.791131,
		-0.499076, -0.678450, 0.539100,
		-0.866234, 0.407623, -0.288934,
		38.839355, 39.871857, 47.649437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011982, 39.108147, 47.626030>,  <39.445717, 39.586521, 47.851692>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011982, 39.108147, 47.626030> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.816349, 39.407829, 47.447376>,  <38.698971, 39.587639, 47.340183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.816349, 39.407829, 47.447376>,  <39.011982, 39.108147, 47.626030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816349, 39.407829, 47.447376> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188356, -0.590694, -0.784603,
		-0.851657, -0.299610, 0.430017,
		-0.489083, 0.749209, -0.446635,
		38.669624, 39.632591, 47.313385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312263, 38.811840, 47.300751>,  <39.011982, 39.108147, 47.626030>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312263, 38.811840, 47.300751> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.365101, 39.159725, 47.110531>,  <38.396805, 39.368458, 46.996399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.365101, 39.159725, 47.110531>,  <38.312263, 38.811840, 47.300751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365101, 39.159725, 47.110531> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247907, -0.435520, -0.865370,
		-0.959736, 0.232203, 0.158078,
		0.132095, 0.869715, -0.475549,
		38.404728, 39.420639, 46.967865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718410, 38.879879, 46.704468>,  <38.312263, 38.811840, 47.300751>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.718410, 38.879879, 46.704468> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.973331, 39.174259, 46.613064>,  <38.126286, 39.350887, 46.558224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.973331, 39.174259, 46.613064>,  <37.718410, 38.879879, 46.704468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973331, 39.174259, 46.613064> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181099, -0.145188, -0.972689,
		-0.749031, 0.661281, 0.040751,
		0.637304, 0.735954, -0.228508,
		38.164524, 39.395046, 46.544510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986473, 38.891098, 46.730118>,  <37.718410, 38.879879, 46.704468>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986473, 38.891098, 46.730118> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.892166, 38.503838, 46.763805>,  <36.835583, 38.271481, 46.784019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.892166, 38.503838, 46.763805>,  <36.986473, 38.891098, 46.730118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892166, 38.503838, 46.763805> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368743, 0.169306, 0.913983,
		-0.899135, 0.184430, -0.396916,
		-0.235766, -0.968153, 0.084222,
		36.821438, 38.213390, 46.789070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258125, 38.891029, 46.868099>,  <36.986473, 38.891098, 46.730118>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258125, 38.891029, 46.868099> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.456131, 38.574375, 47.011360>,  <36.574936, 38.384384, 47.097317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.456131, 38.574375, 47.011360>,  <36.258125, 38.891029, 46.868099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456131, 38.574375, 47.011360> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332951, 0.207907, 0.919738,
		-0.802559, -0.574533, -0.160658,
		0.495017, -0.791635, 0.358149,
		36.604637, 38.336884, 47.118805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834148, 38.647800, 47.291134>,  <36.258125, 38.891029, 46.868099>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834148, 38.647800, 47.291134> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.174934, 38.474010, 47.408016>,  <36.379406, 38.369736, 47.478146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.174934, 38.474010, 47.408016>,  <35.834148, 38.647800, 47.291134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174934, 38.474010, 47.408016> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219097, 0.211036, 0.952607,
		-0.475550, -0.875611, 0.084604,
		0.851967, -0.434476, 0.292201,
		36.430523, 38.343666, 47.495678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691933, 38.131790, 47.724419>,  <35.834148, 38.647800, 47.291134>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691933, 38.131790, 47.724419> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.063885, 38.240425, 47.823669>,  <36.287056, 38.305607, 47.883221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.063885, 38.240425, 47.823669>,  <35.691933, 38.131790, 47.724419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063885, 38.240425, 47.823669> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324885, 0.289890, 0.900230,
		0.172554, -0.917719, 0.357795,
		0.929879, 0.271580, 0.248132,
		36.342850, 38.321899, 47.898109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671471, 37.992706, 48.453743>,  <35.691933, 38.131790, 47.724419>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671471, 37.992706, 48.453743> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.002422, 38.211491, 48.402725>,  <36.200993, 38.342762, 48.372112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.002422, 38.211491, 48.402725>,  <35.671471, 37.992706, 48.453743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002422, 38.211491, 48.402725> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086811, 0.348912, 0.933126,
		0.554890, -0.760979, 0.336167,
		0.827382, 0.546966, -0.127547,
		36.250637, 38.375580, 48.364460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064850, 37.806683, 48.958710>,  <35.671471, 37.992706, 48.453743>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.064850, 37.806683, 48.958710> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.235680, 38.157223, 48.869610>,  <36.338177, 38.367546, 48.816151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.235680, 38.157223, 48.869610>,  <36.064850, 37.806683, 48.958710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235680, 38.157223, 48.869610> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024354, 0.257403, 0.965997,
		0.903887, -0.407130, 0.131274,
		0.427077, 0.876350, -0.222748,
		36.363804, 38.420128, 48.802784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566143, 37.939556, 49.493587>,  <36.064850, 37.806683, 48.958710>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566143, 37.939556, 49.493587> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.466248, 38.293167, 49.335537>,  <36.406311, 38.505333, 49.240707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.466248, 38.293167, 49.335537>,  <36.566143, 37.939556, 49.493587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466248, 38.293167, 49.335537> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006687, 0.406474, 0.913638,
		0.968289, 0.230816, -0.095602,
		-0.249742, 0.884027, -0.395128,
		36.391327, 38.558376, 49.216999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134750, 38.385357, 49.715412>,  <36.566143, 37.939556, 49.493587>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134750, 38.385357, 49.715412> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.833260, 38.625977, 49.609554>,  <36.652363, 38.770348, 49.546040>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.833260, 38.625977, 49.609554>,  <37.134750, 38.385357, 49.715412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833260, 38.625977, 49.609554> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028328, 0.372581, 0.927567,
		0.656575, 0.706631, -0.263785,
		-0.753729, 0.601545, -0.264645,
		36.607140, 38.806438, 49.530159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341885, 39.058609, 49.994167>,  <37.134750, 38.385357, 49.715412>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.341885, 39.058609, 49.994167> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.943565, 39.033836, 49.967159>,  <36.704575, 39.018974, 49.950954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.943565, 39.033836, 49.967159>,  <37.341885, 39.058609, 49.994167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943565, 39.033836, 49.967159> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085646, 0.367336, 0.926137,
		-0.032553, 0.928024, -0.371095,
		-0.995794, -0.061931, -0.067523,
		36.644829, 39.015259, 49.946903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137791, 39.672684, 50.127678>,  <37.341885, 39.058609, 49.994167>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137791, 39.672684, 50.127678> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.799740, 39.463921, 50.173939>,  <36.596909, 39.338665, 50.201694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.799740, 39.463921, 50.173939>,  <37.137791, 39.672684, 50.127678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.799740, 39.463921, 50.173939> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115670, 0.389767, 0.913620,
		-0.521901, 0.758747, -0.389772,
		-0.845127, -0.521904, 0.115655,
		36.546204, 39.307350, 50.208637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498508, 40.128349, 50.322765>,  <37.137791, 39.672684, 50.127678>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498508, 40.128349, 50.322765> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.392387, 39.762753, 50.445560>,  <36.328716, 39.543396, 50.519238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.392387, 39.762753, 50.445560>,  <36.498508, 40.128349, 50.322765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392387, 39.762753, 50.445560> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191605, 0.362025, 0.912264,
		-0.944936, 0.183203, -0.271170,
		-0.265299, -0.913988, 0.306988,
		36.312798, 39.488556, 50.537659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086151, 40.283745, 50.889629>,  <36.498508, 40.128349, 50.322765>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086151, 40.283745, 50.889629> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.155586, 39.896267, 50.960625>,  <36.197247, 39.663780, 51.003220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.155586, 39.896267, 50.960625>,  <36.086151, 40.283745, 50.889629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155586, 39.896267, 50.960625> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109781, 0.160065, 0.980983,
		-0.978680, -0.189772, -0.078559,
		0.173588, -0.968693, 0.177486,
		36.207664, 39.605659, 51.013870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608231, 40.095600, 51.287491>,  <36.086151, 40.283745, 50.889629>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608231, 40.095600, 51.287491> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.918129, 39.848709, 51.342339>,  <36.104069, 39.700573, 51.375248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.918129, 39.848709, 51.342339>,  <35.608231, 40.095600, 51.287491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918129, 39.848709, 51.342339> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017263, 0.237431, 0.971251,
		-0.632037, -0.750105, 0.194603,
		0.774745, -0.617227, 0.137116,
		36.150551, 39.663540, 51.383472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558723, 39.907970, 51.958817>,  <35.608231, 40.095600, 51.287491>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558723, 39.907970, 51.958817> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.933899, 39.802158, 51.869110>,  <36.159004, 39.738670, 51.815289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.933899, 39.802158, 51.869110>,  <35.558723, 39.907970, 51.958817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933899, 39.802158, 51.869110> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274337, 0.170350, 0.946425,
		-0.212154, -0.949212, 0.232349,
		0.937939, -0.264530, -0.224264,
		36.215282, 39.722801, 51.801830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344635, 40.668365, 51.918976>,  <35.558723, 39.907970, 51.958817>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344635, 40.668365, 51.918976> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.052021, 40.923294, 52.015873>,  <34.876453, 41.076252, 52.074013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.052021, 40.923294, 52.015873>,  <35.344635, 40.668365, 51.918976>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052021, 40.923294, 52.015873> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476300, -0.223468, -0.850412,
		-0.487852, -0.737484, 0.467030,
		-0.731532, 0.637321, 0.242245,
		34.832561, 41.114491, 52.088547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720760, 40.348015, 51.802967>,  <35.344635, 40.668365, 51.918976>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720760, 40.348015, 51.802967> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.613274, 40.733273, 51.798027>,  <34.548782, 40.964428, 51.795063>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.613274, 40.733273, 51.798027>,  <34.720760, 40.348015, 51.802967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613274, 40.733273, 51.798027> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615354, -0.181517, -0.767067,
		-0.741034, -0.198526, 0.641449,
		-0.268717, 0.963140, -0.012347,
		34.532658, 41.022213, 51.794323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975361, 40.237133, 51.611732>,  <34.720760, 40.348015, 51.802967>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975361, 40.237133, 51.611732> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.065247, 40.620674, 51.542332>,  <34.119179, 40.850800, 51.500690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.065247, 40.620674, 51.542332>,  <33.975361, 40.237133, 51.611732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065247, 40.620674, 51.542332> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641240, 0.011452, -0.767255,
		-0.733698, 0.283670, 0.617429,
		0.224718, 0.958854, -0.173498,
		34.132664, 40.908329, 51.490284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.442959, 40.590439, 51.544861>,  <33.975361, 40.237133, 51.611732>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.442959, 40.590439, 51.544861> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.709438, 40.820301, 51.354725>,  <33.869328, 40.958218, 51.240643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.709438, 40.820301, 51.354725>,  <33.442959, 40.590439, 51.544861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709438, 40.820301, 51.354725> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597672, 0.030165, -0.801173,
		-0.446060, 0.817839, 0.363551,
		0.666197, 0.574656, -0.475344,
		33.909298, 40.992699, 51.212120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108952, 41.133644, 51.355270>,  <33.442959, 40.590439, 51.544861>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108952, 41.133644, 51.355270> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.441181, 41.156521, 51.133686>,  <33.640518, 41.170246, 51.000736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.441181, 41.156521, 51.133686>,  <33.108952, 41.133644, 51.355270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441181, 41.156521, 51.133686> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554899, 0.169274, -0.814514,
		0.047183, 0.983908, 0.172333,
		0.830578, 0.057197, -0.553957,
		33.690353, 41.173679, 50.967499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.044941, 41.726654, 50.835690>,  <33.108952, 41.133644, 51.355270>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.044941, 41.726654, 50.835690> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.333435, 41.498863, 50.677944>,  <33.506531, 41.362190, 50.583298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.333435, 41.498863, 50.677944>,  <33.044941, 41.726654, 50.835690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333435, 41.498863, 50.677944> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452246, 0.044112, -0.890802,
		0.524685, 0.820825, -0.225727,
		0.721235, -0.569474, -0.394360,
		33.549805, 41.328022, 50.559635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.134190, 41.974445, 50.185169>,  <33.044941, 41.726654, 50.835690>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.134190, 41.974445, 50.185169> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.277737, 41.601784, 50.162399>,  <33.363865, 41.378189, 50.148739>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.277737, 41.601784, 50.162399>,  <33.134190, 41.974445, 50.185169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277737, 41.601784, 50.162399> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295919, -0.055721, -0.953587,
		0.885239, 0.359055, -0.295690,
		0.358866, -0.931652, -0.056925,
		33.385395, 41.322289, 50.145321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663536, 42.145145, 49.873344>,  <33.134190, 41.974445, 50.185169>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663536, 42.145145, 49.873344> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.578869, 42.496193, 49.701305>,  <33.528069, 42.706821, 49.598083>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.578869, 42.496193, 49.701305>,  <33.663536, 42.145145, 49.873344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.578869, 42.496193, 49.701305> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362383, 0.479174, 0.799419,
		0.907676, 0.013353, -0.419460,
		-0.211669, 0.877618, -0.430096,
		33.515369, 42.759480, 49.572277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146927, 42.557194, 50.170395>,  <33.663536, 42.145145, 49.873344>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146927, 42.557194, 50.170395> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.864010, 42.803215, 50.030998>,  <33.694260, 42.950829, 49.947361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.864010, 42.803215, 50.030998>,  <34.146927, 42.557194, 50.170395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864010, 42.803215, 50.030998> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064587, 0.547133, 0.834550,
		0.703968, 0.567760, -0.426706,
		-0.707289, 0.615056, -0.348494,
		33.651825, 42.987732, 49.926449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.410023, 43.208595, 50.213543>,  <34.146927, 42.557194, 50.170395>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.410023, 43.208595, 50.213543> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.012875, 43.255054, 50.202877>,  <33.774586, 43.282932, 50.196480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.012875, 43.255054, 50.202877>,  <34.410023, 43.208595, 50.213543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.012875, 43.255054, 50.202877> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059377, 0.676130, 0.734386,
		0.103328, 0.727569, -0.678209,
		-0.992874, 0.116152, -0.026662,
		33.715012, 43.289902, 50.194878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337746, 43.938572, 50.185333>,  <34.410023, 43.208595, 50.213543>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.337746, 43.938572, 50.185333> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.003727, 43.761154, 50.315544>,  <33.803314, 43.654705, 50.393669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.003727, 43.761154, 50.315544>,  <34.337746, 43.938572, 50.185333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.003727, 43.761154, 50.315544> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010210, 0.579080, 0.815207,
		-0.550085, 0.684059, -0.479030,
		-0.835046, -0.443542, 0.325528,
		33.753212, 43.628090, 50.413204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916733, 44.515369, 50.229778>,  <34.337746, 43.938572, 50.185333>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916733, 44.515369, 50.229778> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.774792, 44.230297, 50.471828>,  <33.689629, 44.059254, 50.617058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.774792, 44.230297, 50.471828>,  <33.916733, 44.515369, 50.229778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.774792, 44.230297, 50.471828> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221779, 0.564603, 0.795008,
		-0.908238, 0.416311, -0.042292,
		-0.354849, -0.712677, 0.605123,
		33.668339, 44.016495, 50.653366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646313, 44.952377, 50.758965>,  <33.916733, 44.515369, 50.229778>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646313, 44.952377, 50.758965> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.678528, 44.579250, 50.899456>,  <33.697857, 44.355373, 50.983749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.678528, 44.579250, 50.899456>,  <33.646313, 44.952377, 50.758965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.678528, 44.579250, 50.899456> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121822, 0.358941, 0.925376,
		-0.989280, -0.031736, 0.142544,
		0.080533, -0.932820, 0.351227,
		33.702686, 44.299404, 51.004826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204617, 44.949863, 51.442528>,  <33.646313, 44.952377, 50.758965>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204617, 44.949863, 51.442528> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.442707, 44.629696, 51.470901>,  <33.585560, 44.437595, 51.487926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.442707, 44.629696, 51.470901>,  <33.204617, 44.949863, 51.442528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442707, 44.629696, 51.470901> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231862, 0.255603, 0.938566,
		-0.769382, -0.542209, 0.337729,
		0.595224, -0.800422, 0.070938,
		33.621273, 44.389568, 51.492184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061073, 44.661278, 52.156326>,  <33.204617, 44.949863, 51.442528>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.061073, 44.661278, 52.156326> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.428551, 44.558022, 52.036747>,  <33.649036, 44.496067, 51.965000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.428551, 44.558022, 52.036747>,  <33.061073, 44.661278, 52.156326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.428551, 44.558022, 52.036747> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381194, 0.381234, 0.842230,
		-0.103442, -0.887707, 0.448637,
		0.918690, -0.258139, -0.298953,
		33.704159, 44.480579, 51.947060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420307, 44.517761, 52.796211>,  <33.061073, 44.661278, 52.156326>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420307, 44.517761, 52.796211> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.705006, 44.551773, 52.517303>,  <33.875824, 44.572178, 52.349957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.705006, 44.551773, 52.517303>,  <33.420307, 44.517761, 52.796211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705006, 44.551773, 52.517303> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653293, 0.284634, 0.701564,
		0.258117, -0.954858, 0.147042,
		0.711747, 0.085024, -0.697271,
		33.918530, 44.577282, 52.308121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.171768, 38.622768, 37.180664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564381, 38.547104, 37.169281>,  <34.799950, 38.501705, 37.162453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564381, 38.547104, 37.169281>,  <34.171768, 38.622768, 37.180664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564381, 38.547104, 37.169281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053966, 0.131114, 0.989897,
		-0.183523, -0.973153, 0.138901,
		0.981533, -0.189165, -0.028455,
		34.858841, 38.490356, 37.160744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414001, 38.024086, 37.526360>,  <34.171768, 38.622768, 37.180664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.414001, 38.024086, 37.526360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656139, 38.342445, 37.522186>,  <34.801422, 38.533463, 37.519684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656139, 38.342445, 37.522186>,  <34.414001, 38.024086, 37.526360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656139, 38.342445, 37.522186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239211, 0.194405, 0.951307,
		0.759170, -0.573371, 0.308069,
		0.605342, 0.795897, -0.010429,
		34.837742, 38.581215, 37.519058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805710, 37.985062, 38.096012>,  <34.414001, 38.024086, 37.526360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805710, 37.985062, 38.096012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810940, 38.374847, 38.006348>,  <34.814079, 38.608719, 37.952549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810940, 38.374847, 38.006348>,  <34.805710, 37.985062, 38.096012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810940, 38.374847, 38.006348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007360, 0.224076, 0.974544,
		0.999888, -0.014392, -0.004242,
		0.013075, 0.974465, -0.224157,
		34.814861, 38.667187, 37.939102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430824, 38.246433, 38.554817>,  <34.805710, 37.985062, 38.096012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430824, 38.246433, 38.554817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.192638, 38.556820, 38.471588>,  <35.049725, 38.743053, 38.421650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.192638, 38.556820, 38.471588>,  <35.430824, 38.246433, 38.554817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192638, 38.556820, 38.471588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025997, 0.277474, 0.960381,
		0.802959, 0.566466, -0.185399,
		-0.595466, 0.775967, -0.208074,
		35.014000, 38.789612, 38.409164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737473, 38.923878, 38.864239>,  <35.430824, 38.246433, 38.554817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737473, 38.923878, 38.864239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.365208, 39.054585, 38.798401>,  <35.141850, 39.133011, 38.758900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.365208, 39.054585, 38.798401>,  <35.737473, 38.923878, 38.864239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365208, 39.054585, 38.798401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020958, 0.401502, 0.915618,
		0.365279, 0.855581, -0.366814,
		-0.930662, 0.326769, -0.164591,
		35.086010, 39.152615, 38.749023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662712, 39.719421, 39.070942>,  <35.737473, 38.923878, 38.864239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662712, 39.719421, 39.070942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294025, 39.564728, 39.082748>,  <35.072815, 39.471912, 39.089832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294025, 39.564728, 39.082748>,  <35.662712, 39.719421, 39.070942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294025, 39.564728, 39.082748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120723, 0.358366, 0.925743,
		-0.368596, 0.849710, -0.377001,
		-0.921717, -0.386738, 0.029512,
		35.017509, 39.448708, 39.091602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417858, 40.003574, 39.645496>,  <35.662712, 39.719421, 39.070942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417858, 40.003574, 39.645496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113274, 39.750980, 39.586990>,  <34.930523, 39.599422, 39.551888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113274, 39.750980, 39.586990>,  <35.417858, 40.003574, 39.645496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113274, 39.750980, 39.586990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453656, 0.358003, 0.816106,
		-0.462999, 0.687790, -0.559086,
		-0.761464, -0.631490, -0.146265,
		34.884834, 39.561535, 39.543110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719677, 40.325001, 39.710903>,  <35.417858, 40.003574, 39.645496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719677, 40.325001, 39.710903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.682419, 39.938198, 39.805744>,  <34.660065, 39.706116, 39.862648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.682419, 39.938198, 39.805744>,  <34.719677, 40.325001, 39.710903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682419, 39.938198, 39.805744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434289, 0.253754, 0.864293,
		-0.895945, -0.022465, -0.443597,
		-0.093148, -0.967008, 0.237106,
		34.654476, 39.648094, 39.876877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064823, 40.360237, 39.982185>,  <34.719677, 40.325001, 39.710903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064823, 40.360237, 39.982185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199440, 40.012905, 40.127926>,  <34.280212, 39.804508, 40.215370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199440, 40.012905, 40.127926>,  <34.064823, 40.360237, 39.982185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199440, 40.012905, 40.127926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451638, 0.190671, 0.871589,
		-0.826293, -0.457882, -0.327999,
		0.336544, -0.868325, 0.364347,
		34.300404, 39.752407, 40.237228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506046, 39.937351, 40.258205>,  <34.064823, 40.360237, 39.982185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506046, 39.937351, 40.258205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831043, 39.785698, 40.435345>,  <34.026043, 39.694706, 40.541630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831043, 39.785698, 40.435345>,  <33.506046, 39.937351, 40.258205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831043, 39.785698, 40.435345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427893, 0.128086, 0.894708,
		-0.395932, -0.916436, -0.058158,
		0.812494, -0.379129, 0.442850,
		34.074791, 39.671959, 40.568199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323582, 39.183788, 40.720066>,  <33.506046, 39.937351, 40.258205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323582, 39.183788, 40.720066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629467, 39.410843, 40.842056>,  <33.812996, 39.547073, 40.915249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629467, 39.410843, 40.842056>,  <33.323582, 39.183788, 40.720066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629467, 39.410843, 40.842056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388429, 0.028436, 0.921040,
		0.514139, -0.822791, 0.242230,
		0.764711, 0.567632, 0.304976,
		33.858879, 39.581131, 40.933548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219898, 39.122105, 41.346115>,  <33.323582, 39.183788, 40.720066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219898, 39.122105, 41.346115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523796, 39.382030, 41.355373>,  <33.706135, 39.537987, 41.360928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523796, 39.382030, 41.355373>,  <33.219898, 39.122105, 41.346115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523796, 39.382030, 41.355373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192115, 0.190323, 0.962740,
		0.621198, -0.735879, 0.269435,
		0.759740, 0.649815, 0.023145,
		33.751717, 39.576973, 41.362316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390999, 38.337803, 41.632622>,  <33.219898, 39.122105, 41.346115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390999, 38.337803, 41.632622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.148788, 38.081230, 41.821049>,  <33.003460, 37.927288, 41.934105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.148788, 38.081230, 41.821049>,  <33.390999, 38.337803, 41.632622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148788, 38.081230, 41.821049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072265, -0.545159, -0.835213,
		0.792535, -0.539787, 0.283757,
		-0.605530, -0.641430, 0.471065,
		32.967129, 37.888802, 41.962368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617256, 37.677444, 41.332661>,  <33.390999, 38.337803, 41.632622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617256, 37.677444, 41.332661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254063, 37.606506, 41.484509>,  <33.036148, 37.563942, 41.575619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254063, 37.606506, 41.484509>,  <33.617256, 37.677444, 41.332661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254063, 37.606506, 41.484509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283559, -0.406946, -0.868325,
		0.308481, -0.896071, 0.319212,
		-0.907983, -0.177346, 0.379624,
		32.981667, 37.553303, 41.598396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565353, 36.961983, 41.293503>,  <33.617256, 37.677444, 41.332661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565353, 36.961983, 41.293503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195168, 37.113010, 41.305840>,  <32.973057, 37.203629, 41.313240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195168, 37.113010, 41.305840>,  <33.565353, 36.961983, 41.293503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195168, 37.113010, 41.305840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202233, -0.423569, -0.883001,
		-0.320332, -0.823425, 0.468357,
		-0.925467, 0.377571, 0.030841,
		32.917526, 37.226284, 41.315090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.134312, 36.460995, 41.178226>,  <33.565353, 36.961983, 41.293503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.134312, 36.460995, 41.178226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.877285, 36.758144, 41.103130>,  <32.723068, 36.936436, 41.058071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.877285, 36.758144, 41.103130>,  <33.134312, 36.460995, 41.178226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.877285, 36.758144, 41.103130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306397, -0.473695, -0.825672,
		-0.702303, -0.473024, 0.531995,
		-0.642566, 0.742873, -0.187744,
		32.684517, 36.981007, 41.046806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449100, 36.102467, 40.901993>,  <33.134312, 36.460995, 41.178226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449100, 36.102467, 40.901993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.399998, 36.492226, 40.826645>,  <32.370537, 36.726082, 40.781437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.399998, 36.492226, 40.826645>,  <32.449100, 36.102467, 40.901993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.399998, 36.492226, 40.826645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570003, -0.224598, -0.790349,
		-0.812420, 0.010350, 0.582980,
		-0.122756, 0.974396, -0.188367,
		32.363171, 36.784546, 40.770134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.671074, 36.265373, 40.973633>,  <32.449100, 36.102467, 40.901993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.671074, 36.265373, 40.973633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.842970, 36.530491, 40.728348>,  <31.946108, 36.689560, 40.581177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.842970, 36.530491, 40.728348>,  <31.671074, 36.265373, 40.973633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.842970, 36.530491, 40.728348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594878, -0.303089, -0.744484,
		-0.679298, 0.684720, 0.264033,
		0.429738, 0.662794, -0.613213,
		31.971891, 36.729328, 40.544384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.149914, 36.544258, 40.468800>,  <31.671074, 36.265373, 40.973633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.149914, 36.544258, 40.468800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.497770, 36.633568, 40.292675>,  <31.706484, 36.687153, 40.187000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.497770, 36.633568, 40.292675>,  <31.149914, 36.544258, 40.468800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497770, 36.633568, 40.292675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339232, -0.377731, -0.861534,
		-0.358676, 0.898593, -0.252750,
		0.869640, 0.223270, -0.440315,
		31.758663, 36.700550, 40.160580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.944248, 36.864075, 39.865520>,  <31.149914, 36.544258, 40.468800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.944248, 36.864075, 39.865520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311758, 36.718979, 39.803196>,  <31.532263, 36.631924, 39.765800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311758, 36.718979, 39.803196>,  <30.944248, 36.864075, 39.865520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.311758, 36.718979, 39.803196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261242, -0.262730, -0.928830,
		0.295986, 0.894088, -0.336152,
		0.918774, -0.362738, -0.155809,
		31.587391, 36.610157, 39.756454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.138889, 37.080544, 39.208481>,  <30.944248, 36.864075, 39.865520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.138889, 37.080544, 39.208481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.362425, 36.761234, 39.298336>,  <31.496546, 36.569649, 39.352249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.362425, 36.761234, 39.298336>,  <31.138889, 37.080544, 39.208481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.362425, 36.761234, 39.298336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242076, -0.416115, -0.876497,
		0.793157, 0.435443, -0.425784,
		0.558839, -0.798272, 0.224634,
		31.530077, 36.521751, 39.365726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.635424, 37.058170, 38.739674>,  <31.138889, 37.080544, 39.208481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.635424, 37.058170, 38.739674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.631399, 36.687759, 38.890606>,  <31.628984, 36.465515, 38.981163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.631399, 36.687759, 38.890606>,  <31.635424, 37.058170, 38.739674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.631399, 36.687759, 38.890606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114115, -0.373817, -0.920456,
		0.993417, -0.052321, -0.101912,
		-0.010063, -0.926026, 0.377327,
		31.628380, 36.409950, 39.003803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922523, 36.630054, 38.207497>,  <31.635424, 37.058170, 38.739674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922523, 36.630054, 38.207497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.726835, 36.361717, 38.430435>,  <31.609423, 36.200714, 38.564198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.726835, 36.361717, 38.430435>,  <31.922523, 36.630054, 38.207497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.726835, 36.361717, 38.430435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281906, -0.483106, -0.828938,
		0.825344, -0.562652, 0.047231,
		-0.489221, -0.670844, 0.557343,
		31.580069, 36.160465, 38.597637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136829, 36.039833, 37.909496>,  <31.922523, 36.630054, 38.207497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.136829, 36.039833, 37.909496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795938, 35.955082, 38.100834>,  <31.591404, 35.904232, 38.215637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795938, 35.955082, 38.100834>,  <32.136829, 36.039833, 37.909496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.795938, 35.955082, 38.100834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380218, -0.377208, -0.844481,
		0.359365, -0.901566, 0.240906,
		-0.852227, -0.211881, 0.478347,
		31.540270, 35.891518, 38.244339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.868092, 35.354420, 37.703930>,  <32.136829, 36.039833, 37.909496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.868092, 35.354420, 37.703930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.543058, 35.485138, 37.896973>,  <31.348038, 35.563568, 38.012798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.543058, 35.485138, 37.896973>,  <31.868092, 35.354420, 37.703930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.543058, 35.485138, 37.896973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569958, -0.272383, -0.775213,
		-0.121876, -0.904995, 0.407590,
		-0.812585, 0.326789, 0.482612,
		31.299282, 35.583176, 38.041756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538662, 35.065289, 37.399960>,  <31.868092, 35.354420, 37.703930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538662, 35.065289, 37.399960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771149, 35.353855, 37.249359>,  <32.910641, 35.526993, 37.159000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771149, 35.353855, 37.249359>,  <32.538662, 35.065289, 37.399960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771149, 35.353855, 37.249359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069797, 0.416771, 0.906328,
		0.810750, -0.553052, 0.191882,
		0.581217, 0.721412, -0.376498,
		32.945515, 35.570278, 37.136410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235352, 35.103989, 37.755001>,  <32.538662, 35.065289, 37.399960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235352, 35.103989, 37.755001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105171, 35.463787, 37.638390>,  <33.027061, 35.679665, 37.568420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105171, 35.463787, 37.638390>,  <33.235352, 35.103989, 37.755001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105171, 35.463787, 37.638390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120613, 0.345291, 0.930713,
		0.937834, 0.267741, -0.220866,
		-0.325453, 0.899494, -0.291533,
		33.007534, 35.733635, 37.550930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667309, 35.474865, 38.064053>,  <33.235352, 35.103989, 37.755001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667309, 35.474865, 38.064053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.367901, 35.727077, 37.981937>,  <33.188255, 35.878407, 37.932667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.367901, 35.727077, 37.981937>,  <33.667309, 35.474865, 38.064053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.367901, 35.727077, 37.981937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028812, 0.340219, 0.939905,
		0.662483, 0.697625, -0.272828,
		-0.748523, 0.630531, -0.205290,
		33.143345, 35.916237, 37.920349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.760788, 35.626930, 37.328667>,  <33.667309, 35.474865, 38.064053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.760788, 35.626930, 37.328667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935818, 35.985950, 37.307014>,  <34.040836, 36.201363, 37.294022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935818, 35.985950, 37.307014>,  <33.760788, 35.626930, 37.328667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935818, 35.985950, 37.307014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401709, -0.141268, 0.904806,
		0.804464, -0.417662, -0.422370,
		0.437570, 0.897554, -0.054134,
		34.067089, 36.255215, 37.290775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463627, 35.569462, 37.257141>,  <33.760788, 35.626930, 37.328667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463627, 35.569462, 37.257141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.357494, 35.896500, 37.461548>,  <34.293816, 36.092724, 37.584190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.357494, 35.896500, 37.461548>,  <34.463627, 35.569462, 37.257141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357494, 35.896500, 37.461548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565507, -0.297302, 0.769294,
		0.780897, 0.493101, -0.383472,
		-0.265333, 0.817596, 0.511014,
		34.277893, 36.141777, 37.614853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059502, 35.706390, 37.744595>,  <34.463627, 35.569462, 37.257141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059502, 35.706390, 37.744595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763153, 35.930927, 37.892105>,  <34.585342, 36.065651, 37.980614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763153, 35.930927, 37.892105>,  <35.059502, 35.706390, 37.744595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763153, 35.930927, 37.892105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351477, -0.143852, 0.925079,
		0.572335, 0.814986, -0.090722,
		-0.740876, 0.561342, 0.368780,
		34.540890, 36.099331, 38.002739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309525, 36.243542, 38.160732>,  <35.059502, 35.706390, 37.744595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309525, 36.243542, 38.160732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934509, 36.202641, 38.293739>,  <34.709499, 36.178101, 38.373543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934509, 36.202641, 38.293739>,  <35.309525, 36.243542, 38.160732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934509, 36.202641, 38.293739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342280, -0.100175, 0.934243,
		-0.062221, 0.989701, 0.128918,
		-0.937536, -0.102255, 0.332522,
		34.653248, 36.171963, 38.393497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201248, 36.749073, 38.648724>,  <35.309525, 36.243542, 38.160732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201248, 36.749073, 38.648724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930080, 36.459900, 38.702072>,  <34.767380, 36.286396, 38.734081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930080, 36.459900, 38.702072>,  <35.201248, 36.749073, 38.648724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930080, 36.459900, 38.702072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248962, -0.055067, 0.966947,
		-0.691693, 0.688721, 0.217314,
		-0.677923, -0.722933, 0.133376,
		34.726704, 36.243019, 38.742085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767830, 36.903717, 39.325378>,  <35.201248, 36.749073, 38.648724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767830, 36.903717, 39.325378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719448, 36.514927, 39.244751>,  <34.690418, 36.281654, 39.196373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719448, 36.514927, 39.244751>,  <34.767830, 36.903717, 39.325378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719448, 36.514927, 39.244751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319441, -0.230374, 0.919176,
		-0.939854, 0.046792, 0.338355,
		-0.120959, -0.971976, -0.201571,
		34.683159, 36.223335, 39.184280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399769, 36.634346, 39.871391>,  <34.767830, 36.903717, 39.325378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399769, 36.634346, 39.871391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527714, 36.294060, 39.704552>,  <34.604481, 36.089890, 39.604446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527714, 36.294060, 39.704552>,  <34.399769, 36.634346, 39.871391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527714, 36.294060, 39.704552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232817, -0.356160, 0.904957,
		-0.918414, -0.386571, 0.084138,
		0.319863, -0.850713, -0.417103,
		34.623672, 36.038845, 39.579422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980816, 36.205032, 40.135059>,  <34.399769, 36.634346, 39.871391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.980816, 36.205032, 40.135059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.313305, 36.006214, 40.035450>,  <34.512798, 35.886921, 39.975685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.313305, 36.006214, 40.035450>,  <33.980816, 36.205032, 40.135059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313305, 36.006214, 40.035450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143415, -0.241058, 0.959856,
		-0.537124, -0.833567, -0.129088,
		0.831222, -0.497049, -0.249023,
		34.562672, 35.857101, 39.960743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993248, 35.580322, 40.472355>,  <33.980816, 36.205032, 40.135059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993248, 35.580322, 40.472355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385315, 35.625290, 40.407085>,  <34.620556, 35.652271, 40.367924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385315, 35.625290, 40.407085>,  <33.993248, 35.580322, 40.472355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385315, 35.625290, 40.407085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182466, -0.190972, 0.964487,
		0.077263, -0.975137, -0.207697,
		0.980172, 0.112417, -0.163174,
		34.679367, 35.659016, 40.358131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328152, 34.888779, 40.764854>,  <33.993248, 35.580322, 40.472355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328152, 34.888779, 40.764854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.633083, 35.146587, 40.741390>,  <34.816044, 35.301273, 40.727310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.633083, 35.146587, 40.741390>,  <34.328152, 34.888779, 40.764854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633083, 35.146587, 40.741390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189510, -0.135640, 0.972465,
		0.618819, -0.752457, -0.225546,
		0.762332, 0.644523, -0.058662,
		34.861782, 35.339943, 40.723793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780869, 34.702541, 41.292126>,  <34.328152, 34.888779, 40.764854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780869, 34.702541, 41.292126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934856, 35.060661, 41.202461>,  <35.027248, 35.275532, 41.148663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934856, 35.060661, 41.202461>,  <34.780869, 34.702541, 41.292126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934856, 35.060661, 41.202461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301901, 0.107359, 0.947275,
		0.872157, -0.432342, -0.228961,
		0.384965, 0.895296, -0.224159,
		35.050346, 35.329250, 41.135212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534763, 34.750496, 41.471516>,  <34.780869, 34.702541, 41.292126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534763, 34.750496, 41.471516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385265, 35.120728, 41.495552>,  <35.295567, 35.342869, 41.509972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385265, 35.120728, 41.495552>,  <35.534763, 34.750496, 41.471516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385265, 35.120728, 41.495552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351844, 0.081534, 0.932501,
		0.858208, 0.369658, -0.356134,
		-0.373744, 0.925584, 0.060089,
		35.273144, 35.398403, 41.513580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092632, 35.254368, 41.806923>,  <35.534763, 34.750496, 41.471516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092632, 35.254368, 41.806923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.749859, 35.457920, 41.839664>,  <35.544193, 35.580051, 41.859310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.749859, 35.457920, 41.839664>,  <36.092632, 35.254368, 41.806923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749859, 35.457920, 41.839664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275518, 0.318048, 0.907158,
		0.435604, 0.799927, -0.412753,
		-0.856936, 0.508883, 0.081852,
		35.492779, 35.610584, 41.864220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357662, 35.853786, 42.068291>,  <36.092632, 35.254368, 41.806923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357662, 35.853786, 42.068291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.964401, 35.881172, 42.136074>,  <35.728443, 35.897606, 42.176743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.964401, 35.881172, 42.136074>,  <36.357662, 35.853786, 42.068291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.964401, 35.881172, 42.136074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179075, 0.546216, 0.818278,
		-0.036533, 0.834841, -0.549277,
		-0.983157, 0.068467, 0.169454,
		35.669453, 35.901711, 42.186909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256695, 36.571064, 42.292076>,  <36.357662, 35.853786, 42.068291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256695, 36.571064, 42.292076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.928223, 36.394066, 42.436218>,  <35.731140, 36.287865, 42.522705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.928223, 36.394066, 42.436218>,  <36.256695, 36.571064, 42.292076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928223, 36.394066, 42.436218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125146, 0.476454, 0.870247,
		-0.556775, 0.759728, -0.335878,
		-0.821182, -0.442499, 0.360354,
		35.681870, 36.261314, 42.544323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896557, 37.112198, 42.726364>,  <36.256695, 36.571064, 42.292076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896557, 37.112198, 42.726364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.757725, 36.754932, 42.840755>,  <35.674423, 36.540573, 42.909389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.757725, 36.754932, 42.840755>,  <35.896557, 37.112198, 42.726364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757725, 36.754932, 42.840755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035782, 0.317325, 0.947641,
		-0.937151, 0.318679, -0.142098,
		-0.347085, -0.893168, 0.285978,
		35.653599, 36.486980, 42.926548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292988, 37.267139, 43.101849>,  <35.896557, 37.112198, 42.726364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292988, 37.267139, 43.101849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390221, 36.894489, 43.209915>,  <35.448559, 36.670898, 43.274757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390221, 36.894489, 43.209915>,  <35.292988, 37.267139, 43.101849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390221, 36.894489, 43.209915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243746, 0.328254, 0.912599,
		-0.938882, -0.155985, 0.306872,
		0.243083, -0.931621, 0.270171,
		35.463146, 36.615002, 43.290966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054657, 37.344387, 43.821621>,  <35.292988, 37.267139, 43.101849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054657, 37.344387, 43.821621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.295055, 37.028217, 43.774239>,  <35.439293, 36.838516, 43.745808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.295055, 37.028217, 43.774239>,  <35.054657, 37.344387, 43.821621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295055, 37.028217, 43.774239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411250, 0.178734, 0.893828,
		-0.685334, -0.585899, 0.432481,
		0.600991, -0.790428, -0.118459,
		35.475353, 36.791088, 43.738701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996773, 36.937149, 44.362045>,  <35.054657, 37.344387, 43.821621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996773, 36.937149, 44.362045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356773, 36.852100, 44.209839>,  <35.572773, 36.801071, 44.118515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356773, 36.852100, 44.209839>,  <34.996773, 36.937149, 44.362045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356773, 36.852100, 44.209839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397430, 0.041742, 0.916683,
		-0.179020, -0.976243, 0.122068,
		0.900001, -0.212618, -0.380516,
		35.626774, 36.788315, 44.095684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323872, 36.453053, 44.857441>,  <34.996773, 36.937149, 44.362045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323872, 36.453053, 44.857441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634659, 36.608372, 44.659229>,  <35.821133, 36.701561, 44.540302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634659, 36.608372, 44.659229>,  <35.323872, 36.453053, 44.857441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634659, 36.608372, 44.659229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480234, 0.143384, 0.865342,
		0.407057, -0.910313, -0.075067,
		0.776968, 0.388294, -0.495529,
		35.867748, 36.724861, 44.510571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921829, 36.341072, 45.293118>,  <35.323872, 36.453053, 44.857441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921829, 36.341072, 45.293118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118687, 36.591560, 45.051247>,  <36.236801, 36.741852, 44.906124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118687, 36.591560, 45.051247>,  <35.921829, 36.341072, 45.293118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118687, 36.591560, 45.051247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464227, 0.398810, 0.790850,
		0.736400, -0.669922, -0.094437,
		0.492146, 0.626222, -0.604680,
		36.266331, 36.779427, 44.869843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607525, 36.413601, 45.567635>,  <35.921829, 36.341072, 45.293118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.607525, 36.413601, 45.567635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.603035, 36.737179, 45.332523>,  <36.600342, 36.931324, 45.191456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.603035, 36.737179, 45.332523>,  <36.607525, 36.413601, 45.567635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603035, 36.737179, 45.332523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483327, 0.518979, 0.705023,
		0.875368, -0.276178, -0.396808,
		-0.011223, 0.808942, -0.587781,
		36.599667, 36.979862, 45.156189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296566, 36.786213, 45.545841>,  <36.607525, 36.413601, 45.567635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296566, 36.786213, 45.545841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.993958, 37.039444, 45.480247>,  <36.812393, 37.191383, 45.440891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.993958, 37.039444, 45.480247>,  <37.296566, 36.786213, 45.545841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.993958, 37.039444, 45.480247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308760, 0.566811, 0.763802,
		0.576488, 0.527204, -0.624274,
		-0.756524, 0.633073, -0.163980,
		36.767002, 37.229366, 45.431053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631077, 37.518425, 45.467697>,  <37.296566, 36.786213, 45.545841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631077, 37.518425, 45.467697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246799, 37.523003, 45.578648>,  <37.016232, 37.525749, 45.645218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246799, 37.523003, 45.578648>,  <37.631077, 37.518425, 45.467697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246799, 37.523003, 45.578648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248194, 0.483018, 0.839699,
		-0.124369, 0.875536, -0.466872,
		-0.960693, 0.011442, 0.277376,
		36.958591, 37.526436, 45.661861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538502, 38.221523, 45.695560>,  <37.631077, 37.518425, 45.467697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538502, 38.221523, 45.695560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.188492, 38.080074, 45.827797>,  <36.978485, 37.995205, 45.907139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.188492, 38.080074, 45.827797>,  <37.538502, 38.221523, 45.695560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188492, 38.080074, 45.827797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214174, 0.329647, 0.919490,
		-0.434130, 0.875377, -0.212711,
		-0.875020, -0.353621, 0.330593,
		36.925987, 37.973988, 45.926975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153954, 38.729511, 46.003120>,  <37.538502, 38.221523, 45.695560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153954, 38.729511, 46.003120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.035965, 38.389359, 46.177402>,  <36.965172, 38.185268, 46.281971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.035965, 38.389359, 46.177402>,  <37.153954, 38.729511, 46.003120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035965, 38.389359, 46.177402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027591, 0.463386, 0.885727,
		-0.955106, 0.249246, -0.160150,
		-0.294976, -0.850382, 0.435706,
		36.947472, 38.134243, 46.308113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379333, 39.390907, 46.339916>,  <37.153954, 38.729511, 46.003120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.379333, 39.390907, 46.339916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.762817, 39.409237, 46.227650>,  <37.992908, 39.420235, 46.160290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.762817, 39.409237, 46.227650>,  <37.379333, 39.390907, 46.339916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762817, 39.409237, 46.227650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254983, -0.298504, -0.919717,
		-0.125923, 0.953308, -0.274496,
		0.958711, 0.045822, -0.280666,
		38.050430, 39.422985, 46.143452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383976, 39.711494, 45.703835>,  <37.379333, 39.390907, 46.339916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383976, 39.711494, 45.703835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763794, 39.590794, 45.669651>,  <37.991684, 39.518372, 45.649139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763794, 39.590794, 45.669651>,  <37.383976, 39.711494, 45.703835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763794, 39.590794, 45.669651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180285, -0.302210, -0.936038,
		0.256628, 0.904219, -0.341365,
		0.949547, -0.301757, -0.085461,
		38.048656, 39.500267, 45.644012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690525, 40.100300, 45.102413>,  <37.383976, 39.711494, 45.703835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690525, 40.100300, 45.102413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.931416, 39.783184, 45.139935>,  <38.075951, 39.592915, 45.162449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.931416, 39.783184, 45.139935>,  <37.690525, 40.100300, 45.102413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931416, 39.783184, 45.139935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276091, -0.317081, -0.907322,
		0.749061, 0.520519, -0.409838,
		0.602231, -0.792792, 0.093802,
		38.112083, 39.545345, 45.168076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264885, 40.067783, 44.607582>,  <37.690525, 40.100300, 45.102413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264885, 40.067783, 44.607582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228363, 39.682522, 44.708771>,  <38.206451, 39.451366, 44.769485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228363, 39.682522, 44.708771>,  <38.264885, 40.067783, 44.607582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228363, 39.682522, 44.708771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035181, -0.256997, -0.965772,
		0.995202, -0.079278, 0.057350,
		-0.091303, -0.963155, 0.252974,
		38.200974, 39.393574, 44.784664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838303, 39.593571, 44.234993>,  <38.264885, 40.067783, 44.607582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838303, 39.593571, 44.234993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.532280, 39.363850, 44.351521>,  <38.348667, 39.226017, 44.421436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.532280, 39.363850, 44.351521>,  <38.838303, 39.593571, 44.234993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.532280, 39.363850, 44.351521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051338, -0.396546, -0.916578,
		0.641911, -0.716192, 0.273897,
		-0.765058, -0.574300, 0.291315,
		38.302761, 39.191559, 44.438915>
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
