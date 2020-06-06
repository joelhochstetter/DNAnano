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
	<24.175291, 34.649082, 34.969868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.227951, 35.031857, 35.073364>,  <24.259548, 35.261520, 35.135464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.227951, 35.031857, 35.073364>,  <24.175291, 34.649082, 34.969868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.227951, 35.031857, 35.073364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684265, 0.101131, -0.722187,
		-0.717251, 0.272126, -0.641482,
		0.131652, 0.956933, 0.258742,
		24.267447, 35.318935, 35.150986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.079115, 35.202320, 34.469074>,  <24.175291, 34.649082, 34.969868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.079115, 35.202320, 34.469074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.363377, 35.345810, 34.711163>,  <24.533934, 35.431904, 34.856415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.363377, 35.345810, 34.711163>,  <24.079115, 35.202320, 34.469074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.363377, 35.345810, 34.711163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617546, 0.094074, -0.780888,
		-0.337056, 0.928692, -0.154672,
		0.710654, 0.358721, 0.605219,
		24.576572, 35.453426, 34.892727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.542461, 35.626797, 34.041908>,  <24.079115, 35.202320, 34.469074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.542461, 35.626797, 34.041908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.758215, 35.489655, 34.349548>,  <24.887667, 35.407368, 34.534130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.758215, 35.489655, 34.349548>,  <24.542461, 35.626797, 34.041908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.758215, 35.489655, 34.349548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802314, -0.068038, -0.593012,
		0.255648, 0.936920, 0.238382,
		0.539386, -0.342859, 0.769097,
		24.920031, 35.386795, 34.580276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.133572, 36.199585, 34.151928>,  <24.542461, 35.626797, 34.041908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.133572, 36.199585, 34.151928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.175291, 35.806366, 34.212242>,  <25.200323, 35.570435, 34.248432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.175291, 35.806366, 34.212242>,  <25.133572, 36.199585, 34.151928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.175291, 35.806366, 34.212242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617949, -0.054740, -0.784311,
		0.779270, 0.174978, 0.601765,
		0.104296, -0.983050, 0.150785,
		25.206579, 35.511452, 34.257477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.808517, 36.035351, 34.282024>,  <25.133572, 36.199585, 34.151928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.808517, 36.035351, 34.282024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.643423, 35.714470, 34.109455>,  <25.544367, 35.521942, 34.005913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.643423, 35.714470, 34.109455>,  <25.808517, 36.035351, 34.282024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.643423, 35.714470, 34.109455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724956, -0.002562, -0.688790,
		0.551443, -0.597049, 0.582618,
		-0.412735, -0.802201, -0.431421,
		25.519602, 35.473808, 33.980030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.569559, 36.054367, 34.462692>,  <25.808517, 36.035351, 34.282024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.569559, 36.054367, 34.462692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.944342, 36.086658, 34.598690>,  <27.169210, 36.106033, 34.680290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.944342, 36.086658, 34.598690>,  <26.569559, 36.054367, 34.462692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.944342, 36.086658, 34.598690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042535, -0.939367, 0.340265,
		0.346851, -0.333275, -0.876711,
		0.936955, 0.080731, 0.339996,
		27.225428, 36.110878, 34.700687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.938948, 35.550858, 34.221718>,  <26.569559, 36.054367, 34.462692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.938948, 35.550858, 34.221718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.113537, 35.622700, 34.574360>,  <27.218290, 35.665806, 34.785946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.113537, 35.622700, 34.574360>,  <26.938948, 35.550858, 34.221718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.113537, 35.622700, 34.574360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161921, -0.979554, 0.119397,
		0.885026, 0.090637, -0.456633,
		0.436475, 0.179607, 0.881607,
		27.244480, 35.676582, 34.838840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.282873, 35.015137, 34.362606>,  <26.938948, 35.550858, 34.221718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.282873, 35.015137, 34.362606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.352495, 35.170074, 34.724747>,  <27.394268, 35.263039, 34.942032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.352495, 35.170074, 34.724747>,  <27.282873, 35.015137, 34.362606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.352495, 35.170074, 34.724747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265773, -0.903748, 0.335566,
		0.948192, 0.182211, -0.260250,
		0.174057, 0.387349, 0.905353,
		27.404713, 35.286278, 34.996353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.888485, 34.750626, 34.550083>,  <27.282873, 35.015137, 34.362606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.888485, 34.750626, 34.550083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.737247, 34.866386, 34.901833>,  <27.646505, 34.935841, 35.112881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.737247, 34.866386, 34.901833>,  <27.888485, 34.750626, 34.550083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.737247, 34.866386, 34.901833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244939, -0.884761, 0.396487,
		0.892777, 0.365301, 0.263636,
		-0.378092, 0.289400, 0.879371,
		27.623819, 34.953205, 35.165646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.310318, 34.539562, 35.042484>,  <27.888485, 34.750626, 34.550083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.310318, 34.539562, 35.042484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.991646, 34.621170, 35.270054>,  <27.800442, 34.670135, 35.406597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.991646, 34.621170, 35.270054>,  <28.310318, 34.539562, 35.042484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.991646, 34.621170, 35.270054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168657, -0.828874, 0.533406,
		0.580392, 0.520908, 0.625939,
		-0.796680, 0.204016, 0.568927,
		27.752642, 34.682373, 35.440731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.505125, 34.648388, 35.764187>,  <28.310318, 34.539562, 35.042484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.505125, 34.648388, 35.764187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.118040, 34.547699, 35.769447>,  <27.885790, 34.487286, 35.772602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.118040, 34.547699, 35.769447>,  <28.505125, 34.648388, 35.764187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.118040, 34.547699, 35.769447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201632, -0.741733, 0.639669,
		-0.151263, 0.621667, 0.768538,
		-0.967711, -0.251720, 0.013151,
		27.827726, 34.472183, 35.773392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.416615, 34.595871, 36.463093>,  <28.505125, 34.648388, 35.764187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.416615, 34.595871, 36.463093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.123672, 34.394188, 36.280037>,  <27.947906, 34.273178, 36.170204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.123672, 34.394188, 36.280037>,  <28.416615, 34.595871, 36.463093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.123672, 34.394188, 36.280037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174675, -0.788706, 0.589433,
		-0.658138, 0.351736, 0.665685,
		-0.732355, -0.504206, -0.457638,
		27.903967, 34.242928, 36.142746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.026072, 34.360985, 36.964409>,  <28.416615, 34.595871, 36.463093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.026072, 34.360985, 36.964409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.946304, 34.120182, 36.655132>,  <27.898443, 33.975700, 36.469566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.946304, 34.120182, 36.655132>,  <28.026072, 34.360985, 36.964409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.946304, 34.120182, 36.655132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176713, -0.798197, 0.575894,
		-0.963849, -0.021788, 0.265558,
		-0.199420, -0.602003, -0.773191,
		27.886478, 33.939583, 36.423176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.388958, 33.940933, 37.163723>,  <28.026072, 34.360985, 36.964409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.388958, 33.940933, 37.163723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.596012, 33.757954, 36.874504>,  <27.720245, 33.648167, 36.700974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.596012, 33.757954, 36.874504>,  <27.388958, 33.940933, 37.163723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.596012, 33.757954, 36.874504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012560, -0.840922, 0.541011,
		-0.855508, -0.289128, -0.429547,
		0.517637, -0.457444, -0.723047,
		27.751303, 33.620720, 36.657589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.070740, 33.281654, 37.079380>,  <27.388958, 33.940933, 37.163723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.070740, 33.281654, 37.079380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.425550, 33.225807, 36.903339>,  <27.638437, 33.192299, 36.797714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.425550, 33.225807, 36.903339>,  <27.070740, 33.281654, 37.079380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.425550, 33.225807, 36.903339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169635, -0.787976, 0.591877,
		-0.429425, -0.599668, -0.675272,
		0.887028, -0.139617, -0.440101,
		27.691658, 33.183922, 36.771309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.080931, 32.552105, 36.778778>,  <27.070740, 33.281654, 37.079380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.080931, 32.552105, 36.778778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.451162, 32.685303, 36.850796>,  <27.673302, 32.765221, 36.894005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.451162, 32.685303, 36.850796>,  <27.080931, 32.552105, 36.778778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.451162, 32.685303, 36.850796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191870, -0.822667, 0.535169,
		0.326325, -0.460797, -0.825336,
		0.925580, 0.332996, 0.180044,
		27.728836, 32.785202, 36.904808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.529058, 32.050827, 36.675716>,  <27.080931, 32.552105, 36.778778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.529058, 32.050827, 36.675716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.754841, 32.290333, 36.903004>,  <27.890310, 32.434036, 37.039375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.754841, 32.290333, 36.903004>,  <27.529058, 32.050827, 36.675716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.754841, 32.290333, 36.903004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372481, -0.799054, 0.471986,
		0.736646, -0.054763, -0.674057,
		0.564456, 0.598760, 0.568222,
		27.924177, 32.469959, 37.073471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.119276, 31.713699, 36.738911>,  <27.529058, 32.050827, 36.675716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.119276, 31.713699, 36.738911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.134645, 31.984398, 37.032997>,  <28.143867, 32.146816, 37.209450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.134645, 31.984398, 37.032997>,  <28.119276, 31.713699, 36.738911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.134645, 31.984398, 37.032997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408111, -0.682225, 0.606642,
		0.912124, 0.276740, -0.302400,
		0.038422, 0.676745, 0.735214,
		28.146172, 32.187420, 37.253563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.764799, 31.644402, 37.043941>,  <28.119276, 31.713699, 36.738911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.764799, 31.644402, 37.043941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.563742, 31.816721, 37.343742>,  <28.443108, 31.920113, 37.523624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.563742, 31.816721, 37.343742>,  <28.764799, 31.644402, 37.043941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.563742, 31.816721, 37.343742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321310, -0.711783, 0.624599,
		0.802564, 0.554775, 0.219353,
		-0.502644, 0.430800, 0.749507,
		28.412949, 31.945961, 37.568596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.267111, 31.639339, 37.665413>,  <28.764799, 31.644402, 37.043941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.267111, 31.639339, 37.665413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.902184, 31.697815, 37.818409>,  <28.683228, 31.732901, 37.910206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.902184, 31.697815, 37.818409>,  <29.267111, 31.639339, 37.665413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.902184, 31.697815, 37.818409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213965, -0.626242, 0.749694,
		0.349132, 0.765800, 0.540053,
		-0.912319, 0.146190, 0.382495,
		28.628489, 31.741673, 37.933159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.423990, 31.682297, 38.473637>,  <29.267111, 31.639339, 37.665413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.423990, 31.682297, 38.473637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.031796, 31.617420, 38.429203>,  <28.796478, 31.578495, 38.402542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.031796, 31.617420, 38.429203>,  <29.423990, 31.682297, 38.473637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.031796, 31.617420, 38.429203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028476, -0.441943, 0.896591,
		-0.194514, 0.882259, 0.428700,
		-0.980486, -0.162191, -0.111087,
		28.737650, 31.568762, 38.395878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.207458, 31.779047, 39.181587>,  <29.423990, 31.682297, 38.473637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.207458, 31.779047, 39.181587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.894960, 31.585173, 39.024239>,  <28.707462, 31.468849, 38.929829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.894960, 31.585173, 39.024239>,  <29.207458, 31.779047, 39.181587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.894960, 31.585173, 39.024239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095342, -0.530128, 0.842540,
		-0.616902, 0.695734, 0.367949,
		-0.781244, -0.484684, -0.393370,
		28.660587, 31.439768, 38.906227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.627209, 31.765539, 39.659866>,  <29.207458, 31.779047, 39.181587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.627209, 31.765539, 39.659866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.565050, 31.469748, 39.397865>,  <28.527756, 31.292273, 39.240665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.565050, 31.469748, 39.397865>,  <28.627209, 31.765539, 39.659866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.565050, 31.469748, 39.397865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287422, -0.600522, 0.746165,
		-0.945114, 0.304211, -0.119224,
		-0.155395, -0.739479, -0.654999,
		28.518431, 31.247904, 39.201366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.993052, 31.578564, 39.706928>,  <28.627209, 31.765539, 39.659866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.993052, 31.578564, 39.706928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.201477, 31.257700, 39.590286>,  <28.326532, 31.065182, 39.520302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.201477, 31.257700, 39.590286>,  <27.993052, 31.578564, 39.706928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.201477, 31.257700, 39.590286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197197, -0.445547, 0.873270,
		-0.830424, -0.397528, -0.390343,
		0.521065, -0.802159, -0.291602,
		28.357798, 31.017052, 39.502808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.652182, 30.963549, 39.667629>,  <27.993052, 31.578564, 39.706928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.652182, 30.963549, 39.667629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.035967, 30.909887, 39.766773>,  <28.266237, 30.877689, 39.826260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.035967, 30.909887, 39.766773>,  <27.652182, 30.963549, 39.667629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.035967, 30.909887, 39.766773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269174, -0.175578, 0.946952,
		-0.083520, -0.975282, -0.204571,
		0.959464, -0.134154, 0.247856,
		28.323807, 30.869640, 39.841129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.773062, 30.366562, 39.993828>,  <27.652182, 30.963549, 39.667629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.773062, 30.366562, 39.993828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.052032, 30.587204, 40.176838>,  <28.219416, 30.719589, 40.286644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.052032, 30.587204, 40.176838>,  <27.773062, 30.366562, 39.993828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.052032, 30.587204, 40.176838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307498, -0.346332, 0.886284,
		0.647332, -0.758807, -0.071925,
		0.697428, 0.551604, 0.457524,
		28.261261, 30.752686, 40.314095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.296480, 30.023579, 40.408100>,  <27.773062, 30.366562, 39.993828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.296480, 30.023579, 40.408100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.226658, 30.382418, 40.570454>,  <28.184765, 30.597721, 40.667866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.226658, 30.382418, 40.570454>,  <28.296480, 30.023579, 40.408100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.226658, 30.382418, 40.570454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207995, -0.436509, 0.875328,
		0.962428, 0.068372, 0.262788,
		-0.174557, 0.897099, 0.405887,
		28.174292, 30.651546, 40.692219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.722759, 30.162203, 40.926903>,  <28.296480, 30.023579, 40.408100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.722759, 30.162203, 40.926903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.539074, 30.314209, 41.248077>,  <28.428862, 30.405413, 41.440784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.539074, 30.314209, 41.248077>,  <28.722759, 30.162203, 40.926903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.539074, 30.314209, 41.248077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641435, -0.767168, -0.003762,
		0.614559, -0.516761, 0.596050,
		-0.459215, 0.380015, 0.802939,
		28.401310, 30.428213, 41.488960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.806505, 29.743444, 41.596466>,  <28.722759, 30.162203, 40.926903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.806505, 29.743444, 41.596466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.449743, 29.917665, 41.547802>,  <28.235687, 30.022198, 41.518604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.449743, 29.917665, 41.547802>,  <28.806505, 29.743444, 41.596466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.449743, 29.917665, 41.547802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441271, -0.897067, 0.023446,
		-0.098929, 0.074599, 0.992294,
		-0.891904, 0.435552, -0.121664,
		28.182173, 30.048330, 41.511303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.349123, 29.147423, 41.897007>,  <28.806505, 29.743444, 41.596466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.349123, 29.147423, 41.897007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.125132, 29.368841, 41.650429>,  <27.990736, 29.501692, 41.502483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.125132, 29.368841, 41.650429>,  <28.349123, 29.147423, 41.897007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.125132, 29.368841, 41.650429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654750, -0.751587, -0.080124,
		-0.507665, 0.358750, 0.783310,
		-0.559981, 0.553548, -0.616446,
		27.957138, 29.534906, 41.465496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.659786, 29.429401, 42.654045>,  <28.349123, 29.147423, 41.897007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.659786, 29.429401, 42.654045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.051954, 29.378454, 42.593975>,  <29.287254, 29.347887, 42.557934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.051954, 29.378454, 42.593975>,  <28.659786, 29.429401, 42.654045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.051954, 29.378454, 42.593975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196660, 0.594667, 0.779548,
		-0.009983, -0.793819, 0.608072,
		0.980421, -0.127366, -0.150176,
		29.346081, 29.340244, 42.548923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.899385, 29.250170, 43.259136>,  <28.659786, 29.429401, 42.654045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.899385, 29.250170, 43.259136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.231806, 29.387253, 43.083908>,  <29.431257, 29.469501, 42.978771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.231806, 29.387253, 43.083908>,  <28.899385, 29.250170, 43.259136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.231806, 29.387253, 43.083908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229062, 0.506838, 0.831051,
		0.506838, -0.790991, 0.342707,
		-0.831051, -0.342707, 0.438071,
		29.481121, 29.490065, 42.952488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.501812, 28.958693, 43.667332>,  <28.899385, 29.250170, 43.259136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.501812, 28.958693, 43.667332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.529175, 29.314810, 43.487244>,  <29.545593, 29.528481, 43.379192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.529175, 29.314810, 43.487244>,  <29.501812, 28.958693, 43.667332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.529175, 29.314810, 43.487244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086065, 0.444326, 0.891721,
		0.993938, -0.099747, -0.046228,
		0.068407, 0.890295, -0.450218,
		29.549696, 29.581898, 43.352177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.220329, 29.408863, 43.875793>,  <29.501812, 28.958693, 43.667332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.220329, 29.408863, 43.875793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.894987, 29.608852, 43.756813>,  <29.699781, 29.728846, 43.685425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.894987, 29.608852, 43.756813>,  <30.220329, 29.408863, 43.875793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.894987, 29.608852, 43.756813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025702, 0.479915, 0.876939,
		0.581201, 0.720907, -0.377490,
		-0.813354, 0.499975, -0.297455,
		29.650980, 29.758844, 43.667576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.177319, 30.031885, 44.216137>,  <30.220329, 29.408863, 43.875793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.177319, 30.031885, 44.216137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.795889, 30.024651, 44.095894>,  <29.567030, 30.020309, 44.023746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.795889, 30.024651, 44.095894>,  <30.177319, 30.031885, 44.216137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.795889, 30.024651, 44.095894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259888, 0.553741, 0.791093,
		0.152153, 0.832492, -0.532734,
		-0.953576, -0.018084, -0.300609,
		29.509815, 30.019226, 44.005711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.854994, 30.711210, 44.205692>,  <30.177319, 30.031885, 44.216137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.854994, 30.711210, 44.205692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.954077, 30.426155, 43.943153>,  <30.013527, 30.255121, 43.785629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.954077, 30.426155, 43.943153>,  <29.854994, 30.711210, 44.205692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.954077, 30.426155, 43.943153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536409, 0.665025, -0.519622,
		0.806788, -0.223354, 0.546998,
		0.247708, -0.712639, -0.656343,
		30.028389, 30.212364, 43.746250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.421217, 31.026068, 43.917046>,  <29.854994, 30.711210, 44.205692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.421217, 31.026068, 43.917046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.329224, 30.741884, 43.651005>,  <30.274027, 30.571373, 43.491383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.329224, 30.741884, 43.651005>,  <30.421217, 31.026068, 43.917046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.329224, 30.741884, 43.651005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337841, 0.582632, -0.739191,
		0.912673, -0.394698, 0.106027,
		-0.229983, -0.710460, -0.665098,
		30.260229, 30.528746, 43.451477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.989056, 31.038492, 43.487156>,  <30.421217, 31.026068, 43.917046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.989056, 31.038492, 43.487156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.702003, 30.877373, 43.259907>,  <30.529772, 30.780701, 43.123558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.702003, 30.877373, 43.259907>,  <30.989056, 31.038492, 43.487156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.702003, 30.877373, 43.259907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310194, 0.545507, -0.778590,
		0.623527, -0.734967, -0.266527,
		-0.717630, -0.402797, -0.568121,
		30.486713, 30.756535, 43.089470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.299276, 30.824608, 42.916107>,  <30.989056, 31.038492, 43.487156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.299276, 30.824608, 42.916107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.919149, 30.877209, 42.803249>,  <30.691072, 30.908770, 42.735535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.919149, 30.877209, 42.803249>,  <31.299276, 30.824608, 42.916107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.919149, 30.877209, 42.803249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309331, 0.500330, -0.808693,
		0.034821, -0.855791, -0.516150,
		-0.950317, 0.131501, -0.282145,
		30.634054, 30.916658, 42.718605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271423, 30.889814, 42.156933>,  <31.299276, 30.824608, 42.916107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271423, 30.889814, 42.156933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.907364, 31.025122, 42.252602>,  <30.688929, 31.106306, 42.310001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.907364, 31.025122, 42.252602>,  <31.271423, 30.889814, 42.156933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.907364, 31.025122, 42.252602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046679, 0.489905, -0.870525,
		-0.411639, -0.803473, -0.430097,
		-0.910151, 0.338266, 0.239169,
		30.634319, 31.126602, 42.324352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.957613, 30.787195, 41.533676>,  <31.271423, 30.889814, 42.156933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.957613, 30.787195, 41.533676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.725891, 31.047234, 41.730362>,  <30.586859, 31.203257, 41.848373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.725891, 31.047234, 41.730362>,  <30.957613, 30.787195, 41.533676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.725891, 31.047234, 41.730362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042465, 0.578359, -0.814677,
		-0.814005, -0.492825, -0.307439,
		-0.579303, 0.650095, 0.491715,
		30.552099, 31.242262, 41.877876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.379034, 31.023993, 41.045326>,  <30.957613, 30.787195, 41.533676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.379034, 31.023993, 41.045326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.415007, 31.302719, 41.329960>,  <30.436590, 31.469955, 41.500740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.415007, 31.302719, 41.329960>,  <30.379034, 31.023993, 41.045326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.415007, 31.302719, 41.329960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241870, 0.708374, -0.663102,
		-0.966132, -0.112476, 0.232246,
		0.089934, 0.696818, 0.711588,
		30.441986, 31.511765, 41.543438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.782303, 31.344231, 41.053497>,  <30.379034, 31.023993, 41.045326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.782303, 31.344231, 41.053497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.066250, 31.586081, 41.198006>,  <30.236618, 31.731192, 41.284710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.066250, 31.586081, 41.198006>,  <29.782303, 31.344231, 41.053497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.066250, 31.586081, 41.198006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284915, 0.715585, -0.637778,
		-0.644137, 0.349806, 0.680238,
		0.709867, 0.604627, 0.361270,
		30.279209, 31.767469, 41.306385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.376461, 31.885592, 41.059700>,  <29.782303, 31.344231, 41.053497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.376461, 31.885592, 41.059700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.752352, 32.020222, 41.083813>,  <29.977886, 32.100998, 41.098282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.752352, 32.020222, 41.083813>,  <29.376461, 31.885592, 41.059700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.752352, 32.020222, 41.083813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261536, 0.821087, -0.507361,
		-0.220263, 0.461014, 0.859622,
		0.939725, 0.336575, 0.060283,
		30.034269, 32.121193, 41.101898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.300062, 32.575676, 41.304375>,  <29.376461, 31.885592, 41.059700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.300062, 32.575676, 41.304375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.666193, 32.564991, 41.143646>,  <29.885872, 32.558582, 41.047211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.666193, 32.564991, 41.143646>,  <29.300062, 32.575676, 41.304375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.666193, 32.564991, 41.143646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180052, 0.865369, -0.467674,
		0.360215, 0.500424, 0.787287,
		0.915329, -0.026710, -0.401821,
		29.940792, 32.556976, 41.023098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.479395, 33.336441, 41.152016>,  <29.300062, 32.575676, 41.304375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.479395, 33.336441, 41.152016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.749952, 33.122810, 40.949135>,  <29.912287, 32.994633, 40.827404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.749952, 33.122810, 40.949135>,  <29.479395, 33.336441, 41.152016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.749952, 33.122810, 40.949135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203329, 0.797267, -0.568350,
		0.707921, 0.281298, 0.647858,
		0.676392, -0.534075, -0.507206,
		29.952869, 32.962589, 40.796974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.207174, 33.679283, 40.990078>,  <29.479395, 33.336441, 41.152016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.207174, 33.679283, 40.990078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.135567, 33.440926, 40.676937>,  <30.092602, 33.297909, 40.489052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.135567, 33.440926, 40.676937>,  <30.207174, 33.679283, 40.990078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.135567, 33.440926, 40.676937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027238, 0.792401, -0.609392,
		0.983468, -0.130416, -0.125624,
		-0.179019, -0.595896, -0.782854,
		30.081861, 33.262157, 40.442081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.459780, 34.093208, 40.326534>,  <30.207174, 33.679283, 40.990078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.459780, 34.093208, 40.326534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.277794, 33.783222, 40.151062>,  <30.168602, 33.597229, 40.045780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.277794, 33.783222, 40.151062>,  <30.459780, 34.093208, 40.326534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.277794, 33.783222, 40.151062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165398, 0.557580, -0.813479,
		0.875014, -0.297549, -0.381857,
		-0.454966, -0.774964, -0.438676,
		30.141304, 33.550732, 40.019459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.756279, 34.004265, 39.620556>,  <30.459780, 34.093208, 40.326534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.756279, 34.004265, 39.620556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.392719, 33.837494, 39.617115>,  <30.174583, 33.737431, 39.615051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.392719, 33.837494, 39.617115>,  <30.756279, 34.004265, 39.620556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.392719, 33.837494, 39.617115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232948, 0.524714, -0.818786,
		0.345888, -0.742190, -0.574035,
		-0.908899, -0.416929, -0.008601,
		30.120050, 33.712414, 39.614536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.573002, 33.942348, 38.909809>,  <30.756279, 34.004265, 39.620556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.573002, 33.942348, 38.909809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.221249, 33.897747, 39.094959>,  <30.010197, 33.870987, 39.206051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.221249, 33.897747, 39.094959>,  <30.573002, 33.942348, 38.909809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.221249, 33.897747, 39.094959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472717, 0.320421, -0.820895,
		-0.056782, -0.940690, -0.334482,
		-0.879383, -0.111503, 0.462875,
		29.957434, 33.864296, 39.233822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.152966, 33.720581, 38.437229>,  <30.573002, 33.942348, 38.909809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.152966, 33.720581, 38.437229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.899998, 33.848667, 38.719368>,  <29.748217, 33.925518, 38.888653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.899998, 33.848667, 38.719368>,  <30.152966, 33.720581, 38.437229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.899998, 33.848667, 38.719368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532440, 0.481674, -0.696058,
		-0.562633, -0.815754, -0.134126,
		-0.632418, 0.320211, 0.705346,
		29.710272, 33.944729, 38.930973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.456184, 33.504353, 38.292965>,  <30.152966, 33.720581, 38.437229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.456184, 33.504353, 38.292965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.453522, 33.837967, 38.513634>,  <29.451925, 34.038136, 38.646034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.453522, 33.837967, 38.513634>,  <29.456184, 33.504353, 38.292965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.453522, 33.837967, 38.513634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368104, 0.510899, -0.776841,
		-0.929761, -0.208241, 0.303612,
		-0.006655, 0.834037, 0.551668,
		29.451525, 34.088177, 38.679134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.868322, 33.869743, 38.078888>,  <29.456184, 33.504353, 38.292965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.868322, 33.869743, 38.078888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.044655, 34.165607, 38.282284>,  <29.150455, 34.343128, 38.404320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.044655, 34.165607, 38.282284>,  <28.868322, 33.869743, 38.078888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.044655, 34.165607, 38.282284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274903, 0.650542, -0.707972,
		-0.854456, 0.172312, 0.490116,
		0.440833, 0.739665, 0.508490,
		29.176905, 34.387508, 38.434830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.373011, 34.393234, 37.889832>,  <28.868322, 33.869743, 38.078888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.373011, 34.393234, 37.889832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.712326, 34.556747, 38.024475>,  <28.915915, 34.654858, 38.105259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.712326, 34.556747, 38.024475>,  <28.373011, 34.393234, 37.889832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.712326, 34.556747, 38.024475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175491, 0.816757, -0.549646,
		-0.499613, 0.407186, 0.764583,
		0.848286, 0.408788, 0.336605,
		28.966812, 34.679382, 38.125458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.223255, 35.059433, 38.152912>,  <28.373011, 34.393234, 37.889832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.223255, 35.059433, 38.152912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.616978, 35.088287, 38.088497>,  <28.853212, 35.105598, 38.049847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.616978, 35.088287, 38.088497>,  <28.223255, 35.059433, 38.152912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.616978, 35.088287, 38.088497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149364, 0.826528, -0.542717,
		0.093951, 0.558254, 0.824333,
		0.984309, 0.072137, -0.161037,
		28.912270, 35.109928, 38.040188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.368620, 35.751049, 38.174644>,  <28.223255, 35.059433, 38.152912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.368620, 35.751049, 38.174644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.647789, 35.594597, 37.934669>,  <28.815290, 35.500725, 37.790684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.647789, 35.594597, 37.934669>,  <28.368620, 35.751049, 38.174644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.647789, 35.594597, 37.934669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126429, 0.757247, -0.640775,
		0.704927, 0.523059, 0.479048,
		0.697921, -0.391134, -0.599933,
		28.857164, 35.477257, 37.754688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.824080, 36.351536, 38.020008>,  <28.368620, 35.751049, 38.174644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.824080, 36.351536, 38.020008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.961060, 36.086327, 37.753735>,  <29.043247, 35.927200, 37.593971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.961060, 36.086327, 37.753735>,  <28.824080, 36.351536, 38.020008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.961060, 36.086327, 37.753735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091840, 0.728753, -0.678590,
		0.935036, 0.171248, 0.310454,
		0.342451, -0.663018, -0.665683,
		29.063795, 35.887421, 37.554031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.421173, 36.678593, 37.760342>,  <28.824080, 36.351536, 38.020008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.421173, 36.678593, 37.760342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.314356, 36.395599, 37.498608>,  <29.250265, 36.225803, 37.341568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.314356, 36.395599, 37.498608>,  <29.421173, 36.678593, 37.760342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.314356, 36.395599, 37.498608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034685, 0.685607, -0.727144,
		0.963060, -0.171482, -0.207625,
		-0.267042, -0.707486, -0.654334,
		29.234243, 36.183353, 37.302307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.210157, 37.456829, 37.861275>,  <29.421173, 36.678593, 37.760342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.210157, 37.456829, 37.861275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.596325, 37.359715, 37.899265>,  <29.828026, 37.301445, 37.922062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.596325, 37.359715, 37.899265>,  <29.210157, 37.456829, 37.861275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.596325, 37.359715, 37.899265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182323, -0.889167, -0.419691,
		0.186348, 0.387861, -0.902684,
		0.965418, -0.242789, 0.094978,
		29.885950, 37.286877, 37.927757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.619982, 37.877228, 38.343838>,  <29.210157, 37.456829, 37.861275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.619982, 37.877228, 38.343838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.431873, 38.222424, 38.269981>,  <29.319008, 38.429543, 38.225670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.431873, 38.222424, 38.269981>,  <29.619982, 37.877228, 38.343838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.431873, 38.222424, 38.269981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592072, 0.463662, 0.659142,
		0.654443, 0.200659, -0.729000,
		-0.470272, 0.862991, -0.184636,
		29.290792, 38.481319, 38.214592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.986166, 38.244102, 38.750153>,  <29.619982, 37.877228, 38.343838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.986166, 38.244102, 38.750153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.722414, 38.530663, 38.658947>,  <29.564163, 38.702599, 38.604221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.722414, 38.530663, 38.658947>,  <29.986166, 38.244102, 38.750153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.722414, 38.530663, 38.658947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458685, 0.623647, 0.632986,
		0.595672, 0.312791, -0.739822,
		-0.659381, 0.716398, -0.228016,
		29.524599, 38.745583, 38.590542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.359062, 38.488338, 39.451515>,  <29.986166, 38.244102, 38.750153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.359062, 38.488338, 39.451515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.462059, 38.128750, 39.593250>,  <30.523857, 37.912998, 39.678291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.462059, 38.128750, 39.593250>,  <30.359062, 38.488338, 39.451515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.462059, 38.128750, 39.593250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945530, 0.309998, 0.099369,
		-0.199173, 0.309448, 0.929824,
		0.257494, -0.898968, 0.354336,
		30.539307, 37.859058, 39.699551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.736835, 38.496506, 40.070763>,  <30.359062, 38.488338, 39.451515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.736835, 38.496506, 40.070763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843702, 38.151203, 39.899456>,  <30.907822, 37.944023, 39.796673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843702, 38.151203, 39.899456>,  <30.736835, 38.496506, 40.070763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.843702, 38.151203, 39.899456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956476, 0.291681, 0.008739,
		0.117374, -0.411963, 0.903609,
		0.267166, -0.863255, -0.428268,
		30.923853, 37.892227, 39.770977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.299004, 38.048019, 40.440048>,  <30.736835, 38.496506, 40.070763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.299004, 38.048019, 40.440048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.315727, 37.964207, 40.049286>,  <31.325762, 37.913918, 39.814827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.315727, 37.964207, 40.049286>,  <31.299004, 38.048019, 40.440048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.315727, 37.964207, 40.049286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980294, 0.197543, -0.000415,
		0.193068, -0.957639, 0.213664,
		0.041810, -0.209534, -0.976907,
		31.328270, 37.901348, 39.756214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715599, 37.407085, 40.247635>,  <31.299004, 38.048019, 40.440048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715599, 37.407085, 40.247635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.713629, 37.684227, 39.959213>,  <31.712446, 37.850513, 39.786160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.713629, 37.684227, 39.959213>,  <31.715599, 37.407085, 40.247635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713629, 37.684227, 39.959213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988490, -0.105657, -0.108280,
		-0.151207, -0.713293, -0.684361,
		-0.004928, 0.692856, -0.721059,
		31.712151, 37.892082, 39.742897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126068, 37.081539, 39.812531>,  <31.715599, 37.407085, 40.247635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126068, 37.081539, 39.812531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.380878, 36.779922, 39.748512>,  <32.533764, 36.598953, 39.710102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.380878, 36.779922, 39.748512>,  <32.126068, 37.081539, 39.812531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.380878, 36.779922, 39.748512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708827, 0.491418, 0.506036,
		-0.302922, -0.435806, 0.847533,
		0.637026, -0.754044, -0.160050,
		32.571987, 36.553711, 39.700497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.286636, 36.935112, 40.465790>,  <32.126068, 37.081539, 39.812531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.286636, 36.935112, 40.465790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576252, 36.802216, 40.224003>,  <32.750023, 36.722477, 40.078930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576252, 36.802216, 40.224003>,  <32.286636, 36.935112, 40.465790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576252, 36.802216, 40.224003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687048, 0.269774, 0.674675,
		-0.061082, -0.903792, 0.423591,
		0.724040, -0.332237, -0.604470,
		32.793465, 36.702545, 40.042664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761959, 36.624050, 40.916878>,  <32.286636, 36.935112, 40.465790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761959, 36.624050, 40.916878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.989105, 36.660706, 40.589676>,  <33.125393, 36.682697, 40.393356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.989105, 36.660706, 40.589676>,  <32.761959, 36.624050, 40.916878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.989105, 36.660706, 40.589676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769907, 0.292397, 0.567228,
		0.291171, -0.951895, 0.095476,
		0.567859, 0.091653, -0.818007,
		33.159466, 36.688198, 40.344273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352329, 36.197563, 41.072262>,  <32.761959, 36.624050, 40.916878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352329, 36.197563, 41.072262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.436108, 36.473572, 40.795132>,  <33.486374, 36.639175, 40.628853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.436108, 36.473572, 40.795132>,  <33.352329, 36.197563, 41.072262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.436108, 36.473572, 40.795132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635142, 0.442711, 0.632931,
		0.743456, -0.572605, -0.345538,
		0.209446, 0.690022, -0.692822,
		33.498943, 36.680580, 40.587284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117664, 36.316589, 41.091228>,  <33.352329, 36.197563, 41.072262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117664, 36.316589, 41.091228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969563, 36.649670, 40.926540>,  <33.880699, 36.849518, 40.827728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969563, 36.649670, 40.926540>,  <34.117664, 36.316589, 41.091228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.969563, 36.649670, 40.926540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673918, 0.545833, 0.497897,
		0.639331, -0.093115, -0.763273,
		-0.370258, 0.832704, -0.411720,
		33.858486, 36.899479, 40.803024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715652, 36.715279, 40.763313>,  <34.117664, 36.316589, 41.091228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715652, 36.715279, 40.763313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.439083, 37.004093, 40.773155>,  <34.273144, 37.177383, 40.779060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.439083, 37.004093, 40.773155>,  <34.715652, 36.715279, 40.763313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439083, 37.004093, 40.773155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619053, 0.574558, 0.535403,
		0.372442, 0.385420, -0.844238,
		-0.691419, 0.722035, 0.024606,
		34.231659, 37.220703, 40.780537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030930, 37.408100, 40.599293>,  <34.715652, 36.715279, 40.763313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030930, 37.408100, 40.599293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.698601, 37.494656, 40.804390>,  <34.499203, 37.546589, 40.927448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.698601, 37.494656, 40.804390>,  <35.030930, 37.408100, 40.599293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698601, 37.494656, 40.804390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552373, 0.433066, 0.712276,
		-0.067922, 0.875002, -0.479330,
		-0.830825, 0.216390, 0.512743,
		34.449352, 37.559574, 40.958214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159447, 38.060074, 40.880920>,  <35.030930, 37.408100, 40.599293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159447, 38.060074, 40.880920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859982, 37.910591, 41.099953>,  <34.680302, 37.820900, 41.231373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859982, 37.910591, 41.099953>,  <35.159447, 38.060074, 40.880920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859982, 37.910591, 41.099953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444754, 0.329405, 0.832878,
		-0.491631, 0.867083, -0.080403,
		-0.748660, -0.373709, 0.547585,
		34.635384, 37.798477, 41.264229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007778, 38.531742, 41.384750>,  <35.159447, 38.060074, 40.880920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007778, 38.531742, 41.384750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856926, 38.187931, 41.522724>,  <34.766415, 37.981644, 41.605511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856926, 38.187931, 41.522724>,  <35.007778, 38.531742, 41.384750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856926, 38.187931, 41.522724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564273, 0.082093, 0.821497,
		-0.734417, 0.504450, 0.454050,
		-0.377130, -0.859529, 0.344938,
		34.743786, 37.930073, 41.626205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.842834, 38.682968, 42.085224>,  <35.007778, 38.531742, 41.384750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.842834, 38.682968, 42.085224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859703, 38.283558, 42.071564>,  <34.869823, 38.043911, 42.063366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859703, 38.283558, 42.071564>,  <34.842834, 38.682968, 42.085224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859703, 38.283558, 42.071564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358690, -0.016775, 0.933306,
		-0.932504, -0.051610, 0.357454,
		0.042172, -0.998526, -0.034154,
		34.872356, 37.984001, 42.061317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.833332, 38.519596, 42.877552>,  <34.842834, 38.682968, 42.085224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.833332, 38.519596, 42.877552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.949532, 38.181732, 42.697704>,  <35.019249, 37.979012, 42.589798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.949532, 38.181732, 42.697704>,  <34.833332, 38.519596, 42.877552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949532, 38.181732, 42.697704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478173, -0.278859, 0.832820,
		-0.828832, -0.456925, 0.322888,
		0.290496, -0.844664, -0.449616,
		35.036682, 37.928333, 42.562820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672108, 38.011646, 43.347485>,  <34.833332, 38.519596, 42.877552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672108, 38.011646, 43.347485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943985, 37.847958, 43.103992>,  <35.107113, 37.749744, 42.957897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943985, 37.847958, 43.103992>,  <34.672108, 38.011646, 43.347485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943985, 37.847958, 43.103992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557814, -0.250515, 0.791256,
		-0.476294, -0.877371, 0.057995,
		0.679697, -0.409221, -0.608729,
		35.147896, 37.725193, 42.921375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721649, 37.373627, 43.732101>,  <34.672108, 38.011646, 43.347485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721649, 37.373627, 43.732101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037640, 37.413319, 43.490082>,  <35.227234, 37.437134, 43.344872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037640, 37.413319, 43.490082>,  <34.721649, 37.373627, 43.732101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037640, 37.413319, 43.490082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579279, -0.444163, 0.683488,
		-0.200919, -0.890434, -0.408361,
		0.789980, 0.099230, -0.605050,
		35.274635, 37.443089, 43.308567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051132, 36.605053, 43.572594>,  <34.721649, 37.373627, 43.732101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051132, 36.605053, 43.572594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321247, 36.899586, 43.555645>,  <35.483318, 37.076305, 43.545475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321247, 36.899586, 43.555645>,  <35.051132, 36.605053, 43.572594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321247, 36.899586, 43.555645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549053, -0.463510, 0.695484,
		0.492468, -0.492919, -0.717291,
		0.675289, 0.736335, -0.042375,
		35.523834, 37.120487, 43.542931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655750, 36.273354, 43.611378>,  <35.051132, 36.605053, 43.572594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655750, 36.273354, 43.611378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805252, 36.634789, 43.695118>,  <35.894955, 36.851650, 43.745361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805252, 36.634789, 43.695118>,  <35.655750, 36.273354, 43.611378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805252, 36.634789, 43.695118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664342, -0.418307, 0.619410,
		0.647266, -0.092429, -0.756640,
		0.373759, 0.903591, 0.209351,
		35.917381, 36.905865, 43.757923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402031, 36.174858, 43.563602>,  <35.655750, 36.273354, 43.611378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402031, 36.174858, 43.563602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352783, 36.511616, 43.773766>,  <36.323235, 36.713673, 43.899864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352783, 36.511616, 43.773766>,  <36.402031, 36.174858, 43.563602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352783, 36.511616, 43.773766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619353, -0.348486, 0.703533,
		0.775400, 0.412028, -0.478527,
		-0.123115, 0.841897, 0.525407,
		36.315849, 36.764183, 43.931389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089989, 36.341125, 43.820454>,  <36.402031, 36.174858, 43.563602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089989, 36.341125, 43.820454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.819576, 36.534657, 44.042767>,  <36.657330, 36.650776, 44.176155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.819576, 36.534657, 44.042767>,  <37.089989, 36.341125, 43.820454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819576, 36.534657, 44.042767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585252, -0.105734, 0.803928,
		0.447725, 0.868755, -0.211679,
		-0.676035, 0.483824, 0.555780,
		36.616764, 36.679802, 44.209499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424564, 36.901279, 44.242371>,  <37.089989, 36.341125, 43.820454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424564, 36.901279, 44.242371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098255, 36.801613, 44.451153>,  <36.902470, 36.741814, 44.576424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098255, 36.801613, 44.451153>,  <37.424564, 36.901279, 44.242371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098255, 36.801613, 44.451153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563504, -0.139061, 0.814325,
		-0.130316, 0.958426, 0.253846,
		-0.815771, -0.249162, 0.521955,
		36.853523, 36.726864, 44.607738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572899, 37.079983, 44.913631>,  <37.424564, 36.901279, 44.242371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.572899, 37.079983, 44.913631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.259571, 36.839382, 44.976379>,  <37.071575, 36.695023, 45.014027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.259571, 36.839382, 44.976379>,  <37.572899, 37.079983, 44.913631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259571, 36.839382, 44.976379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440601, -0.359232, 0.822693,
		-0.438500, 0.713546, 0.546416,
		-0.783319, -0.601502, 0.156866,
		37.024574, 36.658932, 45.023438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118492, 37.424515, 45.510448>,  <37.572899, 37.079983, 44.913631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118492, 37.424515, 45.510448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.011253, 37.039768, 45.488781>,  <36.946911, 36.808918, 45.475780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.011253, 37.039768, 45.488781>,  <37.118492, 37.424515, 45.510448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011253, 37.039768, 45.488781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215134, -0.114579, 0.969840,
		-0.939065, 0.248354, 0.237648,
		-0.268093, -0.961869, -0.054168,
		36.930824, 36.751209, 45.472530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654503, 37.346943, 45.973549>,  <37.118492, 37.424515, 45.510448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654503, 37.346943, 45.973549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.773064, 36.972519, 45.897717>,  <36.844200, 36.747864, 45.852219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.773064, 36.972519, 45.897717>,  <36.654503, 37.346943, 45.973549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773064, 36.972519, 45.897717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120826, -0.160151, 0.979670,
		-0.947388, -0.313286, 0.065630,
		0.296406, -0.936058, -0.189578,
		36.861984, 36.691700, 45.840843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366302, 36.948730, 46.489067>,  <36.654503, 37.346943, 45.973549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366302, 36.948730, 46.489067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.654449, 36.700516, 46.365128>,  <36.827339, 36.551586, 46.290764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.654449, 36.700516, 46.365128>,  <36.366302, 36.948730, 46.489067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654449, 36.700516, 46.365128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232999, -0.204266, 0.950782,
		-0.653286, -0.757107, -0.002563,
		0.720368, -0.620535, -0.309849,
		36.870560, 36.514355, 46.272171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271637, 36.460514, 46.919136>,  <36.366302, 36.948730, 46.489067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271637, 36.460514, 46.919136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.642319, 36.406887, 46.778709>,  <36.864727, 36.374710, 46.694454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.642319, 36.406887, 46.778709>,  <36.271637, 36.460514, 46.919136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.642319, 36.406887, 46.778709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291948, -0.331376, 0.897194,
		-0.236615, -0.933926, -0.267948,
		0.926704, -0.134062, -0.351066,
		36.920330, 36.366669, 46.673389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475887, 35.741161, 47.123352>,  <36.271637, 36.460514, 46.919136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475887, 35.741161, 47.123352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.825119, 35.925510, 47.059696>,  <37.034660, 36.036118, 47.021503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.825119, 35.925510, 47.059696>,  <36.475887, 35.741161, 47.123352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825119, 35.925510, 47.059696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324963, -0.306699, 0.894614,
		0.363491, -0.832788, -0.417539,
		0.873083, 0.460869, -0.159144,
		37.087044, 36.063770, 47.011951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985958, 35.329723, 47.403049>,  <36.475887, 35.741161, 47.123352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985958, 35.329723, 47.403049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.167397, 35.685390, 47.378956>,  <37.276260, 35.898792, 47.364498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.167397, 35.685390, 47.378956>,  <36.985958, 35.329723, 47.403049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167397, 35.685390, 47.378956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444402, -0.167083, 0.880108,
		0.772500, -0.425983, -0.470937,
		0.453597, 0.889169, -0.060236,
		37.303474, 35.952141, 47.360886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629807, 35.176533, 47.572746>,  <36.985958, 35.329723, 47.403049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629807, 35.176533, 47.572746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559486, 35.564289, 47.641312>,  <37.517296, 35.796944, 47.682453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559486, 35.564289, 47.641312>,  <37.629807, 35.176533, 47.572746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559486, 35.564289, 47.641312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533978, -0.052385, 0.843874,
		0.827020, 0.239887, -0.508422,
		-0.175801, 0.969387, 0.171418,
		37.506744, 35.855106, 47.692738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284538, 35.542889, 47.625320>,  <37.629807, 35.176533, 47.572746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284538, 35.542889, 47.625320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.014469, 35.783218, 47.796505>,  <37.852428, 35.927418, 47.899216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.014469, 35.783218, 47.796505>,  <38.284538, 35.542889, 47.625320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014469, 35.783218, 47.796505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558785, 0.037837, 0.828449,
		0.481559, 0.798486, -0.361278,
		-0.675174, 0.600824, 0.427961,
		37.811916, 35.963467, 47.924892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720928, 36.073902, 47.864166>,  <38.284538, 35.542889, 47.625320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720928, 36.073902, 47.864166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378010, 36.080956, 48.069973>,  <38.172256, 36.085190, 48.193459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378010, 36.080956, 48.069973>,  <38.720928, 36.073902, 47.864166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378010, 36.080956, 48.069973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503252, -0.181962, 0.844765,
		0.108522, 0.983147, 0.147120,
		-0.857298, 0.017637, 0.514517,
		38.120819, 36.086246, 48.224327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893257, 36.356586, 48.394730>,  <38.720928, 36.073902, 47.864166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893257, 36.356586, 48.394730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545547, 36.215126, 48.532883>,  <38.336922, 36.130249, 48.615776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545547, 36.215126, 48.532883>,  <38.893257, 36.356586, 48.394730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545547, 36.215126, 48.532883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410334, -0.126604, 0.903104,
		-0.275652, 0.926771, 0.255167,
		-0.869277, -0.353647, 0.345387,
		38.284763, 36.109032, 48.636497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899063, 36.630081, 49.069710>,  <38.893257, 36.356586, 48.394730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899063, 36.630081, 49.069710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.651798, 36.315754, 49.062069>,  <38.503441, 36.127159, 49.057484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.651798, 36.315754, 49.062069>,  <38.899063, 36.630081, 49.069710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.651798, 36.315754, 49.062069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219212, -0.195673, 0.955855,
		-0.754866, 0.586686, 0.293218,
		-0.618162, -0.785819, -0.019099,
		38.466351, 36.080009, 49.056339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386356, 36.671082, 49.626812>,  <38.899063, 36.630081, 49.069710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386356, 36.671082, 49.626812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.405502, 36.289371, 49.508789>,  <38.416988, 36.060345, 49.437977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.405502, 36.289371, 49.508789>,  <38.386356, 36.671082, 49.626812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405502, 36.289371, 49.508789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078312, -0.290901, 0.953543,
		-0.995779, -0.068749, 0.060808,
		0.047866, -0.954280, -0.295057,
		38.419861, 36.003086, 49.420273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965717, 36.253819, 50.076656>,  <38.386356, 36.671082, 49.626812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965717, 36.253819, 50.076656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.231178, 36.003513, 49.912712>,  <38.390453, 35.853329, 49.814346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.231178, 36.003513, 49.912712>,  <37.965717, 36.253819, 50.076656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231178, 36.003513, 49.912712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228615, -0.352030, 0.907640,
		-0.712251, -0.696058, -0.090567,
		0.663652, -0.625762, -0.409863,
		38.430275, 35.815784, 49.789753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912251, 35.736855, 50.517071>,  <37.965717, 36.253819, 50.076656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912251, 35.736855, 50.517071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.241062, 35.643780, 50.309174>,  <38.438347, 35.587936, 50.184437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.241062, 35.643780, 50.309174>,  <37.912251, 35.736855, 50.517071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241062, 35.643780, 50.309174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340081, -0.531465, 0.775815,
		-0.456741, -0.814496, -0.357749,
		0.822030, -0.232683, -0.519737,
		38.487671, 35.573975, 50.153252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920204, 35.024124, 50.585125>,  <37.912251, 35.736855, 50.517071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920204, 35.024124, 50.585125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.296963, 35.121532, 50.492577>,  <38.523018, 35.179977, 50.437050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.296963, 35.121532, 50.492577>,  <37.920204, 35.024124, 50.585125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296963, 35.121532, 50.492577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335876, -0.691800, 0.639219,
		-0.004400, -0.679789, -0.733395,
		0.941896, 0.243518, -0.231369,
		38.579533, 35.194588, 50.423164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223492, 34.403008, 50.422691>,  <37.920204, 35.024124, 50.585125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223492, 34.403008, 50.422691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522926, 34.649239, 50.521225>,  <38.702587, 34.796978, 50.580345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522926, 34.649239, 50.521225>,  <38.223492, 34.403008, 50.422691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522926, 34.649239, 50.521225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436243, -0.737055, 0.516179,
		0.499311, -0.278943, -0.820292,
		0.748585, 0.615581, 0.246333,
		38.747501, 34.833912, 50.595123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773960, 34.008385, 50.348507>,  <38.223492, 34.403008, 50.422691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773960, 34.008385, 50.348507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.913208, 34.297543, 50.587250>,  <38.996758, 34.471035, 50.730495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.913208, 34.297543, 50.587250>,  <38.773960, 34.008385, 50.348507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913208, 34.297543, 50.587250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503426, -0.681248, 0.531473,
		0.790806, 0.115457, -0.601079,
		0.348122, 0.722890, 0.596859,
		39.017643, 34.514408, 50.766308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359577, 33.675171, 50.651512>,  <38.773960, 34.008385, 50.348507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359577, 33.675171, 50.651512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322411, 34.009182, 50.868431>,  <39.300110, 34.209591, 50.998585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322411, 34.009182, 50.868431>,  <39.359577, 33.675171, 50.651512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322411, 34.009182, 50.868431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412863, -0.463313, 0.784146,
		0.906041, 0.296760, -0.301702,
		-0.092921, 0.835030, 0.542302,
		39.294533, 34.259689, 51.031120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986122, 33.877857, 50.866699>,  <39.359577, 33.675171, 50.651512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.986122, 33.877857, 50.866699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.732456, 34.014454, 51.144176>,  <39.580257, 34.096413, 51.310665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.732456, 34.014454, 51.144176>,  <39.986122, 33.877857, 50.866699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732456, 34.014454, 51.144176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481240, -0.527892, 0.699813,
		0.605176, 0.777634, 0.170433,
		-0.634168, 0.341491, 0.693697,
		39.542206, 34.116901, 51.352287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.475151, 33.955681, 51.483650>,  <39.986122, 33.877857, 50.866699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.475151, 33.955681, 51.483650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.101524, 33.967278, 51.626019>,  <39.877350, 33.974236, 51.711441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.101524, 33.967278, 51.626019>,  <40.475151, 33.955681, 51.483650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.101524, 33.967278, 51.626019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326664, -0.333285, 0.884427,
		0.144263, 0.942380, 0.301840,
		-0.934066, 0.028990, 0.355922,
		39.821304, 33.975975, 51.732796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.458065, 34.388443, 52.176712>,  <40.475151, 33.955681, 51.483650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.458065, 34.388443, 52.176712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.139301, 34.146809, 52.178314>,  <39.948044, 34.001827, 52.179276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.139301, 34.146809, 52.178314>,  <40.458065, 34.388443, 52.176712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139301, 34.146809, 52.178314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266700, -0.345863, 0.899583,
		-0.542041, 0.717953, 0.436731,
		-0.796908, -0.604087, 0.004007,
		39.900230, 33.965584, 52.179516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.010265, 34.260422, 52.783062>,  <40.458065, 34.388443, 52.176712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.010265, 34.260422, 52.783062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.709938, 34.519398, 52.730762>,  <40.529743, 34.674782, 52.699383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.709938, 34.519398, 52.730762>,  <41.010265, 34.260422, 52.783062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.709938, 34.519398, 52.730762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606476, -0.597334, 0.524766,
		0.261653, 0.473300, 0.841145,
		-0.750816, 0.647441, -0.130750,
		40.484692, 34.713631, 52.691536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.785118, 34.512348, 53.418060>,  <41.010265, 34.260422, 52.783062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.785118, 34.512348, 53.418060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.487667, 34.511368, 53.150627>,  <40.309196, 34.510780, 52.990166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.487667, 34.511368, 53.150627>,  <40.785118, 34.512348, 53.418060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.487667, 34.511368, 53.150627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442080, -0.748392, 0.494444,
		-0.501577, 0.663252, 0.555443,
		-0.743630, -0.002451, -0.668587,
		40.264580, 34.510632, 52.950050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251568, 34.709496, 53.868946>,  <40.785118, 34.512348, 53.418060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.251568, 34.709496, 53.868946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.196232, 34.495811, 53.535366>,  <40.163029, 34.367599, 53.335217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.196232, 34.495811, 53.535366>,  <40.251568, 34.709496, 53.868946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.196232, 34.495811, 53.535366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149572, -0.821122, 0.550805,
		-0.979025, 0.200934, 0.033690,
		-0.138339, -0.534213, -0.833954,
		40.154732, 34.335548, 53.285179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533325, 34.366341, 53.856026>,  <40.251568, 34.709496, 53.868946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533325, 34.366341, 53.856026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824795, 34.161724, 53.673882>,  <39.999676, 34.038956, 53.564594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824795, 34.161724, 53.673882>,  <39.533325, 34.366341, 53.856026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824795, 34.161724, 53.673882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206107, -0.797876, 0.566493,
		-0.653107, -0.318938, -0.686826,
		0.728678, -0.511541, -0.455363,
		40.043396, 34.008263, 53.537273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257652, 33.812214, 53.478596>,  <39.533325, 34.366341, 53.856026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257652, 33.812214, 53.478596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.641930, 33.728745, 53.551834>,  <39.872498, 33.678665, 53.595779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.641930, 33.728745, 53.551834>,  <39.257652, 33.812214, 53.478596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.641930, 33.728745, 53.551834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272441, -0.835368, 0.477427,
		0.053332, -0.508545, -0.859382,
		0.960693, -0.208669, 0.183101,
		39.930138, 33.666145, 53.606766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.375065, 33.131329, 53.277588>,  <39.257652, 33.812214, 53.478596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.375065, 33.131329, 53.277588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.616615, 33.231281, 53.580345>,  <39.761547, 33.291252, 53.762001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.616615, 33.231281, 53.580345>,  <39.375065, 33.131329, 53.277588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.616615, 33.231281, 53.580345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325395, -0.789571, 0.520284,
		0.727635, -0.560477, -0.395491,
		0.603875, 0.249886, 0.756896,
		39.797779, 33.306248, 53.807415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551102, 32.558113, 53.551785>,  <39.375065, 33.131329, 53.277588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551102, 32.558113, 53.551785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575775, 32.809143, 53.862228>,  <39.590580, 32.959759, 54.048496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575775, 32.809143, 53.862228>,  <39.551102, 32.558113, 53.551785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575775, 32.809143, 53.862228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313885, -0.725943, 0.611950,
		0.947455, -0.281356, 0.152207,
		0.061682, 0.627571, 0.776112,
		39.594280, 32.997414, 54.095062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177616, 32.181366, 53.249897>,  <39.551102, 32.558113, 53.551785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.177616, 32.181366, 53.249897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.974030, 31.904108, 53.454056>,  <39.851879, 31.737753, 53.576550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.974030, 31.904108, 53.454056>,  <40.177616, 32.181366, 53.249897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.974030, 31.904108, 53.454056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430659, -0.308349, -0.848206,
		0.745309, -0.651515, -0.141570,
		-0.508967, -0.693144, 0.510396,
		39.821339, 31.696165, 53.607174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428318, 31.612225, 52.982998>,  <40.177616, 32.181366, 53.249897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.428318, 31.612225, 52.982998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.053955, 31.576553, 53.119308>,  <39.829338, 31.555151, 53.201096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.053955, 31.576553, 53.119308>,  <40.428318, 31.612225, 52.982998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.053955, 31.576553, 53.119308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342949, 0.009776, -0.939303,
		0.080437, -0.995967, -0.039734,
		-0.935904, -0.089182, 0.340780,
		39.773186, 31.549801, 53.221542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119118, 31.044024, 52.639633>,  <40.428318, 31.612225, 52.982998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.119118, 31.044024, 52.639633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.846146, 31.318789, 52.739590>,  <39.682362, 31.483646, 52.799564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.846146, 31.318789, 52.739590>,  <40.119118, 31.044024, 52.639633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846146, 31.318789, 52.739590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339846, 0.004498, -0.940470,
		-0.647143, -0.726728, 0.230374,
		-0.682429, 0.686911, 0.249887,
		39.641418, 31.524862, 52.814556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306480, 30.841703, 52.653980>,  <40.119118, 31.044024, 52.639633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306480, 30.841703, 52.653980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333782, 31.234831, 52.585388>,  <39.350163, 31.470707, 52.544231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333782, 31.234831, 52.585388>,  <39.306480, 30.841703, 52.653980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333782, 31.234831, 52.585388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298903, -0.143842, -0.943380,
		-0.951839, 0.115649, 0.283950,
		0.068257, 0.982820, -0.171482,
		39.354259, 31.529676, 52.533943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783043, 30.836889, 52.201687>,  <39.306480, 30.841703, 52.653980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783043, 30.836889, 52.201687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.925549, 31.208685, 52.163479>,  <39.011051, 31.431763, 52.140553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.925549, 31.208685, 52.163479>,  <38.783043, 30.836889, 52.201687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925549, 31.208685, 52.163479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283128, 0.009960, -0.959030,
		-0.890458, 0.368711, 0.266714,
		0.356262, 0.929491, -0.095524,
		39.032429, 31.487532, 52.134823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207211, 31.173933, 51.914009>,  <38.783043, 30.836889, 52.201687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207211, 31.173933, 51.914009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551899, 31.361820, 51.837273>,  <38.758713, 31.474552, 51.791229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551899, 31.361820, 51.837273>,  <38.207211, 31.173933, 51.914009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551899, 31.361820, 51.837273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262219, 0.088585, -0.960934,
		-0.434373, 0.878361, 0.199504,
		0.861720, 0.469717, -0.191844,
		38.810413, 31.502735, 51.779720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129013, 31.905155, 51.542774>,  <38.207211, 31.173933, 51.914009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129013, 31.905155, 51.542774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.502762, 31.779194, 51.476089>,  <38.727009, 31.703617, 51.436077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.502762, 31.779194, 51.476089>,  <38.129013, 31.905155, 51.542774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.502762, 31.779194, 51.476089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088192, 0.248930, -0.964498,
		0.345221, 0.915899, 0.204820,
		0.934369, -0.314902, -0.166710,
		38.783073, 31.684723, 51.426075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379250, 32.393932, 51.130424>,  <38.129013, 31.905155, 51.542774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379250, 32.393932, 51.130424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.611401, 32.072407, 51.078217>,  <38.750690, 31.879492, 51.046890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.611401, 32.072407, 51.078217>,  <38.379250, 32.393932, 51.130424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611401, 32.072407, 51.078217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095344, 0.092107, -0.991174,
		0.808743, 0.587705, -0.023182,
		0.580382, -0.803816, -0.130525,
		38.785515, 31.831263, 51.039059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821529, 32.565205, 50.612007>,  <38.379250, 32.393932, 51.130424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.821529, 32.565205, 50.612007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.850750, 32.166973, 50.635635>,  <38.868282, 31.928034, 50.649811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.850750, 32.166973, 50.635635>,  <38.821529, 32.565205, 50.612007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850750, 32.166973, 50.635635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105637, -0.066618, -0.992171,
		0.991718, 0.066235, -0.110036,
		0.073047, -0.995578, 0.059069,
		38.872665, 31.868299, 50.653355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125645, 32.463398, 50.048454>,  <38.821529, 32.565205, 50.612007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125645, 32.463398, 50.048454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978981, 32.100410, 50.130486>,  <38.890984, 31.882618, 50.179703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978981, 32.100410, 50.130486>,  <39.125645, 32.463398, 50.048454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978981, 32.100410, 50.130486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183398, -0.145603, -0.972196,
		0.912100, -0.394074, -0.113042,
		-0.366658, -0.907472, 0.205077,
		38.868984, 31.828169, 50.192009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318153, 32.064201, 49.474442>,  <39.125645, 32.463398, 50.048454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.318153, 32.064201, 49.474442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.010700, 31.869923, 49.640961>,  <38.826229, 31.753355, 49.740871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.010700, 31.869923, 49.640961>,  <39.318153, 32.064201, 49.474442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.010700, 31.869923, 49.640961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326890, -0.261176, -0.908257,
		0.549866, -0.834198, 0.041978,
		-0.768629, -0.485697, 0.416302,
		38.780113, 31.724213, 49.765850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289650, 31.432060, 49.098286>,  <39.318153, 32.064201, 49.474442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289650, 31.432060, 49.098286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.929386, 31.538269, 49.235874>,  <38.713230, 31.601994, 49.318428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.929386, 31.538269, 49.235874>,  <39.289650, 31.432060, 49.098286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929386, 31.538269, 49.235874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396430, -0.177937, -0.900656,
		-0.177937, -0.947543, 0.265520,
		0.900656, -0.265520, -0.343973,
		38.659191, 31.617926, 49.339066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860748, 31.045784, 48.736549>,  <39.289650, 31.432060, 49.098286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.860748, 31.045784, 48.736549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.591503, 31.302792, 48.883022>,  <38.429955, 31.456997, 48.970905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.591503, 31.302792, 48.883022>,  <38.860748, 31.045784, 48.736549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.591503, 31.302792, 48.883022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527814, -0.070555, -0.846424,
		-0.518008, -0.763014, 0.386623,
		-0.673112, 0.642519, 0.366182,
		38.389568, 31.495548, 48.992878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263592, 30.638544, 48.639359>,  <38.860748, 31.045784, 48.736549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263592, 30.638544, 48.639359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.168816, 31.025070, 48.679546>,  <38.111950, 31.256985, 48.703659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.168816, 31.025070, 48.679546>,  <38.263592, 30.638544, 48.639359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168816, 31.025070, 48.679546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636541, -0.076286, -0.767461,
		-0.733943, -0.245800, 0.633174,
		-0.236944, 0.966314, 0.100473,
		38.097733, 31.314964, 48.709690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525387, 30.783445, 48.515827>,  <38.263592, 30.638544, 48.639359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525387, 30.783445, 48.515827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642460, 31.164829, 48.486858>,  <37.712704, 31.393660, 48.469479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642460, 31.164829, 48.486858>,  <37.525387, 30.783445, 48.515827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642460, 31.164829, 48.486858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651336, 0.143343, -0.745126,
		-0.700068, 0.265260, 0.662979,
		0.292686, 0.953462, -0.072423,
		37.730267, 31.450869, 48.465130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897362, 31.267553, 48.484196>,  <37.525387, 30.783445, 48.515827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897362, 31.267553, 48.484196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194321, 31.470730, 48.309456>,  <37.372498, 31.592636, 48.204613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194321, 31.470730, 48.309456>,  <36.897362, 31.267553, 48.484196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194321, 31.470730, 48.309456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589360, 0.185080, -0.786384,
		-0.318583, 0.841275, 0.436762,
		0.742401, 0.507939, -0.436850,
		37.417042, 31.623112, 48.178402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623661, 31.789513, 48.115322>,  <36.897362, 31.267553, 48.484196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623661, 31.789513, 48.115322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981487, 31.818243, 47.938873>,  <37.196182, 31.835482, 47.833004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981487, 31.818243, 47.938873>,  <36.623661, 31.789513, 48.115322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981487, 31.818243, 47.938873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430906, 0.400549, -0.808629,
		0.118609, 0.913455, 0.389269,
		0.894568, 0.071828, -0.441122,
		37.249859, 31.839790, 47.806538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764812, 32.502949, 47.833748>,  <36.623661, 31.789513, 48.115322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764812, 32.502949, 47.833748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.000282, 32.271446, 47.608002>,  <37.141563, 32.132545, 47.472553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.000282, 32.271446, 47.608002>,  <36.764812, 32.502949, 47.833748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000282, 32.271446, 47.608002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296589, 0.494828, -0.816811,
		0.751995, 0.648221, 0.119642,
		0.588676, -0.578753, -0.564363,
		37.176884, 32.097820, 47.438694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004749, 32.901745, 47.293888>,  <36.764812, 32.502949, 47.833748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004749, 32.901745, 47.293888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.074551, 32.551704, 47.113338>,  <37.116432, 32.341679, 47.005009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.074551, 32.551704, 47.113338>,  <37.004749, 32.901745, 47.293888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074551, 32.551704, 47.113338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541622, 0.297520, -0.786211,
		0.822309, 0.381675, -0.422056,
		0.174507, -0.875103, -0.451377,
		37.126904, 32.289173, 46.977924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982605, 32.992210, 46.597782>,  <37.004749, 32.901745, 47.293888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982605, 32.992210, 46.597782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.955929, 32.593277, 46.585945>,  <36.939922, 32.353916, 46.578842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.955929, 32.593277, 46.585945>,  <36.982605, 32.992210, 46.597782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955929, 32.593277, 46.585945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404125, 0.054118, -0.913101,
		0.912269, -0.048934, -0.406657,
		-0.066689, -0.997335, -0.029595,
		36.935921, 32.294075, 46.577068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335629, 32.843937, 46.011230>,  <36.982605, 32.992210, 46.597782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335629, 32.843937, 46.011230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078773, 32.549774, 46.097797>,  <36.924660, 32.373276, 46.149738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078773, 32.549774, 46.097797>,  <37.335629, 32.843937, 46.011230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078773, 32.549774, 46.097797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302385, -0.016429, -0.953044,
		0.704431, -0.677426, -0.211827,
		-0.642137, -0.735408, 0.216417,
		36.886131, 32.329151, 46.162724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423027, 32.405434, 45.471771>,  <37.335629, 32.843937, 46.011230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.423027, 32.405434, 45.471771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.077599, 32.300137, 45.643791>,  <36.870342, 32.236958, 45.747005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.077599, 32.300137, 45.643791>,  <37.423027, 32.405434, 45.471771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077599, 32.300137, 45.643791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433223, -0.049028, -0.899952,
		0.257993, -0.963482, -0.071705,
		-0.863572, -0.263246, 0.430052,
		36.818527, 32.221165, 45.772808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220226, 31.735531, 45.213264>,  <37.423027, 32.405434, 45.471771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220226, 31.735531, 45.213264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.880985, 31.909880, 45.333755>,  <36.677441, 32.014488, 45.406052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.880985, 31.909880, 45.333755>,  <37.220226, 31.735531, 45.213264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880985, 31.909880, 45.333755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347682, -0.028828, -0.937169,
		-0.399804, -0.899546, 0.175994,
		-0.848100, 0.435874, 0.301230,
		36.626556, 32.040642, 45.424126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564724, 31.385052, 44.894978>,  <37.220226, 31.735531, 45.213264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564724, 31.385052, 44.894978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427197, 31.747053, 44.995186>,  <36.344681, 31.964254, 45.055309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427197, 31.747053, 44.995186>,  <36.564724, 31.385052, 44.894978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427197, 31.747053, 44.995186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657370, -0.041454, -0.752427,
		-0.670563, -0.423380, 0.609175,
		-0.343815, 0.905003, 0.250520,
		36.324051, 32.018555, 45.070343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861050, 31.285803, 45.088718>,  <36.564724, 31.385052, 44.894978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861050, 31.285803, 45.088718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.891788, 31.673931, 44.997002>,  <35.910233, 31.906807, 44.941971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.891788, 31.673931, 44.997002>,  <35.861050, 31.285803, 45.088718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891788, 31.673931, 44.997002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688138, -0.114805, -0.716440,
		-0.721499, 0.212839, 0.658892,
		0.076843, 0.970319, -0.229294,
		35.914841, 31.965027, 44.928215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155056, 31.417042, 44.918217>,  <35.861050, 31.285803, 45.088718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155056, 31.417042, 44.918217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351784, 31.729122, 44.763607>,  <35.469822, 31.916370, 44.670841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351784, 31.729122, 44.763607>,  <35.155056, 31.417042, 44.918217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351784, 31.729122, 44.763607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728516, 0.125618, -0.673413,
		-0.476843, 0.612786, 0.630170,
		0.491819, 0.780201, -0.386525,
		35.499329, 31.963182, 44.647648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647343, 31.948853, 44.902706>,  <35.155056, 31.417042, 44.918217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647343, 31.948853, 44.902706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.952789, 32.032040, 44.658199>,  <35.136055, 32.081951, 44.511497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.952789, 32.032040, 44.658199>,  <34.647343, 31.948853, 44.902706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952789, 32.032040, 44.658199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637431, 0.393612, -0.662383,
		0.102846, 0.895443, 0.433133,
		0.763612, 0.207969, -0.611265,
		35.181873, 32.094429, 44.474819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486351, 32.662174, 44.595753>,  <34.647343, 31.948853, 44.902706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486351, 32.662174, 44.595753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738827, 32.479446, 44.345024>,  <34.890312, 32.369808, 44.194588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738827, 32.479446, 44.345024>,  <34.486351, 32.662174, 44.595753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738827, 32.479446, 44.345024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534266, 0.329787, -0.778332,
		0.562276, 0.826170, -0.035904,
		0.631194, -0.456820, -0.626825,
		34.928185, 32.342400, 44.156975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595791, 33.198753, 44.075188>,  <34.486351, 32.662174, 44.595753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595791, 33.198753, 44.075188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701599, 32.846542, 43.917858>,  <34.765083, 32.635216, 43.823460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701599, 32.846542, 43.917858>,  <34.595791, 33.198753, 44.075188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701599, 32.846542, 43.917858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368530, 0.284598, -0.884980,
		0.891186, 0.379049, -0.249217,
		0.264524, -0.880526, -0.393321,
		34.780956, 32.582386, 43.799862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849598, 33.368542, 43.504345>,  <34.595791, 33.198753, 44.075188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849598, 33.368542, 43.504345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751869, 32.988144, 43.428547>,  <34.693233, 32.759903, 43.383068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751869, 32.988144, 43.428547>,  <34.849598, 33.368542, 43.504345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751869, 32.988144, 43.428547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247677, 0.250139, -0.935995,
		0.937530, -0.181751, -0.296655,
		-0.244323, -0.950998, -0.189498,
		34.678574, 32.702843, 43.371696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144024, 33.139137, 42.866821>,  <34.849598, 33.368542, 43.504345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144024, 33.139137, 42.866821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842308, 32.880001, 42.909416>,  <34.661278, 32.724518, 42.934975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842308, 32.880001, 42.909416>,  <35.144024, 33.139137, 42.866821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842308, 32.880001, 42.909416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204229, 0.077382, -0.975860,
		0.623965, -0.757832, -0.190677,
		-0.754293, -0.647844, 0.106488,
		34.616020, 32.685646, 42.941364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154552, 32.760033, 42.221764>,  <35.144024, 33.139137, 42.866821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154552, 32.760033, 42.221764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795204, 32.728111, 42.394531>,  <34.579594, 32.708958, 42.498192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795204, 32.728111, 42.394531>,  <35.154552, 32.760033, 42.221764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795204, 32.728111, 42.394531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438841, 0.121769, -0.890276,
		0.018453, -0.989345, -0.144415,
		-0.898375, -0.079803, 0.431918,
		34.525692, 32.704170, 42.524105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.735413, 32.340137, 41.831421>,  <35.154552, 32.760033, 42.221764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.735413, 32.340137, 41.831421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.457111, 32.527328, 42.049385>,  <34.290131, 32.639645, 42.180164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.457111, 32.527328, 42.049385>,  <34.735413, 32.340137, 41.831421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457111, 32.527328, 42.049385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596221, 0.046798, -0.801455,
		-0.400566, -0.882499, 0.246460,
		-0.695749, 0.467980, 0.544910,
		34.248386, 32.667721, 42.212860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112289, 32.102348, 41.529476>,  <34.735413, 32.340137, 41.831421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112289, 32.102348, 41.529476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.991779, 32.406990, 41.758976>,  <33.919472, 32.589775, 41.896675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.991779, 32.406990, 41.758976>,  <34.112289, 32.102348, 41.529476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991779, 32.406990, 41.758976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741234, 0.191456, -0.643364,
		-0.599836, -0.619117, 0.506844,
		-0.301279, 0.761603, 0.573753,
		33.901394, 32.635471, 41.931103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407349, 32.048775, 41.730297>,  <34.112289, 32.102348, 41.529476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407349, 32.048775, 41.730297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.489544, 32.440094, 41.719669>,  <33.538860, 32.674885, 41.713291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.489544, 32.440094, 41.719669>,  <33.407349, 32.048775, 41.730297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.489544, 32.440094, 41.719669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753738, 0.140888, -0.641896,
		-0.624222, 0.151933, 0.766331,
		0.205492, 0.978298, -0.026573,
		33.551193, 32.733582, 41.711697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707867, 32.335293, 41.566216>,  <33.407349, 32.048775, 41.730297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707867, 32.335293, 41.566216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955513, 32.645248, 41.515244>,  <33.104103, 32.831223, 41.484661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955513, 32.645248, 41.515244>,  <32.707867, 32.335293, 41.566216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955513, 32.645248, 41.515244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591662, 0.353577, -0.724513,
		-0.516360, 0.523957, 0.677378,
		0.619119, 0.774889, -0.127432,
		33.141247, 32.877716, 41.477013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.301765, 33.013474, 41.444782>,  <32.707867, 32.335293, 41.566216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.301765, 33.013474, 41.444782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667149, 33.110626, 41.314182>,  <32.886379, 33.168919, 41.235825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667149, 33.110626, 41.314182>,  <32.301765, 33.013474, 41.444782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667149, 33.110626, 41.314182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406762, 0.521951, -0.749741,
		-0.011684, 0.817664, 0.575577,
		0.913459, 0.242883, -0.326496,
		32.941185, 33.183491, 41.216232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254742, 33.678421, 41.226929>,  <32.301765, 33.013474, 41.444782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254742, 33.678421, 41.226929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579479, 33.545818, 41.034672>,  <32.774323, 33.466259, 40.919319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579479, 33.545818, 41.034672>,  <32.254742, 33.678421, 41.226929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579479, 33.545818, 41.034672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345126, 0.391524, -0.852993,
		0.470952, 0.858379, 0.203445,
		0.811845, -0.331504, -0.480638,
		32.823032, 33.446365, 40.890480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606056, 34.267284, 40.867386>,  <32.254742, 33.678421, 41.226929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.606056, 34.267284, 40.867386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751232, 33.939964, 40.689098>,  <32.838337, 33.743572, 40.582127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751232, 33.939964, 40.689098>,  <32.606056, 34.267284, 40.867386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751232, 33.939964, 40.689098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226342, 0.386591, -0.894045,
		0.903905, 0.425370, -0.044905,
		0.362940, -0.818296, -0.445720,
		32.860115, 33.694477, 40.555382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043770, 34.505394, 40.421421>,  <32.606056, 34.267284, 40.867386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.043770, 34.505394, 40.421421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.941528, 34.143173, 40.285988>,  <32.880184, 33.925838, 40.204727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.941528, 34.143173, 40.285988>,  <33.043770, 34.505394, 40.421421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.941528, 34.143173, 40.285988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051745, 0.362530, -0.930534,
		0.965396, -0.220328, -0.139522,
		-0.255604, -0.905554, -0.338584,
		32.864845, 33.871506, 40.184414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497971, 34.262581, 39.829540>,  <33.043770, 34.505394, 40.421421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497971, 34.262581, 39.829540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128170, 34.114120, 39.794811>,  <32.906288, 34.025043, 39.773975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128170, 34.114120, 39.794811>,  <33.497971, 34.262581, 39.829540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128170, 34.114120, 39.794811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027765, 0.292745, -0.955787,
		0.380159, -0.881219, -0.280949,
		-0.924504, -0.371152, -0.086823,
		32.850819, 34.002777, 39.768764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.581150, 34.011143, 39.203465>,  <33.497971, 34.262581, 39.829540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.581150, 34.011143, 39.203465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186172, 34.009335, 39.266632>,  <32.949188, 34.008251, 39.304535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186172, 34.009335, 39.266632>,  <33.581150, 34.011143, 39.203465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186172, 34.009335, 39.266632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157286, 0.122093, -0.979977,
		-0.014853, -0.992509, -0.121270,
		-0.987441, -0.004519, 0.157921,
		32.889938, 34.007980, 39.314007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273979, 33.479626, 38.690857>,  <33.581150, 34.011143, 39.203465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273979, 33.479626, 38.690857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980099, 33.727989, 38.800167>,  <32.803768, 33.877007, 38.865753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980099, 33.727989, 38.800167>,  <33.273979, 33.479626, 38.690857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.980099, 33.727989, 38.800167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313170, 0.046902, -0.948538,
		-0.601776, -0.782476, 0.159992,
		-0.734704, 0.620912, 0.273273,
		32.759686, 33.914261, 38.882149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811611, 33.914211, 38.420006>,  <33.273979, 33.479626, 38.690857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811611, 33.914211, 38.420006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063110, 34.104362, 38.173855>,  <34.214008, 34.218452, 38.026165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063110, 34.104362, 38.173855>,  <33.811611, 33.914211, 38.420006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063110, 34.104362, 38.173855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776742, -0.421292, 0.468172,
		-0.036694, -0.772352, -0.634134,
		0.628749, 0.475379, -0.615378,
		34.251736, 34.246975, 37.989243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128468, 33.383991, 38.186363>,  <33.811611, 33.914211, 38.420006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128468, 33.383991, 38.186363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356747, 33.708607, 38.136219>,  <34.493713, 33.903378, 38.106133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356747, 33.708607, 38.136219>,  <34.128468, 33.383991, 38.186363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356747, 33.708607, 38.136219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758684, -0.462684, 0.458609,
		0.314176, -0.356834, -0.879752,
		0.570694, 0.811537, -0.125361,
		34.527954, 33.952068, 38.098610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737514, 33.225662, 37.696339>,  <34.128468, 33.383991, 38.186363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737514, 33.225662, 37.696339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.807384, 33.536755, 37.937878>,  <34.849304, 33.723408, 38.082802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.807384, 33.536755, 37.937878>,  <34.737514, 33.225662, 37.696339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807384, 33.536755, 37.937878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816365, -0.457264, 0.352787,
		0.550489, 0.431337, -0.714779,
		0.174672, 0.777726, 0.603847,
		34.859787, 33.770073, 38.119030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347111, 33.111996, 37.915497>,  <34.737514, 33.225662, 37.696339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347111, 33.111996, 37.915497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.284225, 33.418423, 38.164791>,  <35.246494, 33.602280, 38.314369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.284225, 33.418423, 38.164791>,  <35.347111, 33.111996, 37.915497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284225, 33.418423, 38.164791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784168, -0.286781, 0.550306,
		0.600304, 0.575239, -0.555639,
		-0.157211, 0.766066, 0.623240,
		35.237061, 33.648243, 38.351765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059010, 33.305531, 38.135933>,  <35.347111, 33.111996, 37.915497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059010, 33.305531, 38.135933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830544, 33.443832, 38.433720>,  <35.693462, 33.526814, 38.612392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830544, 33.443832, 38.433720>,  <36.059010, 33.305531, 38.135933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830544, 33.443832, 38.433720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702702, -0.262793, 0.661173,
		0.424241, 0.900775, -0.092861,
		-0.571166, 0.345751, 0.744464,
		35.659195, 33.547558, 38.657059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626713, 33.589931, 38.612644>,  <36.059010, 33.305531, 38.135933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626713, 33.589931, 38.612644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.290493, 33.521858, 38.818371>,  <36.088760, 33.481014, 38.941807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.290493, 33.521858, 38.818371>,  <36.626713, 33.589931, 38.612644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290493, 33.521858, 38.818371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540652, -0.323702, 0.776474,
		0.034344, 0.930728, 0.364096,
		-0.840545, -0.170182, 0.514317,
		36.038330, 33.470802, 38.972668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758739, 33.900837, 39.226257>,  <36.626713, 33.589931, 38.612644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758739, 33.900837, 39.226257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457569, 33.645435, 39.290020>,  <36.276867, 33.492195, 39.328278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457569, 33.645435, 39.290020>,  <36.758739, 33.900837, 39.226257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457569, 33.645435, 39.290020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462649, -0.341289, 0.818216,
		-0.468032, 0.689806, 0.552371,
		-0.752929, -0.638505, 0.159404,
		36.231689, 33.453884, 39.337841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656078, 33.973728, 39.977222>,  <36.758739, 33.900837, 39.226257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656078, 33.973728, 39.977222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.474907, 33.639145, 39.853809>,  <36.366203, 33.438396, 39.779762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.474907, 33.639145, 39.853809>,  <36.656078, 33.973728, 39.977222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474907, 33.639145, 39.853809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431665, -0.508547, 0.745013,
		-0.780076, 0.204255, 0.591406,
		-0.452931, -0.836456, -0.308536,
		36.339027, 33.388206, 39.761250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269325, 33.562363, 40.630924>,  <36.656078, 33.973728, 39.977222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269325, 33.562363, 40.630924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.393166, 33.323406, 40.335014>,  <36.467472, 33.180031, 40.157471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.393166, 33.323406, 40.335014>,  <36.269325, 33.562363, 40.630924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393166, 33.323406, 40.335014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401458, -0.623133, 0.671220,
		-0.861960, -0.504801, 0.046904,
		0.309605, -0.597395, -0.739773,
		36.486046, 33.144188, 40.113083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165924, 32.936005, 40.935226>,  <36.269325, 33.562363, 40.630924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165924, 32.936005, 40.935226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.396339, 32.820675, 40.629272>,  <36.534588, 32.751476, 40.445702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.396339, 32.820675, 40.629272>,  <36.165924, 32.936005, 40.935226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396339, 32.820675, 40.629272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472470, -0.646148, 0.599387,
		-0.667050, -0.706653, -0.235977,
		0.576035, -0.288329, -0.764886,
		36.569149, 32.734177, 40.399807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171463, 32.229866, 40.974586>,  <36.165924, 32.936005, 40.935226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171463, 32.229866, 40.974586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488449, 32.326347, 40.750507>,  <36.678642, 32.384235, 40.616062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488449, 32.326347, 40.750507>,  <36.171463, 32.229866, 40.974586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488449, 32.326347, 40.750507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599559, -0.476641, 0.642917,
		-0.111935, -0.845359, -0.522339,
		0.792464, 0.241208, -0.560195,
		36.726189, 32.398708, 40.582447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615685, 31.548717, 40.851360>,  <36.171463, 32.229866, 40.974586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615685, 31.548717, 40.851360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853996, 31.867413, 40.810852>,  <36.996983, 32.058628, 40.786549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853996, 31.867413, 40.810852>,  <36.615685, 31.548717, 40.851360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853996, 31.867413, 40.810852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681949, -0.435227, 0.587812,
		0.424257, -0.419267, -0.802634,
		0.595779, 0.796739, -0.101270,
		37.032730, 32.106434, 40.780472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314281, 31.311335, 40.744732>,  <36.615685, 31.548717, 40.851360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314281, 31.311335, 40.744732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.356396, 31.688040, 40.872482>,  <37.381664, 31.914062, 40.949131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.356396, 31.688040, 40.872482>,  <37.314281, 31.311335, 40.744732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356396, 31.688040, 40.872482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695291, -0.299324, 0.653434,
		0.710975, 0.153262, -0.686312,
		0.105283, 0.941762, 0.319374,
		37.387981, 31.970568, 40.968296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899166, 31.316196, 41.190067>,  <37.314281, 31.311335, 40.744732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899166, 31.316196, 41.190067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.762123, 31.675022, 41.301704>,  <37.679897, 31.890318, 41.368687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.762123, 31.675022, 41.301704>,  <37.899166, 31.316196, 41.190067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762123, 31.675022, 41.301704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546295, -0.051458, 0.836010,
		0.764318, 0.438891, -0.472433,
		-0.342607, 0.897066, 0.279094,
		37.659340, 31.944141, 41.385433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478149, 31.579144, 41.433411>,  <37.899166, 31.316196, 41.190067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478149, 31.579144, 41.433411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.159653, 31.744595, 41.610008>,  <37.968555, 31.843864, 41.715969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.159653, 31.744595, 41.610008>,  <38.478149, 31.579144, 41.433411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159653, 31.744595, 41.610008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473371, -0.028478, 0.880403,
		0.376731, 0.910001, -0.173124,
		-0.796237, 0.413627, 0.441496,
		37.920780, 31.868683, 41.742458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710373, 31.976667, 41.991383>,  <38.478149, 31.579144, 41.433411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710373, 31.976667, 41.991383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328167, 31.928270, 42.098984>,  <38.098843, 31.899233, 42.163544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328167, 31.928270, 42.098984>,  <38.710373, 31.976667, 41.991383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328167, 31.928270, 42.098984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267499, 0.028799, 0.963128,
		-0.124276, 0.992236, 0.004847,
		-0.955510, -0.120990, 0.269001,
		38.041515, 31.891973, 42.179684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434498, 32.571304, 42.339699>,  <38.710373, 31.976667, 41.991383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434498, 32.571304, 42.339699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.201134, 32.283886, 42.491135>,  <38.061115, 32.111435, 42.581997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.201134, 32.283886, 42.491135>,  <38.434498, 32.571304, 42.339699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201134, 32.283886, 42.491135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394267, 0.156972, 0.905491,
		-0.710062, 0.677536, 0.191720,
		-0.583408, -0.718544, 0.378590,
		38.026112, 32.068321, 42.604713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357391, 32.820621, 42.976154>,  <38.434498, 32.571304, 42.339699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.357391, 32.820621, 42.976154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.186787, 32.463020, 43.031082>,  <38.084423, 32.248459, 43.064037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.186787, 32.463020, 43.031082>,  <38.357391, 32.820621, 42.976154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186787, 32.463020, 43.031082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204419, 0.052617, 0.977468,
		-0.881081, 0.444969, 0.160309,
		-0.426508, -0.893999, 0.137319,
		38.058834, 32.194820, 43.072277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027973, 32.736057, 43.617580>,  <38.357391, 32.820621, 42.976154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027973, 32.736057, 43.617580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132229, 32.363270, 43.516781>,  <38.194782, 32.139599, 43.456303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132229, 32.363270, 43.516781>,  <38.027973, 32.736057, 43.617580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132229, 32.363270, 43.516781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300907, -0.169599, 0.938451,
		-0.917345, -0.320426, 0.236231,
		0.260640, -0.931967, -0.251999,
		38.210423, 32.083679, 43.441181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856342, 32.390404, 44.293911>,  <38.027973, 32.736057, 43.617580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.856342, 32.390404, 44.293911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.109310, 32.160889, 44.085754>,  <38.261093, 32.023182, 43.960861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.109310, 32.160889, 44.085754>,  <37.856342, 32.390404, 44.293911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109310, 32.160889, 44.085754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365543, -0.371237, 0.853558,
		-0.682950, -0.730036, -0.025035,
		0.632423, -0.573786, -0.520396,
		38.299038, 31.988752, 43.929634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854832, 31.799307, 44.587303>,  <37.856342, 32.390404, 44.293911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854832, 31.799307, 44.587303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.200066, 31.741117, 44.393841>,  <38.407207, 31.706203, 44.277763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.200066, 31.741117, 44.393841>,  <37.854832, 31.799307, 44.587303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.200066, 31.741117, 44.393841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409262, -0.359702, 0.838522,
		-0.295955, -0.921657, -0.250916,
		0.863084, -0.145474, -0.483655,
		38.458992, 31.697475, 44.248745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008240, 31.098072, 44.714108>,  <37.854832, 31.799307, 44.587303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008240, 31.098072, 44.714108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.347584, 31.286724, 44.617897>,  <38.551189, 31.399916, 44.560173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.347584, 31.286724, 44.617897>,  <38.008240, 31.098072, 44.714108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347584, 31.286724, 44.617897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468203, -0.456295, 0.756691,
		0.247132, -0.754558, -0.607921,
		0.848358, 0.471633, -0.240521,
		38.602093, 31.428213, 44.545742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475540, 30.624189, 44.782543>,  <38.008240, 31.098072, 44.714108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.475540, 30.624189, 44.782543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.680191, 30.967630, 44.795425>,  <38.802982, 31.173695, 44.803154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.680191, 30.967630, 44.795425>,  <38.475540, 30.624189, 44.782543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680191, 30.967630, 44.795425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507410, -0.332179, 0.795105,
		0.693376, -0.390460, -0.605616,
		0.511629, 0.858603, 0.032202,
		38.833679, 31.225212, 44.805084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207443, 30.540010, 44.862671>,  <38.475540, 30.624189, 44.782543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207443, 30.540010, 44.862671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164303, 30.915716, 44.992992>,  <39.138416, 31.141140, 45.071186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164303, 30.915716, 44.992992>,  <39.207443, 30.540010, 44.862671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164303, 30.915716, 44.992992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592124, -0.202557, 0.779974,
		0.798597, 0.277038, -0.534316,
		-0.107853, 0.939266, 0.325803,
		39.131947, 31.197496, 45.090733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.812321, 30.854397, 44.991032>,  <39.207443, 30.540010, 44.862671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.812321, 30.854397, 44.991032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.545395, 31.046925, 45.218369>,  <39.385239, 31.162441, 45.354771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.545395, 31.046925, 45.218369>,  <39.812321, 30.854397, 44.991032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545395, 31.046925, 45.218369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454736, -0.341039, 0.822744,
		0.589832, 0.807479, 0.008707,
		-0.667318, 0.481321, 0.568346,
		39.345200, 31.191320, 45.388874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209026, 30.912590, 45.598183>,  <39.812321, 30.854397, 44.991032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209026, 30.912590, 45.598183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.880024, 31.098560, 45.729229>,  <39.682625, 31.210142, 45.807858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.880024, 31.098560, 45.729229>,  <40.209026, 30.912590, 45.598183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880024, 31.098560, 45.729229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398835, 0.060802, 0.915005,
		0.405489, 0.883259, -0.235438,
		-0.822502, 0.464926, 0.327621,
		39.633274, 31.238037, 45.827515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422287, 31.513500, 45.899338>,  <40.209026, 30.912590, 45.598183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.422287, 31.513500, 45.899338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.079769, 31.382290, 46.058922>,  <39.874260, 31.303564, 46.154671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.079769, 31.382290, 46.058922>,  <40.422287, 31.513500, 45.899338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.079769, 31.382290, 46.058922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450829, -0.097764, 0.887241,
		-0.252034, 0.939597, 0.231597,
		-0.856290, -0.328025, 0.398957,
		39.822884, 31.283882, 46.178608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.248310, 32.057915, 46.340443>,  <40.422287, 31.513500, 45.899338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.248310, 32.057915, 46.340443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.080631, 31.721336, 46.476818>,  <39.980022, 31.519388, 46.558643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.080631, 31.721336, 46.476818>,  <40.248310, 32.057915, 46.340443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.080631, 31.721336, 46.476818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391762, 0.171118, 0.904014,
		-0.819022, 0.512525, 0.257915,
		-0.419196, -0.841449, 0.340937,
		39.954872, 31.468901, 46.579098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180782, 32.190186, 47.024029>,  <40.248310, 32.057915, 46.340443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180782, 32.190186, 47.024029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.134640, 31.792898, 47.029716>,  <40.106956, 31.554525, 47.033131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.134640, 31.792898, 47.029716>,  <40.180782, 32.190186, 47.024029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.134640, 31.792898, 47.029716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509894, -0.046918, 0.858957,
		-0.852468, 0.106334, 0.511851,
		-0.115352, -0.993223, 0.014223,
		40.100033, 31.494932, 47.033985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205765, 32.105453, 47.795357>,  <40.180782, 32.190186, 47.024029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.205765, 32.105453, 47.795357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.224884, 31.734161, 47.647793>,  <40.236355, 31.511385, 47.559254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.224884, 31.734161, 47.647793>,  <40.205765, 32.105453, 47.795357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.224884, 31.734161, 47.647793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574386, -0.276617, 0.770431,
		-0.817187, -0.248726, 0.519942,
		0.047802, -0.928234, -0.368913,
		40.239223, 31.455690, 47.537117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988647, 31.610479, 48.343342>,  <40.205765, 32.105453, 47.795357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.988647, 31.610479, 48.343342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.225132, 31.421112, 48.082165>,  <40.367023, 31.307491, 47.925457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.225132, 31.421112, 48.082165>,  <39.988647, 31.610479, 48.343342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.225132, 31.421112, 48.082165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597890, -0.286081, 0.748789,
		-0.541287, -0.833085, 0.113918,
		0.591215, -0.473420, -0.652946,
		40.402496, 31.279085, 47.886280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.058979, 30.927061, 48.621964>,  <39.988647, 31.610479, 48.343342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.058979, 30.927061, 48.621964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.374332, 31.015774, 48.392437>,  <40.563545, 31.069002, 48.254723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.374332, 31.015774, 48.392437>,  <40.058979, 30.927061, 48.621964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.374332, 31.015774, 48.392437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598605, -0.061484, 0.798681,
		0.141854, -0.973155, -0.181234,
		0.788384, 0.221784, -0.573814,
		40.610847, 31.082310, 48.220291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.656509, 30.511974, 48.892357>,  <40.058979, 30.927061, 48.621964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.656509, 30.511974, 48.892357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.840778, 30.788496, 48.669689>,  <40.951340, 30.954409, 48.536091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.840778, 30.788496, 48.669689>,  <40.656509, 30.511974, 48.892357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.840778, 30.788496, 48.669689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780961, -0.017681, 0.624330,
		0.421761, -0.722345, -0.548029,
		0.460671, 0.691307, -0.556666,
		40.978981, 30.995888, 48.502689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.270813, 30.357882, 49.051502>,  <40.656509, 30.511974, 48.892357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.270813, 30.357882, 49.051502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.323532, 30.701218, 48.853157>,  <41.355164, 30.907219, 48.734150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.323532, 30.701218, 48.853157>,  <41.270813, 30.357882, 49.051502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.323532, 30.701218, 48.853157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772938, 0.224202, 0.593548,
		0.620640, -0.461500, -0.633895,
		0.131802, 0.858342, -0.495860,
		41.363071, 30.958719, 48.704399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.108685, 30.574911, 48.978508>,  <41.270813, 30.357882, 49.051502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.108685, 30.574911, 48.978508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.875935, 30.900211, 48.981049>,  <41.736282, 31.095392, 48.982571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.875935, 30.900211, 48.981049>,  <42.108685, 30.574911, 48.978508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.875935, 30.900211, 48.981049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487434, 0.342488, 0.803187,
		0.651019, 0.470451, -0.595693,
		-0.581878, 0.813251, 0.006347,
		41.701370, 31.144186, 48.982952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.636585, 31.179249, 49.049934>,  <42.108685, 30.574911, 48.978508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.636585, 31.179249, 49.049934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.287567, 31.352297, 49.140713>,  <42.078156, 31.456125, 49.195179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.287567, 31.352297, 49.140713>,  <42.636585, 31.179249, 49.049934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.287567, 31.352297, 49.140713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363937, 0.265720, 0.892716,
		0.325904, 0.861529, -0.389300,
		-0.872546, 0.432620, 0.226943,
		42.025803, 31.482082, 49.208797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.791885, 31.860693, 49.193970>,  <42.636585, 31.179249, 49.049934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.791885, 31.860693, 49.193970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.435452, 31.808983, 49.367985>,  <42.221592, 31.777958, 49.472393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.435452, 31.808983, 49.367985>,  <42.791885, 31.860693, 49.193970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.435452, 31.808983, 49.367985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353876, 0.402239, 0.844379,
		-0.284144, 0.906362, -0.312682,
		-0.891086, -0.129274, 0.435033,
		42.168125, 31.770201, 49.498493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.009129, 32.097610, 49.816017>,  <42.791885, 31.860693, 49.193970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.009129, 32.097610, 49.816017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.095592, 32.457958, 49.966595>,  <43.147472, 32.674168, 50.056942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.095592, 32.457958, 49.966595>,  <43.009129, 32.097610, 49.816017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.095592, 32.457958, 49.966595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512970, 0.432845, -0.741288,
		-0.830744, -0.032864, 0.555684,
		0.216163, 0.900869, 0.376441,
		43.160442, 32.728218, 50.079529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.403271, 32.538891, 49.962109>,  <43.009129, 32.097610, 49.816017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.403271, 32.538891, 49.962109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.711575, 32.785614, 49.898266>,  <42.896557, 32.933647, 49.859962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.711575, 32.785614, 49.898266>,  <42.403271, 32.538891, 49.962109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.711575, 32.785614, 49.898266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553958, 0.525038, -0.646116,
		-0.314730, 0.586416, 0.746365,
		0.770763, 0.616807, -0.159604,
		42.942802, 32.970657, 49.850384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.079300, 33.290287, 49.916313>,  <42.403271, 32.538891, 49.962109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.079300, 33.290287, 49.916313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.428703, 33.295963, 49.721672>,  <42.638344, 33.299370, 49.604885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.428703, 33.295963, 49.721672>,  <42.079300, 33.290287, 49.916313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.428703, 33.295963, 49.721672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422547, 0.518474, -0.743397,
		0.241743, 0.854975, 0.458887,
		0.873507, 0.014190, -0.486605,
		42.690754, 33.300220, 49.575691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.138119, 33.918949, 49.689930>,  <42.079300, 33.290287, 49.916313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.138119, 33.918949, 49.689930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.349232, 33.687153, 49.441528>,  <42.475899, 33.548077, 49.292488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.349232, 33.687153, 49.441528>,  <42.138119, 33.918949, 49.689930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.349232, 33.687153, 49.441528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321542, 0.540399, -0.777547,
		0.786167, 0.610053, 0.098884,
		0.527781, -0.579486, -0.621001,
		42.507565, 33.513306, 49.255226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.419361, 34.405800, 49.139706>,  <42.138119, 33.918949, 49.689930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.419361, 34.405800, 49.139706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.423882, 34.037560, 48.983570>,  <42.426594, 33.816616, 48.889889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.423882, 34.037560, 48.983570>,  <42.419361, 34.405800, 49.139706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.423882, 34.037560, 48.983570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357757, 0.360801, -0.861297,
		0.933746, 0.149377, -0.325276,
		0.011298, -0.920603, -0.390337,
		42.427273, 33.761379, 48.866470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.688759, 34.510952, 48.459381>,  <42.419361, 34.405800, 49.139706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.688759, 34.510952, 48.459381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.510536, 34.152851, 48.459145>,  <42.403603, 33.937992, 48.459003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.510536, 34.152851, 48.459145>,  <42.688759, 34.510952, 48.459381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.510536, 34.152851, 48.459145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274054, 0.137024, -0.951903,
		0.852275, -0.423966, -0.306400,
		-0.445558, -0.895253, -0.000593,
		42.376869, 33.884274, 48.458965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.856735, 34.241802, 47.816399>,  <42.688759, 34.510952, 48.459381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.856735, 34.241802, 47.816399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.536434, 34.029518, 47.927494>,  <42.344254, 33.902145, 47.994152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.536434, 34.029518, 47.927494>,  <42.856735, 34.241802, 47.816399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.536434, 34.029518, 47.927494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376885, 0.086010, -0.922258,
		0.465567, -0.843176, -0.268891,
		-0.800753, -0.530714, 0.277737,
		42.296207, 33.870304, 48.010815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.655884, 33.780731, 47.233749>,  <42.856735, 34.241802, 47.816399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.655884, 33.780731, 47.233749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.319946, 33.789551, 47.450699>,  <42.118382, 33.794842, 47.580868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.319946, 33.789551, 47.450699>,  <42.655884, 33.780731, 47.233749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.319946, 33.789551, 47.450699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524950, 0.221298, -0.821860,
		-0.138150, -0.974957, -0.174280,
		-0.839846, 0.022052, 0.542376,
		42.067993, 33.796165, 47.613411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.148369, 33.321400, 46.926636>,  <42.655884, 33.780731, 47.233749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.148369, 33.321400, 46.926636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.947403, 33.588970, 47.145771>,  <41.826824, 33.749512, 47.277252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.947403, 33.588970, 47.145771>,  <42.148369, 33.321400, 46.926636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.947403, 33.588970, 47.145771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551580, 0.239972, -0.798857,
		-0.665841, -0.703529, 0.248401,
		-0.502410, 0.668924, 0.547836,
		41.796680, 33.789646, 47.310123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.428028, 33.159679, 46.807915>,  <42.148369, 33.321400, 46.926636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.428028, 33.159679, 46.807915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.370022, 33.514069, 46.984104>,  <41.335217, 33.726704, 47.089817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.370022, 33.514069, 46.984104>,  <41.428028, 33.159679, 46.807915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.370022, 33.514069, 46.984104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566024, 0.290851, -0.771377,
		-0.811534, -0.361178, 0.459307,
		-0.145015, 0.885977, 0.440471,
		41.326519, 33.779861, 47.116245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.767410, 33.278069, 46.983204>,  <41.428028, 33.159679, 46.807915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.767410, 33.278069, 46.983204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.909527, 33.645969, 46.916485>,  <40.994797, 33.866711, 46.876453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.909527, 33.645969, 46.916485>,  <40.767410, 33.278069, 46.983204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.909527, 33.645969, 46.916485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692821, 0.139325, -0.707523,
		-0.627508, 0.366937, 0.686725,
		0.355294, 0.919753, -0.166794,
		41.016113, 33.921894, 46.866447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136944, 33.739094, 46.921009>,  <40.767410, 33.278069, 46.983204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.136944, 33.739094, 46.921009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.464970, 33.919147, 46.779663>,  <40.661785, 34.027180, 46.694855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.464970, 33.919147, 46.779663>,  <40.136944, 33.739094, 46.921009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.464970, 33.919147, 46.779663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521661, 0.334117, -0.785007,
		-0.235296, 0.828095, 0.508817,
		0.820065, 0.450139, -0.353369,
		40.710987, 34.054188, 46.673653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962429, 34.486694, 46.695305>,  <40.136944, 33.739094, 46.921009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.962429, 34.486694, 46.695305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.304920, 34.410351, 46.503284>,  <40.510414, 34.364544, 46.388073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.304920, 34.410351, 46.503284>,  <39.962429, 34.486694, 46.695305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.304920, 34.410351, 46.503284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406997, 0.323098, -0.854378,
		0.318169, 0.926920, 0.198966,
		0.856225, -0.190858, -0.480053,
		40.561787, 34.353092, 46.359268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.077934, 35.061424, 46.353008>,  <39.962429, 34.486694, 46.695305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.077934, 35.061424, 46.353008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.250637, 34.775814, 46.132557>,  <40.354259, 34.604446, 46.000286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.250637, 34.775814, 46.132557>,  <40.077934, 35.061424, 46.353008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.250637, 34.775814, 46.132557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375903, 0.412989, -0.829540,
		0.819928, 0.565332, -0.090094,
		0.431758, -0.714030, -0.551131,
		40.380165, 34.561604, 45.967216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983025, 35.317886, 45.718864>,  <40.077934, 35.061424, 46.353008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983025, 35.317886, 45.718864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.142788, 34.976078, 45.586040>,  <40.238647, 34.770992, 45.506348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.142788, 34.976078, 45.586040>,  <39.983025, 35.317886, 45.718864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.142788, 34.976078, 45.586040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336994, 0.199996, -0.920020,
		0.852589, 0.479364, -0.208089,
		0.399408, -0.854524, -0.332058,
		40.262611, 34.719719, 45.486423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026863, 35.497074, 45.073795>,  <39.983025, 35.317886, 45.718864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026863, 35.497074, 45.073795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.079739, 35.100670, 45.065598>,  <40.111462, 34.862827, 45.060680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.079739, 35.100670, 45.065598>,  <40.026863, 35.497074, 45.073795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.079739, 35.100670, 45.065598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083461, 0.009473, -0.996466,
		0.987705, 0.133429, -0.081458,
		0.132185, -0.991013, -0.020492,
		40.119392, 34.803368, 45.059448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541611, 35.315811, 44.588360>,  <40.026863, 35.497074, 45.073795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.541611, 35.315811, 44.588360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.290569, 35.005264, 44.611614>,  <40.139946, 34.818935, 44.625568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.290569, 35.005264, 44.611614>,  <40.541611, 35.315811, 44.588360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.290569, 35.005264, 44.611614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035770, -0.045845, -0.998308,
		0.777715, -0.628616, 0.001001,
		-0.627599, -0.776363, 0.058140,
		40.102291, 34.772354, 44.629055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708576, 34.733398, 43.979759>,  <40.541611, 35.315811, 44.588360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.708576, 34.733398, 43.979759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.328846, 34.699856, 44.100925>,  <40.101009, 34.679729, 44.173626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.328846, 34.699856, 44.100925>,  <40.708576, 34.733398, 43.979759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.328846, 34.699856, 44.100925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267861, -0.288363, -0.919292,
		0.164437, -0.953842, 0.251287,
		-0.949321, -0.083856, 0.302914,
		40.044048, 34.674698, 44.191799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.502583, 34.146610, 43.709885>,  <40.708576, 34.733398, 43.979759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.502583, 34.146610, 43.709885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.145203, 34.301094, 43.801617>,  <39.930775, 34.393784, 43.856655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.145203, 34.301094, 43.801617>,  <40.502583, 34.146610, 43.709885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.145203, 34.301094, 43.801617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325299, -0.204310, -0.923275,
		-0.309729, -0.899497, 0.308176,
		-0.893447, 0.386214, 0.229325,
		39.877167, 34.416958, 43.870415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968155, 33.689072, 43.603508>,  <40.502583, 34.146610, 43.709885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.968155, 33.689072, 43.603508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776829, 34.039703, 43.582260>,  <39.662033, 34.250084, 43.569511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776829, 34.039703, 43.582260>,  <39.968155, 33.689072, 43.603508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776829, 34.039703, 43.582260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520008, -0.331455, -0.787229,
		-0.707678, -0.348918, 0.614368,
		-0.478314, 0.876581, -0.053123,
		39.633335, 34.302677, 43.566322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251015, 33.613758, 43.483562>,  <39.968155, 33.689072, 43.603508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251015, 33.613758, 43.483562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.313862, 33.990452, 43.364605>,  <39.351570, 34.216469, 43.293228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.313862, 33.990452, 43.364605>,  <39.251015, 33.613758, 43.483562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.313862, 33.990452, 43.364605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528920, -0.174064, -0.830630,
		-0.834000, 0.287809, 0.470755,
		0.157121, 0.941737, -0.297397,
		39.361000, 34.272972, 43.275387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671764, 33.651608, 43.132618>,  <39.251015, 33.613758, 43.483562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671764, 33.651608, 43.132618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891815, 33.968227, 43.026184>,  <39.023846, 34.158199, 42.962322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891815, 33.968227, 43.026184>,  <38.671764, 33.651608, 43.132618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891815, 33.968227, 43.026184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431366, -0.003474, -0.902170,
		-0.715041, 0.611089, 0.339538,
		0.550127, 0.791554, -0.266087,
		39.056854, 34.205692, 42.946358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299282, 33.922375, 42.671169>,  <38.671764, 33.651608, 43.132618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299282, 33.922375, 42.671169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.657112, 34.090328, 42.609928>,  <38.871811, 34.191101, 42.573185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.657112, 34.090328, 42.609928>,  <38.299282, 33.922375, 42.671169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657112, 34.090328, 42.609928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184202, 0.034281, -0.982290,
		-0.407196, 0.906932, 0.108010,
		0.894573, 0.419881, -0.153099,
		38.925484, 34.216293, 42.563999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175705, 34.541302, 42.256798>,  <38.299282, 33.922375, 42.671169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175705, 34.541302, 42.256798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.553932, 34.424282, 42.199791>,  <38.780869, 34.354073, 42.165588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.553932, 34.424282, 42.199791>,  <38.175705, 34.541302, 42.256798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.553932, 34.424282, 42.199791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169582, -0.069214, -0.983083,
		0.277734, 0.953743, -0.115057,
		0.945572, -0.292547, -0.142514,
		38.837605, 34.336517, 42.157036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.558517, 34.975166, 41.737148>,  <38.175705, 34.541302, 42.256798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.558517, 34.975166, 41.737148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807720, 34.662312, 41.741570>,  <38.957241, 34.474598, 41.744225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807720, 34.662312, 41.741570>,  <38.558517, 34.975166, 41.737148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807720, 34.662312, 41.741570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064609, 0.037366, -0.997211,
		0.779542, 0.621985, 0.073812,
		0.623008, -0.782137, 0.011058,
		38.994621, 34.427670, 41.744888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170986, 35.123825, 41.299595>,  <38.558517, 34.975166, 41.737148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170986, 35.123825, 41.299595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.106888, 34.729019, 41.304142>,  <39.068428, 34.492138, 41.306870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.106888, 34.729019, 41.304142>,  <39.170986, 35.123825, 41.299595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106888, 34.729019, 41.304142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138518, -0.033892, -0.989780,
		0.977309, -0.157036, 0.142150,
		-0.160249, -0.987011, 0.011371,
		39.058811, 34.432915, 41.307552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.686718, 34.782356, 40.853333>,  <39.170986, 35.123825, 41.299595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.686718, 34.782356, 40.853333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.402454, 34.502426, 40.882214>,  <39.231895, 34.334469, 40.899544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.402454, 34.502426, 40.882214>,  <39.686718, 34.782356, 40.853333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402454, 34.502426, 40.882214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121928, -0.223588, -0.967028,
		0.692890, -0.678424, 0.244222,
		-0.710660, -0.699821, 0.072203,
		39.189255, 34.292480, 40.903873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958984, 34.142666, 40.513142>,  <39.686718, 34.782356, 40.853333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958984, 34.142666, 40.513142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.561451, 34.099384, 40.503418>,  <39.322933, 34.073414, 40.497585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.561451, 34.099384, 40.503418>,  <39.958984, 34.142666, 40.513142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561451, 34.099384, 40.503418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042088, -0.165180, -0.985365,
		0.102605, -0.980310, 0.168715,
		-0.993832, -0.108205, -0.024310,
		39.263302, 34.066925, 40.496124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901531, 33.649677, 39.940681>,  <39.958984, 34.142666, 40.513142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.901531, 33.649677, 39.940681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521042, 33.768051, 39.975548>,  <39.292747, 33.839077, 39.996468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521042, 33.768051, 39.975548>,  <39.901531, 33.649677, 39.940681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521042, 33.768051, 39.975548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139229, -0.159681, -0.977301,
		-0.275304, -0.941765, 0.193095,
		-0.951222, 0.295939, 0.087161,
		39.235676, 33.856831, 40.001698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443840, 33.223248, 39.421673>,  <39.901531, 33.649677, 39.940681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443840, 33.223248, 39.421673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.236507, 33.557228, 39.495628>,  <39.112106, 33.757618, 39.540001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.236507, 33.557228, 39.495628>,  <39.443840, 33.223248, 39.421673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236507, 33.557228, 39.495628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313003, 0.015973, -0.949618,
		-0.795842, -0.550086, 0.253063,
		-0.518330, 0.834955, 0.184891,
		39.081009, 33.807716, 39.551094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789494, 33.072433, 39.047234>,  <39.443840, 33.223248, 39.421673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789494, 33.072433, 39.047234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.820389, 33.469147, 39.088017>,  <38.838928, 33.707176, 39.112488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.820389, 33.469147, 39.088017>,  <38.789494, 33.072433, 39.047234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820389, 33.469147, 39.088017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405860, 0.124686, -0.905390,
		-0.910665, 0.028554, 0.412157,
		0.077243, 0.991785, 0.101958,
		38.843563, 33.766682, 39.118603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166195, 33.378685, 38.742352>,  <38.789494, 33.072433, 39.047234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166195, 33.378685, 38.742352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.462139, 33.647781, 38.740288>,  <38.639706, 33.809238, 38.739048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.462139, 33.647781, 38.740288>,  <38.166195, 33.378685, 38.742352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462139, 33.647781, 38.740288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177787, 0.188119, -0.965921,
		-0.648841, 0.715566, 0.258786,
		0.739863, 0.672738, -0.005159,
		38.684097, 33.849602, 38.738739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788174, 33.911259, 38.255486>,  <38.166195, 33.378685, 38.742352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788174, 33.911259, 38.255486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.162876, 34.050877, 38.245289>,  <38.387699, 34.134647, 38.239170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.162876, 34.050877, 38.245289>,  <37.788174, 33.911259, 38.255486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162876, 34.050877, 38.245289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161897, 0.367613, -0.915778,
		-0.310274, 0.861992, 0.400874,
		0.936760, 0.349043, -0.025493,
		38.443905, 34.155590, 38.237640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751511, 34.495701, 37.866215>,  <37.788174, 33.911259, 38.255486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.751511, 34.495701, 37.866215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142052, 34.409294, 37.862701>,  <38.376377, 34.357449, 37.860592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142052, 34.409294, 37.862701>,  <37.751511, 34.495701, 37.866215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142052, 34.409294, 37.862701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074966, 0.376373, -0.923430,
		0.202786, 0.900932, 0.383665,
		0.976349, -0.216020, -0.008784,
		38.434956, 34.344486, 37.860065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132286, 35.078098, 37.558887>,  <37.751511, 34.495701, 37.866215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132286, 35.078098, 37.558887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.385269, 34.770000, 37.526096>,  <38.537060, 34.585140, 37.506424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.385269, 34.770000, 37.526096>,  <38.132286, 35.078098, 37.558887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385269, 34.770000, 37.526096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286637, 0.331045, -0.899026,
		0.719607, 0.545100, 0.430153,
		0.632459, -0.770244, -0.081976,
		38.575008, 34.538929, 37.501503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759163, 35.369228, 37.586136>,  <38.132286, 35.078098, 37.558887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759163, 35.369228, 37.586136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793324, 35.030006, 37.376945>,  <38.813820, 34.826473, 37.251431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793324, 35.030006, 37.376945>,  <38.759163, 35.369228, 37.586136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793324, 35.030006, 37.376945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323083, 0.520103, -0.790639,
		0.942509, -0.101441, 0.318411,
		0.085403, -0.848058, -0.522976,
		38.818943, 34.775589, 37.220055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527142, 35.332584, 37.307068>,  <38.759163, 35.369228, 37.586136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527142, 35.332584, 37.307068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.265247, 35.128807, 37.083714>,  <39.108112, 35.006542, 36.949699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.265247, 35.128807, 37.083714>,  <39.527142, 35.332584, 37.307068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265247, 35.128807, 37.083714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295673, 0.507255, -0.809487,
		0.695632, -0.695096, -0.181487,
		-0.654732, -0.509444, -0.558384,
		39.068829, 34.975975, 36.916199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710289, 35.425526, 36.641457>,  <39.527142, 35.332584, 37.307068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710289, 35.425526, 36.641457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.363262, 35.250328, 36.547237>,  <39.155045, 35.145210, 36.490704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.363262, 35.250328, 36.547237>,  <39.710289, 35.425526, 36.641457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363262, 35.250328, 36.547237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046281, 0.400485, -0.915134,
		0.495156, -0.804844, -0.327179,
		-0.867570, -0.437992, -0.235552,
		39.102989, 35.118931, 36.476574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.830299, 35.166935, 36.020477>,  <39.710289, 35.425526, 36.641457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.830299, 35.166935, 36.020477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431213, 35.158073, 36.045986>,  <39.191761, 35.152756, 36.061291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431213, 35.158073, 36.045986>,  <39.830299, 35.166935, 36.020477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431213, 35.158073, 36.045986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066671, 0.175024, -0.982304,
		0.010602, -0.984315, -0.176102,
		-0.997719, -0.022156, 0.063770,
		39.131897, 35.151428, 36.065117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.662571, 34.968719, 35.414093>,  <39.830299, 35.166935, 36.020477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.662571, 34.968719, 35.414093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.315933, 35.135178, 35.524250>,  <39.107952, 35.235050, 35.590343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.315933, 35.135178, 35.524250>,  <39.662571, 34.968719, 35.414093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315933, 35.135178, 35.524250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157867, 0.294906, -0.942395,
		-0.473386, -0.860148, -0.189868,
		-0.866593, 0.416143, 0.275393,
		39.055954, 35.260021, 35.606869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155373, 34.702202, 34.911880>,  <39.662571, 34.968719, 35.414093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155373, 34.702202, 34.911880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036045, 35.036316, 35.096619>,  <38.964447, 35.236786, 35.207462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036045, 35.036316, 35.096619>,  <39.155373, 34.702202, 34.911880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036045, 35.036316, 35.096619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267492, 0.391325, -0.880518,
		-0.916217, -0.386217, 0.106692,
		-0.298319, 0.835285, 0.461848,
		38.946548, 35.286903, 35.235172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347996, 34.000694, 34.695580>,  <39.155373, 34.702202, 34.911880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347996, 34.000694, 34.695580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.213688, 33.853966, 35.042614>,  <39.133102, 33.765930, 35.250835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.213688, 33.853966, 35.042614>,  <39.347996, 34.000694, 34.695580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213688, 33.853966, 35.042614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503013, -0.708900, -0.494407,
		0.796388, -0.602414, 0.053513,
		-0.335773, -0.366822, 0.867582,
		39.112957, 33.743919, 35.302887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.056068, 34.052238, 34.338291>,  <39.347996, 34.000694, 34.695580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.056068, 34.052238, 34.338291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.025043, 33.737873, 34.583675>,  <40.006428, 33.549255, 34.730904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.025043, 33.737873, 34.583675>,  <40.056068, 34.052238, 34.338291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025043, 33.737873, 34.583675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979671, -0.174259, -0.099386,
		0.185009, 0.593278, 0.783449,
		-0.077560, -0.785910, 0.613457,
		40.001774, 33.502102, 34.767712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.450745, 34.066936, 34.911190>,  <40.056068, 34.052238, 34.338291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.450745, 34.066936, 34.911190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.410900, 33.669468, 34.890453>,  <40.386993, 33.430984, 34.878010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.410900, 33.669468, 34.890453>,  <40.450745, 34.066936, 34.911190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.410900, 33.669468, 34.890453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975967, -0.107716, 0.189437,
		-0.193824, -0.031730, 0.980523,
		-0.099607, -0.993675, -0.051845,
		40.381020, 33.371365, 34.874901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.521511, 33.636703, 35.554268>,  <40.450745, 34.066936, 34.911190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.521511, 33.636703, 35.554268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.653614, 33.470554, 35.215237>,  <40.732876, 33.370865, 35.011818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.653614, 33.470554, 35.215237>,  <40.521511, 33.636703, 35.554268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.653614, 33.470554, 35.215237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917427, -0.069888, 0.391719,
		-0.221946, -0.906962, 0.357994,
		0.330255, -0.415374, -0.847583,
		40.752689, 33.345943, 34.960960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.893349, 33.072128, 35.697285>,  <40.521511, 33.636703, 35.554268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.893349, 33.072128, 35.697285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.028816, 33.194305, 35.341305>,  <41.110096, 33.267612, 35.127716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.028816, 33.194305, 35.341305>,  <40.893349, 33.072128, 35.697285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.028816, 33.194305, 35.341305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918594, 0.097416, 0.383007,
		0.203681, -0.947215, -0.247585,
		0.338672, 0.305441, -0.889948,
		41.130417, 33.285938, 35.074322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.531948, 32.741013, 35.412079>,  <40.893349, 33.072128, 35.697285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.531948, 32.741013, 35.412079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.581860, 33.102409, 35.248058>,  <41.611805, 33.319248, 35.149647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.581860, 33.102409, 35.248058>,  <41.531948, 32.741013, 35.412079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.581860, 33.102409, 35.248058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949375, 0.011369, 0.313940,
		0.288303, -0.428461, -0.856331,
		0.124776, 0.903489, -0.410048,
		41.619293, 33.373455, 35.125046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.127697, 32.701912, 35.134399>,  <41.531948, 32.741013, 35.412079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.127697, 32.701912, 35.134399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.055717, 33.075848, 35.256836>,  <42.012531, 33.300209, 35.330299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.055717, 33.075848, 35.256836>,  <42.127697, 32.701912, 35.134399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.055717, 33.075848, 35.256836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713184, -0.090328, 0.695132,
		0.677486, 0.343388, -0.650459,
		-0.179945, 0.934840, 0.306095,
		42.001736, 33.356300, 35.348663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.798271, 32.966866, 35.475922>,  <42.127697, 32.701912, 35.134399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.798271, 32.966866, 35.475922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.186050, 33.061146, 35.503090>,  <43.418716, 33.117714, 35.519390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.186050, 33.061146, 35.503090>,  <42.798271, 32.966866, 35.475922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.186050, 33.061146, 35.503090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087908, -0.592336, 0.800881,
		0.228999, -0.770443, -0.594960,
		0.969449, 0.235702, 0.067916,
		43.476887, 33.131855, 35.523464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.238243, 32.325909, 35.503292>,  <42.798271, 32.966866, 35.475922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.238243, 32.325909, 35.503292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.465725, 32.609497, 35.670116>,  <43.602215, 32.779652, 35.770210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.465725, 32.609497, 35.670116>,  <43.238243, 32.325909, 35.503292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.465725, 32.609497, 35.670116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208140, -0.614569, 0.760909,
		0.795774, -0.345924, -0.497072,
		0.568702, 0.708972, 0.417058,
		43.636337, 32.822189, 35.795235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.787476, 31.975792, 35.642757>,  <43.238243, 32.325909, 35.503292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.787476, 31.975792, 35.642757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.779850, 32.299110, 35.878143>,  <43.775272, 32.493103, 36.019375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.779850, 32.299110, 35.878143>,  <43.787476, 31.975792, 35.642757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.779850, 32.299110, 35.878143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117044, -0.582722, 0.804199,
		0.992944, 0.084211, -0.083495,
		-0.019068, 0.808296, 0.588467,
		43.774128, 32.541599, 36.054684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.289120, 31.860573, 36.219460>,  <43.787476, 31.975792, 35.642757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.289120, 31.860573, 36.219460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.054668, 32.156082, 36.352524>,  <43.913998, 32.333389, 36.432362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.054668, 32.156082, 36.352524>,  <44.289120, 31.860573, 36.219460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.054668, 32.156082, 36.352524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065640, -0.365938, 0.928322,
		0.807553, 0.565954, 0.165994,
		-0.586131, 0.738773, 0.332664,
		43.878830, 32.377712, 36.452324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.531544, 31.930239, 36.923809>,  <44.289120, 31.860573, 36.219460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.531544, 31.930239, 36.923809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.169399, 32.098820, 36.903057>,  <43.952110, 32.199966, 36.890606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.169399, 32.098820, 36.903057>,  <44.531544, 31.930239, 36.923809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.169399, 32.098820, 36.903057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191874, -0.297036, 0.935390,
		0.378811, 0.856824, 0.349792,
		-0.905365, 0.421452, -0.051882,
		43.897789, 32.225254, 36.887493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.478050, 32.327442, 37.485653>,  <44.531544, 31.930239, 36.923809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.478050, 32.327442, 37.485653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.089619, 32.304886, 37.392849>,  <43.856560, 32.291351, 37.337166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.089619, 32.304886, 37.392849>,  <44.478050, 32.327442, 37.485653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.089619, 32.304886, 37.392849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199948, -0.339041, 0.919278,
		-0.130502, 0.939080, 0.317959,
		-0.971077, -0.056392, -0.232013,
		43.798294, 32.287968, 37.323246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.151463, 32.474804, 38.061115>,  <44.478050, 32.327442, 37.485653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.151463, 32.474804, 38.061115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.857281, 32.285496, 37.867157>,  <43.680771, 32.171909, 37.750782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.857281, 32.285496, 37.867157>,  <44.151463, 32.474804, 38.061115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.857281, 32.285496, 37.867157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168857, -0.565032, 0.807605,
		-0.656198, 0.675833, 0.335639,
		-0.735453, -0.473275, -0.484892,
		43.636646, 32.143513, 37.721691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.453274, 32.564049, 38.496483>,  <44.151463, 32.474804, 38.061115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.453274, 32.564049, 38.496483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.443947, 32.247955, 38.251537>,  <43.438351, 32.058300, 38.104572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.443947, 32.247955, 38.251537>,  <43.453274, 32.564049, 38.496483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.443947, 32.247955, 38.251537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368524, -0.562596, 0.740051,
		-0.929326, 0.242926, -0.278102,
		-0.023318, -0.790236, -0.612359,
		43.436951, 32.010883, 38.067829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.781132, 32.302399, 38.435917>,  <43.453274, 32.564049, 38.496483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.781132, 32.302399, 38.435917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.019638, 31.993048, 38.349792>,  <43.162743, 31.807438, 38.298119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.019638, 31.993048, 38.349792>,  <42.781132, 32.302399, 38.435917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.019638, 31.993048, 38.349792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336383, -0.484216, 0.807701,
		-0.728914, -0.409176, -0.548871,
		0.596264, -0.773375, -0.215313,
		43.198517, 31.761036, 38.285198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.332222, 31.810995, 38.578548>,  <42.781132, 32.302399, 38.435917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.332222, 31.810995, 38.578548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.688869, 31.632200, 38.549660>,  <42.902859, 31.524923, 38.532326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.688869, 31.632200, 38.549660>,  <42.332222, 31.810995, 38.578548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.688869, 31.632200, 38.549660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248457, -0.616341, 0.747257,
		-0.378525, -0.648326, -0.660600,
		0.891621, -0.446986, -0.072220,
		42.956356, 31.498104, 38.527992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.243977, 31.130709, 38.552082>,  <42.332222, 31.810995, 38.578548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.243977, 31.130709, 38.552082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.603863, 31.213493, 38.705795>,  <42.819794, 31.263165, 38.798023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.603863, 31.213493, 38.705795>,  <42.243977, 31.130709, 38.552082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.603863, 31.213493, 38.705795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309222, -0.319112, 0.895851,
		0.308037, -0.924842, -0.223114,
		0.899719, 0.206964, 0.384279,
		42.873779, 31.275581, 38.821079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.316738, 30.785198, 39.094673>,  <42.243977, 31.130709, 38.552082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.316738, 30.785198, 39.094673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.655586, 30.968756, 39.201851>,  <42.858894, 31.078890, 39.266159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.655586, 30.968756, 39.201851>,  <42.316738, 30.785198, 39.094673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.655586, 30.968756, 39.201851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274381, -0.054083, 0.960099,
		0.455077, -0.886842, 0.080098,
		0.847125, 0.458896, 0.267945,
		42.909725, 31.106424, 39.282234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.610245, 30.341309, 39.568703>,  <42.316738, 30.785198, 39.094673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.610245, 30.341309, 39.568703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.798897, 30.691217, 39.613125>,  <42.912090, 30.901163, 39.639778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.798897, 30.691217, 39.613125>,  <42.610245, 30.341309, 39.568703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.798897, 30.691217, 39.613125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073872, -0.086308, 0.993526,
		0.878695, -0.476784, 0.023916,
		0.471633, 0.874773, 0.111059,
		42.940388, 30.953650, 39.646442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.076302, 30.212526, 40.165417>,  <42.610245, 30.341309, 39.568703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.076302, 30.212526, 40.165417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.051102, 30.610420, 40.133087>,  <43.035984, 30.849157, 40.113689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.051102, 30.610420, 40.133087>,  <43.076302, 30.212526, 40.165417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.051102, 30.610420, 40.133087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069192, 0.076441, 0.994670,
		0.995612, 0.068252, 0.064012,
		-0.062995, 0.994735, -0.080828,
		43.032204, 30.908840, 40.108837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.556458, 30.468473, 40.616146>,  <43.076302, 30.212526, 40.165417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.556458, 30.468473, 40.616146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.298904, 30.772015, 40.577045>,  <43.144371, 30.954140, 40.553585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.298904, 30.772015, 40.577045>,  <43.556458, 30.468473, 40.616146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.298904, 30.772015, 40.577045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025438, 0.148921, 0.988522,
		0.764702, 0.634005, -0.115191,
		-0.643882, 0.758855, -0.097753,
		43.105740, 30.999672, 40.547718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.889145, 31.147188, 40.675617>,  <43.556458, 30.468473, 40.616146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.889145, 31.147188, 40.675617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.505325, 31.150951, 40.788174>,  <43.275032, 31.153210, 40.855705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.505325, 31.150951, 40.788174>,  <43.889145, 31.147188, 40.675617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.505325, 31.150951, 40.788174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278441, 0.179698, 0.943493,
		-0.041687, 0.983677, -0.175048,
		-0.959548, 0.009409, 0.281387,
		43.217461, 31.153774, 40.872589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.964230, 31.417101, 41.268112>,  <43.889145, 31.147188, 40.675617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.964230, 31.417101, 41.268112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.572720, 31.335135, 41.268772>,  <43.337814, 31.285955, 41.269169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.572720, 31.335135, 41.268772>,  <43.964230, 31.417101, 41.268112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.572720, 31.335135, 41.268772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016853, 0.088530, 0.995931,
		-0.204229, 0.974768, -0.090104,
		-0.978778, -0.204917, 0.001653,
		43.279087, 31.273659, 41.269268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.630844, 31.896000, 41.704494>,  <43.964230, 31.417101, 41.268112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.630844, 31.896000, 41.704494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.332066, 31.631220, 41.679546>,  <43.152798, 31.472353, 41.664577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.332066, 31.631220, 41.679546>,  <43.630844, 31.896000, 41.704494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.332066, 31.631220, 41.679546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187175, 0.119335, 0.975051,
		-0.637991, 0.739989, -0.213037,
		-0.746950, -0.661949, -0.062372,
		43.107979, 31.432634, 41.660835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.931168, 32.184052, 42.001263>,  <43.630844, 31.896000, 41.704494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.931168, 32.184052, 42.001263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.898781, 31.786644, 42.033157>,  <42.879349, 31.548199, 42.052296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.898781, 31.786644, 42.033157>,  <42.931168, 32.184052, 42.001263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.898781, 31.786644, 42.033157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205560, 0.094926, 0.974030,
		-0.975290, 0.062473, -0.211914,
		-0.080966, -0.993522, 0.079739,
		42.874493, 31.488586, 42.057079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.360954, 32.091244, 42.363083>,  <42.931168, 32.184052, 42.001263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.360954, 32.091244, 42.363083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.548504, 31.742573, 42.420113>,  <42.661034, 31.533369, 42.454330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.548504, 31.742573, 42.420113>,  <42.360954, 32.091244, 42.363083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.548504, 31.742573, 42.420113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122370, 0.095757, 0.987854,
		-0.874747, -0.480627, -0.061770,
		0.468875, -0.871681, 0.142578,
		42.689167, 31.481068, 42.462887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.920376, 31.760662, 42.798386>,  <42.360954, 32.091244, 42.363083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.920376, 31.760662, 42.798386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.281906, 31.593855, 42.836761>,  <42.498825, 31.493771, 42.859787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.281906, 31.593855, 42.836761>,  <41.920376, 31.760662, 42.798386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.281906, 31.593855, 42.836761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019207, 0.263510, 0.964465,
		-0.427480, -0.869861, 0.246175,
		0.903821, -0.417018, 0.095938,
		42.553051, 31.468750, 42.865543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.950886, 31.173225, 43.238472>,  <41.920376, 31.760662, 42.798386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.950886, 31.173225, 43.238472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.305782, 31.357491, 43.248161>,  <42.518723, 31.468050, 43.253975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.305782, 31.357491, 43.248161>,  <41.950886, 31.173225, 43.238472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.305782, 31.357491, 43.248161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022194, -0.009830, 0.999705,
		0.460764, -0.887521, 0.001502,
		0.887245, 0.460662, 0.024227,
		42.571957, 31.495689, 43.255428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.845150, 31.337473, 43.981865>,  <41.950886, 31.173225, 43.238472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.845150, 31.337473, 43.981865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.575668, 31.362364, 43.687313>,  <41.413979, 31.377298, 43.510582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.575668, 31.362364, 43.687313>,  <41.845150, 31.337473, 43.981865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.575668, 31.362364, 43.687313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489550, -0.708870, -0.507783,
		-0.553594, -0.702589, 0.447105,
		-0.673702, 0.062225, -0.736379,
		41.373558, 31.381031, 43.466400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.806351, 31.981249, 44.317337>,  <41.845150, 31.337473, 43.981865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.806351, 31.981249, 44.317337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.568699, 32.232513, 44.518307>,  <41.426109, 32.383270, 44.638889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.568699, 32.232513, 44.518307>,  <41.806351, 31.981249, 44.317337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.568699, 32.232513, 44.518307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566850, 0.770128, -0.292547,
		-0.570696, 0.110988, -0.813626,
		-0.594127, 0.628159, 0.502423,
		41.390461, 32.420959, 44.669033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.491776, 32.557648, 43.843594>,  <41.806351, 31.981249, 44.317337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.491776, 32.557648, 43.843594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.567169, 32.653374, 44.224583>,  <41.612404, 32.710808, 44.453175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.567169, 32.653374, 44.224583>,  <41.491776, 32.557648, 43.843594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.567169, 32.653374, 44.224583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728402, 0.616451, -0.299028,
		-0.658714, 0.750145, -0.058125,
		0.188484, 0.239312, 0.952472,
		41.623714, 32.725166, 44.510323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.375244, 33.256786, 44.003220>,  <41.491776, 32.557648, 43.843594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.375244, 33.256786, 44.003220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.654087, 33.097351, 44.241604>,  <41.821392, 33.001690, 44.384632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.654087, 33.097351, 44.241604>,  <41.375244, 33.256786, 44.003220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.654087, 33.097351, 44.241604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696264, 0.574669, -0.430083,
		-0.171052, 0.714758, 0.678131,
		0.697106, -0.398592, 0.595959,
		41.863220, 32.977772, 44.420391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.630878, 33.787834, 44.488674>,  <41.375244, 33.256786, 44.003220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.630878, 33.787834, 44.488674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.910889, 33.520668, 44.387596>,  <42.078896, 33.360371, 44.326950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.910889, 33.520668, 44.387596>,  <41.630878, 33.787834, 44.488674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.910889, 33.520668, 44.387596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545943, 0.728651, -0.413539,
		0.460336, 0.151529, 0.874717,
		0.700027, -0.667912, -0.252698,
		42.120895, 33.320293, 44.311787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.189251, 34.004036, 44.813175>,  <41.630878, 33.787834, 44.488674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.189251, 34.004036, 44.813175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.231915, 33.785847, 44.480648>,  <42.257511, 33.654934, 44.281132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.231915, 33.785847, 44.480648>,  <42.189251, 34.004036, 44.813175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.231915, 33.785847, 44.480648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393298, 0.791041, -0.468583,
		0.913203, -0.276977, 0.298903,
		0.106658, -0.545470, -0.831316,
		42.263912, 33.622208, 44.231255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.595783, 34.202087, 44.214386>,  <42.189251, 34.004036, 44.813175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.595783, 34.202087, 44.214386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.715347, 33.845383, 44.350277>,  <42.787086, 33.631359, 44.431812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.715347, 33.845383, 44.350277>,  <42.595783, 34.202087, 44.214386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.715347, 33.845383, 44.350277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516285, -0.148279, -0.843482,
		0.802558, 0.427525, 0.416080,
		0.298913, -0.891760, 0.339728,
		42.805023, 33.577854, 44.452194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.309132, 34.170708, 44.119740>,  <42.595783, 34.202087, 44.214386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.309132, 34.170708, 44.119740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.176018, 33.793682, 44.131218>,  <43.096149, 33.567467, 44.138107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.176018, 33.793682, 44.131218>,  <43.309132, 34.170708, 44.119740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.176018, 33.793682, 44.131218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340134, -0.148364, -0.928599,
		0.879523, -0.299265, 0.369972,
		-0.332788, -0.942565, 0.028699,
		43.076180, 33.510914, 44.139828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.809658, 33.731174, 44.001652>,  <43.309132, 34.170708, 44.119740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.809658, 33.731174, 44.001652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.492619, 33.553234, 43.834850>,  <43.302395, 33.446468, 43.734768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.492619, 33.553234, 43.834850>,  <43.809658, 33.731174, 44.001652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.492619, 33.553234, 43.834850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359328, 0.211749, -0.908870,
		0.492611, -0.870213, -0.007986,
		-0.792602, -0.444850, -0.417002,
		43.254837, 33.419781, 43.709751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.986717, 33.222443, 43.351128>,  <43.809658, 33.731174, 44.001652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.986717, 33.222443, 43.351128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.608833, 33.352875, 43.337292>,  <43.382103, 33.431133, 43.328991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.608833, 33.352875, 43.337292>,  <43.986717, 33.222443, 43.351128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.608833, 33.352875, 43.337292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145905, 0.323525, -0.934903,
		-0.293663, -0.888258, -0.353213,
		-0.944709, 0.326082, -0.034594,
		43.325420, 33.450699, 43.326912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.635971, 32.993107, 42.628460>,  <43.986717, 33.222443, 43.351128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.635971, 32.993107, 42.628460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.408470, 33.291939, 42.766094>,  <43.271969, 33.471237, 42.848675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.408470, 33.291939, 42.766094>,  <43.635971, 32.993107, 42.628460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.408470, 33.291939, 42.766094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091433, 0.473170, -0.876214,
		-0.817408, -0.466892, -0.337426,
		-0.568757, 0.747076, 0.344084,
		43.237843, 33.516060, 42.869320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.080986, 33.036190, 42.157009>,  <43.635971, 32.993107, 42.628460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.080986, 33.036190, 42.157009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.114998, 33.396198, 42.327995>,  <43.135403, 33.612206, 42.430588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.114998, 33.396198, 42.327995>,  <43.080986, 33.036190, 42.157009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.114998, 33.396198, 42.327995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046136, 0.425003, -0.904015,
		-0.995310, 0.096586, -0.005387,
		0.085026, 0.900024, 0.427466,
		43.140507, 33.666206, 42.456234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.453506, 33.509716, 41.919533>,  <43.080986, 33.036190, 42.157009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.453506, 33.509716, 41.919533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.755951, 33.739727, 42.044525>,  <42.937416, 33.877735, 42.119518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.755951, 33.739727, 42.044525>,  <42.453506, 33.509716, 41.919533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.755951, 33.739727, 42.044525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004984, 0.472393, -0.881374,
		-0.654430, 0.667970, 0.354314,
		0.756106, 0.575031, 0.312477,
		42.982784, 33.912235, 42.138268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.271839, 34.224808, 41.698570>,  <42.453506, 33.509716, 41.919533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.271839, 34.224808, 41.698570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.663704, 34.263115, 41.769112>,  <42.898823, 34.286098, 41.811436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.663704, 34.263115, 41.769112>,  <42.271839, 34.224808, 41.698570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.663704, 34.263115, 41.769112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148082, 0.248117, -0.957345,
		-0.135435, 0.963985, 0.228889,
		0.979658, 0.095763, 0.176353,
		42.957600, 34.291843, 41.822018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.428505, 34.886875, 41.387455>,  <42.271839, 34.224808, 41.698570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.428505, 34.886875, 41.387455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.751945, 34.655556, 41.430775>,  <42.946011, 34.516762, 41.456768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.751945, 34.655556, 41.430775>,  <42.428505, 34.886875, 41.387455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.751945, 34.655556, 41.430775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310042, 0.262383, -0.913799,
		0.500036, 0.772477, 0.391462,
		0.808602, -0.578303, 0.108299,
		42.994526, 34.482063, 41.463264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.027592, 35.269966, 41.136959>,  <42.428505, 34.886875, 41.387455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.027592, 35.269966, 41.136959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.126232, 34.885647, 41.086281>,  <43.185417, 34.655056, 41.055874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.126232, 34.885647, 41.086281>,  <43.027592, 35.269966, 41.136959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.126232, 34.885647, 41.086281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510423, 0.239897, -0.825783,
		0.823807, 0.138968, 0.549573,
		0.246598, -0.960800, -0.126697,
		43.200211, 34.597408, 41.048271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.712864, 35.305267, 41.005886>,  <43.027592, 35.269966, 41.136959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.712864, 35.305267, 41.005886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.612526, 34.938465, 40.881836>,  <43.552322, 34.718384, 40.807407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.612526, 34.938465, 40.881836>,  <43.712864, 35.305267, 41.005886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.612526, 34.938465, 40.881836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566965, 0.120497, -0.814881,
		0.784620, -0.380237, 0.489685,
		-0.250842, -0.917006, -0.310126,
		43.537273, 34.663364, 40.788799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.308468, 34.995770, 40.767193>,  <43.712864, 35.305267, 41.005886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.308468, 34.995770, 40.767193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.049988, 34.752304, 40.583038>,  <43.894897, 34.606224, 40.472546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.049988, 34.752304, 40.583038>,  <44.308468, 34.995770, 40.767193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.049988, 34.752304, 40.583038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636619, -0.097230, -0.765024,
		0.420876, -0.787452, 0.450315,
		-0.646204, -0.608660, -0.460385,
		43.856125, 34.569706, 40.444923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.695656, 34.448147, 40.437168>,  <44.308468, 34.995770, 40.767193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.695656, 34.448147, 40.437168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.361561, 34.384289, 40.226688>,  <44.161102, 34.345974, 40.100399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.361561, 34.384289, 40.226688>,  <44.695656, 34.448147, 40.437168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.361561, 34.384289, 40.226688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546010, -0.127395, -0.828036,
		0.065161, -0.978919, 0.193576,
		-0.835241, -0.159650, -0.526199,
		44.110989, 34.336395, 40.068829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.778568, 33.897404, 40.066559>,  <44.695656, 34.448147, 40.437168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.778568, 33.897404, 40.066559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.503250, 34.107437, 39.866344>,  <44.338058, 34.233456, 39.746216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.503250, 34.107437, 39.866344>,  <44.778568, 33.897404, 40.066559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.503250, 34.107437, 39.866344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482954, -0.183175, -0.856272,
		-0.541302, -0.831103, -0.127514,
		-0.688293, 0.525085, -0.500538,
		44.296761, 34.264961, 39.716183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.727978, 33.569607, 39.485767>,  <44.778568, 33.897404, 40.066559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.727978, 33.569607, 39.485767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.571819, 33.923721, 39.384686>,  <44.478123, 34.136189, 39.324036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.571819, 33.923721, 39.384686>,  <44.727978, 33.569607, 39.485767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.571819, 33.923721, 39.384686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477334, -0.040078, -0.877808,
		-0.787238, -0.463319, -0.406930,
		-0.390396, 0.885285, -0.252708,
		44.454700, 34.189308, 39.308872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.480663, 33.416016, 38.887531>,  <44.727978, 33.569607, 39.485767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.480663, 33.416016, 38.887531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.488247, 33.815750, 38.875080>,  <44.492798, 34.055592, 38.867611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.488247, 33.815750, 38.875080>,  <44.480663, 33.416016, 38.887531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.488247, 33.815750, 38.875080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397814, -0.036102, -0.916756,
		-0.917270, 0.004997, -0.398234,
		0.018958, 0.999336, -0.031127,
		44.493935, 34.115551, 38.865742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.194393, 33.578083, 38.190796>,  <44.480663, 33.416016, 38.887531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.194393, 33.578083, 38.190796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.401928, 33.891151, 38.328335>,  <44.526447, 34.078995, 38.410858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.401928, 33.891151, 38.328335>,  <44.194393, 33.578083, 38.190796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.401928, 33.891151, 38.328335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474686, 0.070750, -0.877307,
		-0.710972, 0.618398, -0.334816,
		0.518837, 0.782674, 0.343846,
		44.557579, 34.125954, 38.431488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.197132, 33.962345, 37.679508>,  <44.194393, 33.578083, 38.190796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.197132, 33.962345, 37.679508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.508907, 34.137848, 37.858379>,  <44.695972, 34.243149, 37.965702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.508907, 34.137848, 37.858379>,  <44.197132, 33.962345, 37.679508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.508907, 34.137848, 37.858379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465631, 0.071809, -0.882061,
		-0.419124, 0.895731, -0.148329,
		0.779438, 0.438759, 0.447177,
		44.742737, 34.269474, 37.992531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.438797, 34.502155, 37.233978>,  <44.197132, 33.962345, 37.679508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.438797, 34.502155, 37.233978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.764202, 34.454746, 37.461712>,  <44.959446, 34.426300, 37.598354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.764202, 34.454746, 37.461712>,  <44.438797, 34.502155, 37.233978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.764202, 34.454746, 37.461712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578991, 0.073463, -0.812018,
		0.054414, 0.990231, 0.128384,
		0.813516, -0.118519, 0.569337,
		45.008259, 34.419189, 37.632511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.860451, 35.072010, 37.099823>,  <44.438797, 34.502155, 37.233978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.860451, 35.072010, 37.099823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.084385, 34.762669, 37.218822>,  <45.218746, 34.577065, 37.290222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.084385, 34.762669, 37.218822>,  <44.860451, 35.072010, 37.099823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.084385, 34.762669, 37.218822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522948, 0.051266, -0.850822,
		0.642737, 0.631895, 0.433125,
		0.559834, -0.773357, 0.297498,
		45.252335, 34.530663, 37.308071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.403217, 35.272190, 36.771679>,  <44.860451, 35.072010, 37.099823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.403217, 35.272190, 36.771679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.525661, 34.919079, 36.914230>,  <45.599129, 34.707214, 36.999760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.525661, 34.919079, 36.914230>,  <45.403217, 35.272190, 36.771679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.525661, 34.919079, 36.914230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673622, -0.063670, -0.736328,
		0.672702, 0.465462, 0.575167,
		0.306112, -0.882775, 0.356376,
		45.617496, 34.654247, 37.021145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.174454, 35.285381, 36.837921>,  <45.403217, 35.272190, 36.771679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.174454, 35.285381, 36.837921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.034660, 34.911697, 36.809330>,  <45.950787, 34.687485, 36.792175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.034660, 34.911697, 36.809330>,  <46.174454, 35.285381, 36.837921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.034660, 34.911697, 36.809330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708413, -0.213541, -0.672720,
		0.613201, -0.285735, 0.736437,
		-0.349479, -0.934214, -0.071475,
		45.929817, 34.631432, 36.787888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.767338, 34.903915, 36.951084>,  <46.174454, 35.285381, 36.837921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.767338, 34.903915, 36.951084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.512978, 34.671272, 36.748161>,  <46.360359, 34.531685, 36.626408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.512978, 34.671272, 36.748161>,  <46.767338, 34.903915, 36.951084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.512978, 34.671272, 36.748161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748004, -0.302594, -0.590700,
		0.190048, -0.755095, 0.627466,
		-0.635902, -0.581608, -0.507307,
		46.322208, 34.496792, 36.595970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.010017, 34.173920, 36.828297>,  <46.767338, 34.903915, 36.951084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.010017, 34.173920, 36.828297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.819004, 34.273033, 36.491116>,  <46.704395, 34.332500, 36.288807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.819004, 34.273033, 36.491116>,  <47.010017, 34.173920, 36.828297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.819004, 34.273033, 36.491116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877922, 0.096440, -0.468992,
		-0.034915, -0.964003, -0.263591,
		-0.477530, 0.247787, -0.842951,
		46.675747, 34.347370, 36.238232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.276169, 33.719028, 36.110519>,  <47.010017, 34.173920, 36.828297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.276169, 33.719028, 36.110519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.119503, 34.071484, 36.004539>,  <47.025505, 34.282955, 35.940952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.119503, 34.071484, 36.004539>,  <47.276169, 33.719028, 36.110519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.119503, 34.071484, 36.004539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784945, 0.169739, -0.595860,
		-0.480062, -0.441349, -0.758124,
		-0.391665, 0.881136, -0.264950,
		47.002003, 34.335823, 35.925053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.343384, 33.856052, 35.425400>,  <47.276169, 33.719028, 36.110519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.343384, 33.856052, 35.425400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.316776, 34.212402, 35.605145>,  <47.300812, 34.426212, 35.712990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.316776, 34.212402, 35.605145>,  <47.343384, 33.856052, 35.425400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.316776, 34.212402, 35.605145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795053, 0.319438, -0.515607,
		-0.602882, 0.322965, -0.729539,
		-0.066519, 0.890872, 0.449358,
		47.296822, 34.479664, 35.739952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.333775, 34.372963, 34.875431>,  <47.343384, 33.856052, 35.425400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.333775, 34.372963, 34.875431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.460064, 34.512005, 35.228588>,  <47.535839, 34.595428, 35.440483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.460064, 34.512005, 35.228588>,  <47.333775, 34.372963, 34.875431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.460064, 34.512005, 35.228588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833984, 0.342117, -0.432929,
		-0.452538, 0.873000, -0.181880,
		0.315723, 0.347601, 0.882889,
		47.554779, 34.616283, 35.493454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.565567, 35.039005, 34.721054>,  <47.333775, 34.372963, 34.875431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.565567, 35.039005, 34.721054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.720505, 34.948418, 35.078529>,  <47.813469, 34.894066, 35.293015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.720505, 34.948418, 35.078529>,  <47.565567, 35.039005, 34.721054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.720505, 34.948418, 35.078529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913533, 0.224855, -0.338966,
		-0.124183, 0.947708, 0.293987,
		0.387345, -0.226473, 0.893686,
		47.836708, 34.880474, 35.346634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.329468, 38.016460, 44.705364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.019268, 38.056255, 44.954750>,  <39.833149, 38.080132, 45.104382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.019268, 38.056255, 44.954750>,  <40.329468, 38.016460, 44.705364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.019268, 38.056255, 44.954750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616714, 0.092044, -0.781787,
		-0.135161, -0.990773, -0.010027,
		-0.775497, 0.099483, 0.623465,
		39.786617, 38.086102, 45.141788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.875988, 37.441551, 44.477226>,  <40.329468, 38.016460, 44.705364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.875988, 37.441551, 44.477226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.643398, 37.694431, 44.682053>,  <39.503845, 37.846157, 44.804951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.643398, 37.694431, 44.682053>,  <39.875988, 37.441551, 44.477226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643398, 37.694431, 44.682053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704516, -0.076503, -0.705553,
		-0.406875, -0.771020, 0.489878,
		-0.581473, 0.632198, 0.512069,
		39.468956, 37.884090, 44.835674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199368, 37.119434, 44.528473>,  <39.875988, 37.441551, 44.477226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.199368, 37.119434, 44.528473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.154705, 37.511890, 44.591583>,  <39.127907, 37.747364, 44.629448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.154705, 37.511890, 44.591583>,  <39.199368, 37.119434, 44.528473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154705, 37.511890, 44.591583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615236, 0.056435, -0.786320,
		-0.780396, -0.184864, 0.597333,
		-0.111652, 0.981143, 0.157776,
		39.121208, 37.806232, 44.638916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514828, 37.238064, 44.642712>,  <39.199368, 37.119434, 44.528473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514828, 37.238064, 44.642712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.678780, 37.572968, 44.497936>,  <38.777149, 37.773911, 44.411072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.678780, 37.572968, 44.497936>,  <38.514828, 37.238064, 44.642712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678780, 37.572968, 44.497936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606926, -0.045878, -0.793433,
		-0.680913, 0.544881, 0.489349,
		0.409877, 0.837257, -0.361941,
		38.801743, 37.824146, 44.389355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943798, 37.551044, 44.252148>,  <38.514828, 37.238064, 44.642712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.943798, 37.551044, 44.252148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.258041, 37.769154, 44.135189>,  <38.446587, 37.900021, 44.065014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.258041, 37.769154, 44.135189>,  <37.943798, 37.551044, 44.252148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258041, 37.769154, 44.135189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522500, 0.331572, -0.785528,
		-0.331380, 0.769893, 0.545392,
		0.785609, 0.545275, -0.292392,
		38.493725, 37.932735, 44.047470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668106, 38.182354, 44.119652>,  <37.943798, 37.551044, 44.252148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668106, 38.182354, 44.119652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.018166, 38.134663, 43.932076>,  <38.228203, 38.106049, 43.819530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.018166, 38.134663, 43.932076>,  <37.668106, 38.182354, 44.119652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018166, 38.134663, 43.932076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394849, 0.384186, -0.834563,
		0.279663, 0.915525, 0.289142,
		0.875147, -0.119229, -0.468937,
		38.280708, 38.098892, 43.791393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694565, 38.733276, 43.704483>,  <37.668106, 38.182354, 44.119652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694565, 38.733276, 43.704483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.945560, 38.463318, 43.549168>,  <38.096157, 38.301342, 43.455978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.945560, 38.463318, 43.549168>,  <37.694565, 38.733276, 43.704483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.945560, 38.463318, 43.549168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369060, 0.181300, -0.911551,
		0.685600, 0.715293, -0.135313,
		0.627494, -0.674898, -0.388285,
		38.133808, 38.260849, 43.432682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938740, 39.008110, 43.066685>,  <37.694565, 38.733276, 43.704483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938740, 39.008110, 43.066685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.005367, 38.613834, 43.056248>,  <38.045341, 38.377270, 43.049984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.005367, 38.613834, 43.056248>,  <37.938740, 39.008110, 43.066685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005367, 38.613834, 43.056248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233941, -0.013799, -0.972153,
		0.957876, 0.168033, -0.232891,
		0.166567, -0.985685, -0.026092,
		38.055336, 38.318130, 43.048420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288536, 38.872425, 42.383938>,  <37.938740, 39.008110, 43.066685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288536, 38.872425, 42.383938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.143925, 38.515915, 42.493431>,  <38.057156, 38.302010, 42.559128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.143925, 38.515915, 42.493431>,  <38.288536, 38.872425, 42.383938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143925, 38.515915, 42.493431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084446, -0.261078, -0.961617,
		0.928527, -0.370771, 0.019124,
		-0.361532, -0.891273, 0.273729,
		38.035465, 38.248531, 42.575550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546520, 38.373371, 41.870708>,  <38.288536, 38.872425, 42.383938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546520, 38.373371, 41.870708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.250523, 38.162834, 42.038216>,  <38.072922, 38.036510, 42.138721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.250523, 38.162834, 42.038216>,  <38.546520, 38.373371, 41.870708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.250523, 38.162834, 42.038216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327403, -0.261987, -0.907838,
		0.587547, -0.808904, 0.021543,
		-0.739998, -0.526344, 0.418767,
		38.028522, 38.004932, 42.163845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583584, 37.705559, 41.568913>,  <38.546520, 38.373371, 41.870708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583584, 37.705559, 41.568913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.210659, 37.748966, 41.706909>,  <37.986904, 37.775013, 41.789707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.210659, 37.748966, 41.706909>,  <38.583584, 37.705559, 41.568913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210659, 37.748966, 41.706909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361180, -0.328352, -0.872774,
		0.018564, -0.938300, 0.345322,
		-0.932312, 0.108521, 0.344990,
		37.930965, 37.781525, 41.810406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303638, 37.001377, 41.496632>,  <38.583584, 37.705559, 41.568913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303638, 37.001377, 41.496632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.001591, 37.263573, 41.491905>,  <37.820362, 37.420891, 41.489071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.001591, 37.263573, 41.491905>,  <38.303638, 37.001377, 41.496632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001591, 37.263573, 41.491905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112445, -0.147251, -0.982687,
		-0.645877, -0.740713, 0.184898,
		-0.755116, 0.655485, -0.011817,
		37.775055, 37.460217, 41.488361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696426, 36.693134, 41.255882>,  <38.303638, 37.001377, 41.496632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696426, 36.693134, 41.255882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.659893, 37.084999, 41.184414>,  <37.637974, 37.320118, 41.141533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.659893, 37.084999, 41.184414>,  <37.696426, 36.693134, 41.255882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659893, 37.084999, 41.184414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161309, -0.191603, -0.968126,
		-0.982669, -0.059597, 0.175527,
		-0.091329, 0.979661, -0.178668,
		37.632496, 37.378899, 41.130814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395988, 36.684204, 40.638763>,  <37.696426, 36.693134, 41.255882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395988, 36.684204, 40.638763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.474525, 37.074596, 40.676514>,  <37.521648, 37.308834, 40.699162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.474525, 37.074596, 40.676514>,  <37.395988, 36.684204, 40.638763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474525, 37.074596, 40.676514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184987, 0.131388, -0.973918,
		-0.962927, 0.173768, 0.206341,
		0.196347, 0.975983, 0.094372,
		37.533428, 37.367390, 40.704826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818226, 36.887768, 40.425236>,  <37.395988, 36.684204, 40.638763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818226, 36.887768, 40.425236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.073540, 37.194706, 40.400669>,  <37.226727, 37.378868, 40.385929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.073540, 37.194706, 40.400669>,  <36.818226, 36.887768, 40.425236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.073540, 37.194706, 40.400669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350514, 0.218675, -0.910671,
		-0.685373, 0.602791, 0.408543,
		0.638282, 0.767349, -0.061413,
		37.265026, 37.424911, 40.382244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494518, 37.518566, 40.303295>,  <36.818226, 36.887768, 40.425236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494518, 37.518566, 40.303295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.863293, 37.601418, 40.172367>,  <37.084557, 37.651127, 40.093811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.863293, 37.601418, 40.172367>,  <36.494518, 37.518566, 40.303295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863293, 37.601418, 40.172367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341885, 0.037897, -0.938977,
		-0.182083, 0.977580, 0.105752,
		0.921933, 0.207127, -0.327319,
		37.139874, 37.663555, 40.074173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545540, 38.176800, 39.768597>,  <36.494518, 37.518566, 40.303295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.545540, 38.176800, 39.768597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.854660, 37.934422, 39.693111>,  <37.040131, 37.788994, 39.647820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.854660, 37.934422, 39.693111>,  <36.545540, 38.176800, 39.768597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854660, 37.934422, 39.693111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249281, -0.016368, -0.968293,
		0.583643, 0.795339, -0.163700,
		0.772800, -0.605944, -0.188710,
		37.086498, 37.752640, 39.636497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593647, 38.292976, 39.121845>,  <36.545540, 38.176800, 39.768597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.593647, 38.292976, 39.121845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.836342, 37.976864, 39.156094>,  <36.981956, 37.787197, 39.176643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.836342, 37.976864, 39.156094>,  <36.593647, 38.292976, 39.121845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836342, 37.976864, 39.156094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158023, -0.225481, -0.961346,
		0.779039, 0.569751, -0.261689,
		0.606734, -0.790280, 0.085625,
		37.018364, 37.739780, 39.181782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087048, 38.379025, 38.556061>,  <36.593647, 38.292976, 39.121845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087048, 38.379025, 38.556061> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.104309, 37.992584, 38.657867>,  <37.114666, 37.760719, 38.718952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.104309, 37.992584, 38.657867>,  <37.087048, 38.379025, 38.556061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104309, 37.992584, 38.657867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050880, -0.252298, -0.966311,
		0.997772, 0.054652, 0.038267,
		0.043156, -0.966105, 0.254517,
		37.117256, 37.702751, 38.734222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658772, 38.110115, 38.134983>,  <37.087048, 38.379025, 38.556061>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658772, 38.110115, 38.134983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.422234, 37.800583, 38.225754>,  <37.280312, 37.614864, 38.280216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.422234, 37.800583, 38.225754>,  <37.658772, 38.110115, 38.134983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422234, 37.800583, 38.225754> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049248, -0.246222, -0.967962,
		0.804912, -0.583576, 0.107493,
		-0.591347, -0.773830, 0.226927,
		37.244831, 37.568436, 38.293831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047161, 37.552261, 37.842751>,  <37.658772, 38.110115, 38.134983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047161, 37.552261, 37.842751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.669895, 37.424107, 37.878056>,  <37.443535, 37.347214, 37.899239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.669895, 37.424107, 37.878056>,  <38.047161, 37.552261, 37.842751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669895, 37.424107, 37.878056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061299, -0.428769, -0.901332,
		0.326617, -0.844696, 0.424040,
		-0.943167, -0.320384, 0.088264,
		37.386944, 37.327991, 37.904533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078930, 36.838390, 37.665985>,  <38.047161, 37.552261, 37.842751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078930, 36.838390, 37.665985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.703381, 36.959290, 37.600063>,  <37.478050, 37.031830, 37.560513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.703381, 36.959290, 37.600063>,  <38.078930, 36.838390, 37.665985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.703381, 36.959290, 37.600063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040016, -0.379654, -0.924263,
		-0.341922, -0.874363, 0.344353,
		-0.938876, 0.302245, -0.164801,
		37.421719, 37.049965, 37.550621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485294, 37.255989, 37.065796>,  <38.078930, 36.838390, 37.665985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485294, 37.255989, 37.065796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.765621, 37.323875, 36.788651>,  <38.933815, 37.364609, 36.622364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.765621, 37.323875, 36.788651>,  <38.485294, 37.255989, 37.065796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765621, 37.323875, 36.788651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706565, -0.031574, 0.706943,
		0.098103, -0.984987, -0.142043,
		0.700814, 0.169716, -0.692860,
		38.975864, 37.374790, 36.580791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027821, 36.764412, 37.149429>,  <38.485294, 37.255989, 37.065796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027821, 36.764412, 37.149429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.215179, 37.050804, 36.942364>,  <39.327595, 37.222641, 36.818123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.215179, 37.050804, 36.942364>,  <39.027821, 36.764412, 37.149429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215179, 37.050804, 36.942364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830629, -0.157171, 0.534185,
		0.301104, -0.680197, -0.668333,
		0.468393, 0.715981, -0.517667,
		39.355698, 37.265598, 36.787064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663769, 36.462864, 36.942654>,  <39.027821, 36.764412, 37.149429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663769, 36.462864, 36.942654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.705738, 36.860142, 36.922417>,  <39.730919, 37.098507, 36.910275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.705738, 36.860142, 36.922417>,  <39.663769, 36.462864, 36.942654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705738, 36.860142, 36.922417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869853, -0.067000, 0.488739,
		0.482023, -0.095286, -0.870962,
		0.104925, 0.993193, -0.050589,
		39.737217, 37.158100, 36.907238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268875, 36.661510, 36.684071>,  <39.663769, 36.462864, 36.942654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.268875, 36.661510, 36.684071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.144405, 36.933708, 36.949429>,  <40.069725, 37.097027, 37.108643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.144405, 36.933708, 36.949429>,  <40.268875, 36.661510, 36.684071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.144405, 36.933708, 36.949429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852756, -0.108196, 0.510980,
		0.419498, 0.724719, -0.546630,
		-0.311174, 0.680497, 0.663396,
		40.051052, 37.137856, 37.148449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.834343, 37.099129, 36.901001>,  <40.268875, 36.661510, 36.684071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.834343, 37.099129, 36.901001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.558239, 37.114605, 37.190014>,  <40.392578, 37.123890, 37.363422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.558239, 37.114605, 37.190014>,  <40.834343, 37.099129, 36.901001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.558239, 37.114605, 37.190014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721813, -0.032603, 0.691320,
		0.050307, 0.998719, -0.005426,
		-0.690258, 0.038695, 0.722528,
		40.351162, 37.126213, 37.406773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.199509, 37.021000, 37.439301>,  <40.834343, 37.099129, 36.901001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.199509, 37.021000, 37.439301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.867508, 37.083168, 37.653568>,  <40.668308, 37.120468, 37.782127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.867508, 37.083168, 37.653568>,  <41.199509, 37.021000, 37.439301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.867508, 37.083168, 37.653568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530392, -0.077213, 0.844229,
		0.172568, 0.984827, -0.018344,
		-0.830003, 0.155417, 0.535669,
		40.618507, 37.129791, 37.814270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348320, 37.529896, 37.961853>,  <41.199509, 37.021000, 37.439301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.348320, 37.529896, 37.961853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.015533, 37.359497, 38.104042>,  <40.815861, 37.257259, 38.189354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.015533, 37.359497, 38.104042>,  <41.348320, 37.529896, 37.961853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.015533, 37.359497, 38.104042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412711, -0.046973, 0.909650,
		-0.370807, 0.903506, 0.214892,
		-0.831969, -0.425993, 0.355469,
		40.765942, 37.231701, 38.210682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.179264, 37.914646, 38.573044>,  <41.348320, 37.529896, 37.961853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.179264, 37.914646, 38.573044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.991959, 37.565727, 38.629364>,  <40.879574, 37.356377, 38.663155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.991959, 37.565727, 38.629364>,  <41.179264, 37.914646, 38.573044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.991959, 37.565727, 38.629364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144310, 0.081709, 0.986153,
		-0.871724, 0.482099, 0.087620,
		-0.468265, -0.872298, 0.140800,
		40.851479, 37.304039, 38.671604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.843922, 38.089966, 39.158367>,  <41.179264, 37.914646, 38.573044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.843922, 38.089966, 39.158367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.800499, 37.692936, 39.136429>,  <40.774445, 37.454720, 39.123264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.800499, 37.692936, 39.136429>,  <40.843922, 38.089966, 39.158367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.800499, 37.692936, 39.136429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184679, -0.074351, 0.979983,
		-0.976785, 0.096258, 0.191379,
		-0.108560, -0.992576, -0.054848,
		40.767933, 37.395164, 39.119976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.335796, 37.893997, 39.574692>,  <40.843922, 38.089966, 39.158367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.335796, 37.893997, 39.574692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.553104, 37.559471, 39.545216>,  <40.683491, 37.358757, 39.527531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.553104, 37.559471, 39.545216>,  <40.335796, 37.893997, 39.574692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.553104, 37.559471, 39.545216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031403, -0.067474, 0.997227,
		-0.838969, -0.544080, -0.010394,
		0.543273, -0.836316, -0.073694,
		40.716087, 37.308575, 39.523106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046616, 37.420975, 40.039883>,  <40.335796, 37.893997, 39.574692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.046616, 37.420975, 40.039883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.415447, 37.288052, 39.960541>,  <40.636745, 37.208298, 39.912937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.415447, 37.288052, 39.960541>,  <40.046616, 37.420975, 40.039883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.415447, 37.288052, 39.960541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158108, -0.144349, 0.976814,
		-0.353239, -0.932058, -0.080560,
		0.922076, -0.332312, -0.198356,
		40.692070, 37.188358, 39.901035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.143333, 36.794701, 40.491058>,  <40.046616, 37.420975, 40.039883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.143333, 36.794701, 40.491058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.510983, 36.916649, 40.391247>,  <40.731571, 36.989819, 40.331360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.510983, 36.916649, 40.391247>,  <40.143333, 36.794701, 40.491058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.510983, 36.916649, 40.391247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327426, -0.238907, 0.914175,
		0.219093, -0.921942, -0.319409,
		0.919125, 0.304872, -0.249525,
		40.786720, 37.008110, 40.316391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.669334, 36.355461, 40.865459>,  <40.143333, 36.794701, 40.491058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.669334, 36.355461, 40.865459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.885502, 36.665459, 40.734409>,  <41.015202, 36.851456, 40.655781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.885502, 36.665459, 40.734409>,  <40.669334, 36.355461, 40.865459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.885502, 36.665459, 40.734409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578954, -0.059959, 0.813153,
		0.610544, -0.629118, -0.481088,
		0.540415, 0.774993, -0.327623,
		41.047626, 36.897957, 40.636124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.434826, 36.166832, 40.888756>,  <40.669334, 36.355461, 40.865459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.434826, 36.166832, 40.888756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.424892, 36.566372, 40.872387>,  <41.418934, 36.806095, 40.862564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.424892, 36.566372, 40.872387>,  <41.434826, 36.166832, 40.888756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.424892, 36.566372, 40.872387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630904, 0.047413, 0.774411,
		0.775464, -0.006588, -0.631358,
		-0.024833, 0.998854, -0.040923,
		41.417442, 36.866028, 40.860111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039532, 36.363716, 41.025066>,  <41.434826, 36.166832, 40.888756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.039532, 36.363716, 41.025066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.822586, 36.690281, 41.104366>,  <41.692417, 36.886219, 41.151947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.822586, 36.690281, 41.104366>,  <42.039532, 36.363716, 41.025066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.822586, 36.690281, 41.104366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440495, 0.075398, 0.894583,
		0.715403, 0.572522, -0.400521,
		-0.542367, 0.816415, 0.198253,
		41.659878, 36.935207, 41.163841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.450363, 36.588345, 41.502781>,  <42.039532, 36.363716, 41.025066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.450363, 36.588345, 41.502781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.104465, 36.788258, 41.522514>,  <41.896927, 36.908207, 41.534355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.104465, 36.788258, 41.522514>,  <42.450363, 36.588345, 41.502781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.104465, 36.788258, 41.522514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176622, 0.210699, 0.961463,
		0.470133, 0.840130, -0.270474,
		-0.864742, 0.499787, 0.049329,
		41.845043, 36.938194, 41.537312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.574276, 37.185196, 41.862038>,  <42.450363, 36.588345, 41.502781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.574276, 37.185196, 41.862038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.178150, 37.155132, 41.908745>,  <41.940475, 37.137096, 41.936768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.178150, 37.155132, 41.908745>,  <42.574276, 37.185196, 41.862038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.178150, 37.155132, 41.908745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113633, 0.044693, 0.992517,
		-0.079813, 0.996170, -0.035720,
		-0.990312, -0.075157, 0.116765,
		41.881058, 37.132584, 41.943775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.336308, 37.657425, 42.368587>,  <42.574276, 37.185196, 41.862038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.336308, 37.657425, 42.368587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.013699, 37.420971, 42.364864>,  <41.820133, 37.279099, 42.362629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.013699, 37.420971, 42.364864>,  <42.336308, 37.657425, 42.368587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.013699, 37.420971, 42.364864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030478, 0.025845, 0.999201,
		-0.590423, 0.806158, -0.038861,
		-0.806518, -0.591136, -0.009310,
		41.771744, 37.243629, 42.362072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.844742, 37.961082, 42.974026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.732361, 37.585602, 42.894127>,  <41.664932, 37.360313, 42.846188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.732361, 37.585602, 42.894127>,  <41.844742, 37.961082, 42.974026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.732361, 37.585602, 42.894127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156023, -0.160683, 0.974596,
		-0.946955, 0.304979, -0.101315,
		-0.280951, -0.938706, -0.199743,
		41.648075, 37.303989, 42.834206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.192013, 37.777748, 43.435974>,  <41.844742, 37.961082, 42.974026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.192013, 37.777748, 43.435974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.397171, 37.450874, 43.330784>,  <41.520267, 37.254749, 43.267670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.397171, 37.450874, 43.330784>,  <41.192013, 37.777748, 43.435974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.397171, 37.450874, 43.330784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049817, -0.277484, 0.959438,
		-0.857004, -0.505193, -0.101611,
		0.512896, -0.817180, -0.262972,
		41.551041, 37.205719, 43.251892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.912857, 37.251965, 43.898556>,  <41.192013, 37.777748, 43.435974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.912857, 37.251965, 43.898556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.249969, 37.083496, 43.764492>,  <41.452236, 36.982414, 43.684055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.249969, 37.083496, 43.764492>,  <40.912857, 37.251965, 43.898556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.249969, 37.083496, 43.764492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175763, -0.373207, 0.910947,
		-0.508748, -0.826639, -0.240506,
		0.842783, -0.421170, -0.335160,
		41.502804, 36.957146, 43.663944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898392, 36.605064, 44.207813>,  <40.912857, 37.251965, 43.898556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.898392, 36.605064, 44.207813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.287365, 36.611641, 44.114765>,  <41.520748, 36.615589, 44.058937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.287365, 36.611641, 44.114765>,  <40.898392, 36.605064, 44.207813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.287365, 36.611641, 44.114765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231477, -0.189155, 0.954274,
		-0.028309, -0.981810, -0.187746,
		0.972428, 0.016445, -0.232621,
		41.579094, 36.616573, 44.044979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.182037, 36.073002, 44.622101>,  <40.898392, 36.605064, 44.207813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.182037, 36.073002, 44.622101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.513588, 36.263958, 44.505432>,  <41.712517, 36.378532, 44.435432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.513588, 36.263958, 44.505432>,  <41.182037, 36.073002, 44.622101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.513588, 36.263958, 44.505432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416958, -0.179566, 0.891012,
		0.372983, -0.860150, -0.347888,
		0.828873, 0.477386, -0.291671,
		41.762249, 36.407173, 44.417931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.795631, 35.650482, 44.729774>,  <41.182037, 36.073002, 44.622101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.795631, 35.650482, 44.729774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.876747, 36.041962, 44.742619>,  <41.925419, 36.276848, 44.750324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.876747, 36.041962, 44.742619>,  <41.795631, 35.650482, 44.729774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.876747, 36.041962, 44.742619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394137, -0.111600, 0.912251,
		0.896399, -0.172342, -0.408372,
		0.202794, 0.978695, 0.032112,
		41.937584, 36.335571, 44.752251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.483547, 35.678047, 45.083534>,  <41.795631, 35.650482, 44.729774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.483547, 35.678047, 45.083534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.337154, 36.049072, 45.113705>,  <42.249317, 36.271687, 45.131805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.337154, 36.049072, 45.113705>,  <42.483547, 35.678047, 45.083534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.337154, 36.049072, 45.113705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435579, 0.099117, 0.894677,
		0.822391, 0.360290, -0.440301,
		-0.365984, 0.927560, 0.075422,
		42.227360, 36.327339, 45.136330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.030357, 36.083138, 45.201260>,  <42.483547, 35.678047, 45.083534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.030357, 36.083138, 45.201260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.714912, 36.285854, 45.340546>,  <42.525646, 36.407486, 45.424118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.714912, 36.285854, 45.340546>,  <43.030357, 36.083138, 45.201260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.714912, 36.285854, 45.340546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475835, 0.144313, 0.867615,
		0.389448, 0.849904, -0.354956,
		-0.788614, 0.506791, 0.348211,
		42.478329, 36.437893, 45.445007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.287079, 36.661366, 45.475132>,  <43.030357, 36.083138, 45.201260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.287079, 36.661366, 45.475132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.927513, 36.615044, 45.644150>,  <42.711773, 36.587250, 45.745560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.927513, 36.615044, 45.644150>,  <43.287079, 36.661366, 45.475132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.927513, 36.615044, 45.644150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404876, 0.148997, 0.902150,
		-0.167431, 0.982033, -0.087050,
		-0.898912, -0.115803, 0.422549,
		42.657841, 36.580303, 45.770916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.241611, 37.196209, 45.949329>,  <43.287079, 36.661366, 45.475132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.241611, 37.196209, 45.949329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.969555, 36.933632, 46.079861>,  <42.806320, 36.776085, 46.158180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.969555, 36.933632, 46.079861>,  <43.241611, 37.196209, 45.949329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.969555, 36.933632, 46.079861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269092, 0.190519, 0.944083,
		-0.681911, 0.729919, 0.047066,
		-0.680137, -0.656445, 0.326332,
		42.765514, 36.736698, 46.177761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.014629, 37.590107, 46.467636>,  <43.241611, 37.196209, 45.949329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.014629, 37.590107, 46.467636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.897614, 37.211910, 46.524857>,  <42.827404, 36.984993, 46.559189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.897614, 37.211910, 46.524857>,  <43.014629, 37.590107, 46.467636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.897614, 37.211910, 46.524857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089148, 0.121975, 0.988521,
		-0.952089, 0.301934, 0.048606,
		-0.292539, -0.945493, 0.143048,
		42.809853, 36.928261, 46.567772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.645432, 37.606739, 47.077133>,  <43.014629, 37.590107, 46.467636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.645432, 37.606739, 47.077133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.735023, 37.218197, 47.045357>,  <42.788776, 36.985073, 47.026291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.735023, 37.218197, 47.045357>,  <42.645432, 37.606739, 47.077133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.735023, 37.218197, 47.045357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089445, -0.060680, 0.994142,
		-0.970481, -0.229770, 0.073292,
		0.223977, -0.971352, -0.079441,
		42.802216, 36.926792, 47.021526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.324280, 37.279213, 47.572258>,  <42.645432, 37.606739, 47.077133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.324280, 37.279213, 47.572258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.621353, 37.026085, 47.484661>,  <42.799599, 36.874210, 47.432102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.621353, 37.026085, 47.484661>,  <42.324280, 37.279213, 47.572258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.621353, 37.026085, 47.484661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134765, -0.179094, 0.974558,
		-0.655938, -0.753304, -0.047729,
		0.742686, -0.632818, -0.218993,
		42.844158, 36.836239, 47.418964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.279774, 36.953800, 48.175598>,  <42.324280, 37.279213, 47.572258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.279774, 36.953800, 48.175598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.615814, 36.827042, 47.999504>,  <42.817440, 36.750988, 47.893848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.615814, 36.827042, 47.999504>,  <42.279774, 36.953800, 48.175598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.615814, 36.827042, 47.999504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324717, -0.356302, 0.876132,
		-0.434499, -0.878992, -0.196429,
		0.840101, -0.316895, -0.440236,
		42.867844, 36.731976, 47.867432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.381516, 36.218578, 48.382145>,  <42.279774, 36.953800, 48.175598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.381516, 36.218578, 48.382145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.738499, 36.343369, 48.251793>,  <42.952686, 36.418243, 48.173580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.738499, 36.343369, 48.251793>,  <42.381516, 36.218578, 48.382145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.738499, 36.343369, 48.251793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394553, -0.189475, 0.899126,
		0.218758, -0.931005, -0.292188,
		0.892453, 0.311975, -0.325882,
		43.006233, 36.436962, 48.154030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.834743, 35.668671, 48.350231>,  <42.381516, 36.218578, 48.382145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.834743, 35.668671, 48.350231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.082520, 35.981705, 48.375042>,  <43.231186, 36.169525, 48.389927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.082520, 35.981705, 48.375042>,  <42.834743, 35.668671, 48.350231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.082520, 35.981705, 48.375042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371799, -0.362042, 0.854805,
		0.691416, -0.506441, -0.515230,
		0.619443, 0.782587, 0.062027,
		43.268353, 36.216480, 48.393650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.393051, 35.410755, 48.737823>,  <42.834743, 35.668671, 48.350231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.393051, 35.410755, 48.737823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.462433, 35.803749, 48.765079>,  <43.504063, 36.039543, 48.781433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.462433, 35.803749, 48.765079>,  <43.393051, 35.410755, 48.737823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.462433, 35.803749, 48.765079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311870, -0.120428, 0.942462,
		0.934158, -0.142219, -0.327295,
		0.173452, 0.982482, 0.068145,
		43.514469, 36.098495, 48.785522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.107803, 35.484970, 48.960304>,  <43.393051, 35.410755, 48.737823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.107803, 35.484970, 48.960304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.918907, 35.819408, 49.071964>,  <43.805569, 36.020073, 49.138958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.918907, 35.819408, 49.071964>,  <44.107803, 35.484970, 48.960304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.918907, 35.819408, 49.071964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279296, -0.158436, 0.947044,
		0.836050, 0.525200, -0.158699,
		-0.472244, 0.836100, 0.279147,
		43.777233, 36.070240, 49.155708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.544720, 35.865208, 49.376556>,  <44.107803, 35.484970, 48.960304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.544720, 35.865208, 49.376556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.183361, 36.004715, 49.476341>,  <43.966545, 36.088421, 49.536213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.183361, 36.004715, 49.476341>,  <44.544720, 35.865208, 49.376556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.183361, 36.004715, 49.476341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265879, -0.000840, 0.964006,
		0.336425, 0.937208, -0.091972,
		-0.903397, 0.348769, 0.249466,
		43.912342, 36.109344, 49.551182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.666939, 36.348915, 49.709927>,  <44.544720, 35.865208, 49.376556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.666939, 36.348915, 49.709927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.297127, 36.272041, 49.841564>,  <44.075237, 36.225918, 49.920547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.297127, 36.272041, 49.841564>,  <44.666939, 36.348915, 49.709927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.297127, 36.272041, 49.841564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339019, -0.020286, 0.940561,
		-0.174086, 0.981149, 0.083909,
		-0.924533, -0.192185, 0.329096,
		44.019768, 36.214386, 49.940292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.669647, 36.787029, 50.289013>,  <44.666939, 36.348915, 49.709927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.669647, 36.787029, 50.289013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.351303, 36.547356, 50.323837>,  <44.160297, 36.403553, 50.344730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.351303, 36.547356, 50.323837>,  <44.669647, 36.787029, 50.289013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.351303, 36.547356, 50.323837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071227, 0.050140, 0.996199,
		-0.601272, 0.799040, 0.002773,
		-0.795864, -0.599184, 0.087061,
		44.112545, 36.367599, 50.349957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.177834, 37.107750, 50.714432>,  <44.669647, 36.787029, 50.289013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.177834, 37.107750, 50.714432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.076370, 36.721794, 50.741688>,  <44.015491, 36.490219, 50.758041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.076370, 36.721794, 50.741688>,  <44.177834, 37.107750, 50.714432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.076370, 36.721794, 50.741688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109069, 0.098522, 0.989140,
		-0.961126, 0.243469, -0.130231,
		-0.253655, -0.964892, 0.068138,
		44.000275, 36.432327, 50.762131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.626392, 37.094669, 51.116047>,  <44.177834, 37.107750, 50.714432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.626392, 37.094669, 51.116047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.805237, 36.738468, 51.149731>,  <43.912544, 36.524746, 51.169941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.805237, 36.738468, 51.149731>,  <43.626392, 37.094669, 51.116047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.805237, 36.738468, 51.149731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071610, 0.058201, 0.995733,
		-0.891609, -0.451230, -0.037747,
		0.447108, -0.890508, 0.084205,
		43.939369, 36.471317, 51.174992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.069199, 36.561256, 51.427307>,  <43.626392, 37.094669, 51.116047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.069199, 36.561256, 51.427307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.457451, 36.531071, 51.518677>,  <43.690403, 36.512959, 51.573498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.457451, 36.531071, 51.518677>,  <43.069199, 36.561256, 51.427307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.457451, 36.531071, 51.518677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215917, 0.145450, 0.965518,
		-0.106085, -0.986483, 0.124885,
		0.970632, -0.075463, 0.228429,
		43.748642, 36.508430, 51.587204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.736652, 36.304222, 51.946831>,  <43.069199, 36.561256, 51.427307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.736652, 36.304222, 51.946831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.410133, 36.434368, 52.137745>,  <42.214222, 36.512455, 52.252293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.410133, 36.434368, 52.137745>,  <42.736652, 36.304222, 51.946831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.410133, 36.434368, 52.137745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573676, -0.553235, -0.604009,
		0.067530, -0.766857, 0.638255,
		-0.816294, 0.325363, 0.477287,
		42.165245, 36.531979, 52.280930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.269901, 35.726265, 52.006313>,  <42.736652, 36.304222, 51.946831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.269901, 35.726265, 52.006313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.070469, 36.072849, 52.016594>,  <41.950809, 36.280800, 52.022762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.070469, 36.072849, 52.016594>,  <42.269901, 35.726265, 52.006313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.070469, 36.072849, 52.016594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611070, -0.330287, -0.719377,
		-0.614823, -0.374376, 0.694144,
		-0.498584, 0.866460, 0.025702,
		41.920895, 36.332787, 52.024303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.579586, 35.554089, 51.852375>,  <42.269901, 35.726265, 52.006313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.579586, 35.554089, 51.852375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.620876, 35.944202, 51.774227>,  <41.645649, 36.178268, 51.727337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.620876, 35.944202, 51.774227>,  <41.579586, 35.554089, 51.852375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.620876, 35.944202, 51.774227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525452, -0.113306, -0.843245,
		-0.844538, 0.189702, 0.500768,
		0.103225, 0.975282, -0.195371,
		41.651844, 36.236786, 51.715614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.900715, 35.767418, 51.565353>,  <41.579586, 35.554089, 51.852375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.900715, 35.767418, 51.565353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.120502, 36.084785, 51.460613>,  <41.252377, 36.275208, 51.397770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.120502, 36.084785, 51.460613>,  <40.900715, 35.767418, 51.565353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.120502, 36.084785, 51.460613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468406, 0.033002, -0.882896,
		-0.691867, 0.607778, 0.389777,
		0.549469, 0.793421, -0.261854,
		41.285343, 36.322811, 51.382057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445988, 36.183445, 51.275284>,  <40.900715, 35.767418, 51.565353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445988, 36.183445, 51.275284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.791546, 36.338768, 51.146976>,  <40.998882, 36.431961, 51.069992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.791546, 36.338768, 51.146976>,  <40.445988, 36.183445, 51.275284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.791546, 36.338768, 51.146976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404705, 0.156059, -0.901033,
		-0.299820, 0.908219, 0.291970,
		0.863899, 0.388309, -0.320771,
		41.050716, 36.455261, 51.050747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282070, 36.777309, 50.957756>,  <40.445988, 36.183445, 51.275284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282070, 36.777309, 50.957756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.633251, 36.660824, 50.805756>,  <40.843960, 36.590935, 50.714554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.633251, 36.660824, 50.805756>,  <40.282070, 36.777309, 50.957756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.633251, 36.660824, 50.805756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251718, 0.394388, -0.883796,
		0.407238, 0.871582, 0.272950,
		0.877949, -0.291209, -0.380003,
		40.896637, 36.573460, 50.691753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.471180, 37.354885, 50.565067>,  <40.282070, 36.777309, 50.957756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.471180, 37.354885, 50.565067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.695786, 37.055691, 50.423523>,  <40.830547, 36.876175, 50.338596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.695786, 37.055691, 50.423523>,  <40.471180, 37.354885, 50.565067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695786, 37.055691, 50.423523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223792, 0.274426, -0.935205,
		0.796630, 0.604321, -0.013300,
		0.561514, -0.747988, -0.353858,
		40.864239, 36.831295, 50.317364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.581009, 37.558361, 49.871983>,  <40.471180, 37.354885, 50.565067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.581009, 37.558361, 49.871983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.696705, 37.176315, 49.846367>,  <40.766121, 36.947086, 49.830997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.696705, 37.176315, 49.846367>,  <40.581009, 37.558361, 49.871983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.696705, 37.176315, 49.846367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338260, -0.039399, -0.940227,
		0.895500, 0.293611, -0.334472,
		0.289239, -0.955113, -0.064035,
		40.783478, 36.889782, 49.827156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.028019, 37.446869, 49.262951>,  <40.581009, 37.558361, 49.871983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.028019, 37.446869, 49.262951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.884052, 37.084557, 49.352406>,  <40.797672, 36.867168, 49.406078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.884052, 37.084557, 49.352406>,  <41.028019, 37.446869, 49.262951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.884052, 37.084557, 49.352406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195445, -0.161186, -0.967378,
		0.912284, -0.391883, -0.119018,
		-0.359915, -0.905785, 0.223639,
		40.776077, 36.812820, 49.419498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.496727, 36.902596, 49.027439>,  <41.028019, 37.446869, 49.262951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.496727, 36.902596, 49.027439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.122128, 36.764370, 49.051315>,  <40.897369, 36.681435, 49.065639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.122128, 36.764370, 49.051315>,  <41.496727, 36.902596, 49.027439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.122128, 36.764370, 49.051315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077397, 0.037663, -0.996289,
		0.342034, -0.937639, -0.062017,
		-0.936495, -0.345565, 0.059688,
		40.841179, 36.660702, 49.069221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.471172, 36.436363, 48.446407>,  <41.496727, 36.902596, 49.027439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.471172, 36.436363, 48.446407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.099319, 36.525097, 48.564102>,  <40.876209, 36.578339, 48.634720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.099319, 36.525097, 48.564102>,  <41.471172, 36.436363, 48.446407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.099319, 36.525097, 48.564102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276771, 0.106807, -0.954982,
		-0.243277, -0.969216, -0.037893,
		-0.929631, 0.221838, 0.294235,
		40.820431, 36.591648, 48.652374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081375, 35.953777, 48.072311>,  <41.471172, 36.436363, 48.446407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.081375, 35.953777, 48.072311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.811657, 36.215366, 48.209507>,  <40.649826, 36.372318, 48.291824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.811657, 36.215366, 48.209507>,  <41.081375, 35.953777, 48.072311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.811657, 36.215366, 48.209507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305921, 0.175358, -0.935768,
		-0.672114, -0.735913, 0.081821,
		-0.674296, 0.653974, 0.342991,
		40.609367, 36.411560, 48.312405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.415966, 35.815449, 47.678196>,  <41.081375, 35.953777, 48.072311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.415966, 35.815449, 47.678196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.409779, 36.189346, 47.820187>,  <40.406067, 36.413685, 47.905380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.409779, 36.189346, 47.820187>,  <40.415966, 35.815449, 47.678196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.409779, 36.189346, 47.820187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187564, 0.346004, -0.919294,
		-0.982131, -0.080801, 0.169972,
		-0.015469, 0.934747, 0.354977,
		40.405136, 36.469772, 47.926682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.767513, 36.106987, 47.601402>,  <40.415966, 35.815449, 47.678196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.767513, 36.106987, 47.601402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.012264, 36.421490, 47.635841>,  <40.159115, 36.610191, 47.656506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.012264, 36.421490, 47.635841>,  <39.767513, 36.106987, 47.601402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.012264, 36.421490, 47.635841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420889, 0.415821, -0.806192,
		-0.669673, 0.457051, 0.585357,
		0.611875, 0.786255, 0.086096,
		40.195827, 36.657368, 47.661671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403870, 36.638332, 47.320591>,  <39.767513, 36.106987, 47.601402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403870, 36.638332, 47.320591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.770885, 36.797161, 47.329144>,  <39.991096, 36.892456, 47.334274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.770885, 36.797161, 47.329144>,  <39.403870, 36.638332, 47.320591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770885, 36.797161, 47.329144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246818, 0.610860, -0.752284,
		-0.311771, 0.684972, 0.658492,
		0.917540, 0.397068, 0.021385,
		40.046146, 36.916283, 47.335560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344860, 37.363998, 47.363525>,  <39.403870, 36.638332, 47.320591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344860, 37.363998, 47.363525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.709320, 37.317410, 47.205414>,  <39.927994, 37.289455, 47.110546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.709320, 37.317410, 47.205414>,  <39.344860, 37.363998, 47.363525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709320, 37.317410, 47.205414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286569, 0.510215, -0.810900,
		0.296129, 0.852123, 0.431502,
		0.911145, -0.116476, -0.395281,
		39.982662, 37.282467, 47.086830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501404, 38.011547, 47.131660>,  <39.344860, 37.363998, 47.363525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501404, 38.011547, 47.131660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.757927, 37.756706, 46.960625>,  <39.911839, 37.603802, 46.858006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.757927, 37.756706, 46.960625>,  <39.501404, 38.011547, 47.131660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757927, 37.756706, 46.960625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143911, 0.447505, -0.882626,
		0.753670, 0.627566, 0.195300,
		0.641304, -0.637103, -0.427585,
		39.950317, 37.565575, 46.832348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942108, 38.496674, 46.876762>,  <39.501404, 38.011547, 47.131660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942108, 38.496674, 46.876762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.953423, 38.148212, 46.680687>,  <39.960213, 37.939137, 46.563042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.953423, 38.148212, 46.680687>,  <39.942108, 38.496674, 46.876762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.953423, 38.148212, 46.680687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132461, 0.482794, -0.865658,
		0.990784, 0.089420, -0.101737,
		0.028289, -0.871157, -0.490190,
		39.961910, 37.886864, 46.533630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.347561, 38.597885, 46.345871>,  <39.942108, 38.496674, 46.876762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.347561, 38.597885, 46.345871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.164566, 38.263527, 46.224548>,  <40.054771, 38.062912, 46.151756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.164566, 38.263527, 46.224548>,  <40.347561, 38.597885, 46.345871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.164566, 38.263527, 46.224548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095078, 0.385119, -0.917956,
		0.884120, -0.391113, -0.255660,
		-0.457484, -0.835891, -0.303305,
		40.027321, 38.012760, 46.133556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.657864, 38.407024, 45.647377>,  <40.347561, 38.597885, 46.345871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.657864, 38.407024, 45.647377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.299675, 38.230644, 45.671677>,  <40.084763, 38.124817, 45.686256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.299675, 38.230644, 45.671677>,  <40.657864, 38.407024, 45.647377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299675, 38.230644, 45.671677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254368, 0.394951, -0.882786,
		0.365261, -0.805969, -0.465831,
		-0.895478, -0.440940, 0.060752,
		40.031033, 38.098362, 45.689899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.742863, 30.874493, 42.993557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.377018, 31.026892, 42.939407>,  <43.157513, 31.118330, 42.906918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.377018, 31.026892, 42.939407>,  <43.742863, 30.874493, 42.993557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.377018, 31.026892, 42.939407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036154, -0.410532, -0.911129,
		-0.402704, -0.828439, 0.389253,
		-0.914616, 0.380989, -0.135371,
		43.102634, 31.141191, 42.898796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.387814, 30.439304, 42.500965>,  <43.742863, 30.874493, 42.993557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.387814, 30.439304, 42.500965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.179592, 30.780817, 42.497375>,  <43.054661, 30.985725, 42.495220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.179592, 30.780817, 42.497375>,  <43.387814, 30.439304, 42.500965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.179592, 30.780817, 42.497375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117070, -0.081779, -0.989751,
		-0.845766, -0.514166, 0.142523,
		-0.520552, 0.853783, -0.008973,
		43.023426, 31.036951, 42.494682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.959415, 30.241911, 41.955780>,  <43.387814, 30.439304, 42.500965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.959415, 30.241911, 41.955780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.913666, 30.635868, 42.007782>,  <42.886215, 30.872242, 42.038982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.913666, 30.635868, 42.007782>,  <42.959415, 30.241911, 41.955780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.913666, 30.635868, 42.007782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252454, 0.097753, -0.962659,
		-0.960825, -0.142924, 0.237460,
		-0.114374, 0.984894, 0.130006,
		42.879353, 30.931337, 42.046783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.462044, 30.328144, 41.604668>,  <42.959415, 30.241911, 41.955780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.462044, 30.328144, 41.604668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.656918, 30.676584, 41.629463>,  <42.773842, 30.885649, 41.644341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.656918, 30.676584, 41.629463>,  <42.462044, 30.328144, 41.604668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.656918, 30.676584, 41.629463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138910, 0.147371, -0.979278,
		-0.862182, 0.468476, 0.192801,
		0.487181, 0.871098, 0.061985,
		42.803074, 30.937914, 41.648060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.065075, 30.828911, 41.305565>,  <42.462044, 30.328144, 41.604668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.065075, 30.828911, 41.305565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.431042, 30.990248, 41.299305>,  <42.650620, 31.087049, 41.295547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.431042, 30.990248, 41.299305>,  <42.065075, 30.828911, 41.305565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.431042, 30.990248, 41.299305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103534, 0.197012, -0.974919,
		-0.390142, 0.893589, 0.222009,
		0.914915, 0.403342, -0.015654,
		42.705517, 31.111250, 41.294609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.978745, 31.449938, 40.923931>,  <42.065075, 30.828911, 41.305565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.978745, 31.449938, 40.923931> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.363773, 31.341654, 40.929237>,  <42.594791, 31.276684, 40.932423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.363773, 31.341654, 40.929237>,  <41.978745, 31.449938, 40.923931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.363773, 31.341654, 40.929237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038991, 0.089878, -0.995189,
		0.268215, 0.958456, 0.097069,
		0.962570, -0.270709, 0.013265,
		42.652546, 31.260441, 40.933216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.209293, 31.913382, 40.478451>,  <41.978745, 31.449938, 40.923931>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.209293, 31.913382, 40.478451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.490467, 31.629942, 40.503002>,  <42.659172, 31.459879, 40.517735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.490467, 31.629942, 40.503002>,  <42.209293, 31.913382, 40.478451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.490467, 31.629942, 40.503002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173989, 0.087633, -0.980841,
		0.689643, 0.700149, 0.184889,
		0.702937, -0.708598, 0.061383,
		42.701347, 31.417362, 40.521416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.704929, 32.137554, 40.059662>,  <42.209293, 31.913382, 40.478451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.704929, 32.137554, 40.059662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.828056, 31.757366, 40.076870>,  <42.901932, 31.529253, 40.087196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.828056, 31.757366, 40.076870>,  <42.704929, 32.137554, 40.059662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.828056, 31.757366, 40.076870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455250, 0.107427, -0.883859,
		0.835461, 0.291654, 0.465770,
		0.307818, -0.950472, 0.043024,
		42.920403, 31.472225, 40.089779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.423683, 32.187077, 39.717285>,  <42.704929, 32.137554, 40.059662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.423683, 32.187077, 39.717285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.288555, 31.811203, 39.695824>,  <43.207478, 31.585680, 39.682945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.288555, 31.811203, 39.695824>,  <43.423683, 32.187077, 39.717285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.288555, 31.811203, 39.695824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388209, -0.087176, -0.917439,
		0.857423, -0.330754, 0.394242,
		-0.337815, -0.939682, -0.053655,
		43.187210, 31.529299, 39.679726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.026749, 31.685469, 39.475342>,  <43.423683, 32.187077, 39.717285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.026749, 31.685469, 39.475342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.656792, 31.548155, 39.409943>,  <43.434818, 31.465767, 39.370705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.656792, 31.548155, 39.409943>,  <44.026749, 31.685469, 39.475342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.656792, 31.548155, 39.409943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245102, -0.209533, -0.946584,
		0.290691, -0.915560, 0.277935,
		-0.924891, -0.343286, -0.163496,
		43.379326, 31.445169, 39.360893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.047764, 31.032887, 39.166267>,  <44.026749, 31.685469, 39.475342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.047764, 31.032887, 39.166267> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.681984, 31.167221, 39.075939>,  <43.462517, 31.247822, 39.021744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.681984, 31.167221, 39.075939>,  <44.047764, 31.032887, 39.166267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.681984, 31.167221, 39.075939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226289, -0.038304, -0.973307,
		-0.335524, -0.941140, -0.040969,
		-0.914449, 0.335839, -0.225821,
		43.407650, 31.267973, 39.008194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.167618, 30.925577, 38.505287>,  <44.047764, 31.032887, 39.166267>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.167618, 30.925577, 38.505287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.813091, 31.109379, 38.528267>,  <43.600376, 31.219660, 38.542057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.813091, 31.109379, 38.528267>,  <44.167618, 30.925577, 38.505287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.813091, 31.109379, 38.528267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054294, 0.226324, -0.972538,
		-0.459889, -0.858855, -0.225543,
		-0.886315, 0.459505, 0.057454,
		43.547195, 31.247231, 38.545502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.892540, 30.778942, 37.776562>,  <44.167618, 30.925577, 38.505287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.892540, 30.778942, 37.776562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.685459, 31.087482, 37.924622>,  <43.561211, 31.272606, 38.013458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.685459, 31.087482, 37.924622>,  <43.892540, 30.778942, 37.776562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.685459, 31.087482, 37.924622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109328, 0.369446, -0.922799,
		-0.848549, -0.518198, -0.106931,
		-0.517698, 0.771350, 0.370147,
		43.530151, 31.318888, 38.035667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.223972, 30.922211, 37.340633>,  <43.892540, 30.778942, 37.776562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.223972, 30.922211, 37.340633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.312313, 31.252510, 37.548237>,  <43.365318, 31.450689, 37.672798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.312313, 31.252510, 37.548237>,  <43.223972, 30.922211, 37.340633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.312313, 31.252510, 37.548237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249419, 0.562267, -0.788445,
		-0.942876, 0.044678, 0.330134,
		0.220849, 0.825748, 0.519005,
		43.378567, 31.500235, 37.703938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.813786, 31.446684, 37.020512>,  <43.223972, 30.922211, 37.340633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.813786, 31.446684, 37.020512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.044647, 31.681812, 37.247269>,  <43.183163, 31.822889, 37.383324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.044647, 31.681812, 37.247269>,  <42.813786, 31.446684, 37.020512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.044647, 31.681812, 37.247269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101946, 0.636883, -0.764190,
		-0.810247, 0.498847, 0.307654,
		0.577154, 0.587819, 0.566888,
		43.217793, 31.858158, 37.417336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.632858, 32.071102, 36.887032>,  <42.813786, 31.446684, 37.020512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.632858, 32.071102, 36.887032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.997139, 32.155960, 37.028801>,  <43.215706, 32.206875, 37.113861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.997139, 32.155960, 37.028801>,  <42.632858, 32.071102, 36.887032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.997139, 32.155960, 37.028801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157781, 0.614313, -0.773126,
		-0.381740, 0.760009, 0.525985,
		0.910703, 0.212143, 0.354423,
		43.270351, 32.219604, 37.135128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.760529, 32.764771, 36.782833>,  <42.632858, 32.071102, 36.887032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.760529, 32.764771, 36.782833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.119648, 32.596378, 36.834576>,  <43.335121, 32.495342, 36.865620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.119648, 32.596378, 36.834576>,  <42.760529, 32.764771, 36.782833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.119648, 32.596378, 36.834576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373103, 0.571011, -0.731260,
		0.233981, 0.704788, 0.669722,
		0.897801, -0.420976, 0.129353,
		43.388988, 32.470085, 36.873383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.169342, 33.298954, 36.972801>,  <42.760529, 32.764771, 36.782833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.169342, 33.298954, 36.972801> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.399197, 33.021713, 36.798721>,  <43.537109, 32.855370, 36.694271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.399197, 33.021713, 36.798721>,  <43.169342, 33.298954, 36.972801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.399197, 33.021713, 36.798721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260757, 0.659110, -0.705393,
		0.775754, 0.291865, 0.559482,
		0.574640, -0.693100, -0.435202,
		43.571590, 32.813782, 36.668159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.864075, 33.580494, 36.812714>,  <43.169342, 33.298954, 36.972801>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.864075, 33.580494, 36.812714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.829048, 33.269299, 36.563854>,  <43.808033, 33.082581, 36.414539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.829048, 33.269299, 36.563854>,  <43.864075, 33.580494, 36.812714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.829048, 33.269299, 36.563854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345412, 0.562085, -0.751499,
		0.934357, -0.280700, 0.219509,
		-0.087563, -0.777989, -0.622146,
		43.802780, 33.035900, 36.377209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.396576, 33.712997, 36.352509>,  <43.864075, 33.580494, 36.812714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.396576, 33.712997, 36.352509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.156490, 33.443577, 36.179966>,  <44.012440, 33.281925, 36.076443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.156490, 33.443577, 36.179966>,  <44.396576, 33.712997, 36.352509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.156490, 33.443577, 36.179966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132333, 0.448241, -0.884063,
		0.788814, -0.587712, -0.179909,
		-0.600217, -0.673553, -0.431352,
		43.976425, 33.241512, 36.050560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.738525, 33.465912, 35.743950>,  <44.396576, 33.712997, 36.352509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.738525, 33.465912, 35.743950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.361317, 33.353252, 35.673080>,  <44.134991, 33.285656, 35.630558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.361317, 33.353252, 35.673080>,  <44.738525, 33.465912, 35.743950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.361317, 33.353252, 35.673080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102059, 0.261977, -0.959662,
		0.316702, -0.923061, -0.218305,
		-0.943019, -0.281647, -0.177175,
		44.078411, 33.268757, 35.619926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.383755, 33.159985, 35.552475>,  <44.738525, 33.465912, 35.743950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.383755, 33.159985, 35.552475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.373974, 32.990498, 35.190289>,  <45.368107, 32.888805, 34.972977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.373974, 32.990498, 35.190289>,  <45.383755, 33.159985, 35.552475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.373974, 32.990498, 35.190289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412147, -0.829452, 0.377019,
		-0.910789, -0.363967, 0.194912,
		-0.024448, -0.423718, -0.905464,
		45.366638, 32.863380, 34.918648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.560528, 33.723148, 35.868572>,  <45.383755, 33.159985, 35.552475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.560528, 33.723148, 35.868572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.804440, 33.931561, 36.107471>,  <45.950787, 34.056606, 36.250809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.804440, 33.931561, 36.107471>,  <45.560528, 33.723148, 35.868572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.804440, 33.931561, 36.107471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678493, -0.046325, 0.733145,
		0.409655, -0.852282, 0.325265,
		0.609778, 0.521027, 0.597245,
		45.987373, 34.087868, 36.286644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.529652, 33.388439, 36.558609>,  <45.560528, 33.723148, 35.868572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.529652, 33.388439, 36.558609> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.689178, 33.746574, 36.637913>,  <45.784893, 33.961456, 36.685493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.689178, 33.746574, 36.637913>,  <45.529652, 33.388439, 36.558609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.689178, 33.746574, 36.637913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526846, 0.046753, 0.848674,
		0.750585, -0.442917, 0.490354,
		0.398818, 0.895343, 0.198257,
		45.808823, 34.015179, 36.697392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.777397, 33.327671, 37.352917>,  <45.529652, 33.388439, 36.558609>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.777397, 33.327671, 37.352917> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.758514, 33.717682, 37.266117>,  <45.747185, 33.951691, 37.214039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.758514, 33.717682, 37.266117>,  <45.777397, 33.327671, 37.352917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.758514, 33.717682, 37.266117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333223, 0.189423, 0.923624,
		0.941666, 0.115908, 0.315961,
		-0.047205, 0.975030, -0.216997,
		45.744354, 34.010193, 37.201019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.140720, 33.691723, 37.837021>,  <45.777397, 33.327671, 37.352917>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.140720, 33.691723, 37.837021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.874939, 33.945835, 37.679585>,  <45.715469, 34.098301, 37.585121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.874939, 33.945835, 37.679585>,  <46.140720, 33.691723, 37.837021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.874939, 33.945835, 37.679585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382021, 0.163922, 0.909500,
		0.642306, 0.754685, 0.133771,
		-0.664457, 0.635280, -0.393594,
		45.675602, 34.136417, 37.561508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.086441, 34.273102, 38.347507>,  <46.140720, 33.691723, 37.837021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.086441, 34.273102, 38.347507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.752117, 34.325489, 38.134235>,  <45.551525, 34.356922, 38.006271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.752117, 34.325489, 38.134235>,  <46.086441, 34.273102, 38.347507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.752117, 34.325489, 38.134235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494983, 0.240406, 0.834983,
		0.237532, 0.961797, -0.136108,
		-0.835805, 0.130964, -0.533178,
		45.501377, 34.364777, 37.974281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.716347, 34.893600, 38.614166>,  <46.086441, 34.273102, 38.347507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.716347, 34.893600, 38.614166> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.432961, 34.687584, 38.421165>,  <45.262928, 34.563976, 38.305363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.432961, 34.687584, 38.421165>,  <45.716347, 34.893600, 38.614166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.432961, 34.687584, 38.421165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677241, 0.303804, 0.670110,
		-0.198544, 0.801523, -0.564039,
		-0.708466, -0.515037, -0.482506,
		45.220421, 34.533073, 38.276413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.177677, 35.319965, 38.672386>,  <45.716347, 34.893600, 38.614166>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.177677, 35.319965, 38.672386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.035717, 34.949726, 38.619747>,  <44.950539, 34.727585, 38.588161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.035717, 34.949726, 38.619747>,  <45.177677, 35.319965, 38.672386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.035717, 34.949726, 38.619747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675477, 0.156549, 0.720572,
		-0.646355, 0.344626, -0.680777,
		-0.354902, -0.925595, -0.131601,
		44.929245, 34.672047, 38.580265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.509586, 35.400047, 38.859871>,  <45.177677, 35.319965, 38.672386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.509586, 35.400047, 38.859871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.506973, 35.000057, 38.859657>,  <44.505405, 34.760063, 38.859528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.506973, 35.000057, 38.859657>,  <44.509586, 35.400047, 38.859871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.506973, 35.000057, 38.859657> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625508, 0.003664, 0.780210,
		-0.780191, 0.005429, -0.625518,
		-0.006528, -0.999979, -0.000537,
		44.505016, 34.700062, 38.859497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.832829, 35.243439, 38.864029>,  <44.509586, 35.400047, 38.859871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.832829, 35.243439, 38.864029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.044758, 34.944313, 39.024059>,  <44.171917, 34.764835, 39.120075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.044758, 34.944313, 39.024059>,  <43.832829, 35.243439, 38.864029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.044758, 34.944313, 39.024059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608173, -0.006224, 0.793780,
		-0.591112, -0.663875, -0.458100,
		0.529822, -0.747817, 0.400072,
		44.203705, 34.719967, 39.144081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.386356, 34.727684, 38.973919>,  <43.832829, 35.243439, 38.864029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.386356, 34.727684, 38.973919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.693562, 34.629223, 39.210415>,  <43.877884, 34.570145, 39.352310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.693562, 34.629223, 39.210415>,  <43.386356, 34.727684, 38.973919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.693562, 34.629223, 39.210415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612903, -0.014751, 0.790020,
		-0.185748, -0.969118, -0.162200,
		0.768016, -0.246157, 0.591235,
		43.923965, 34.555374, 39.387787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.948105, 34.429081, 39.465508>,  <43.386356, 34.727684, 38.973919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.948105, 34.429081, 39.465508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.307369, 34.422260, 39.641243>,  <43.522926, 34.418167, 39.746685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.307369, 34.422260, 39.641243>,  <42.948105, 34.429081, 39.465508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.307369, 34.422260, 39.641243> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436538, -0.153723, 0.886456,
		0.052422, -0.987967, -0.145511,
		0.898157, -0.017051, 0.439344,
		43.576817, 34.417145, 39.773045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.021286, 33.781036, 39.781715>,  <42.948105, 34.429081, 39.465508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.021286, 33.781036, 39.781715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.267284, 34.024845, 39.981815>,  <43.414883, 34.171131, 40.101875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.267284, 34.024845, 39.981815>,  <43.021286, 33.781036, 39.781715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.267284, 34.024845, 39.981815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279996, -0.424268, 0.861161,
		0.737141, -0.669683, -0.090260,
		0.615000, 0.609525, 0.500255,
		43.451786, 34.207703, 40.131893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.310398, 33.438278, 40.379284>,  <43.021286, 33.781036, 39.781715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.310398, 33.438278, 40.379284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.368645, 33.821171, 40.479294>,  <43.403591, 34.050907, 40.539299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.368645, 33.821171, 40.479294>,  <43.310398, 33.438278, 40.379284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.368645, 33.821171, 40.479294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191433, -0.220683, 0.956375,
		0.970644, -0.187123, 0.151111,
		0.145612, 0.957227, 0.250026,
		43.412327, 34.108337, 40.554302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.852333, 33.442993, 40.934929>,  <43.310398, 33.438278, 40.379284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.852333, 33.442993, 40.934929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.666115, 33.794670, 40.975502>,  <43.554382, 34.005676, 40.999847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.666115, 33.794670, 40.975502>,  <43.852333, 33.442993, 40.934929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.666115, 33.794670, 40.975502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021351, -0.103422, 0.994408,
		0.884765, 0.465110, 0.029376,
		-0.465547, 0.879191, 0.101434,
		43.526451, 34.058426, 41.005932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.080769, 33.776100, 41.609531>,  <43.852333, 33.442993, 40.934929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.080769, 33.776100, 41.609531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.757874, 34.009632, 41.574867>,  <43.564137, 34.149750, 41.554070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.757874, 34.009632, 41.574867>,  <44.080769, 33.776100, 41.609531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.757874, 34.009632, 41.574867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090076, 0.023252, 0.995663,
		0.583311, 0.811544, 0.033819,
		-0.807239, 0.583828, -0.086664,
		43.515701, 34.184780, 41.548866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.242477, 34.344780, 42.039459>,  <44.080769, 33.776100, 41.609531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.242477, 34.344780, 42.039459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.847462, 34.323086, 41.980362>,  <43.610451, 34.310070, 41.944904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.847462, 34.323086, 41.980362>,  <44.242477, 34.344780, 42.039459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.847462, 34.323086, 41.980362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147524, -0.008049, 0.989026,
		-0.054825, 0.998496, -0.000052,
		-0.987538, -0.054231, -0.147743,
		43.551201, 34.306816, 41.936039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.871040, 34.753174, 42.604649>,  <44.242477, 34.344780, 42.039459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.871040, 34.753174, 42.604649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.622292, 34.475361, 42.459930>,  <43.473042, 34.308674, 42.373100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.622292, 34.475361, 42.459930>,  <43.871040, 34.753174, 42.604649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.622292, 34.475361, 42.459930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238997, -0.271631, 0.932254,
		-0.745757, 0.666211, 0.002928,
		-0.621873, -0.694535, -0.361793,
		43.435730, 34.267002, 42.351391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.284771, 34.855354, 43.066372>,  <43.871040, 34.753174, 42.604649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.284771, 34.855354, 43.066372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.223858, 34.503452, 42.886219>,  <43.187309, 34.292313, 42.778126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.223858, 34.503452, 42.886219>,  <43.284771, 34.855354, 43.066372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.223858, 34.503452, 42.886219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266009, -0.402397, 0.875966,
		-0.951866, 0.253201, -0.172744,
		-0.152284, -0.879754, -0.450382,
		43.178173, 34.239525, 42.751106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.668575, 34.619644, 43.314674>,  <43.284771, 34.855354, 43.066372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.668575, 34.619644, 43.314674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.862984, 34.300068, 43.172985>,  <42.979630, 34.108322, 43.087971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.862984, 34.300068, 43.172985>,  <42.668575, 34.619644, 43.314674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.862984, 34.300068, 43.172985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388799, -0.560662, 0.731090,
		-0.782699, -0.217602, -0.583121,
		0.486021, -0.798941, -0.354227,
		43.008789, 34.060387, 43.066715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.151344, 34.079475, 43.154953>,  <42.668575, 34.619644, 43.314674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.151344, 34.079475, 43.154953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.506966, 33.913166, 43.231594>,  <42.720341, 33.813381, 43.277580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.506966, 33.913166, 43.231594>,  <42.151344, 34.079475, 43.154953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.506966, 33.913166, 43.231594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436550, -0.643942, 0.628301,
		-0.137844, -0.642242, -0.754006,
		0.889058, -0.415769, 0.191607,
		42.773682, 33.788437, 43.289078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<42.007774, 37.239155, 40.005970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.625042, 37.168491, 40.098282>,  <41.395401, 37.126091, 40.153667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.625042, 37.168491, 40.098282>,  <42.007774, 37.239155, 40.005970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.625042, 37.168491, 40.098282> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132640, -0.441090, -0.887607,
		0.258600, -0.879903, 0.398618,
		-0.956835, -0.176662, 0.230776,
		41.337990, 37.115494, 40.167515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.820580, 36.610401, 39.720428>,  <42.007774, 37.239155, 40.005970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.820580, 36.610401, 39.720428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.476311, 36.807636, 39.771198>,  <41.269749, 36.925980, 39.801659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.476311, 36.807636, 39.771198>,  <41.820580, 36.610401, 39.720428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.476311, 36.807636, 39.771198> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237011, -0.167360, -0.956983,
		-0.450636, -0.853729, 0.260909,
		-0.860670, 0.493089, 0.126925,
		41.218109, 36.955563, 39.809277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.403053, 36.263489, 39.296383>,  <41.820580, 36.610401, 39.720428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.403053, 36.263489, 39.296383> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.182507, 36.590782, 39.361481>,  <41.050179, 36.787159, 39.400539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.182507, 36.590782, 39.361481>,  <41.403053, 36.263489, 39.296383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.182507, 36.590782, 39.361481> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454003, -0.130625, -0.881373,
		-0.699908, -0.559852, 0.443503,
		-0.551371, 0.818231, 0.162749,
		41.017094, 36.836250, 39.410305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.731163, 36.096603, 39.086845>,  <41.403053, 36.263489, 39.296383>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.731163, 36.096603, 39.086845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.750267, 36.496124, 39.091145>,  <40.761730, 36.735836, 39.093723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.750267, 36.496124, 39.091145>,  <40.731163, 36.096603, 39.086845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.750267, 36.496124, 39.091145> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486471, 0.032652, -0.873087,
		-0.872391, 0.036470, 0.487447,
		0.047758, 0.998801, 0.010743,
		40.764595, 36.795765, 39.094368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064079, 36.307407, 39.002827>,  <40.731163, 36.096603, 39.086845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064079, 36.307407, 39.002827> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298359, 36.611370, 38.890041>,  <40.438927, 36.793747, 38.822369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298359, 36.611370, 38.890041>,  <40.064079, 36.307407, 39.002827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.298359, 36.611370, 38.890041> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414817, -0.017840, -0.909730,
		-0.696338, 0.649790, 0.304772,
		0.585696, 0.759904, -0.281967,
		40.474068, 36.839340, 38.805450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650341, 36.740452, 38.648399>,  <40.064079, 36.307407, 39.002827>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650341, 36.740452, 38.648399> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.987099, 36.914097, 38.520180>,  <40.189156, 37.018284, 38.443249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.987099, 36.914097, 38.520180>,  <39.650341, 36.740452, 38.648399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.987099, 36.914097, 38.520180> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439543, 0.207040, -0.874034,
		-0.313063, 0.876744, 0.365118,
		0.841899, 0.434113, -0.320551,
		40.239670, 37.044331, 38.424015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461948, 37.344334, 38.322643>,  <39.650341, 36.740452, 38.648399>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.461948, 37.344334, 38.322643> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827595, 37.274529, 38.176254>,  <40.046982, 37.232647, 38.088421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827595, 37.274529, 38.176254>,  <39.461948, 37.344334, 38.322643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.827595, 37.274529, 38.176254> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329724, 0.205315, -0.921481,
		0.235947, 0.963012, 0.130142,
		0.914118, -0.174509, -0.365972,
		40.101830, 37.222176, 38.066463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772163, 37.978600, 38.079639>,  <39.461948, 37.344334, 38.322643>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.772163, 37.978600, 38.079639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932064, 37.666447, 37.887306>,  <40.028004, 37.479156, 37.771908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932064, 37.666447, 37.887306>,  <39.772163, 37.978600, 38.079639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932064, 37.666447, 37.887306> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470674, 0.275375, -0.838233,
		0.786552, 0.561401, -0.257225,
		0.399751, -0.780383, -0.480834,
		40.051991, 37.432331, 37.743057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648491, 38.351322, 37.542393>,  <39.772163, 37.978600, 38.079639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648491, 38.351322, 37.542393> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766262, 37.987015, 37.426590>,  <39.836926, 37.768433, 37.357109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766262, 37.987015, 37.426590>,  <39.648491, 38.351322, 37.542393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766262, 37.987015, 37.426590> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511656, 0.105636, -0.852672,
		0.807167, 0.399182, -0.434896,
		0.294431, -0.910766, -0.289510,
		39.854591, 37.713783, 37.339737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981270, 38.450844, 36.864395>,  <39.648491, 38.351322, 37.542393>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.981270, 38.450844, 36.864395> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883286, 38.064808, 36.901497>,  <39.824493, 37.833187, 36.923759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883286, 38.064808, 36.901497>,  <39.981270, 38.450844, 36.864395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.883286, 38.064808, 36.901497> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503901, 0.044996, -0.862589,
		0.828298, -0.258040, -0.497330,
		-0.244961, -0.965086, 0.092756,
		39.809795, 37.775284, 36.929325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.110310, 38.145241, 36.244846>,  <39.981270, 38.450844, 36.864395>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.110310, 38.145241, 36.244846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857738, 37.880699, 36.406792>,  <39.706196, 37.721973, 36.503960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857738, 37.880699, 36.406792>,  <40.110310, 38.145241, 36.244846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.857738, 37.880699, 36.406792> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544640, 0.006601, -0.838644,
		0.551967, -0.750046, -0.364367,
		-0.631427, -0.661352, 0.404862,
		39.668312, 37.682293, 36.528252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921463, 37.638195, 35.715870>,  <40.110310, 38.145241, 36.244846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.921463, 37.638195, 35.715870> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630043, 37.542538, 35.972630>,  <39.455193, 37.485146, 36.126686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630043, 37.542538, 35.972630>,  <39.921463, 37.638195, 35.715870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630043, 37.542538, 35.972630> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517783, -0.421241, -0.744618,
		0.448462, -0.874853, 0.183071,
		-0.728548, -0.239142, 0.641895,
		39.411480, 37.470795, 36.165199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689125, 36.822498, 35.671761>,  <39.921463, 37.638195, 35.715870>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.689125, 36.822498, 35.671761> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389057, 37.031960, 35.833271>,  <39.209019, 37.157635, 35.930180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389057, 37.031960, 35.833271>,  <39.689125, 36.822498, 35.671761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389057, 37.031960, 35.833271> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656425, -0.516108, -0.550217,
		-0.079728, -0.677806, 0.730905,
		-0.750166, 0.523652, 0.403781,
		39.164009, 37.189056, 35.954407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142902, 36.306023, 35.888214>,  <39.689125, 36.822498, 35.671761>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142902, 36.306023, 35.888214> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022671, 36.663948, 35.756176>,  <38.950531, 36.878704, 35.676952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022671, 36.663948, 35.756176>,  <39.142902, 36.306023, 35.888214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.022671, 36.663948, 35.756176> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411351, -0.433886, -0.801581,
		-0.860489, -0.105153, 0.498499,
		-0.300580, 0.894810, -0.330099,
		38.932495, 36.932392, 35.657146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456635, 36.378193, 35.766541>,  <39.142902, 36.306023, 35.888214>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.456635, 36.378193, 35.766541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606670, 36.042770, 35.608486>,  <38.696693, 35.841518, 35.513653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606670, 36.042770, 35.608486>,  <38.456635, 36.378193, 35.766541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606670, 36.042770, 35.608486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101764, -0.460930, 0.881582,
		-0.921386, -0.290462, -0.258225,
		0.375090, -0.838556, -0.395136,
		38.719196, 35.791203, 35.489944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953342, 35.820099, 35.947372>,  <38.456635, 36.378193, 35.766541>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953342, 35.820099, 35.947372> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295158, 35.639950, 35.843884>,  <38.500248, 35.531860, 35.781792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295158, 35.639950, 35.843884>,  <37.953342, 35.820099, 35.947372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295158, 35.639950, 35.843884> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148131, -0.688755, 0.709700,
		-0.497821, -0.568140, -0.655279,
		0.854536, -0.450371, -0.258717,
		38.551517, 35.504837, 35.766270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818497, 35.138092, 35.951397>,  <37.953342, 35.820099, 35.947372>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818497, 35.138092, 35.951397> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216625, 35.131088, 35.989399>,  <38.455502, 35.126884, 36.012199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216625, 35.131088, 35.989399>,  <37.818497, 35.138092, 35.951397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216625, 35.131088, 35.989399> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083955, -0.643403, 0.760911,
		0.047804, -0.765328, -0.641863,
		0.995322, -0.017513, 0.095010,
		38.515221, 35.125835, 36.017902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015648, 34.466816, 36.156929>,  <37.818497, 35.138092, 35.951397>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015648, 34.466816, 36.156929> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361263, 34.648712, 36.243324>,  <38.568630, 34.757851, 36.295162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361263, 34.648712, 36.243324>,  <38.015648, 34.466816, 36.156929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361263, 34.648712, 36.243324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120146, -0.602899, 0.788719,
		0.488886, -0.655530, -0.575562,
		0.864034, 0.454745, 0.215989,
		38.620472, 34.785137, 36.308121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523003, 33.975758, 36.182297>,  <38.015648, 34.466816, 36.156929>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523003, 33.975758, 36.182297> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664822, 34.270618, 36.412395>,  <38.749912, 34.447536, 36.550453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664822, 34.270618, 36.412395>,  <38.523003, 33.975758, 36.182297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664822, 34.270618, 36.412395> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037890, -0.626029, 0.778879,
		0.934271, -0.254350, -0.249885,
		0.354543, 0.737153, 0.575243,
		38.771183, 34.491764, 36.584969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885639, 33.626026, 36.670254>,  <38.523003, 33.975758, 36.182297>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885639, 33.626026, 36.670254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863480, 33.989296, 36.836220>,  <38.850182, 34.207256, 36.935799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863480, 33.989296, 36.836220>,  <38.885639, 33.626026, 36.670254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863480, 33.989296, 36.836220> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019021, -0.416440, 0.908964,
		0.998283, 0.042467, 0.040346,
		-0.055402, 0.908171, 0.414917,
		38.846859, 34.261745, 36.960693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391655, 33.668510, 37.127823>,  <38.885639, 33.626026, 36.670254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391655, 33.668510, 37.127823> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143921, 33.959736, 37.245369>,  <38.995281, 34.134472, 37.315895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143921, 33.959736, 37.245369>,  <39.391655, 33.668510, 37.127823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.143921, 33.959736, 37.245369> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160058, -0.249344, 0.955096,
		0.768641, 0.638557, 0.037895,
		-0.619332, 0.728061, 0.293863,
		38.958122, 34.178154, 37.333527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654167, 34.018532, 37.717297>,  <39.391655, 33.668510, 37.127823>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654167, 34.018532, 37.717297> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275776, 34.135227, 37.773891>,  <39.048740, 34.205246, 37.807850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275776, 34.135227, 37.773891>,  <39.654167, 34.018532, 37.717297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.275776, 34.135227, 37.773891> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081648, -0.207982, 0.974719,
		0.313792, 0.933612, 0.172926,
		-0.945975, 0.291740, 0.141490,
		38.991985, 34.222748, 37.816338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715576, 34.504051, 38.302475>,  <39.654167, 34.018532, 37.717297>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.715576, 34.504051, 38.302475> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333763, 34.384853, 38.305851>,  <39.104675, 34.313335, 38.307877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333763, 34.384853, 38.305851>,  <39.715576, 34.504051, 38.302475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333763, 34.384853, 38.305851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021355, -0.040103, 0.998967,
		-0.297349, 0.953725, 0.044643,
		-0.954530, -0.297995, 0.008442,
		39.047405, 34.295456, 38.308384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416882, 34.919781, 38.772690>,  <39.715576, 34.504051, 38.302475>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416882, 34.919781, 38.772690> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197147, 34.585567, 38.777088>,  <39.065308, 34.385040, 38.779728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197147, 34.585567, 38.777088>,  <39.416882, 34.919781, 38.772690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197147, 34.585567, 38.777088> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039533, 0.039127, 0.998452,
		-0.834669, 0.548046, -0.054525,
		-0.549331, -0.835533, 0.010992,
		39.032349, 34.334908, 38.780384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833405, 35.046749, 39.224972>,  <39.416882, 34.919781, 38.772690>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.833405, 35.046749, 39.224972> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856716, 34.647438, 39.222126>,  <38.870705, 34.407852, 39.220417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856716, 34.647438, 39.222126>,  <38.833405, 35.046749, 39.224972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.856716, 34.647438, 39.222126> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182719, -0.017676, 0.983006,
		-0.981436, -0.055990, -0.183434,
		0.058281, -0.998275, -0.007118,
		38.874199, 34.347954, 39.219990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385864, 34.907284, 39.698677>,  <38.833405, 35.046749, 39.224972>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385864, 34.907284, 39.698677> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579277, 34.558456, 39.668472>,  <38.695324, 34.349159, 39.650349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579277, 34.558456, 39.668472>,  <38.385864, 34.907284, 39.698677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579277, 34.558456, 39.668472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011950, -0.092836, 0.995610,
		-0.875247, -0.480504, -0.055310,
		0.483529, -0.872065, -0.075512,
		38.724335, 34.296837, 39.645817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092358, 34.449703, 40.147938>,  <38.385864, 34.907284, 39.698677>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.092358, 34.449703, 40.147938> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438782, 34.254333, 40.105255>,  <38.646637, 34.137112, 40.079643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438782, 34.254333, 40.105255>,  <38.092358, 34.449703, 40.147938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438782, 34.254333, 40.105255> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041325, -0.142774, 0.988892,
		-0.498235, -0.860846, -0.103466,
		0.866057, -0.488425, -0.106709,
		38.698597, 34.107807, 40.073242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018890, 33.698032, 40.370941>,  <38.092358, 34.449703, 40.147938>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018890, 33.698032, 40.370941> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396969, 33.817581, 40.423527>,  <38.623814, 33.889313, 40.455078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396969, 33.817581, 40.423527>,  <38.018890, 33.698032, 40.370941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396969, 33.817581, 40.423527> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038309, -0.298348, 0.953688,
		0.324255, -0.906456, -0.270547,
		0.945194, 0.298874, 0.131467,
		38.680527, 33.907242, 40.462967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800400, 33.091003, 40.651463>,  <38.018890, 33.698032, 40.370941>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800400, 33.091003, 40.651463> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542919, 32.788918, 40.700924>,  <37.388432, 32.607666, 40.730602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542919, 32.788918, 40.700924>,  <37.800400, 33.091003, 40.651463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542919, 32.788918, 40.700924> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507497, 0.300326, -0.807620,
		0.572793, -0.582622, -0.576592,
		-0.643703, -0.755219, 0.123655,
		37.349808, 32.562351, 40.738022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737446, 32.802208, 39.950344>,  <37.800400, 33.091003, 40.651463>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737446, 32.802208, 39.950344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421032, 32.682457, 40.163750>,  <37.231182, 32.610607, 40.291794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421032, 32.682457, 40.163750>,  <37.737446, 32.802208, 39.950344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421032, 32.682457, 40.163750> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599719, 0.207229, -0.772912,
		0.120827, -0.931361, -0.343464,
		-0.791036, -0.299370, 0.533516,
		37.183720, 32.592644, 40.323803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317051, 32.524689, 39.398136>,  <37.737446, 32.802208, 39.950344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317051, 32.524689, 39.398136> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090984, 32.585567, 39.722462>,  <36.955345, 32.622097, 39.917057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090984, 32.585567, 39.722462>,  <37.317051, 32.524689, 39.398136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090984, 32.585567, 39.722462> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722628, 0.382810, -0.575557,
		-0.397987, -0.911204, -0.106369,
		-0.565168, 0.152199, 0.810814,
		36.921432, 32.631226, 39.965706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677364, 32.336926, 39.147537>,  <37.317051, 32.524689, 39.398136>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677364, 32.336926, 39.147537> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616085, 32.585491, 39.454880>,  <36.579319, 32.734631, 39.639286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616085, 32.585491, 39.454880>,  <36.677364, 32.336926, 39.147537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616085, 32.585491, 39.454880> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707574, 0.473796, -0.524267,
		-0.689833, -0.623986, 0.367114,
		-0.153198, 0.621417, 0.768357,
		36.570126, 32.771915, 39.685387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960968, 32.220833, 39.254005>,  <36.677364, 32.336926, 39.147537>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960968, 32.220833, 39.254005> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078583, 32.569115, 39.411697>,  <36.149151, 32.778084, 39.506313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078583, 32.569115, 39.411697>,  <35.960968, 32.220833, 39.254005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078583, 32.569115, 39.411697> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666713, 0.482391, -0.568148,
		-0.684861, -0.095777, 0.722352,
		0.294041, 0.870704, 0.394226,
		36.166794, 32.830326, 39.529964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341019, 32.562832, 39.406845>,  <35.960968, 32.220833, 39.254005>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341019, 32.562832, 39.406845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614170, 32.855038, 39.408836>,  <35.778061, 33.030361, 39.410030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614170, 32.855038, 39.408836>,  <35.341019, 32.562832, 39.406845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614170, 32.855038, 39.408836> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607838, 0.571948, -0.550826,
		-0.405235, 0.373120, 0.834606,
		0.682875, 0.730518, 0.004976,
		35.819031, 33.074192, 39.410328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972950, 33.183395, 39.681618>,  <35.341019, 32.562832, 39.406845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972950, 33.183395, 39.681618> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297504, 33.314594, 39.488094>,  <35.492237, 33.393314, 39.371979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297504, 33.314594, 39.488094>,  <34.972950, 33.183395, 39.681618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297504, 33.314594, 39.488094> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557383, 0.683407, -0.471464,
		0.176000, 0.652206, 0.737327,
		0.811386, 0.327997, -0.483808,
		35.540920, 33.412994, 39.342953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928524, 33.926762, 39.602909>,  <34.972950, 33.183395, 39.681618>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928524, 33.926762, 39.602909> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183285, 33.873936, 39.299088>,  <35.336140, 33.842239, 39.116795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183285, 33.873936, 39.299088>,  <34.928524, 33.926762, 39.602909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183285, 33.873936, 39.299088> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631967, 0.474853, -0.612481,
		0.441559, 0.870100, 0.218976,
		0.636901, -0.132061, -0.759550,
		35.374355, 33.834316, 39.071224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040272, 34.603813, 39.248768>,  <34.928524, 33.926762, 39.602909>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040272, 34.603813, 39.248768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104992, 34.309486, 38.985741>,  <35.143826, 34.132889, 38.827927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104992, 34.309486, 38.985741>,  <35.040272, 34.603813, 39.248768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104992, 34.309486, 38.985741> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564092, 0.477784, -0.673441,
		0.809704, 0.479892, -0.337763,
		0.161801, -0.735817, -0.657566,
		35.153534, 34.088741, 38.788471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424171, 34.882942, 38.706932>,  <35.040272, 34.603813, 39.248768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424171, 34.882942, 38.706932> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240253, 34.557484, 38.564629>,  <35.129902, 34.362209, 38.479248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240253, 34.557484, 38.564629>,  <35.424171, 34.882942, 38.706932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240253, 34.557484, 38.564629> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481615, 0.565060, -0.669891,
		0.746079, -0.136677, -0.651679,
		-0.459796, -0.813650, -0.355754,
		35.102314, 34.313389, 38.457901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246288, 35.072144, 38.045521>,  <35.424171, 34.882942, 38.706932>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246288, 35.072144, 38.045521> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015160, 34.746113, 38.062366>,  <34.876484, 34.550495, 38.072475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015160, 34.746113, 38.062366>,  <35.246288, 35.072144, 38.045521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015160, 34.746113, 38.062366> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671577, 0.445499, -0.592043,
		0.463799, -0.370378, -0.804805,
		-0.577819, -0.815077, 0.042115,
		34.841812, 34.501591, 38.075001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044098, 34.983990, 37.326904>,  <35.246288, 35.072144, 38.045521>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044098, 34.983990, 37.326904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791325, 34.782631, 37.562618>,  <34.639660, 34.661816, 37.704044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791325, 34.782631, 37.562618>,  <35.044098, 34.983990, 37.326904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791325, 34.782631, 37.562618> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773040, 0.355097, -0.525656,
		0.055360, -0.787719, -0.613542,
		-0.631936, -0.503393, 0.589280,
		34.601742, 34.631615, 37.739403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.574608, 31.511854, 43.677887> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.217606, 31.571510, 43.848156>,  <39.003407, 31.607304, 43.950317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.217606, 31.571510, 43.848156>,  <39.574608, 31.511854, 43.677887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217606, 31.571510, 43.848156> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402151, 0.164208, -0.900728,
		-0.204236, -0.975086, -0.086578,
		-0.892503, 0.149143, 0.425669,
		38.949856, 31.616253, 43.975857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064606, 31.075327, 43.291004>,  <39.574608, 31.511854, 43.677887>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.064606, 31.075327, 43.291004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.853275, 31.363792, 43.470245>,  <38.726475, 31.536871, 43.577789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.853275, 31.363792, 43.470245>,  <39.064606, 31.075327, 43.291004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853275, 31.363792, 43.470245> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554709, 0.106374, -0.825216,
		-0.642781, -0.684551, 0.343835,
		-0.528327, 0.721162, 0.448102,
		38.694778, 31.580141, 43.604675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342026, 30.850653, 43.266285>,  <39.064606, 31.075327, 43.291004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342026, 30.850653, 43.266285> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.306683, 31.246401, 43.312477>,  <38.285477, 31.483850, 43.340195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.306683, 31.246401, 43.312477>,  <38.342026, 30.850653, 43.266285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306683, 31.246401, 43.312477> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614587, 0.037086, -0.787977,
		-0.783885, -0.140601, 0.604777,
		-0.088362, 0.989372, 0.115483,
		38.280174, 31.543213, 43.347122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615234, 30.972666, 43.203430>,  <38.342026, 30.850653, 43.266285>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615234, 30.972666, 43.203430> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.760403, 31.342270, 43.155273>,  <37.847504, 31.564032, 43.126377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.760403, 31.342270, 43.155273>,  <37.615234, 30.972666, 43.203430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760403, 31.342270, 43.155273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551703, 0.108953, -0.826894,
		-0.750940, 0.366521, 0.549320,
		0.362924, 0.924008, -0.120394,
		37.869282, 31.619473, 43.119156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022709, 31.386202, 43.054710>,  <37.615234, 30.972666, 43.203430>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022709, 31.386202, 43.054710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.344341, 31.577394, 42.913300>,  <37.537323, 31.692110, 42.828453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.344341, 31.577394, 42.913300>,  <37.022709, 31.386202, 43.054710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344341, 31.577394, 42.913300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485271, 0.184152, -0.854752,
		-0.343454, 0.858848, 0.380025,
		0.804084, 0.477983, -0.353526,
		37.585567, 31.720789, 42.807243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811203, 31.689659, 42.411961>,  <37.022709, 31.386202, 43.054710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811203, 31.689659, 42.411961> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.197803, 31.768267, 42.345917>,  <37.429764, 31.815432, 42.306290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.197803, 31.768267, 42.345917>,  <36.811203, 31.689659, 42.411961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197803, 31.768267, 42.345917> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219093, 0.296544, -0.929549,
		-0.133710, 0.934582, 0.329665,
		0.966499, 0.196517, -0.165109,
		37.487755, 31.827221, 42.296383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940231, 32.458115, 42.348309>,  <36.811203, 31.689659, 42.411961>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940231, 32.458115, 42.348309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.209854, 32.245041, 42.143608>,  <37.371628, 32.117195, 42.020786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.209854, 32.245041, 42.143608>,  <36.940231, 32.458115, 42.348309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209854, 32.245041, 42.143608> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314730, 0.419660, -0.851370,
		0.668278, 0.734935, 0.115221,
		0.674055, -0.532688, -0.511756,
		37.412071, 32.085236, 41.990082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036606, 32.945904, 41.845573>,  <36.940231, 32.458115, 42.348309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036606, 32.945904, 41.845573> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.224533, 32.620850, 41.707649>,  <37.337288, 32.425816, 41.624893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.224533, 32.620850, 41.707649>,  <37.036606, 32.945904, 41.845573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224533, 32.620850, 41.707649> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067561, 0.422561, -0.903813,
		0.880175, 0.401331, 0.253429,
		0.469817, -0.812635, -0.344813,
		37.365479, 32.377060, 41.604206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623913, 33.147461, 41.428734>,  <37.036606, 32.945904, 41.845573>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.623913, 33.147461, 41.428734> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.523979, 32.784370, 41.293911>,  <37.464020, 32.566513, 41.213017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.523979, 32.784370, 41.293911>,  <37.623913, 33.147461, 41.428734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523979, 32.784370, 41.293911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157183, 0.381499, -0.910907,
		0.955446, -0.174594, -0.237991,
		-0.249832, -0.907731, -0.337058,
		37.449028, 32.512051, 41.192795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303959, 33.404579, 41.174316>,  <37.623913, 33.147461, 41.428734>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303959, 33.404579, 41.174316> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.583866, 33.664639, 41.055912>,  <38.751812, 33.820675, 40.984871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.583866, 33.664639, 41.055912>,  <38.303959, 33.404579, 41.174316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.583866, 33.664639, 41.055912> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224117, 0.193645, 0.955130,
		0.678300, -0.734714, -0.010203,
		0.699772, 0.650152, -0.296011,
		38.793797, 33.859684, 40.967110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030472, 33.185574, 41.451717>,  <38.303959, 33.404579, 41.174316>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030472, 33.185574, 41.451717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.018906, 33.580826, 41.391373>,  <39.011967, 33.817978, 41.355167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.018906, 33.580826, 41.391373>,  <39.030472, 33.185574, 41.451717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018906, 33.580826, 41.391373> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183391, 0.153608, 0.970965,
		0.982615, 0.000409, -0.185656,
		-0.028916, 0.988132, -0.150863,
		39.010231, 33.877266, 41.346115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703838, 33.391972, 41.735535>,  <39.030472, 33.185574, 41.451717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.703838, 33.391972, 41.735535> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.489655, 33.728573, 41.706802>,  <39.361145, 33.930534, 41.689564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.489655, 33.728573, 41.706802>,  <39.703838, 33.391972, 41.735535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.489655, 33.728573, 41.706802> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331832, 0.287833, 0.898354,
		0.776640, 0.457197, -0.433360,
		-0.535460, 0.841500, -0.071831,
		39.329018, 33.981022, 41.685253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.055611, 33.894070, 42.080456>,  <39.703838, 33.391972, 41.735535>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.055611, 33.894070, 42.080456> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.687420, 34.049488, 42.063725>,  <39.466507, 34.142738, 42.053688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.687420, 34.049488, 42.063725>,  <40.055611, 33.894070, 42.080456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687420, 34.049488, 42.063725> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137329, 0.421809, 0.896224,
		0.365869, 0.819211, -0.441625,
		-0.920479, 0.388549, -0.041825,
		39.411278, 34.166054, 42.051178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144115, 34.610123, 42.334934>,  <40.055611, 33.894070, 42.080456>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.144115, 34.610123, 42.334934> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.757832, 34.528481, 42.399105>,  <39.526062, 34.479496, 42.437607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.757832, 34.528481, 42.399105>,  <40.144115, 34.610123, 42.334934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757832, 34.528481, 42.399105> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085854, 0.332109, 0.939326,
		-0.245005, 0.920893, -0.303198,
		-0.965713, -0.204109, 0.160430,
		39.468117, 34.467247, 42.447235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753113, 35.239460, 42.479980>,  <40.144115, 34.610123, 42.334934>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.753113, 35.239460, 42.479980> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.546341, 34.936710, 42.639942>,  <39.422279, 34.755058, 42.735920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.546341, 34.936710, 42.639942>,  <39.753113, 35.239460, 42.479980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.546341, 34.936710, 42.639942> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201789, 0.346254, 0.916182,
		-0.831905, 0.554297, -0.026259,
		-0.516929, -0.756877, 0.399901,
		39.391262, 34.709648, 42.759914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387650, 35.502995, 42.978893>,  <39.753113, 35.239460, 42.479980>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.387650, 35.502995, 42.978893> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.401028, 35.115421, 43.076912>,  <39.409054, 34.882877, 43.135723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.401028, 35.115421, 43.076912>,  <39.387650, 35.502995, 42.978893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401028, 35.115421, 43.076912> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132792, 0.247322, 0.959791,
		-0.990579, 0.000439, 0.136939,
		0.033447, -0.968933, 0.245050,
		39.411060, 34.824741, 43.150429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035355, 35.431412, 43.598125>,  <39.387650, 35.502995, 42.978893>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035355, 35.431412, 43.598125> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.240311, 35.088074, 43.587601>,  <39.363285, 34.882069, 43.581287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.240311, 35.088074, 43.587601>,  <39.035355, 35.431412, 43.598125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240311, 35.088074, 43.587601> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257857, 0.124558, 0.958121,
		-0.819124, -0.497718, 0.285154,
		0.512392, -0.858349, -0.026312,
		39.394028, 34.830570, 43.579708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751297, 34.896564, 44.175987>,  <39.035355, 35.431412, 43.598125>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751297, 34.896564, 44.175987> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.112667, 34.759544, 44.072845>,  <39.329491, 34.677334, 44.010960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.112667, 34.759544, 44.072845>,  <38.751297, 34.896564, 44.175987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112667, 34.759544, 44.072845> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221408, -0.142278, 0.964746,
		-0.367157, -0.928665, -0.052695,
		0.903424, -0.342546, -0.257852,
		39.383694, 34.656780, 43.995491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844486, 34.366955, 44.621788>,  <38.751297, 34.896564, 44.175987>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844486, 34.366955, 44.621788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.209850, 34.461014, 44.488892>,  <39.429070, 34.517448, 44.409153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.209850, 34.461014, 44.488892>,  <38.844486, 34.366955, 44.621788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209850, 34.461014, 44.488892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362041, -0.096304, 0.927174,
		0.186031, -0.967176, -0.173100,
		0.913411, 0.235153, -0.332242,
		39.483875, 34.531559, 44.389217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230480, 33.851143, 44.924259>,  <38.844486, 34.366955, 44.621788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230480, 33.851143, 44.924259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.480770, 34.147854, 44.827732>,  <39.630943, 34.325878, 44.769814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.480770, 34.147854, 44.827732>,  <39.230480, 33.851143, 44.924259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.480770, 34.147854, 44.827732> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528624, -0.175749, 0.830463,
		0.573605, -0.647211, -0.502090,
		0.625727, 0.741775, -0.241321,
		39.668488, 34.370388, 44.755337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942848, 33.488235, 44.808975>,  <39.230480, 33.851143, 44.924259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942848, 33.488235, 44.808975> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.007355, 33.880199, 44.855896>,  <40.046059, 34.115379, 44.884048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.007355, 33.880199, 44.855896>,  <39.942848, 33.488235, 44.808975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007355, 33.880199, 44.855896> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699580, -0.197344, 0.686763,
		0.696118, -0.028688, -0.717354,
		0.161267, 0.979914, 0.117305,
		40.055737, 34.174175, 44.891087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622433, 33.475609, 45.249805>,  <39.942848, 33.488235, 44.808975>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.622433, 33.475609, 45.249805> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.541275, 33.861378, 45.317600>,  <40.492580, 34.092838, 45.358276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.541275, 33.861378, 45.317600>,  <40.622433, 33.475609, 45.249805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.541275, 33.861378, 45.317600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448649, -0.062293, 0.891535,
		0.870373, 0.256926, -0.420048,
		-0.202893, 0.964421, 0.169488,
		40.480408, 34.150703, 45.368446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213284, 33.844490, 45.280933>,  <40.622433, 33.475609, 45.249805>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.213284, 33.844490, 45.280933> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.957367, 34.063190, 45.496986>,  <40.803818, 34.194408, 45.626617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.957367, 34.063190, 45.496986>,  <41.213284, 33.844490, 45.280933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957367, 34.063190, 45.496986> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658425, 0.027427, 0.752147,
		0.396419, 0.836849, -0.377539,
		-0.639788, 0.546747, 0.540129,
		40.765430, 34.227215, 45.659023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<37.317589, 37.133793, 47.850040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.393581, 36.743954, 47.802616>,  <37.439178, 36.510048, 47.774162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.393581, 36.743954, 47.802616>,  <37.317589, 37.133793, 47.850040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393581, 36.743954, 47.802616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141844, 0.092244, -0.985582,
		0.971486, 0.204063, -0.120716,
		0.189986, -0.974602, -0.118559,
		37.450577, 36.451572, 47.767048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791107, 37.124603, 47.359531>,  <37.317589, 37.133793, 47.850040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791107, 37.124603, 47.359531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.661453, 36.746208, 47.362118>,  <37.583660, 36.519169, 47.363670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.661453, 36.746208, 47.362118>,  <37.791107, 37.124603, 47.359531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661453, 36.746208, 47.362118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143898, 0.042543, -0.988678,
		0.935004, -0.321392, -0.149916,
		-0.324131, -0.945990, 0.006470,
		37.564213, 36.462410, 47.364059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157742, 36.763607, 46.828114>,  <37.791107, 37.124603, 47.359531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.157742, 36.763607, 46.828114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.830345, 36.539963, 46.880981>,  <37.633907, 36.405777, 46.912701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.830345, 36.539963, 46.880981>,  <38.157742, 36.763607, 46.828114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830345, 36.539963, 46.880981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181921, 0.034015, -0.982725,
		0.544953, -0.828397, -0.129554,
		-0.818493, -0.559108, 0.132166,
		37.584797, 36.372231, 46.920631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121311, 36.322422, 46.312305>,  <38.157742, 36.763607, 46.828114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121311, 36.322422, 46.312305> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.738060, 36.303795, 46.425320>,  <37.508110, 36.292618, 46.493130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.738060, 36.303795, 46.425320>,  <38.121311, 36.322422, 46.312305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738060, 36.303795, 46.425320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282654, -0.004224, -0.959213,
		0.045860, -0.998906, -0.009115,
		-0.958125, -0.046566, 0.282538,
		37.450623, 36.289825, 46.510082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852749, 35.731686, 45.993401>,  <38.121311, 36.322422, 46.312305>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852749, 35.731686, 45.993401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.554920, 35.986404, 46.073513>,  <37.376225, 36.139236, 46.121582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.554920, 35.986404, 46.073513>,  <37.852749, 35.731686, 45.993401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554920, 35.986404, 46.073513> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300026, -0.051206, -0.952556,
		-0.596324, -0.769333, 0.229181,
		-0.744568, 0.636792, 0.200285,
		37.331551, 36.177441, 46.133598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282188, 35.453175, 45.730125>,  <37.852749, 35.731686, 45.993401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282188, 35.453175, 45.730125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.172787, 35.837524, 45.747623>,  <37.107147, 36.068134, 45.758121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.172787, 35.837524, 45.747623>,  <37.282188, 35.453175, 45.730125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172787, 35.837524, 45.747623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320578, -0.048184, -0.945996,
		-0.906877, -0.272756, 0.321214,
		-0.273503, 0.960876, 0.043742,
		37.090736, 36.125786, 45.760746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613838, 35.424164, 45.370266>,  <37.282188, 35.453175, 45.730125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613838, 35.424164, 45.370266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.709583, 35.811821, 45.393803>,  <36.767029, 36.044415, 45.407925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.709583, 35.811821, 45.393803>,  <36.613838, 35.424164, 45.370266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709583, 35.811821, 45.393803> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511388, 0.177353, -0.840850,
		-0.825341, 0.171179, 0.538061,
		0.239362, 0.969146, 0.058838,
		36.781391, 36.102566, 45.411453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998718, 35.847347, 45.200306>,  <36.613838, 35.424164, 45.370266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998718, 35.847347, 45.200306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.316101, 36.081760, 45.134590>,  <36.506531, 36.222408, 45.095161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.316101, 36.081760, 45.134590>,  <35.998718, 35.847347, 45.200306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316101, 36.081760, 45.134590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435192, 0.357577, -0.826285,
		-0.425484, 0.727119, 0.538759,
		0.793455, 0.586034, -0.164293,
		36.554138, 36.257572, 45.085300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747116, 36.521370, 45.178474>,  <35.998718, 35.847347, 45.200306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747116, 36.521370, 45.178474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.099529, 36.578682, 44.998138>,  <36.310978, 36.613071, 44.889938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.099529, 36.578682, 44.998138>,  <35.747116, 36.521370, 45.178474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099529, 36.578682, 44.998138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456086, 0.510263, -0.729121,
		0.125573, 0.847999, 0.514907,
		0.881032, 0.143284, -0.450836,
		36.363838, 36.621666, 44.862888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934803, 37.342392, 45.049366>,  <35.747116, 36.521370, 45.178474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934803, 37.342392, 45.049366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.140194, 37.126118, 44.782833>,  <36.263428, 36.996353, 44.622913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.140194, 37.126118, 44.782833>,  <35.934803, 37.342392, 45.049366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140194, 37.126118, 44.782833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407404, 0.529808, -0.743858,
		0.755221, 0.653423, 0.051769,
		0.513482, -0.540686, -0.666329,
		36.294239, 36.963913, 44.582935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144432, 37.860577, 44.626274>,  <35.934803, 37.342392, 45.049366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144432, 37.860577, 44.626274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.175892, 37.522907, 44.414169>,  <36.194767, 37.320305, 44.286907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.175892, 37.522907, 44.414169>,  <36.144432, 37.860577, 44.626274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175892, 37.522907, 44.414169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318483, 0.482761, -0.815788,
		0.944660, 0.233042, -0.230887,
		0.078649, -0.844176, -0.530265,
		36.199486, 37.269653, 44.255089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465160, 38.074921, 44.027077>,  <36.144432, 37.860577, 44.626274>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465160, 38.074921, 44.027077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.282608, 37.731525, 43.933517>,  <36.173077, 37.525486, 43.877380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.282608, 37.731525, 43.933517>,  <36.465160, 38.074921, 44.027077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282608, 37.731525, 43.933517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450891, 0.449757, -0.770984,
		0.767083, -0.246396, -0.592345,
		-0.456378, -0.858492, -0.233903,
		36.145695, 37.473976, 43.863346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477715, 38.027824, 43.267235>,  <36.465160, 38.074921, 44.027077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477715, 38.027824, 43.267235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.194668, 37.763119, 43.366306>,  <36.024841, 37.604294, 43.425747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.194668, 37.763119, 43.366306>,  <36.477715, 38.027824, 43.267235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.194668, 37.763119, 43.366306> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418159, 0.109642, -0.901733,
		0.569582, -0.741648, -0.354309,
		-0.707615, -0.661768, 0.247677,
		35.982384, 37.564587, 43.440609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398426, 37.643040, 42.685482>,  <36.477715, 38.027824, 43.267235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398426, 37.643040, 42.685482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.055977, 37.574165, 42.880379>,  <35.850506, 37.532841, 42.997318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.055977, 37.574165, 42.880379>,  <36.398426, 37.643040, 42.685482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055977, 37.574165, 42.880379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510216, 0.131933, -0.849867,
		0.082051, -0.976189, -0.200803,
		-0.856124, -0.172185, 0.487242,
		35.799141, 37.522511, 43.026550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053967, 37.338390, 42.714371>,  <36.398426, 37.643040, 42.685482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053967, 37.338390, 42.714371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.360310, 37.530823, 42.543713>,  <37.544117, 37.646282, 42.441319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.360310, 37.530823, 42.543713>,  <37.053967, 37.338390, 42.714371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360310, 37.530823, 42.543713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498329, -0.024745, 0.866635,
		0.406361, -0.876329, -0.258686,
		0.765858, 0.481078, -0.426645,
		37.590069, 37.675144, 42.415718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678329, 37.026970, 42.882004>,  <37.053967, 37.338390, 42.714371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678329, 37.026970, 42.882004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.802856, 37.390778, 42.771839>,  <37.877575, 37.609062, 42.705738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.802856, 37.390778, 42.771839>,  <37.678329, 37.026970, 42.882004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802856, 37.390778, 42.771839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622976, 0.023525, 0.781887,
		0.717621, -0.414994, -0.559286,
		0.311321, 0.909520, -0.275413,
		37.896252, 37.663635, 42.689217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308495, 37.047710, 43.123589>,  <37.678329, 37.026970, 42.882004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308495, 37.047710, 43.123589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.268478, 37.440674, 43.060516>,  <38.244469, 37.676453, 43.022675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.268478, 37.440674, 43.060516>,  <38.308495, 37.047710, 43.123589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268478, 37.440674, 43.060516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714558, 0.181218, 0.675697,
		0.692386, -0.045074, -0.720118,
		-0.100042, 0.982409, -0.157681,
		38.238464, 37.735397, 43.013210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948479, 37.300232, 43.170094>,  <38.308495, 37.047710, 43.123589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.948479, 37.300232, 43.170094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.737206, 37.637341, 43.211575>,  <38.610443, 37.839607, 43.236462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.737206, 37.637341, 43.211575>,  <38.948479, 37.300232, 43.170094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737206, 37.637341, 43.211575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430062, 0.160199, 0.888472,
		0.732170, 0.513872, -0.447060,
		-0.528180, 0.842776, 0.103704,
		38.578751, 37.890175, 43.242687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455124, 37.935009, 43.279816>,  <38.948479, 37.300232, 43.170094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.455124, 37.935009, 43.279816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.081490, 37.960209, 43.420399>,  <38.857311, 37.975327, 43.504749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.081490, 37.960209, 43.420399>,  <39.455124, 37.935009, 43.279816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081490, 37.960209, 43.420399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349613, 0.361341, 0.864409,
		-0.072541, 0.930303, -0.359547,
		-0.934082, 0.062998, 0.351458,
		38.801266, 37.979107, 43.525837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414223, 38.631256, 43.540474>,  <39.455124, 37.935009, 43.279816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414223, 38.631256, 43.540474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.140213, 38.385265, 43.696701>,  <38.975807, 38.237671, 43.790436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.140213, 38.385265, 43.696701>,  <39.414223, 38.631256, 43.540474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140213, 38.385265, 43.696701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368729, 0.169688, 0.913917,
		-0.628314, 0.770069, 0.110520,
		-0.685026, -0.614979, 0.390564,
		38.934704, 38.200771, 43.813869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374214, 38.962887, 44.093430>,  <39.414223, 38.631256, 43.540474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.374214, 38.962887, 44.093430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.186237, 38.619785, 44.176777>,  <39.073452, 38.413925, 44.226788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.186237, 38.619785, 44.176777>,  <39.374214, 38.962887, 44.093430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186237, 38.619785, 44.176777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315778, 0.057074, 0.947115,
		-0.824280, 0.510891, 0.244036,
		-0.469944, -0.857749, 0.208373,
		39.045254, 38.362461, 44.239288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106567, 39.063671, 44.806076>,  <39.374214, 38.962887, 44.093430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106567, 39.063671, 44.806076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.113380, 38.668262, 44.746040>,  <39.117466, 38.431015, 44.710018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.113380, 38.668262, 44.746040>,  <39.106567, 39.063671, 44.806076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113380, 38.668262, 44.746040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270170, -0.139977, 0.952583,
		-0.962662, -0.056772, 0.264686,
		0.017030, -0.988526, -0.150089,
		39.118488, 38.371704, 44.701015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885113, 38.871387, 45.493008>,  <39.106567, 39.063671, 44.806076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885113, 38.871387, 45.493008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.062595, 38.570858, 45.297607>,  <39.169086, 38.390541, 45.180367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.062595, 38.570858, 45.297607>,  <38.885113, 38.871387, 45.493008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062595, 38.570858, 45.297607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345365, -0.359637, 0.866824,
		-0.826951, -0.553327, 0.099908,
		0.443706, -0.751326, -0.488502,
		39.195705, 38.345459, 45.151058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690235, 38.146194, 45.843941>,  <38.885113, 38.871387, 45.493008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690235, 38.146194, 45.843941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.038509, 38.150211, 45.647243>,  <39.247475, 38.152622, 45.529224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.038509, 38.150211, 45.647243>,  <38.690235, 38.146194, 45.843941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038509, 38.150211, 45.647243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401398, -0.592293, 0.698619,
		-0.284243, -0.805660, -0.519729,
		0.870682, 0.010040, -0.491745,
		39.299713, 38.153225, 45.499722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918430, 37.458755, 45.820850>,  <38.690235, 38.146194, 45.843941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.918430, 37.458755, 45.820850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.246197, 37.677856, 45.753296>,  <39.442856, 37.809319, 45.712765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.246197, 37.677856, 45.753296>,  <38.918430, 37.458755, 45.820850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246197, 37.677856, 45.753296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512404, -0.567943, 0.644114,
		0.256897, -0.614336, -0.746053,
		0.819418, 0.547751, -0.168886,
		39.492023, 37.842182, 45.702629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410427, 36.930283, 45.690315>,  <38.918430, 37.458755, 45.820850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.410427, 36.930283, 45.690315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.602551, 37.256420, 45.819633>,  <39.717827, 37.452103, 45.897224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.602551, 37.256420, 45.819633>,  <39.410427, 36.930283, 45.690315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602551, 37.256420, 45.819633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468718, -0.550151, 0.691113,
		0.741354, -0.180415, -0.646409,
		0.480310, 0.815343, 0.323293,
		39.746643, 37.501022, 45.916622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127739, 36.737175, 45.879498>,  <39.410427, 36.930283, 45.690315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127739, 36.737175, 45.879498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.084576, 37.083721, 46.074547>,  <40.058678, 37.291649, 46.191574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.084576, 37.083721, 46.074547>,  <40.127739, 36.737175, 45.879498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084576, 37.083721, 46.074547> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435335, -0.399781, 0.806634,
		0.893778, 0.299320, -0.334018,
		-0.107908, 0.866362, 0.487620,
		40.052204, 37.343628, 46.220833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844418, 37.054466, 46.094608>,  <40.127739, 36.737175, 45.879498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.844418, 37.054466, 46.094608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.556812, 37.185368, 46.339863>,  <40.384251, 37.263908, 46.487015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.556812, 37.185368, 46.339863>,  <40.844418, 37.054466, 46.094608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.556812, 37.185368, 46.339863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493537, -0.380719, 0.781968,
		0.489334, 0.864845, 0.112228,
		-0.719009, 0.327255, 0.613132,
		40.341110, 37.283543, 46.523804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.479008, 37.210773, 45.820217>,  <40.844418, 37.054466, 46.094608>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.479008, 37.210773, 45.820217> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.786846, 36.982185, 45.706272>,  <41.971550, 36.845032, 45.637905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.786846, 36.982185, 45.706272>,  <41.479008, 37.210773, 45.820217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.786846, 36.982185, 45.706272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272458, 0.109569, -0.955909,
		0.577485, 0.813275, -0.071377,
		0.769596, -0.571470, -0.284858,
		42.017727, 36.810745, 45.620815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.811733, 37.502697, 45.311031>,  <41.479008, 37.210773, 45.820217>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.811733, 37.502697, 45.311031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.941864, 37.131214, 45.239857>,  <42.019943, 36.908325, 45.197151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.941864, 37.131214, 45.239857>,  <41.811733, 37.502697, 45.311031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.941864, 37.131214, 45.239857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127434, 0.143392, -0.981427,
		0.936976, 0.341957, -0.071700,
		0.325325, -0.928711, -0.177932,
		42.039463, 36.852600, 45.186478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.379387, 37.551308, 44.719860>,  <41.811733, 37.502697, 45.311031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.379387, 37.551308, 44.719860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.206547, 37.191540, 44.746170>,  <42.102840, 36.975677, 44.761955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.206547, 37.191540, 44.746170>,  <42.379387, 37.551308, 44.719860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.206547, 37.191540, 44.746170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090733, -0.029208, -0.995447,
		0.897247, -0.436105, -0.068987,
		-0.432105, -0.899422, 0.065776,
		42.076916, 36.921715, 44.765903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.757824, 37.211422, 44.202644>,  <42.379387, 37.551308, 44.719860>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.757824, 37.211422, 44.202644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.437176, 36.982826, 44.272839>,  <42.244785, 36.845669, 44.314957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.437176, 36.982826, 44.272839>,  <42.757824, 37.211422, 44.202644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.437176, 36.982826, 44.272839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229385, 0.022961, -0.973065,
		0.552071, -0.820285, -0.149498,
		-0.801623, -0.571494, 0.175485,
		42.196690, 36.811378, 44.325485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.852314, 36.643208, 43.732769>,  <42.757824, 37.211422, 44.202644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.852314, 36.643208, 43.732769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.466862, 36.669342, 43.836414>,  <42.235588, 36.685024, 43.898602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.466862, 36.669342, 43.836414>,  <42.852314, 36.643208, 43.732769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.466862, 36.669342, 43.836414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266409, -0.159177, -0.950626,
		-0.020865, -0.985086, 0.170795,
		-0.963634, 0.065336, 0.259114,
		42.177773, 36.688942, 43.914150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.547035, 36.333782, 43.259819>,  <42.852314, 36.643208, 43.732769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.547035, 36.333782, 43.259819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.232193, 36.546230, 43.385277>,  <42.043289, 36.673698, 43.460552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.232193, 36.546230, 43.385277>,  <42.547035, 36.333782, 43.259819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.232193, 36.546230, 43.385277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263242, 0.170610, -0.949524,
		-0.557826, -0.829940, 0.005526,
		-0.787105, 0.531124, 0.313646,
		41.996063, 36.705566, 43.479370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.092094, 36.118919, 42.804493>,  <42.547035, 36.333782, 43.259819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.092094, 36.118919, 42.804493> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.930416, 36.454967, 42.949177>,  <41.833408, 36.656597, 43.035988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.930416, 36.454967, 42.949177>,  <42.092094, 36.118919, 42.804493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.930416, 36.454967, 42.949177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354515, 0.220651, -0.908643,
		-0.843177, -0.495498, 0.208648,
		-0.404192, 0.840116, 0.361709,
		41.809158, 36.707001, 43.057690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.365074, 36.074459, 42.523663>,  <42.092094, 36.118919, 42.804493>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.365074, 36.074459, 42.523663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.455002, 36.449753, 42.628868>,  <41.508957, 36.674931, 42.691990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.455002, 36.449753, 42.628868>,  <41.365074, 36.074459, 42.523663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.455002, 36.449753, 42.628868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299363, 0.323376, -0.897669,
		-0.927275, 0.123073, 0.353572,
		0.224816, 0.938233, 0.263015,
		41.522446, 36.731224, 42.707771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811642, 36.454494, 42.446072>,  <41.365074, 36.074459, 42.523663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811642, 36.454494, 42.446072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.124382, 36.701096, 42.408882>,  <41.312027, 36.849056, 42.386570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.124382, 36.701096, 42.408882>,  <40.811642, 36.454494, 42.446072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.124382, 36.701096, 42.408882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311807, 0.257508, -0.914585,
		-0.539899, 0.744056, 0.393561,
		0.781848, 0.616499, -0.092974,
		41.358936, 36.886044, 42.380989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.618443, 36.935993, 42.031155>,  <40.811642, 36.454494, 42.446072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.618443, 36.935993, 42.031155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.015247, 36.976635, 42.001278>,  <41.253330, 37.001022, 41.983353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.015247, 36.976635, 42.001278>,  <40.618443, 36.935993, 42.031155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.015247, 36.976635, 42.001278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106939, 0.363881, -0.925286,
		-0.066836, 0.925887, 0.371842,
		0.992017, 0.101607, -0.074693,
		41.312851, 37.007118, 41.978870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683754, 37.453907, 41.604332>,  <40.618443, 36.935993, 42.031155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.683754, 37.453907, 41.604332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.039219, 37.272606, 41.576527>,  <41.252499, 37.163826, 41.559841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.039219, 37.272606, 41.576527>,  <40.683754, 37.453907, 41.604332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.039219, 37.272606, 41.576527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034024, 0.216357, -0.975721,
		0.457291, 0.864725, 0.207690,
		0.888666, -0.453255, -0.069517,
		41.305820, 37.136631, 41.555672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.982815, 38.029007, 41.312199>,  <40.683754, 37.453907, 41.604332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.982815, 38.029007, 41.312199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.196140, 37.696411, 41.249977>,  <41.324135, 37.496853, 41.212643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.196140, 37.696411, 41.249977>,  <40.982815, 38.029007, 41.312199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.196140, 37.696411, 41.249977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049841, 0.152686, -0.987017,
		0.844446, 0.534146, 0.039988,
		0.533317, -0.831489, -0.155557,
		41.356136, 37.446964, 41.203308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.401588, 38.176941, 40.786980>,  <40.982815, 38.029007, 41.312199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.401588, 38.176941, 40.786980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.409813, 37.777599, 40.808395>,  <41.414749, 37.537994, 40.821243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.409813, 37.777599, 40.808395>,  <41.401588, 38.176941, 40.786980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.409813, 37.777599, 40.808395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378751, -0.057339, -0.923721,
		0.925270, -0.001282, -0.379307,
		0.020565, -0.998354, 0.053540,
		41.415981, 37.478092, 40.824459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.648296, 37.946022, 40.187328>,  <41.401588, 38.176941, 40.786980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.648296, 37.946022, 40.187328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.447178, 37.628304, 40.323738>,  <41.326508, 37.437672, 40.405582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.447178, 37.628304, 40.323738>,  <41.648296, 37.946022, 40.187328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.447178, 37.628304, 40.323738> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270841, -0.229887, -0.934771,
		0.820880, -0.562358, -0.099543,
		-0.502793, -0.794295, 0.341020,
		41.296341, 37.390015, 40.426044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.666416, 29.757759, 38.065815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.687763, 29.404926, 38.253040>,  <28.700571, 29.193226, 38.365376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.687763, 29.404926, 38.253040>,  <28.666416, 29.757759, 38.065815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.687763, 29.404926, 38.253040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997485, 0.068980, 0.016263,
		-0.046632, 0.466016, 0.883547,
		0.053368, -0.882083, 0.468060,
		28.703773, 29.140301, 38.393459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.816090, 29.774166, 38.768818>,  <28.666416, 29.757759, 38.065815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.816090, 29.774166, 38.768818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.919428, 29.463686, 38.538765>,  <28.981432, 29.277399, 38.400734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.919428, 29.463686, 38.538765>,  <28.816090, 29.774166, 38.768818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.919428, 29.463686, 38.538765> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949081, 0.315031, 0.001156,
		0.180286, -0.546141, 0.818063,
		0.258347, -0.776199, -0.575127,
		28.996931, 29.230825, 38.366226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.300116, 30.212057, 38.499722>,  <28.816090, 29.774166, 38.768818>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.300116, 30.212057, 38.499722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.371950, 30.542631, 38.713173>,  <28.415051, 30.740974, 38.841244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.371950, 30.542631, 38.713173>,  <28.300116, 30.212057, 38.499722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.371950, 30.542631, 38.713173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258243, 0.563025, -0.785056,
		-0.949241, 0.003181, 0.314532,
		0.179587, 0.826434, 0.533625,
		28.425827, 30.790562, 38.873260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.829205, 30.670309, 38.312180>,  <28.300116, 30.212057, 38.499722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.829205, 30.670309, 38.312180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.062180, 30.929359, 38.508690>,  <28.201965, 31.084789, 38.626595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.062180, 30.929359, 38.508690>,  <27.829205, 30.670309, 38.312180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.062180, 30.929359, 38.508690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114523, 0.663712, -0.739170,
		-0.804768, 0.374258, 0.460738,
		0.582437, 0.647625, 0.491273,
		28.236910, 31.123648, 38.656071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.441908, 31.273026, 38.467907>,  <27.829205, 30.670309, 38.312180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.441908, 31.273026, 38.467907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.821714, 31.398304, 38.460678>,  <28.049599, 31.473471, 38.456341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.821714, 31.398304, 38.460678>,  <27.441908, 31.273026, 38.467907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.821714, 31.398304, 38.460678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270196, 0.787174, -0.554393,
		-0.159410, 0.531287, 0.832059,
		0.949517, 0.313195, -0.018068,
		28.106569, 31.492262, 38.455257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.415304, 32.038471, 38.466091>,  <27.441908, 31.273026, 38.467907>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.415304, 32.038471, 38.466091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.772346, 31.938082, 38.316280>,  <27.986572, 31.877848, 38.226395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.772346, 31.938082, 38.316280>,  <27.415304, 32.038471, 38.466091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.772346, 31.938082, 38.316280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035704, 0.788766, -0.613656,
		0.449425, 0.561124, 0.695095,
		0.892604, -0.250975, -0.374526,
		28.040127, 31.862789, 38.203922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.848969, 32.639164, 38.500648>,  <27.415304, 32.038471, 38.466091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.848969, 32.639164, 38.500648> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.999357, 32.421066, 38.200954>,  <28.089590, 32.290207, 38.021137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.999357, 32.421066, 38.200954>,  <27.848969, 32.639164, 38.500648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.999357, 32.421066, 38.200954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027301, 0.814728, -0.579200,
		0.926228, 0.197309, 0.321202,
		0.375974, -0.545240, -0.749237,
		28.112150, 32.257496, 37.976185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.328436, 33.033272, 38.224422>,  <27.848969, 32.639164, 38.500648>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.328436, 33.033272, 38.224422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.241173, 32.791367, 37.918045>,  <28.188814, 32.646225, 37.734219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.241173, 32.791367, 37.918045>,  <28.328436, 33.033272, 38.224422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.241173, 32.791367, 37.918045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266299, 0.718176, -0.642891,
		0.938878, -0.344224, 0.004370,
		-0.218159, -0.604760, -0.765946,
		28.175724, 32.609940, 37.688263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.768944, 33.211353, 37.765816>,  <28.328436, 33.033272, 38.224422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.768944, 33.211353, 37.765816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.496620, 33.006279, 37.556568>,  <28.333225, 32.883236, 37.431019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.496620, 33.006279, 37.556568>,  <28.768944, 33.211353, 37.765816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.496620, 33.006279, 37.556568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128394, 0.619605, -0.774342,
		0.721118, -0.594345, -0.356008,
		-0.680811, -0.512683, -0.523118,
		28.292377, 32.852474, 37.399632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.946201, 33.252930, 37.039894>,  <28.768944, 33.211353, 37.765816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.946201, 33.252930, 37.039894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.573839, 33.108177, 37.020069>,  <28.350422, 33.021324, 37.008175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.573839, 33.108177, 37.020069>,  <28.946201, 33.252930, 37.039894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.573839, 33.108177, 37.020069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233572, 0.694093, -0.680940,
		0.280822, -0.622314, -0.730661,
		-0.930905, -0.361884, -0.049562,
		28.294567, 32.999611, 37.005199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.903120, 33.097557, 36.331646>,  <28.946201, 33.252930, 37.039894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.903120, 33.097557, 36.331646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.533867, 33.130680, 36.481827>,  <28.312315, 33.150555, 36.571938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.533867, 33.130680, 36.481827>,  <28.903120, 33.097557, 36.331646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.533867, 33.130680, 36.481827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275730, 0.537979, -0.796587,
		-0.267948, -0.838881, -0.473796,
		-0.923135, 0.082805, 0.375455,
		28.256927, 33.155521, 36.594463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.449612, 32.982010, 35.698158>,  <28.903120, 33.097557, 36.331646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.449612, 32.982010, 35.698158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.262304, 33.182682, 35.989101>,  <28.149920, 33.303085, 36.163666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.262304, 33.182682, 35.989101>,  <28.449612, 32.982010, 35.698158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.262304, 33.182682, 35.989101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327734, 0.665852, -0.670247,
		-0.820559, -0.552234, -0.147380,
		-0.468267, 0.501676, 0.727357,
		28.121824, 33.333183, 36.207310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.673895, 33.126411, 35.424366>,  <28.449612, 32.982010, 35.698158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.673895, 33.126411, 35.424366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.711992, 33.378834, 35.732315>,  <27.734852, 33.530285, 35.917084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.711992, 33.378834, 35.732315>,  <27.673895, 33.126411, 35.424366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.711992, 33.378834, 35.732315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473122, 0.709148, -0.522747,
		-0.875833, -0.314454, 0.366107,
		0.095245, 0.631053, 0.769871,
		27.740566, 33.568150, 35.963276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.029064, 33.487068, 35.494591>,  <27.673895, 33.126411, 35.424366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.029064, 33.487068, 35.494591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.293192, 33.724232, 35.678955>,  <27.451668, 33.866531, 35.789574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.293192, 33.724232, 35.678955>,  <27.029064, 33.487068, 35.494591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.293192, 33.724232, 35.678955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397327, 0.796626, -0.455542,
		-0.637269, 0.117670, 0.761605,
		0.660318, 0.592909, 0.460912,
		27.491287, 33.902103, 35.817230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.625883, 34.129200, 35.655003>,  <27.029064, 33.487068, 35.494591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.625883, 34.129200, 35.655003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.002823, 34.245415, 35.721405>,  <27.228987, 34.315144, 35.761246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.002823, 34.245415, 35.721405>,  <26.625883, 34.129200, 35.655003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.002823, 34.245415, 35.721405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235749, 0.928524, -0.286820,
		-0.237478, 0.231148, 0.943491,
		0.942352, 0.290541, 0.166011,
		27.285528, 34.332577, 35.771210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.651218, 34.811687, 36.091778>,  <26.625883, 34.129200, 35.655003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.651218, 34.811687, 36.091778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.006273, 34.781189, 35.910103>,  <27.219307, 34.762890, 35.801098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.006273, 34.781189, 35.910103>,  <26.651218, 34.811687, 36.091778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.006273, 34.781189, 35.910103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076224, 0.948275, -0.308163,
		0.454193, 0.308157, 0.835912,
		0.887637, -0.076249, -0.454189,
		27.272564, 34.758316, 35.773846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.103102, 35.314548, 36.291321>,  <26.651218, 34.811687, 36.091778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.103102, 35.314548, 36.291321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.271172, 35.205055, 35.945251>,  <27.372013, 35.139359, 35.737610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.271172, 35.205055, 35.945251>,  <27.103102, 35.314548, 36.291321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.271172, 35.205055, 35.945251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141088, 0.922117, -0.360271,
		0.896409, 0.273441, 0.348828,
		0.420173, -0.273735, -0.865173,
		27.397224, 35.122936, 35.685699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.619009, 35.816807, 36.178043>,  <27.103102, 35.314548, 36.291321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.619009, 35.816807, 36.178043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.526253, 35.644314, 35.829269>,  <27.470600, 35.540817, 35.620007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.526253, 35.644314, 35.829269>,  <27.619009, 35.816807, 36.178043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.526253, 35.644314, 35.829269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045846, 0.890523, -0.452622,
		0.971661, -0.144933, -0.186733,
		-0.231890, -0.431234, -0.871932,
		27.456686, 35.514942, 35.567692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.377848, 35.882629, 36.471203>,  <27.619009, 35.816807, 36.178043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.377848, 35.882629, 36.471203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.736330, 36.025631, 36.576279>,  <28.951420, 36.111431, 36.639324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.736330, 36.025631, 36.576279>,  <28.377848, 35.882629, 36.471203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.736330, 36.025631, 36.576279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130726, -0.778645, 0.613696,
		0.423937, -0.515659, -0.744563,
		0.896208, 0.357502, 0.262687,
		29.005192, 36.132881, 36.655087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.860886, 35.385101, 36.281326>,  <28.377848, 35.882629, 36.471203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.860886, 35.385101, 36.281326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.980375, 35.611080, 36.588989>,  <29.052069, 35.746666, 36.773586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.980375, 35.611080, 36.588989>,  <28.860886, 35.385101, 36.281326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.980375, 35.611080, 36.588989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154145, -0.823936, 0.545316,
		0.941809, -0.044337, -0.333211,
		0.298722, 0.564946, 0.769156,
		29.069992, 35.780563, 36.819736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.231480, 34.921436, 36.693363>,  <28.860886, 35.385101, 36.281326>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.231480, 34.921436, 36.693363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.187485, 35.229000, 36.945293>,  <29.161089, 35.413536, 37.096451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.187485, 35.229000, 36.945293>,  <29.231480, 34.921436, 36.693363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.187485, 35.229000, 36.945293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195940, -0.604466, 0.772158,
		0.974428, 0.208336, -0.084176,
		-0.109986, 0.768906, 0.629830,
		29.154490, 35.459671, 37.134243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.795677, 34.868538, 37.075893>,  <29.231480, 34.921436, 36.693363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.795677, 34.868538, 37.075893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.558037, 35.102367, 37.296917>,  <29.415453, 35.242664, 37.429531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.558037, 35.102367, 37.296917>,  <29.795677, 34.868538, 37.075893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.558037, 35.102367, 37.296917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287330, -0.487383, 0.824560,
		0.751323, 0.648637, 0.121588,
		-0.594101, 0.584575, 0.552555,
		29.379807, 35.277740, 37.462685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.167528, 35.144566, 37.707554>,  <29.795677, 34.868538, 37.075893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.167528, 35.144566, 37.707554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.777073, 35.143066, 37.794399>,  <29.542799, 35.142166, 37.846504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.777073, 35.143066, 37.794399>,  <30.167528, 35.144566, 37.707554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.777073, 35.143066, 37.794399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199518, -0.410082, 0.889958,
		0.085696, 0.912041, 0.401045,
		-0.976140, -0.003750, 0.217111,
		29.484230, 35.141941, 37.859531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.135946, 35.111492, 38.385895>,  <30.167528, 35.144566, 37.707554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.135946, 35.111492, 38.385895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.746691, 35.030460, 38.342148>,  <29.513138, 34.981842, 38.315899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.746691, 35.030460, 38.342148>,  <30.135946, 35.111492, 38.385895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.746691, 35.030460, 38.342148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011724, -0.430845, 0.902350,
		-0.229921, 0.879394, 0.416896,
		-0.973139, -0.202582, -0.109370,
		29.454750, 34.969685, 38.309338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.744894, 35.349007, 39.037029>,  <30.135946, 35.111492, 38.385895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.744894, 35.349007, 39.037029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.550793, 35.043938, 38.865982>,  <29.434332, 34.860897, 38.763355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.550793, 35.043938, 38.865982>,  <29.744894, 35.349007, 39.037029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.550793, 35.043938, 38.865982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183975, -0.567167, 0.802792,
		-0.854799, 0.310888, 0.415533,
		-0.485255, -0.762673, -0.427618,
		29.405216, 34.815136, 38.737698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.304012, 35.079453, 39.492653>,  <29.744894, 35.349007, 39.037029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.304012, 35.079453, 39.492653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.356255, 34.772316, 39.241776>,  <29.387600, 34.588036, 39.091251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.356255, 34.772316, 39.241776>,  <29.304012, 35.079453, 39.492653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.356255, 34.772316, 39.241776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140165, -0.611955, 0.778373,
		-0.981477, -0.189569, 0.027700,
		0.130604, -0.767838, -0.627190,
		29.395435, 34.541965, 39.053619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.952085, 34.488258, 39.799644>,  <29.304012, 35.079453, 39.492653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.952085, 34.488258, 39.799644> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.198633, 34.313862, 39.537346>,  <29.346561, 34.209225, 39.379967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.198633, 34.313862, 39.537346>,  <28.952085, 34.488258, 39.799644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.198633, 34.313862, 39.537346> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228501, -0.697878, 0.678789,
		-0.753577, -0.568222, -0.330524,
		0.616368, -0.435994, -0.655744,
		29.383543, 34.183064, 39.340622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.789469, 33.806038, 39.819950>,  <28.952085, 34.488258, 39.799644>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.789469, 33.806038, 39.819950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.149277, 33.828075, 39.646591>,  <29.365162, 33.841297, 39.542576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.149277, 33.828075, 39.646591>,  <28.789469, 33.806038, 39.819950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.149277, 33.828075, 39.646591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295691, -0.807043, 0.511124,
		-0.321608, -0.587917, -0.742241,
		0.899519, 0.055092, -0.433394,
		29.419132, 33.844604, 39.516575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.951216, 33.123020, 39.766529>,  <28.789469, 33.806038, 39.819950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.951216, 33.123020, 39.766529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.301981, 33.303989, 39.701618>,  <29.512440, 33.412571, 39.662670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.301981, 33.303989, 39.701618>,  <28.951216, 33.123020, 39.766529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.301981, 33.303989, 39.701618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471277, -0.742980, 0.475267,
		0.094452, -0.493246, -0.864747,
		0.876913, 0.452425, -0.162280,
		29.565056, 33.439716, 39.652935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.418846, 32.589378, 39.564976>,  <28.951216, 33.123020, 39.766529>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.418846, 32.589378, 39.564976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.672796, 32.870865, 39.692554>,  <29.825167, 33.039757, 39.769100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.672796, 32.870865, 39.692554>,  <29.418846, 32.589378, 39.564976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.672796, 32.870865, 39.692554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376406, -0.642222, 0.667734,
		0.674725, -0.303875, -0.672611,
		0.634874, 0.703712, 0.318943,
		29.863258, 33.081978, 39.788239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.210470, 32.389069, 39.536274>,  <29.418846, 32.589378, 39.564976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.210470, 32.389069, 39.536274> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.167610, 32.663162, 39.824436>,  <30.141895, 32.827618, 39.997334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.167610, 32.663162, 39.824436>,  <30.210470, 32.389069, 39.536274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.167610, 32.663162, 39.824436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404638, -0.631797, 0.661136,
		0.908178, 0.362342, -0.209575,
		-0.107149, 0.685231, 0.720401,
		30.135466, 32.868732, 40.040558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.847452, 32.488083, 40.002483>,  <30.210470, 32.389069, 39.536274>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.847452, 32.488083, 40.002483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.552906, 32.606094, 40.246033>,  <30.376179, 32.676903, 40.392162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.552906, 32.606094, 40.246033>,  <30.847452, 32.488083, 40.002483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552906, 32.606094, 40.246033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428415, -0.493206, 0.757105,
		0.523670, 0.818354, 0.236783,
		-0.736363, 0.295032, 0.608872,
		30.331997, 32.694603, 40.428696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.127855, 32.743690, 40.557980>,  <30.847452, 32.488083, 40.002483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.127855, 32.743690, 40.557980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.764635, 32.636223, 40.686520>,  <30.546703, 32.571743, 40.763645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.764635, 32.636223, 40.686520>,  <31.127855, 32.743690, 40.557980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.764635, 32.636223, 40.686520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414132, -0.460879, 0.784911,
		-0.062776, 0.845819, 0.529764,
		-0.908049, -0.268666, 0.321349,
		30.492220, 32.555622, 40.782925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.324545, 32.461426, 41.260952>,  <31.127855, 32.743690, 40.557980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.324545, 32.461426, 41.260952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.932201, 32.395615, 41.219296>,  <30.696795, 32.356129, 41.194302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.932201, 32.395615, 41.219296>,  <31.324545, 32.461426, 41.260952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.932201, 32.395615, 41.219296> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014866, -0.596531, 0.802452,
		-0.194151, 0.785544, 0.587559,
		-0.980859, -0.164531, -0.104139,
		30.637943, 32.346256, 41.188053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.890177, 32.783905, 41.804100>,  <31.324545, 32.461426, 41.260952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.890177, 32.783905, 41.804100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.712709, 32.454880, 41.661804>,  <30.606228, 32.257465, 41.576427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.712709, 32.454880, 41.661804>,  <30.890177, 32.783905, 41.804100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.712709, 32.454880, 41.661804> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130454, -0.451993, 0.882431,
		-0.886645, 0.345100, 0.307842,
		-0.443669, -0.822562, -0.355738,
		30.579609, 32.208111, 41.555084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.393850, 32.535721, 42.291603>,  <30.890177, 32.783905, 41.804100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.393850, 32.535721, 42.291603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.408915, 32.198616, 42.076817>,  <30.417953, 31.996353, 41.947945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.408915, 32.198616, 42.076817>,  <30.393850, 32.535721, 42.291603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.408915, 32.198616, 42.076817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029662, -0.536171, 0.843588,
		-0.998850, -0.047698, 0.004806,
		0.037660, -0.842761, -0.536969,
		30.420214, 31.945787, 41.915726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.053043, 32.215904, 42.751831>,  <30.393850, 32.535721, 42.291603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.053043, 32.215904, 42.751831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.184244, 31.946905, 42.486454>,  <30.262964, 31.785505, 42.327229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.184244, 31.946905, 42.486454>,  <30.053043, 32.215904, 42.751831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.184244, 31.946905, 42.486454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122203, -0.726601, 0.676105,
		-0.936740, -0.140689, -0.320508,
		0.328002, -0.672501, -0.663443,
		30.282644, 31.745155, 42.287422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.517202, 31.675117, 42.687241>,  <30.053043, 32.215904, 42.751831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.517202, 31.675117, 42.687241> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.860584, 31.507431, 42.569042>,  <30.066612, 31.406820, 42.498123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.860584, 31.507431, 42.569042>,  <29.517202, 31.675117, 42.687241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.860584, 31.507431, 42.569042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109984, -0.713194, 0.692284,
		-0.500961, -0.561794, -0.658351,
		0.858453, -0.419215, -0.295494,
		30.118120, 31.381666, 42.480392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.316195, 30.933367, 42.431076>,  <29.517202, 31.675117, 42.687241>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.316195, 30.933367, 42.431076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.703485, 30.931700, 42.531090>,  <29.935860, 30.930698, 42.591099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.703485, 30.931700, 42.531090>,  <29.316195, 30.933367, 42.431076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.703485, 30.931700, 42.531090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152303, -0.802854, 0.576394,
		0.198335, -0.596161, -0.777981,
		0.968229, -0.004170, 0.250031,
		29.993954, 30.930449, 42.606098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.460573, 30.257023, 42.538387>,  <29.316195, 30.933367, 42.431076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.460573, 30.257023, 42.538387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.803591, 30.397604, 42.688641>,  <30.009401, 30.481953, 42.778793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.803591, 30.397604, 42.688641>,  <29.460573, 30.257023, 42.538387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.803591, 30.397604, 42.688641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048286, -0.781987, 0.621421,
		0.512140, -0.514758, -0.687559,
		0.857544, 0.351454, 0.375631,
		30.060854, 30.503040, 42.801331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.929358, 29.668476, 42.542080>,  <29.460573, 30.257023, 42.538387>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.929358, 29.668476, 42.542080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.021545, 29.931059, 42.829399>,  <30.076859, 30.088608, 43.001789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.021545, 29.931059, 42.829399>,  <29.929358, 29.668476, 42.542080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.021545, 29.931059, 42.829399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050932, -0.745292, 0.664790,
		0.971745, -0.116630, -0.205202,
		0.230470, 0.656458, 0.718294,
		30.090687, 30.127996, 43.044888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.484884, 29.375828, 42.877415>,  <29.929358, 29.668476, 42.542080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.484884, 29.375828, 42.877415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.327314, 29.642303, 43.130718>,  <30.232773, 29.802189, 43.282700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.327314, 29.642303, 43.130718>,  <30.484884, 29.375828, 42.877415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.327314, 29.642303, 43.130718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137859, -0.638349, 0.757302,
		0.908745, 0.385620, 0.159621,
		-0.393925, 0.666189, 0.633258,
		30.209137, 29.842159, 43.320694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.652695, 34.283421, 45.792946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.303558, 34.372932, 45.966419>,  <41.094078, 34.426640, 46.070503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.303558, 34.372932, 45.966419>,  <41.652695, 34.283421, 45.792946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.303558, 34.372932, 45.966419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429776, -0.068508, 0.900333,
		0.231189, 0.972228, -0.036380,
		-0.872837, 0.223783, 0.433679,
		41.041706, 34.440067, 46.096523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.774410, 34.690807, 46.273476>,  <41.652695, 34.283421, 45.792946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.774410, 34.690807, 46.273476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.431709, 34.535427, 46.409168>,  <41.226089, 34.442200, 46.490585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.431709, 34.535427, 46.409168>,  <41.774410, 34.690807, 46.273476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.431709, 34.535427, 46.409168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373232, -0.013083, 0.927646,
		-0.355910, 0.921375, 0.156192,
		-0.856753, -0.388454, 0.339230,
		41.174683, 34.418892, 46.510937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.533592, 35.106041, 46.849380>,  <41.774410, 34.690807, 46.273476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.533592, 35.106041, 46.849380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.347927, 34.752491, 46.872395>,  <41.236526, 34.540359, 46.886204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.347927, 34.752491, 46.872395>,  <41.533592, 35.106041, 46.849380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.347927, 34.752491, 46.872395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294752, -0.092885, 0.951049,
		-0.835267, 0.458403, 0.303639,
		-0.464167, -0.883877, 0.057532,
		41.208675, 34.487328, 46.889652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.212128, 34.981541, 47.534706>,  <41.533592, 35.106041, 46.849380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.212128, 34.981541, 47.534706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.243080, 34.604816, 47.403862>,  <41.261650, 34.378780, 47.325356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.243080, 34.604816, 47.403862>,  <41.212128, 34.981541, 47.534706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.243080, 34.604816, 47.403862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356924, -0.280177, 0.891126,
		-0.930923, -0.185706, 0.314476,
		0.077378, -0.941814, -0.327106,
		41.266293, 34.322273, 47.305729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.031643, 34.531906, 48.028942>,  <41.212128, 34.981541, 47.534706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.031643, 34.531906, 48.028942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.264999, 34.286785, 47.815727>,  <41.405014, 34.139713, 47.687798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.264999, 34.286785, 47.815727>,  <41.031643, 34.531906, 48.028942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.264999, 34.286785, 47.815727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466343, -0.284589, 0.837576,
		-0.664964, -0.737213, 0.119749,
		0.583393, -0.612801, -0.533036,
		41.440018, 34.102943, 47.655815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.991383, 33.815979, 48.282047>,  <41.031643, 34.531906, 48.028942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.991383, 33.815979, 48.282047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.345108, 33.840347, 48.096889>,  <41.557343, 33.854969, 47.985794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.345108, 33.840347, 48.096889>,  <40.991383, 33.815979, 48.282047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.345108, 33.840347, 48.096889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440083, -0.439881, 0.782836,
		-0.155928, -0.895987, -0.415805,
		0.884315, 0.060923, -0.462898,
		41.610401, 33.858624, 47.958019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.301323, 33.134697, 48.439850>,  <40.991383, 33.815979, 48.282047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.301323, 33.134697, 48.439850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.603622, 33.358395, 48.303558>,  <41.785000, 33.492615, 48.221783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.603622, 33.358395, 48.303558>,  <41.301323, 33.134697, 48.439850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.603622, 33.358395, 48.303558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596401, -0.372879, 0.710822,
		0.270472, -0.740411, -0.615335,
		0.755746, 0.559243, -0.340728,
		41.830345, 33.526169, 48.201340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.910034, 32.690472, 48.245285>,  <41.301323, 33.134697, 48.439850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.910034, 32.690472, 48.245285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.040955, 33.058311, 48.332195>,  <42.119507, 33.279015, 48.384342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.040955, 33.058311, 48.332195>,  <41.910034, 32.690472, 48.245285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.040955, 33.058311, 48.332195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618890, -0.382381, 0.686120,
		0.714037, -0.090102, -0.694286,
		0.327302, 0.919601, 0.217271,
		42.139145, 33.334190, 48.397377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.605953, 32.618149, 48.309242>,  <41.910034, 32.690472, 48.245285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.605953, 32.618149, 48.309242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.533707, 32.973301, 48.478497>,  <42.490360, 33.186394, 48.580048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.533707, 32.973301, 48.478497>,  <42.605953, 32.618149, 48.309242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.533707, 32.973301, 48.478497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724111, -0.171102, 0.668122,
		0.665614, 0.427068, -0.612023,
		-0.180615, 0.887884, 0.423132,
		42.479523, 33.239666, 48.605434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.353992, 32.874210, 48.479645>,  <42.605953, 32.618149, 48.309242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.353992, 32.874210, 48.479645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.073593, 33.022217, 48.723511>,  <42.905354, 33.111019, 48.869831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.073593, 33.022217, 48.723511>,  <43.353992, 32.874210, 48.479645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.073593, 33.022217, 48.723511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635174, -0.064782, 0.769648,
		0.324276, 0.926764, -0.189612,
		-0.700998, 0.370015, 0.609664,
		42.863293, 33.133221, 48.906410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.785942, 33.250565, 48.899696>,  <43.353992, 32.874210, 48.479645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.785942, 33.250565, 48.899696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.450466, 33.267647, 49.116871>,  <43.249180, 33.277897, 49.247177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.450466, 33.267647, 49.116871>,  <43.785942, 33.250565, 48.899696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.450466, 33.267647, 49.116871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540812, -0.052316, 0.839515,
		0.064255, 0.997717, 0.020782,
		-0.838686, 0.042704, 0.542939,
		43.198860, 33.280457, 49.279751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.871075, 33.790611, 49.463665>,  <43.785942, 33.250565, 48.899696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.871075, 33.790611, 49.463665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.613316, 33.506924, 49.578037>,  <43.458660, 33.336712, 49.646660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.613316, 33.506924, 49.578037>,  <43.871075, 33.790611, 49.463665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.613316, 33.506924, 49.578037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616099, -0.260040, 0.743506,
		-0.452954, 0.655278, 0.604519,
		-0.644402, -0.709218, 0.285930,
		43.419994, 33.294159, 49.663815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.146038, 34.415554, 49.656029>,  <43.871075, 33.790611, 49.463665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.146038, 34.415554, 49.656029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.371990, 34.318687, 49.971561>,  <44.507561, 34.260567, 50.160881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.371990, 34.318687, 49.971561>,  <44.146038, 34.415554, 49.656029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.371990, 34.318687, 49.971561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424790, 0.904907, -0.026393,
		-0.707431, 0.349998, 0.614038,
		0.564885, -0.242166, 0.788835,
		44.541454, 34.246037, 50.208214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.066875, 34.941902, 50.200150>,  <44.146038, 34.415554, 49.656029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.066875, 34.941902, 50.200150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.424774, 34.769779, 50.247932>,  <44.639511, 34.666508, 50.276604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.424774, 34.769779, 50.247932>,  <44.066875, 34.941902, 50.200150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.424774, 34.769779, 50.247932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440044, 0.895116, -0.071617,
		-0.076111, 0.116645, 0.990253,
		0.894745, -0.430304, 0.119458,
		44.693199, 34.640690, 50.283772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.642700, 35.204765, 50.764576>,  <44.066875, 34.941902, 50.200150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.642700, 35.204765, 50.764576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.727642, 35.595634, 50.761871>,  <43.778606, 35.830154, 50.760250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.727642, 35.595634, 50.761871>,  <43.642700, 35.204765, 50.764576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.727642, 35.595634, 50.761871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195930, 0.035799, -0.979964,
		-0.957348, 0.209427, 0.199059,
		0.212357, 0.977169, -0.006761,
		43.791348, 35.888786, 50.759842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.086983, 35.558132, 50.398827>,  <43.642700, 35.204765, 50.764576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.086983, 35.558132, 50.398827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.391621, 35.817200, 50.389900>,  <43.574402, 35.972641, 50.384544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.391621, 35.817200, 50.389900>,  <43.086983, 35.558132, 50.398827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.391621, 35.817200, 50.389900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209399, 0.213357, -0.954270,
		-0.613293, 0.731438, 0.298113,
		0.761593, 0.647671, -0.022312,
		43.620098, 36.011501, 50.383205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.769245, 36.144203, 50.247139>,  <43.086983, 35.558132, 50.398827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.769245, 36.144203, 50.247139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.155636, 36.166386, 50.146095>,  <43.387470, 36.179695, 50.085468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.155636, 36.166386, 50.146095>,  <42.769245, 36.144203, 50.247139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.155636, 36.166386, 50.146095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256308, 0.335677, -0.906437,
		0.034525, 0.940343, 0.338471,
		0.965978, 0.055458, -0.252607,
		43.445431, 36.183022, 50.070312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.916309, 36.817421, 49.934898>,  <42.769245, 36.144203, 50.247139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.916309, 36.817421, 49.934898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.218719, 36.591991, 49.801750>,  <43.400166, 36.456734, 49.721863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.218719, 36.591991, 49.801750>,  <42.916309, 36.817421, 49.934898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.218719, 36.591991, 49.801750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174852, 0.316179, -0.932447,
		0.630752, 0.763159, 0.140497,
		0.756028, -0.563577, -0.332870,
		43.445526, 36.422916, 49.701889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.050816, 37.155334, 49.424465>,  <42.916309, 36.817421, 49.934898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.050816, 37.155334, 49.424465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.305050, 36.857197, 49.343979>,  <43.457592, 36.678314, 49.295689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.305050, 36.857197, 49.343979>,  <43.050816, 37.155334, 49.424465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.305050, 36.857197, 49.343979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096132, 0.182192, -0.978552,
		0.766019, 0.641300, 0.044148,
		0.635589, -0.745345, -0.201212,
		43.495728, 36.633595, 49.283615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.523338, 37.385662, 48.956135>,  <43.050816, 37.155334, 49.424465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.523338, 37.385662, 48.956135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.533176, 36.991058, 48.891396>,  <43.539082, 36.754295, 48.852551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.533176, 36.991058, 48.891396>,  <43.523338, 37.385662, 48.956135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.533176, 36.991058, 48.891396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028441, 0.161142, -0.986521,
		0.999293, 0.028869, -0.024093,
		0.024597, -0.986509, -0.161849,
		43.540554, 36.695107, 48.842842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.938042, 37.251339, 48.349415>,  <43.523338, 37.385662, 48.956135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.938042, 37.251339, 48.349415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.732533, 36.908310, 48.359341>,  <43.609226, 36.702492, 48.365295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.732533, 36.908310, 48.359341>,  <43.938042, 37.251339, 48.349415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.732533, 36.908310, 48.359341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025787, -0.013480, -0.999577,
		0.857541, -0.514192, -0.015188,
		-0.513769, -0.857570, 0.024819,
		43.578403, 36.651039, 48.366787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.120228, 36.974251, 47.730293>,  <43.938042, 37.251339, 48.349415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.120228, 36.974251, 47.730293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.806908, 36.751633, 47.841076>,  <43.618916, 36.618061, 47.907543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.806908, 36.751633, 47.841076>,  <44.120228, 36.974251, 47.730293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.806908, 36.751633, 47.841076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270554, -0.095904, -0.957916,
		0.559680, -0.825266, -0.075453,
		-0.783300, -0.556541, 0.276955,
		43.571918, 36.584671, 47.924164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.000229, 36.486156, 47.222496>,  <44.120228, 36.974251, 47.730293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.000229, 36.486156, 47.222496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.658676, 36.529667, 47.426090>,  <43.453747, 36.555771, 47.548244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.658676, 36.529667, 47.426090>,  <44.000229, 36.486156, 47.222496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.658676, 36.529667, 47.426090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517311, -0.069714, -0.852953,
		-0.057322, -0.991616, 0.115812,
		-0.853875, 0.108804, 0.508978,
		43.402512, 36.562298, 47.578785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.643814, 35.868301, 47.184269>,  <44.000229, 36.486156, 47.222496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.643814, 35.868301, 47.184269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.393536, 36.173164, 47.250740>,  <43.243370, 36.356083, 47.290623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.393536, 36.173164, 47.250740>,  <43.643814, 35.868301, 47.184269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.393536, 36.173164, 47.250740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495461, -0.223742, -0.839320,
		-0.602515, -0.607495, 0.517615,
		-0.625695, 0.762161, 0.166182,
		43.205826, 36.401814, 47.300594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.049767, 35.593170, 47.129040>,  <43.643814, 35.868301, 47.184269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.049767, 35.593170, 47.129040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.976315, 35.978157, 47.049095>,  <42.932243, 36.209148, 47.001129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.976315, 35.978157, 47.049095>,  <43.049767, 35.593170, 47.129040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.976315, 35.978157, 47.049095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681461, -0.271171, -0.679763,
		-0.708444, 0.011372, 0.705676,
		-0.183628, 0.962464, -0.199859,
		42.921227, 36.266895, 46.989136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.424156, 35.660625, 46.807545>,  <43.049767, 35.593170, 47.129040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.424156, 35.660625, 46.807545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.525928, 36.041401, 46.739346>,  <42.586990, 36.269867, 46.698425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.525928, 36.041401, 46.739346>,  <42.424156, 35.660625, 46.807545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.525928, 36.041401, 46.739346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514194, -0.016158, -0.857522,
		-0.819067, 0.305848, 0.485373,
		0.254429, 0.951943, -0.170500,
		42.602257, 36.326984, 46.688194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.879532, 35.904209, 46.471634>,  <42.424156, 35.660625, 46.807545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.879532, 35.904209, 46.471634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.132866, 36.202534, 46.389027>,  <42.284866, 36.381527, 46.339462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.132866, 36.202534, 46.389027>,  <41.879532, 35.904209, 46.471634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.132866, 36.202534, 46.389027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425923, 0.113118, -0.897660,
		-0.646123, 0.656484, 0.389300,
		0.633336, 0.745811, -0.206523,
		42.322868, 36.426277, 46.327068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.492500, 36.472809, 46.288773>,  <41.879532, 35.904209, 46.471634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.492500, 36.472809, 46.288773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.851105, 36.536427, 46.123379>,  <42.066269, 36.574596, 46.024143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.851105, 36.536427, 46.123379>,  <41.492500, 36.472809, 46.288773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.851105, 36.536427, 46.123379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440602, 0.222664, -0.869650,
		-0.046247, 0.961834, 0.269697,
		0.896511, 0.159048, -0.413488,
		42.120056, 36.584141, 45.999332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.234913, 37.067055, 46.746174>,  <41.492500, 36.472809, 46.288773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.234913, 37.067055, 46.746174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.852615, 37.133621, 46.843216>,  <40.623238, 37.173561, 46.901440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.852615, 37.133621, 46.843216>,  <41.234913, 37.067055, 46.746174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.852615, 37.133621, 46.843216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152531, -0.424831, 0.892330,
		0.251564, 0.889845, 0.380646,
		-0.955746, 0.166418, 0.242601,
		40.565891, 37.183548, 46.915997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.225895, 37.435482, 47.303944>,  <41.234913, 37.067055, 46.746174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.225895, 37.435482, 47.303944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.859375, 37.275639, 47.314522>,  <40.639462, 37.179733, 47.320869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.859375, 37.275639, 47.314522>,  <41.225895, 37.435482, 47.303944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859375, 37.275639, 47.314522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125708, -0.224286, 0.966382,
		-0.380244, 0.888823, 0.255748,
		-0.916303, -0.399611, 0.026449,
		40.584484, 37.155754, 47.322456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911373, 37.692219, 47.856819>,  <41.225895, 37.435482, 47.303944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.911373, 37.692219, 47.856819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.695446, 37.363274, 47.784904>,  <40.565891, 37.165909, 47.741756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.695446, 37.363274, 47.784904>,  <40.911373, 37.692219, 47.856819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695446, 37.363274, 47.784904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064476, -0.253345, 0.965225,
		-0.839311, 0.509450, 0.189782,
		-0.539814, -0.822360, -0.179788,
		40.533501, 37.116566, 47.730968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427570, 37.667465, 48.399258>,  <40.911373, 37.692219, 47.856819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.427570, 37.667465, 48.399258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.435024, 37.293327, 48.257961>,  <40.439499, 37.068844, 48.173183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.435024, 37.293327, 48.257961>,  <40.427570, 37.667465, 48.399258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.435024, 37.293327, 48.257961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102073, -0.353233, 0.929950,
		-0.994602, 0.018725, -0.102057,
		0.018637, -0.935348, -0.353238,
		40.440617, 37.012722, 48.151989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861340, 37.398556, 48.794331>,  <40.427570, 37.667465, 48.399258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861340, 37.398556, 48.794331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.081997, 37.103752, 48.638123>,  <40.214390, 36.926868, 48.544395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.081997, 37.103752, 48.638123>,  <39.861340, 37.398556, 48.794331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.081997, 37.103752, 48.638123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018965, -0.457005, 0.889262,
		-0.833866, -0.497960, -0.238126,
		0.551642, -0.737009, -0.390525,
		40.247490, 36.882648, 48.520966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609612, 36.810116, 49.166214>,  <39.861340, 37.398556, 48.794331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609612, 36.810116, 49.166214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.963264, 36.736729, 48.994335>,  <40.175457, 36.692696, 48.891209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.963264, 36.736729, 48.994335>,  <39.609612, 36.810116, 49.166214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.963264, 36.736729, 48.994335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305568, -0.468681, 0.828834,
		-0.353456, -0.864105, -0.358316,
		0.884136, -0.183467, -0.429701,
		40.228504, 36.681690, 48.865425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741543, 36.061512, 49.200417>,  <39.609612, 36.810116, 49.166214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741543, 36.061512, 49.200417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.085258, 36.259201, 49.147697>,  <40.291489, 36.377815, 49.116066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.085258, 36.259201, 49.147697>,  <39.741543, 36.061512, 49.200417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.085258, 36.259201, 49.147697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325483, -0.329561, 0.886256,
		0.394569, -0.804448, -0.444048,
		0.859288, 0.494219, -0.131800,
		40.343044, 36.407467, 49.108158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.499249, 35.429531, 49.405689>,  <39.741543, 36.061512, 49.200417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.499249, 35.429531, 49.405689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.188221, 35.405140, 49.656021>,  <39.001602, 35.390507, 49.806221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.188221, 35.405140, 49.656021>,  <39.499249, 35.429531, 49.405689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.188221, 35.405140, 49.656021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622870, 0.210970, -0.753342,
		-0.086093, -0.975589, -0.202026,
		-0.777573, -0.060979, 0.625828,
		38.954948, 35.386845, 49.843769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044300, 34.818790, 49.265934>,  <39.499249, 35.429531, 49.405689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044300, 34.818790, 49.265934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.841892, 35.118004, 49.437698>,  <38.720448, 35.297531, 49.540756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.841892, 35.118004, 49.437698>,  <39.044300, 34.818790, 49.265934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.841892, 35.118004, 49.437698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494362, 0.156434, -0.855064,
		-0.706789, -0.644963, 0.290640,
		-0.506019, 0.748031, 0.429412,
		38.690086, 35.342415, 49.566521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439590, 34.741367, 48.994556>,  <39.044300, 34.818790, 49.265934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439590, 34.741367, 48.994556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.433258, 35.117153, 49.131474>,  <38.429459, 35.342625, 49.213623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.433258, 35.117153, 49.131474>,  <38.439590, 34.741367, 48.994556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433258, 35.117153, 49.131474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653563, 0.249357, -0.714616,
		-0.756707, -0.235017, 0.610051,
		-0.015827, 0.939461, 0.342289,
		38.428509, 35.398991, 49.234161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817059, 34.958210, 48.876259>,  <38.439590, 34.741367, 48.994556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817059, 34.958210, 48.876259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.995396, 35.311455, 48.934700>,  <38.102398, 35.523399, 48.969765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.995396, 35.311455, 48.934700>,  <37.817059, 34.958210, 48.876259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995396, 35.311455, 48.934700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663542, 0.435621, -0.608232,
		-0.600780, 0.174229, 0.780197,
		0.445842, 0.883108, 0.146104,
		38.129147, 35.576385, 48.978531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286938, 35.461597, 48.996700>,  <37.817059, 34.958210, 48.876259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286938, 35.461597, 48.996700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.611816, 35.674198, 48.900494>,  <37.806744, 35.801758, 48.842770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.611816, 35.674198, 48.900494>,  <37.286938, 35.461597, 48.996700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611816, 35.674198, 48.900494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578045, 0.677537, -0.454762,
		-0.078747, 0.508385, 0.857522,
		0.812196, 0.531497, -0.240515,
		37.855476, 35.833649, 48.828339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014240, 36.148048, 48.906425>,  <37.286938, 35.461597, 48.996700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014240, 36.148048, 48.906425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.358894, 36.138420, 48.703640>,  <37.565685, 36.132645, 48.581970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.358894, 36.138420, 48.703640>,  <37.014240, 36.148048, 48.906425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.358894, 36.138420, 48.703640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444101, 0.447778, -0.776060,
		0.245685, 0.893821, 0.375131,
		0.861634, -0.024070, -0.506959,
		37.617386, 36.131199, 48.551552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155483, 36.840454, 48.581566>,  <37.014240, 36.148048, 48.906425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155483, 36.840454, 48.581566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.323982, 36.546238, 48.369324>,  <37.425079, 36.369709, 48.241978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.323982, 36.546238, 48.369324>,  <37.155483, 36.840454, 48.581566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.323982, 36.546238, 48.369324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331739, 0.419539, -0.844947,
		0.844099, 0.531950, -0.067278,
		0.421244, -0.735538, -0.530601,
		37.450356, 36.325577, 48.210144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<41.566231, 31.003866, 50.159809> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.668518, 31.390566, 50.160206>,  <41.729893, 31.622585, 50.160442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.668518, 31.390566, 50.160206>,  <41.566231, 31.003866, 50.159809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.668518, 31.390566, 50.160206> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108445, 0.029701, -0.993659,
		-0.960649, 0.253992, 0.112435,
		0.255720, 0.966750, 0.000988,
		41.745235, 31.680592, 50.160503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.043327, 31.489105, 50.064117>,  <41.566231, 31.003866, 50.159809>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.043327, 31.489105, 50.064117> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.394806, 31.573647, 49.892902>,  <41.605694, 31.624372, 49.790173>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.394806, 31.573647, 49.892902>,  <41.043327, 31.489105, 50.064117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.394806, 31.573647, 49.892902> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385599, -0.214368, -0.897419,
		-0.281432, 0.953612, -0.106867,
		0.878698, 0.211355, -0.428041,
		41.658417, 31.637053, 49.764488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844269, 31.854128, 49.497940>,  <41.043327, 31.489105, 50.064117>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.844269, 31.854128, 49.497940> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.224251, 31.770491, 49.405106>,  <41.452240, 31.720308, 49.349407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.224251, 31.770491, 49.405106>,  <40.844269, 31.854128, 49.497940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.224251, 31.770491, 49.405106> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267294, -0.159583, -0.950309,
		0.161668, 0.964786, -0.207487,
		0.949956, -0.209095, -0.232083,
		41.509239, 31.707762, 49.335480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.065876, 32.270550, 48.995441>,  <40.844269, 31.854128, 49.497940>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.065876, 32.270550, 48.995441> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.255779, 31.919012, 48.976547>,  <41.369720, 31.708088, 48.965210>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.255779, 31.919012, 48.976547>,  <41.065876, 32.270550, 48.995441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.255779, 31.919012, 48.976547> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421321, -0.179829, -0.888904,
		0.772717, 0.441915, -0.455652,
		0.474759, -0.878847, -0.047231,
		41.398209, 31.655357, 48.962379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.251514, 32.232399, 48.354820>,  <41.065876, 32.270550, 48.995441>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.251514, 32.232399, 48.354820> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.310337, 31.847036, 48.444458>,  <41.345631, 31.615818, 48.498241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.310337, 31.847036, 48.444458>,  <41.251514, 32.232399, 48.354820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.310337, 31.847036, 48.444458> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549408, -0.267955, -0.791423,
		0.822511, -0.006735, -0.568709,
		0.147059, -0.963408, 0.224096,
		41.354454, 31.558014, 48.511688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.377674, 31.989981, 47.753765>,  <41.251514, 32.232399, 48.354820>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.377674, 31.989981, 47.753765> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.293964, 31.655943, 47.957264>,  <41.243736, 31.455521, 48.079361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.293964, 31.655943, 47.957264>,  <41.377674, 31.989981, 47.753765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.293964, 31.655943, 47.957264> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460261, -0.374907, -0.804739,
		0.862764, -0.402569, -0.305902,
		-0.209278, -0.835095, 0.508743,
		41.231182, 31.405415, 48.109886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.453926, 31.320980, 47.260986>,  <41.377674, 31.989981, 47.753765>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.453926, 31.320980, 47.260986> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.204952, 31.241816, 47.563881>,  <41.055569, 31.194317, 47.745617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.204952, 31.241816, 47.563881>,  <41.453926, 31.320980, 47.260986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.204952, 31.241816, 47.563881> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734419, -0.186762, -0.652494,
		0.270560, -0.962263, -0.029105,
		-0.622436, -0.197914, 0.757235,
		41.018223, 31.182442, 47.791050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.207802, 30.594414, 47.159950>,  <41.453926, 31.320980, 47.260986>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.207802, 30.594414, 47.159950> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.961102, 30.833927, 47.364330>,  <40.813080, 30.977636, 47.486958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.961102, 30.833927, 47.364330>,  <41.207802, 30.594414, 47.159950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961102, 30.833927, 47.364330> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714139, -0.152616, -0.683165,
		-0.331091, -0.786234, 0.521743,
		-0.616754, 0.598787, 0.510950,
		40.776073, 31.013563, 47.517616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.558693, 30.393476, 46.895401>,  <41.207802, 30.594414, 47.159950>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.558693, 30.393476, 46.895401> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.461601, 30.721878, 47.102104>,  <40.403347, 30.918919, 47.226128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.461601, 30.721878, 47.102104>,  <40.558693, 30.393476, 46.895401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.461601, 30.721878, 47.102104> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790232, 0.141641, -0.596215,
		-0.562688, -0.553075, 0.614402,
		-0.242727, 0.821003, 0.516757,
		40.388783, 30.968180, 47.257130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804607, 30.254612, 46.942284>,  <40.558693, 30.393476, 46.895401>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.804607, 30.254612, 46.942284> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.894180, 30.643217, 46.973309>,  <39.947926, 30.876381, 46.991924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.894180, 30.643217, 46.973309>,  <39.804607, 30.254612, 46.942284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.894180, 30.643217, 46.973309> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739745, 0.221243, -0.635475,
		-0.634533, 0.084929, 0.768216,
		0.223933, 0.971513, 0.077560,
		39.961361, 30.934671, 46.996578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204151, 30.601393, 47.134563>,  <39.804607, 30.254612, 46.942284>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.204151, 30.601393, 47.134563> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.456665, 30.830647, 46.925568>,  <39.608173, 30.968199, 46.800171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.456665, 30.830647, 46.925568>,  <39.204151, 30.601393, 47.134563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456665, 30.830647, 46.925568> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713866, 0.166123, -0.680293,
		-0.303101, 0.802447, 0.514012,
		0.631289, 0.573133, -0.522488,
		39.646053, 31.002586, 46.768822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762600, 31.084873, 46.843151>,  <39.204151, 30.601393, 47.134563>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762600, 31.084873, 46.843151> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.084515, 31.152689, 46.615616>,  <39.277664, 31.193378, 46.479095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.084515, 31.152689, 46.615616>,  <38.762600, 31.084873, 46.843151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.084515, 31.152689, 46.615616> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592012, 0.298558, -0.748588,
		0.042915, 0.939212, 0.340646,
		0.804786, 0.169541, -0.568837,
		39.325951, 31.203550, 46.444965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423008, 31.646502, 47.309990>,  <38.762600, 31.084873, 46.843151>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423008, 31.646502, 47.309990> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.052402, 31.697161, 47.451710>,  <37.830040, 31.727556, 47.536739>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.052402, 31.697161, 47.451710>,  <38.423008, 31.646502, 47.309990>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052402, 31.697161, 47.451710> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343487, -0.099616, 0.933860,
		0.153566, 0.986933, 0.048793,
		-0.926517, 0.126650, 0.354296,
		37.774448, 31.735155, 47.557999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.420517, 32.291012, 47.718147>,  <38.423008, 31.646502, 47.309990>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.420517, 32.291012, 47.718147> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.116402, 32.056213, 47.829430>,  <37.933933, 31.915335, 47.896198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.116402, 32.056213, 47.829430>,  <38.420517, 32.291012, 47.718147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116402, 32.056213, 47.829430> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342804, 0.001215, 0.939406,
		-0.551763, 0.809591, 0.200300,
		-0.760292, -0.586993, 0.278201,
		37.888313, 31.880116, 47.912891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134468, 32.670792, 48.234737>,  <38.420517, 32.291012, 47.718147>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134468, 32.670792, 48.234737> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.016903, 32.292435, 48.289719>,  <37.946365, 32.065418, 48.322708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.016903, 32.292435, 48.289719>,  <38.134468, 32.670792, 48.234737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016903, 32.292435, 48.289719> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200267, 0.079674, 0.976496,
		-0.934616, 0.314534, 0.166015,
		-0.293914, -0.945897, 0.137455,
		37.928730, 32.008667, 48.330956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808033, 32.645679, 48.893726>,  <38.134468, 32.670792, 48.234737>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808033, 32.645679, 48.893726> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.908028, 32.261578, 48.844055>,  <37.968025, 32.031116, 48.814255>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.908028, 32.261578, 48.844055>,  <37.808033, 32.645679, 48.893726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908028, 32.261578, 48.844055> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186418, -0.078115, 0.979360,
		-0.950134, -0.267978, 0.159480,
		0.249989, -0.960253, -0.124176,
		37.983025, 31.973501, 48.806801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484703, 32.294830, 49.400925>,  <37.808033, 32.645679, 48.893726>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484703, 32.294830, 49.400925> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.771427, 32.046257, 49.274429>,  <37.943462, 31.897114, 49.198532>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.771427, 32.046257, 49.274429>,  <37.484703, 32.294830, 49.400925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771427, 32.046257, 49.274429> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316842, -0.113715, 0.941637,
		-0.621126, -0.775170, 0.115384,
		0.716808, -0.621434, -0.316238,
		37.986469, 31.859827, 49.179558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522736, 31.799871, 49.922558>,  <37.484703, 32.294830, 49.400925>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522736, 31.799871, 49.922558> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.874306, 31.758053, 49.736412>,  <38.085247, 31.732962, 49.624725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.874306, 31.758053, 49.736412>,  <37.522736, 31.799871, 49.922558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874306, 31.758053, 49.736412> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393625, -0.391996, 0.831504,
		-0.269348, -0.914007, -0.303384,
		0.878926, -0.104544, -0.465360,
		38.137985, 31.726690, 49.596806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788254, 31.081455, 50.193264>,  <37.522736, 31.799871, 49.922558>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788254, 31.081455, 50.193264> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.106369, 31.289936, 50.069420>,  <38.297237, 31.415026, 49.995113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.106369, 31.289936, 50.069420>,  <37.788254, 31.081455, 50.193264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106369, 31.289936, 50.069420> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496710, -0.267431, 0.825687,
		0.347552, -0.810449, -0.471572,
		0.795290, 0.521204, -0.309612,
		38.344955, 31.446297, 49.976536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351318, 30.658329, 50.390205>,  <37.788254, 31.081455, 50.193264>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351318, 30.658329, 50.390205> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.485222, 31.031195, 50.335056>,  <38.565563, 31.254913, 50.301968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.485222, 31.031195, 50.335056>,  <38.351318, 30.658329, 50.390205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485222, 31.031195, 50.335056> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614626, -0.105093, 0.781787,
		0.714263, -0.346451, -0.608112,
		0.334759, 0.932163, -0.137874,
		38.585651, 31.310844, 50.293694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947472, 30.562906, 50.690243>,  <38.351318, 30.658329, 50.390205>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947472, 30.562906, 50.690243> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.888485, 30.957571, 50.662663>,  <38.853092, 31.194370, 50.646114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.888485, 30.957571, 50.662663>,  <38.947472, 30.562906, 50.690243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888485, 30.957571, 50.662663> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476275, 0.131939, 0.869341,
		0.866842, 0.095359, -0.489379,
		-0.147467, 0.986661, -0.068953,
		38.844246, 31.253569, 50.641975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574955, 30.782095, 50.929878>,  <38.947472, 30.562906, 50.690243>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574955, 30.782095, 50.929878> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.325676, 31.094872, 50.935505>,  <39.176109, 31.282537, 50.938881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.325676, 31.094872, 50.935505>,  <39.574955, 30.782095, 50.929878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325676, 31.094872, 50.935505> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276785, 0.203703, 0.939093,
		0.731449, 0.589132, -0.343376,
		-0.623196, 0.781940, 0.014065,
		39.138718, 31.329453, 50.939724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996307, 31.289207, 51.129066>,  <39.574955, 30.782095, 50.929878>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996307, 31.289207, 51.129066> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.621658, 31.401932, 51.212330>,  <39.396870, 31.469566, 51.262287>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.621658, 31.401932, 51.212330>,  <39.996307, 31.289207, 51.129066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.621658, 31.401932, 51.212330> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261276, 0.166002, 0.950883,
		0.233413, 0.945001, -0.229110,
		-0.936618, 0.281809, 0.208159,
		39.340672, 31.486475, 51.274776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.055950, 31.907381, 51.516537>,  <39.996307, 31.289207, 51.129066>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.055950, 31.907381, 51.516537> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.683083, 31.800158, 51.613861>,  <39.459362, 31.735823, 51.672256>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.683083, 31.800158, 51.613861>,  <40.055950, 31.907381, 51.516537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683083, 31.800158, 51.613861> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194872, 0.194868, 0.961276,
		-0.305094, 0.943488, -0.129413,
		-0.932171, -0.268060, 0.243313,
		39.403431, 31.719740, 51.686855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825466, 32.451618, 51.852940>,  <40.055950, 31.907381, 51.516537>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.825466, 32.451618, 51.852940> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.560028, 32.174149, 51.964989>,  <39.400764, 32.007668, 52.032219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.560028, 32.174149, 51.964989>,  <39.825466, 32.451618, 51.852940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560028, 32.174149, 51.964989> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193708, 0.202347, 0.959965,
		-0.722580, 0.691288, 0.000094,
		-0.663593, -0.693669, 0.280120,
		39.360950, 31.966047, 52.049023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.335743, 32.753246, 52.328114>,  <39.825466, 32.451618, 51.852940>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.335743, 32.753246, 52.328114> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.352654, 32.357124, 52.381031>,  <39.362801, 32.119450, 52.412781>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.352654, 32.357124, 52.381031>,  <39.335743, 32.753246, 52.328114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.352654, 32.357124, 52.381031> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177499, 0.137750, 0.974433,
		-0.983212, -0.017715, 0.181602,
		0.042278, -0.990309, 0.132294,
		39.365337, 32.060032, 52.420719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868076, 33.188751, 52.056015>,  <39.335743, 32.753246, 52.328114>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868076, 33.188751, 52.056015> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.176079, 33.436508, 52.117268>,  <39.360882, 33.585163, 52.154018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.176079, 33.436508, 52.117268>,  <38.868076, 33.188751, 52.056015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.176079, 33.436508, 52.117268> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345399, 0.606455, -0.716178,
		-0.536461, 0.498568, 0.680910,
		0.770005, 0.619388, 0.153135,
		39.407082, 33.622326, 52.163208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634953, 33.908596, 52.199505>,  <38.868076, 33.188751, 52.056015>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.634953, 33.908596, 52.199505> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.010517, 33.954765, 52.069817>,  <39.235855, 33.982468, 51.992004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.010517, 33.954765, 52.069817>,  <38.634953, 33.908596, 52.199505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.010517, 33.954765, 52.069817> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319759, 0.640953, -0.697806,
		0.127271, 0.758852, 0.638706,
		0.938912, 0.115421, -0.324225,
		39.292191, 33.989391, 51.972549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713894, 34.600956, 52.141708>,  <38.634953, 33.908596, 52.199505>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.713894, 34.600956, 52.141708> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.001785, 34.483299, 51.890160>,  <39.174519, 34.412704, 51.739231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.001785, 34.483299, 51.890160>,  <38.713894, 34.600956, 52.141708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001785, 34.483299, 51.890160> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236320, 0.747923, -0.620293,
		0.652801, 0.595054, 0.468787,
		0.719724, -0.294144, -0.628869,
		39.217701, 34.395058, 51.701500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074474, 35.132076, 51.944260>,  <38.713894, 34.600956, 52.141708>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074474, 35.132076, 51.944260> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.145084, 34.872231, 51.648464>,  <39.187450, 34.716324, 51.470985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.145084, 34.872231, 51.648464>,  <39.074474, 35.132076, 51.944260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145084, 34.872231, 51.648464> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280428, 0.686962, -0.670406,
		0.943504, 0.325715, -0.060905,
		0.176522, -0.649610, -0.739491,
		39.198040, 34.677349, 51.426617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503674, 35.536037, 51.490208>,  <39.074474, 35.132076, 51.944260>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503674, 35.536037, 51.490208> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.341816, 35.226669, 51.295033>,  <39.244701, 35.041046, 51.177929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.341816, 35.226669, 51.295033>,  <39.503674, 35.536037, 51.490208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341816, 35.226669, 51.295033> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220484, 0.600340, -0.768751,
		0.887496, -0.203490, -0.413452,
		-0.404645, -0.773423, -0.487934,
		39.220421, 34.994644, 51.148651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824867, 35.461876, 50.796661>,  <39.503674, 35.536037, 51.490208>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.824867, 35.461876, 50.796661> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.478371, 35.281452, 50.710701>,  <39.270473, 35.173199, 50.659126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.478371, 35.281452, 50.710701>,  <39.824867, 35.461876, 50.796661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.478371, 35.281452, 50.710701> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122720, 0.609013, -0.783609,
		0.484327, -0.652419, -0.582904,
		-0.866238, -0.451057, -0.214896,
		39.218498, 35.146133, 50.646233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.830688, 35.410732, 50.135235>,  <39.824867, 35.461876, 50.796661>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.830688, 35.410732, 50.135235> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.439075, 35.365101, 50.202736>,  <39.204105, 35.337723, 50.243237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.439075, 35.365101, 50.202736>,  <39.830688, 35.410732, 50.135235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439075, 35.365101, 50.202736> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201152, 0.410944, -0.889192,
		0.032088, -0.904495, -0.425275,
		-0.979034, -0.114077, 0.168755,
		39.145367, 35.330879, 50.253361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.215797, 35.631748, 49.569832>,  <39.830688, 35.410732, 50.135235>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.215797, 35.631748, 49.569832> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.364212, 36.001545, 49.534870>,  <40.453262, 36.223423, 49.513893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.364212, 36.001545, 49.534870>,  <40.215797, 35.631748, 49.569832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364212, 36.001545, 49.534870> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407664, -0.077593, 0.909829,
		0.834351, -0.373213, -0.405674,
		0.371038, 0.924495, -0.087405,
		40.475525, 36.278893, 49.508648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.914902, 35.576286, 49.897766>,  <40.215797, 35.631748, 49.569832>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.914902, 35.576286, 49.897766> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.892670, 35.974438, 49.866447>,  <40.879330, 36.213329, 49.847656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.892670, 35.974438, 49.866447>,  <40.914902, 35.576286, 49.897766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.892670, 35.974438, 49.866447> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543337, 0.095942, 0.834015,
		0.837673, 0.003809, -0.546158,
		-0.055576, 0.995380, -0.078298,
		40.875996, 36.273052, 49.842957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.657822, 35.741219, 49.925282>,  <40.914902, 35.576286, 49.897766>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.657822, 35.741219, 49.925282> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.426224, 36.053185, 50.020348>,  <41.287266, 36.240364, 50.077389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.426224, 36.053185, 50.020348>,  <41.657822, 35.741219, 49.925282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.426224, 36.053185, 50.020348> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502052, 0.111365, 0.857637,
		0.642420, 0.615892, -0.456041,
		-0.578999, 0.779920, 0.237667,
		41.252525, 36.287159, 50.091648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.019520, 36.388344, 50.119232>,  <41.657822, 35.741219, 49.925282>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.019520, 36.388344, 50.119232> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.683830, 36.478828, 50.317032>,  <41.482414, 36.533119, 50.435711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.683830, 36.478828, 50.317032>,  <42.019520, 36.388344, 50.119232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.683830, 36.478828, 50.317032> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521983, 0.080219, 0.849176,
		0.152427, 0.970769, -0.185401,
		-0.839226, 0.226213, 0.494497,
		41.432064, 36.546692, 50.465382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.237614, 36.806736, 50.608078>,  <42.019520, 36.388344, 50.119232>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.237614, 36.806736, 50.608078> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.880287, 36.686954, 50.742126>,  <41.665890, 36.615086, 50.822556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.880287, 36.686954, 50.742126>,  <42.237614, 36.806736, 50.608078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.880287, 36.686954, 50.742126> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362095, -0.037886, 0.931371,
		-0.266205, 0.953359, 0.142274,
		-0.893321, -0.299453, 0.335121,
		41.612289, 36.597118, 50.842663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.066479, 37.341484, 51.156246>,  <42.237614, 36.806736, 50.608078>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.066479, 37.341484, 51.156246> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.830517, 37.024387, 51.217659>,  <41.688938, 36.834129, 51.254509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.830517, 37.024387, 51.217659>,  <42.066479, 37.341484, 51.156246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.830517, 37.024387, 51.217659> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222610, 0.023110, 0.974634,
		-0.776179, 0.609122, 0.162839,
		-0.589907, -0.792740, 0.153534,
		41.653545, 36.786564, 51.263718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.630672, 37.549484, 51.655197>,  <42.066479, 37.341484, 51.156246>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.630672, 37.549484, 51.655197> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.623314, 37.150394, 51.681145>,  <41.618900, 36.910942, 51.696712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.623314, 37.150394, 51.681145>,  <41.630672, 37.549484, 51.655197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.623314, 37.150394, 51.681145> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115311, 0.062328, 0.991372,
		-0.993159, 0.025718, 0.113902,
		-0.018397, -0.997724, 0.064867,
		41.617794, 36.851078, 51.700603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.205418, 37.415524, 52.192215>,  <41.630672, 37.549484, 51.655197>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.205418, 37.415524, 52.192215> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.427616, 37.086708, 52.142128>,  <41.560936, 36.889420, 52.112076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.427616, 37.086708, 52.142128>,  <41.205418, 37.415524, 52.192215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.427616, 37.086708, 52.142128> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203051, -0.011927, 0.979096,
		-0.806349, -0.569305, 0.160291,
		0.555492, -0.822040, -0.125216,
		41.594265, 36.840096, 52.104565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863796, 36.885426, 52.705173>,  <41.205418, 37.415524, 52.192215>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.863796, 36.885426, 52.705173> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.243172, 36.830311, 52.590988>,  <41.470795, 36.797241, 52.522476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.243172, 36.830311, 52.590988>,  <40.863796, 36.885426, 52.705173>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.243172, 36.830311, 52.590988> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293244, 0.039529, 0.955220,
		-0.120330, -0.989673, 0.077895,
		0.948435, -0.137784, -0.285459,
		41.527702, 36.788975, 52.505352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.186085, 37.454357, 37.422707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.560768, 37.327675, 37.482418>,  <36.785576, 37.251667, 37.518246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.560768, 37.327675, 37.482418>,  <36.186085, 37.454357, 37.422707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.560768, 37.327675, 37.482418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163627, -0.019035, 0.986339,
		-0.309536, -0.948333, -0.069651,
		0.936704, -0.316704, 0.149281,
		36.841778, 37.232662, 37.527203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184452, 36.895897, 37.951763>,  <36.186085, 37.454357, 37.422707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184452, 36.895897, 37.951763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.564110, 37.021809, 37.949039>,  <36.791904, 37.097355, 37.947407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.564110, 37.021809, 37.949039>,  <36.184452, 36.895897, 37.951763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564110, 37.021809, 37.949039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019560, -0.037377, 0.999110,
		0.314246, -0.948428, -0.041633,
		0.949140, 0.314780, -0.006806,
		36.848850, 37.116241, 37.946999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411068, 36.609573, 38.562874>,  <36.184452, 36.895897, 37.951763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411068, 36.609573, 38.562874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.689823, 36.888271, 38.494877>,  <36.857075, 37.055489, 38.454079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.689823, 36.888271, 38.494877>,  <36.411068, 36.609573, 38.562874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689823, 36.888271, 38.494877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112204, 0.128192, 0.985382,
		0.708348, -0.705775, 0.011158,
		0.696888, 0.696741, -0.169995,
		36.898891, 37.097294, 38.443878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036503, 36.418209, 38.986160>,  <36.411068, 36.609573, 38.562874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036503, 36.418209, 38.986160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.053635, 36.810234, 38.908562>,  <37.063911, 37.045448, 38.862003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.053635, 36.810234, 38.908562>,  <37.036503, 36.418209, 38.986160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053635, 36.810234, 38.908562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228953, 0.179382, 0.956767,
		0.972495, -0.085392, -0.216706,
		0.042827, 0.980067, -0.193999,
		37.066483, 37.104256, 38.850361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684322, 36.669716, 39.145618>,  <37.036503, 36.418209, 38.986160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.684322, 36.669716, 39.145618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450027, 36.992382, 39.177139>,  <37.309452, 37.185982, 39.196053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450027, 36.992382, 39.177139>,  <37.684322, 36.669716, 39.145618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.450027, 36.992382, 39.177139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392148, 0.196965, 0.898568,
		0.709318, 0.557227, -0.431701,
		-0.585737, 0.806661, 0.078805,
		37.274307, 37.234379, 39.200779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247417, 37.032173, 39.434177>,  <37.684322, 36.669716, 39.145618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247417, 37.032173, 39.434177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897469, 37.212482, 39.505062>,  <37.687500, 37.320667, 39.547592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897469, 37.212482, 39.505062>,  <38.247417, 37.032173, 39.434177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897469, 37.212482, 39.505062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356849, 0.352494, 0.865105,
		0.327499, 0.820094, -0.469244,
		-0.874873, 0.450771, 0.177209,
		37.635006, 37.347713, 39.558224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343266, 37.725288, 39.539314>,  <38.247417, 37.032173, 39.434177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343266, 37.725288, 39.539314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.990170, 37.671646, 39.719444>,  <37.778313, 37.639462, 39.827522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.990170, 37.671646, 39.719444>,  <38.343266, 37.725288, 39.539314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990170, 37.671646, 39.719444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382976, 0.349911, 0.854922,
		-0.272221, 0.927135, -0.257521,
		-0.882737, -0.134103, 0.450323,
		37.725349, 37.631416, 39.854542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239197, 38.290031, 40.067463>,  <38.343266, 37.725288, 39.539314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239197, 38.290031, 40.067463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.945900, 38.040661, 40.176052>,  <37.769924, 37.891037, 40.241207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.945900, 38.040661, 40.176052>,  <38.239197, 38.290031, 40.067463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.945900, 38.040661, 40.176052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182492, 0.204171, 0.961775,
		-0.655026, 0.754752, -0.035935,
		-0.733238, -0.623429, 0.271473,
		37.725929, 37.853634, 40.257496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045296, 38.547642, 40.643349>,  <38.239197, 38.290031, 40.067463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045296, 38.547642, 40.643349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.862003, 38.193264, 40.672005>,  <37.752029, 37.980637, 40.689198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.862003, 38.193264, 40.672005>,  <38.045296, 38.547642, 40.643349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862003, 38.193264, 40.672005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096816, 0.129875, 0.986792,
		-0.883546, 0.445240, -0.145286,
		-0.458229, -0.885942, 0.071644,
		37.724533, 37.927483, 40.693497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422897, 38.664146, 41.077324>,  <38.045296, 38.547642, 40.643349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422897, 38.664146, 41.077324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.506859, 38.273235, 41.065540>,  <37.557236, 38.038689, 41.058468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.506859, 38.273235, 41.065540>,  <37.422897, 38.664146, 41.077324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506859, 38.273235, 41.065540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113574, -0.054303, 0.992044,
		-0.971103, -0.204890, -0.122392,
		0.209906, -0.977277, -0.029463,
		37.569832, 37.980053, 41.056702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887897, 38.371655, 41.608543>,  <37.422897, 38.664146, 41.077324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887897, 38.371655, 41.608543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.156281, 38.077320, 41.571949>,  <37.317310, 37.900719, 41.549992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.156281, 38.077320, 41.571949>,  <36.887897, 38.371655, 41.608543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156281, 38.077320, 41.571949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090735, -0.040973, 0.995032,
		-0.735926, -0.675922, 0.039275,
		0.670954, -0.735834, -0.091483,
		37.357567, 37.856571, 41.544502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662914, 37.777718, 42.022934>,  <36.887897, 38.371655, 41.608543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662914, 37.777718, 42.022934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.059277, 37.792236, 41.971104>,  <37.297092, 37.800949, 41.940006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.059277, 37.792236, 41.971104>,  <36.662914, 37.777718, 42.022934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.059277, 37.792236, 41.971104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132698, -0.103994, 0.985686,
		0.022309, -0.993915, -0.107866,
		0.990905, 0.036303, -0.129571,
		37.356548, 37.803127, 41.932232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094017, 37.239357, 42.160789>,  <36.662914, 37.777718, 42.022934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094017, 37.239357, 42.160789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791477, 37.354019, 42.395996>,  <35.609955, 37.422817, 42.537121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791477, 37.354019, 42.395996>,  <36.094017, 37.239357, 42.160789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.791477, 37.354019, 42.395996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613076, 0.002961, -0.790018,
		-0.228206, -0.958028, 0.173504,
		-0.756346, 0.286658, 0.588020,
		35.564575, 37.440018, 42.572403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511635, 36.732994, 42.191296>,  <36.094017, 37.239357, 42.160789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.511635, 36.732994, 42.191296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337585, 37.080299, 42.286617>,  <35.233154, 37.288681, 42.343811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337585, 37.080299, 42.286617>,  <35.511635, 36.732994, 42.191296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337585, 37.080299, 42.286617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558133, -0.052421, -0.828094,
		-0.706509, -0.493331, 0.507415,
		-0.435123, 0.868261, 0.238309,
		35.207050, 37.340778, 42.358109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921253, 36.699661, 41.898983>,  <35.511635, 36.732994, 42.191296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921253, 36.699661, 41.898983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881382, 37.084839, 41.999226>,  <34.857460, 37.315945, 42.059372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881382, 37.084839, 41.999226>,  <34.921253, 36.699661, 41.898983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881382, 37.084839, 41.999226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703122, 0.110044, -0.702502,
		-0.704048, -0.246229, 0.666099,
		-0.099676, 0.962944, 0.250605,
		34.851479, 37.373722, 42.074406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255833, 36.825592, 42.053276>,  <34.921253, 36.699661, 41.898983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255833, 36.825592, 42.053276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412979, 37.168495, 41.920151>,  <34.507267, 37.374237, 41.840275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412979, 37.168495, 41.920151>,  <34.255833, 36.825592, 42.053276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412979, 37.168495, 41.920151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715357, 0.057476, -0.696391,
		-0.577860, 0.511665, 0.635827,
		0.392863, 0.857261, -0.332810,
		34.530838, 37.425674, 41.820309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.649075, 37.224506, 41.836060>,  <34.255833, 36.825592, 42.053276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.649075, 37.224506, 41.836060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.963169, 37.416214, 41.679237>,  <34.151627, 37.531239, 41.585144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.963169, 37.416214, 41.679237>,  <33.649075, 37.224506, 41.836060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.963169, 37.416214, 41.679237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521309, 0.170031, -0.836257,
		-0.334131, 0.861040, 0.383362,
		0.785234, 0.479270, -0.392055,
		34.198738, 37.559994, 41.561623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348839, 37.815197, 41.560101>,  <33.649075, 37.224506, 41.836060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348839, 37.815197, 41.560101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693451, 37.726334, 41.377491>,  <33.900219, 37.673016, 41.267925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693451, 37.726334, 41.377491>,  <33.348839, 37.815197, 41.560101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693451, 37.726334, 41.377491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496164, -0.177711, -0.849847,
		0.107671, 0.958678, -0.263330,
		0.861526, -0.222159, -0.456528,
		33.951908, 37.659687, 41.240532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326286, 38.108871, 40.955318>,  <33.348839, 37.815197, 41.560101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326286, 38.108871, 40.955318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595085, 37.816174, 40.909760>,  <33.756363, 37.640556, 40.882423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595085, 37.816174, 40.909760>,  <33.326286, 38.108871, 40.955318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595085, 37.816174, 40.909760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389672, -0.218605, -0.894633,
		0.629745, 0.645570, -0.432042,
		0.671995, -0.731745, -0.113895,
		33.796684, 37.596649, 40.875591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515175, 38.087055, 40.221272>,  <33.326286, 38.108871, 40.955318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515175, 38.087055, 40.221272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.605473, 37.731300, 40.380287>,  <33.659653, 37.517849, 40.475697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.605473, 37.731300, 40.380287>,  <33.515175, 38.087055, 40.221272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605473, 37.731300, 40.380287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360205, -0.455354, -0.814190,
		0.905147, 0.040604, -0.423154,
		0.225745, -0.889384, 0.397536,
		33.673195, 37.464485, 40.499550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805470, 37.640362, 39.727135>,  <33.515175, 38.087055, 40.221272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805470, 37.640362, 39.727135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.692024, 37.345364, 39.972301>,  <33.623959, 37.168365, 40.119400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.692024, 37.345364, 39.972301>,  <33.805470, 37.640362, 39.727135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.692024, 37.345364, 39.972301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307880, -0.535291, -0.786558,
		0.908172, -0.411780, -0.075247,
		-0.283610, -0.737496, 0.612915,
		33.606941, 37.124115, 40.156178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039230, 36.950806, 39.416519>,  <33.805470, 37.640362, 39.727135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039230, 36.950806, 39.416519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760777, 36.872128, 39.692696>,  <33.593704, 36.824921, 39.858402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760777, 36.872128, 39.692696>,  <34.039230, 36.950806, 39.416519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760777, 36.872128, 39.692696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508475, -0.543844, -0.667598,
		0.506808, -0.815809, 0.278571,
		-0.696132, -0.196698, 0.690443,
		33.551937, 36.813118, 39.899830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848598, 36.264038, 39.321171>,  <34.039230, 36.950806, 39.416519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848598, 36.264038, 39.321171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532219, 36.386742, 39.532944>,  <33.342392, 36.460365, 39.660007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532219, 36.386742, 39.532944>,  <33.848598, 36.264038, 39.321171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532219, 36.386742, 39.532944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603772, -0.531700, -0.593932,
		0.099302, -0.789425, 0.605762,
		-0.790948, 0.306764, 0.529432,
		33.294933, 36.478771, 39.691772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506001, 35.657700, 39.684769>,  <33.848598, 36.264038, 39.321171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506001, 35.657700, 39.684769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.211182, 35.925632, 39.648808>,  <33.034290, 36.086391, 39.627232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.211182, 35.925632, 39.648808>,  <33.506001, 35.657700, 39.684769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.211182, 35.925632, 39.648808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607010, -0.714587, -0.347713,
		-0.297157, -0.201706, 0.933281,
		-0.737046, 0.669836, -0.089907,
		32.990067, 36.126583, 39.621834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967388, 35.371624, 40.044296>,  <33.506001, 35.657700, 39.684769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967388, 35.371624, 40.044296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.824093, 35.633801, 39.778343>,  <32.738113, 35.791107, 39.618771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.824093, 35.633801, 39.778343>,  <32.967388, 35.371624, 40.044296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.824093, 35.633801, 39.778343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640055, -0.690871, -0.336193,
		-0.679700, 0.305122, 0.667015,
		-0.358241, 0.655437, -0.664880,
		32.716621, 35.830433, 39.578880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.221352, 35.341106, 39.964016>,  <32.967388, 35.371624, 40.044296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.221352, 35.341106, 39.964016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457790, 35.350239, 39.641506>,  <32.599655, 35.355717, 39.447998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457790, 35.350239, 39.641506>,  <32.221352, 35.341106, 39.964016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.457790, 35.350239, 39.641506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510768, -0.763054, -0.396061,
		-0.624275, 0.645931, -0.439379,
		0.591098, 0.022831, -0.806276,
		32.635120, 35.357086, 39.399624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.881794, 35.264957, 39.324989>,  <32.221352, 35.341106, 39.964016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.881794, 35.264957, 39.324989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.252640, 35.129963, 39.259800>,  <32.475147, 35.048965, 39.220684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.252640, 35.129963, 39.259800>,  <31.881794, 35.264957, 39.324989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252640, 35.129963, 39.259800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343443, -0.590976, -0.729927,
		0.150027, 0.732699, -0.663811,
		0.927113, -0.337490, -0.162978,
		32.530773, 35.028717, 39.210907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051037, 34.868118, 38.679230>,  <31.881794, 35.264957, 39.324989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.051037, 34.868118, 38.679230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.103828, 34.474529, 38.631248>,  <32.135502, 34.238377, 38.602459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.103828, 34.474529, 38.631248>,  <32.051037, 34.868118, 38.679230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.103828, 34.474529, 38.631248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178890, -0.095385, 0.979234,
		-0.974977, -0.150693, 0.163433,
		0.131974, -0.983968, -0.119955,
		32.143421, 34.179340, 38.595261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715864, 34.510151, 39.336739>,  <32.051037, 34.868118, 38.679230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715864, 34.510151, 39.336739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010628, 34.301380, 39.164898>,  <32.187485, 34.176117, 39.061794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010628, 34.301380, 39.164898>,  <31.715864, 34.510151, 39.336739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010628, 34.301380, 39.164898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345520, -0.255412, 0.902985,
		-0.581015, -0.813855, -0.007880,
		0.736911, -0.521925, -0.429601,
		32.231701, 34.144802, 39.036018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622595, 33.746498, 39.585918>,  <31.715864, 34.510151, 39.336739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622595, 33.746498, 39.585918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.002602, 33.824734, 39.488583>,  <32.230606, 33.871674, 39.430180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.002602, 33.824734, 39.488583>,  <31.622595, 33.746498, 39.585918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.002602, 33.824734, 39.488583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296677, -0.322824, 0.898758,
		0.097230, -0.926029, -0.364715,
		0.950015, 0.195589, -0.243344,
		32.287605, 33.883411, 39.415581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.915775, 33.136116, 39.591454>,  <31.622595, 33.746498, 39.585918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.915775, 33.136116, 39.591454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.206772, 33.401775, 39.660351>,  <32.381371, 33.561172, 39.701687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.206772, 33.401775, 39.660351>,  <31.915775, 33.136116, 39.591454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.206772, 33.401775, 39.660351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388670, -0.605782, 0.694236,
		0.565414, -0.438106, -0.698835,
		0.727490, 0.664147, 0.172239,
		32.425018, 33.601021, 39.712021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549004, 32.710251, 39.643864>,  <31.915775, 33.136116, 39.591454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.549004, 32.710251, 39.643864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634563, 33.067741, 39.801594>,  <32.685898, 33.282238, 39.896233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634563, 33.067741, 39.801594>,  <32.549004, 32.710251, 39.643864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634563, 33.067741, 39.801594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349112, -0.446948, 0.823625,
		0.912342, -0.038508, -0.407613,
		0.213898, 0.893731, 0.394326,
		32.698734, 33.335861, 39.919891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243423, 32.594574, 39.959141>,  <32.549004, 32.710251, 39.643864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243423, 32.594574, 39.959141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.130100, 32.926399, 40.151623>,  <33.062107, 33.125496, 40.267113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.130100, 32.926399, 40.151623>,  <33.243423, 32.594574, 39.959141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.130100, 32.926399, 40.151623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456346, -0.324708, 0.828440,
		0.843495, 0.454302, -0.286575,
		-0.283309, 0.829563, 0.481208,
		33.045109, 33.175266, 40.295986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823006, 32.810368, 40.311005>,  <33.243423, 32.594574, 39.959141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823006, 32.810368, 40.311005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536598, 33.040936, 40.468517>,  <33.364754, 33.179276, 40.563026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536598, 33.040936, 40.468517>,  <33.823006, 32.810368, 40.311005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536598, 33.040936, 40.468517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437269, -0.069380, 0.896651,
		0.544165, 0.814205, -0.202372,
		-0.716017, 0.576417, 0.393781,
		33.321793, 33.213860, 40.586651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.133389, 33.473217, 40.654587>,  <33.823006, 32.810368, 40.311005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.133389, 33.473217, 40.654587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.785408, 33.367599, 40.821186>,  <33.576622, 33.304230, 40.921146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.785408, 33.367599, 40.821186>,  <34.133389, 33.473217, 40.654587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785408, 33.367599, 40.821186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469605, -0.185750, 0.863115,
		-0.150540, 0.946454, 0.285591,
		-0.869947, -0.264048, 0.416497,
		33.524426, 33.288383, 40.946136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067478, 33.871578, 41.330662>,  <34.133389, 33.473217, 40.654587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067478, 33.871578, 41.330662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790802, 33.584682, 41.364437>,  <33.624794, 33.412544, 41.384705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790802, 33.584682, 41.364437>,  <34.067478, 33.871578, 41.330662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790802, 33.584682, 41.364437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243574, -0.121616, 0.962227,
		-0.679877, 0.686133, 0.258821,
		-0.691693, -0.717238, 0.084441,
		33.583294, 33.369511, 41.389771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607410, 34.044243, 41.972866>,  <34.067478, 33.871578, 41.330662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607410, 34.044243, 41.972866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.619854, 33.653000, 41.890564>,  <33.627319, 33.418255, 41.841183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.619854, 33.653000, 41.890564>,  <33.607410, 34.044243, 41.972866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619854, 33.653000, 41.890564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406058, -0.175736, 0.896791,
		-0.913318, -0.111445, 0.391702,
		0.031106, -0.978109, -0.205756,
		33.629185, 33.359566, 41.828838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499813, 33.757999, 42.632191>,  <33.607410, 34.044243, 41.972866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499813, 33.757999, 42.632191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598335, 33.424728, 42.434139>,  <33.657448, 33.224766, 42.315308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598335, 33.424728, 42.434139>,  <33.499813, 33.757999, 42.632191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598335, 33.424728, 42.434139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611430, -0.262800, 0.746384,
		-0.751990, -0.486572, 0.444702,
		0.246302, -0.833177, -0.495127,
		33.672226, 33.174774, 42.285603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515133, 33.252552, 43.112358>,  <33.499813, 33.757999, 42.632191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515133, 33.252552, 43.112358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703388, 33.084545, 42.801983>,  <33.816341, 32.983742, 42.615757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703388, 33.084545, 42.801983>,  <33.515133, 33.252552, 43.112358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.703388, 33.084545, 42.801983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564969, -0.532037, 0.630671,
		-0.677724, -0.735199, -0.013097,
		0.470637, -0.420022, -0.775939,
		33.844578, 32.958538, 42.569202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.358868, 32.550541, 43.113083>,  <33.515133, 33.252552, 43.112358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.358868, 32.550541, 43.113083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708584, 32.636120, 42.938797>,  <33.918411, 32.687466, 42.834225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708584, 32.636120, 42.938797>,  <33.358868, 32.550541, 43.113083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.708584, 32.636120, 42.938797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466669, -0.617486, 0.633191,
		-0.133580, -0.756926, -0.639702,
		0.874286, 0.213948, -0.435718,
		33.970871, 32.700306, 42.808083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726051, 31.876991, 43.315136>,  <33.358868, 32.550541, 43.113083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726051, 31.876991, 43.315136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016003, 32.120090, 43.185402>,  <34.189976, 32.265949, 43.107563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016003, 32.120090, 43.185402>,  <33.726051, 31.876991, 43.315136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016003, 32.120090, 43.185402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615445, -0.359837, 0.701245,
		0.309472, -0.707928, -0.634874,
		0.724882, 0.607746, -0.324331,
		34.233467, 32.302414, 43.088104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341373, 31.491396, 43.296150>,  <33.726051, 31.876991, 43.315136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341373, 31.491396, 43.296150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.450245, 31.876078, 43.309059>,  <34.515568, 32.106888, 43.316803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.450245, 31.876078, 43.309059>,  <34.341373, 31.491396, 43.296150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.450245, 31.876078, 43.309059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710279, -0.223421, 0.667524,
		0.649170, -0.158766, -0.743889,
		0.272181, 0.961705, 0.032270,
		34.531898, 32.164589, 43.318741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064804, 31.457550, 43.215828>,  <34.341373, 31.491396, 43.296150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.064804, 31.457550, 43.215828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990837, 31.803904, 43.401752>,  <34.946457, 32.011715, 43.513306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990837, 31.803904, 43.401752>,  <35.064804, 31.457550, 43.215828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990837, 31.803904, 43.401752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593468, -0.278602, 0.755100,
		0.783327, 0.415483, -0.462356,
		-0.184918, 0.865884, 0.464813,
		34.935360, 32.063667, 43.541195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725349, 31.872009, 43.279171>,  <35.064804, 31.457550, 43.215828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725349, 31.872009, 43.279171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474571, 32.011551, 43.557808>,  <35.324104, 32.095276, 43.724991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474571, 32.011551, 43.557808>,  <35.725349, 31.872009, 43.279171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474571, 32.011551, 43.557808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752339, 0.038904, 0.657627,
		0.202314, 0.936370, -0.286845,
		-0.626941, 0.348852, 0.696597,
		35.286488, 32.116207, 43.766788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070637, 32.399342, 43.559044>,  <35.725349, 31.872009, 43.279171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070637, 32.399342, 43.559044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.807701, 32.281033, 43.836292>,  <35.649940, 32.210045, 44.002640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.807701, 32.281033, 43.836292>,  <36.070637, 32.399342, 43.559044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807701, 32.281033, 43.836292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712165, 0.056933, 0.699700,
		-0.246416, 0.953559, 0.173217,
		-0.657343, -0.295776, 0.693121,
		35.610497, 32.192299, 44.044228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169785, 32.875351, 44.032665>,  <36.070637, 32.399342, 43.559044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169785, 32.875351, 44.032665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966362, 32.592999, 44.229885>,  <35.844307, 32.423588, 44.348217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966362, 32.592999, 44.229885>,  <36.169785, 32.875351, 44.032665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966362, 32.592999, 44.229885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609592, 0.109236, 0.785153,
		-0.608085, 0.699855, 0.374748,
		-0.508557, -0.705883, 0.493051,
		35.813793, 32.381233, 44.377800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946274, 33.216656, 44.689030>,  <36.169785, 32.875351, 44.032665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946274, 33.216656, 44.689030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936405, 32.821346, 44.749298>,  <35.930485, 32.584160, 44.785458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936405, 32.821346, 44.749298>,  <35.946274, 33.216656, 44.689030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936405, 32.821346, 44.749298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548384, 0.112635, 0.828607,
		-0.835863, 0.103067, 0.539176,
		-0.024672, -0.988277, 0.150667,
		35.929005, 32.524864, 44.794498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920780, 33.191101, 45.405094>,  <35.946274, 33.216656, 44.689030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920780, 33.191101, 45.405094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033710, 32.818249, 45.314392>,  <36.101467, 32.594536, 45.259972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033710, 32.818249, 45.314392>,  <35.920780, 33.191101, 45.405094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033710, 32.818249, 45.314392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552802, -0.035103, 0.832573,
		-0.784030, -0.360408, 0.505375,
		0.282326, -0.932134, -0.226755,
		36.118408, 32.538609, 45.246365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611221, 32.684628, 45.853928>,  <35.920780, 33.191101, 45.405094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611221, 32.684628, 45.853928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.919655, 32.472748, 45.712593>,  <36.104717, 32.345619, 45.627792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.919655, 32.472748, 45.712593>,  <35.611221, 32.684628, 45.853928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919655, 32.472748, 45.712593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298053, -0.190105, 0.935427,
		-0.562663, -0.826610, 0.011290,
		0.771087, -0.529695, -0.353338,
		36.150982, 32.313839, 45.606590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644108, 31.953108, 46.274708>,  <35.611221, 32.684628, 45.853928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644108, 31.953108, 46.274708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.004242, 32.010788, 46.110462>,  <36.220322, 32.045395, 46.011913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.004242, 32.010788, 46.110462>,  <35.644108, 31.953108, 46.274708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004242, 32.010788, 46.110462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431682, -0.176146, 0.884660,
		0.055241, -0.973745, -0.220839,
		0.900333, 0.144202, -0.410618,
		36.274342, 32.054047, 45.987278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024509, 31.365213, 46.419445>,  <35.644108, 31.953108, 46.274708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024509, 31.365213, 46.419445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294243, 31.645782, 46.327114>,  <36.456081, 31.814125, 46.271713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294243, 31.645782, 46.327114>,  <36.024509, 31.365213, 46.419445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294243, 31.645782, 46.327114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453205, -0.146325, 0.879314,
		0.582996, -0.697561, -0.416561,
		0.674329, 0.701425, -0.230832,
		36.496540, 31.856211, 46.257866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570232, 31.052320, 46.646095>,  <36.024509, 31.365213, 46.419445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570232, 31.052320, 46.646095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.697422, 31.430401, 46.616474>,  <36.773735, 31.657249, 46.598701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.697422, 31.430401, 46.616474>,  <36.570232, 31.052320, 46.646095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697422, 31.430401, 46.616474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632893, -0.153460, 0.758878,
		0.705930, -0.288171, -0.647009,
		0.317977, 0.945202, -0.074049,
		36.792816, 31.713961, 46.594261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326309, 31.072712, 46.646954>,  <36.570232, 31.052320, 46.646095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326309, 31.072712, 46.646954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223949, 31.436655, 46.777599>,  <37.162533, 31.655020, 46.855988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223949, 31.436655, 46.777599>,  <37.326309, 31.072712, 46.646954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223949, 31.436655, 46.777599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593698, -0.118726, 0.795881,
		0.762915, 0.397575, -0.509798,
		-0.255896, 0.909856, 0.326618,
		37.147179, 31.709612, 46.875584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010216, 31.431023, 46.780628>,  <37.326309, 31.072712, 46.646954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010216, 31.431023, 46.780628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.725918, 31.622553, 46.986763>,  <37.555340, 31.737471, 47.110443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.725918, 31.622553, 46.986763>,  <38.010216, 31.431023, 46.780628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725918, 31.622553, 46.986763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520934, -0.134037, 0.843008,
		0.472728, 0.867617, -0.154171,
		-0.710743, 0.478827, 0.515334,
		37.512695, 31.766201, 47.141365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594498, 31.712643, 46.393585>,  <38.010216, 31.431023, 46.780628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594498, 31.712643, 46.393585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.919052, 31.567451, 46.210323>,  <39.113785, 31.480335, 46.100368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.919052, 31.567451, 46.210323>,  <38.594498, 31.712643, 46.393585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919052, 31.567451, 46.210323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402962, 0.220424, -0.888276,
		0.423414, 0.905350, 0.032581,
		0.811383, -0.362980, -0.458152,
		39.162468, 31.458557, 46.072876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882275, 32.201550, 46.040936>,  <38.594498, 31.712643, 46.393585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882275, 32.201550, 46.040936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.998455, 31.875252, 45.840858>,  <39.068161, 31.679472, 45.720814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.998455, 31.875252, 45.840858>,  <38.882275, 32.201550, 46.040936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998455, 31.875252, 45.840858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347194, 0.397265, -0.849492,
		0.891682, 0.420397, -0.167839,
		0.290448, -0.815749, -0.500194,
		39.085590, 31.630527, 45.690800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807251, 32.415440, 45.316837>,  <38.882275, 32.201550, 46.040936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807251, 32.415440, 45.316837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.937088, 32.039635, 45.273102>,  <39.014992, 31.814152, 45.246861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.937088, 32.039635, 45.273102>,  <38.807251, 32.415440, 45.316837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937088, 32.039635, 45.273102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094416, 0.082835, -0.992081,
		0.941129, 0.332347, -0.061817,
		0.324594, -0.939513, -0.109338,
		39.034466, 31.757780, 45.240299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383823, 32.402843, 44.822460>,  <38.807251, 32.415440, 45.316837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.383823, 32.402843, 44.822460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.242683, 32.028622, 44.816376>,  <39.157997, 31.804089, 44.812725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.242683, 32.028622, 44.816376>,  <39.383823, 32.402843, 44.822460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242683, 32.028622, 44.816376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168736, 0.079612, -0.982441,
		0.920338, -0.344092, -0.185953,
		-0.352854, -0.935554, -0.015209,
		39.136826, 31.747955, 44.811813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665798, 32.108112, 44.259712>,  <39.383823, 32.402843, 44.822460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665798, 32.108112, 44.259712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.329842, 31.910620, 44.349876>,  <39.128269, 31.792124, 44.403973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.329842, 31.910620, 44.349876>,  <39.665798, 32.108112, 44.259712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329842, 31.910620, 44.349876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274631, 0.028382, -0.961131,
		0.468147, -0.869149, -0.159433,
		-0.839890, -0.493735, 0.225408,
		39.077873, 31.762499, 44.417500>
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
