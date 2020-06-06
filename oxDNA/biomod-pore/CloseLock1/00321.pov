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
	<24.266493, 35.082535, 34.894409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.399269, 34.747757, 34.720356>,  <24.478935, 34.546890, 34.615925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.399269, 34.747757, 34.720356>,  <24.266493, 35.082535, 34.894409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.399269, 34.747757, 34.720356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925685, 0.200282, 0.320927,
		-0.181448, -0.509324, 0.841228,
		0.331939, -0.836944, -0.435133,
		24.498852, 34.496674, 34.589817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.643459, 34.559387, 35.320797>,  <24.266493, 35.082535, 34.894409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.643459, 34.559387, 35.320797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.778605, 34.474972, 34.953907>,  <24.859692, 34.424320, 34.733772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.778605, 34.474972, 34.953907>,  <24.643459, 34.559387, 35.320797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.778605, 34.474972, 34.953907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926207, 0.247775, 0.284161,
		0.167298, -0.945552, 0.279181,
		0.337863, -0.211040, -0.917230,
		24.879963, 34.411659, 34.678738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.279972, 34.200603, 35.421871>,  <24.643459, 34.559387, 35.320797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.279972, 34.200603, 35.421871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.287323, 34.337051, 35.045937>,  <25.291735, 34.418919, 34.820374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.287323, 34.337051, 35.045937>,  <25.279972, 34.200603, 35.421871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.287323, 34.337051, 35.045937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918180, 0.366296, 0.150905,
		0.395736, -0.865716, -0.306478,
		0.018379, 0.341120, -0.939840,
		25.292837, 34.439388, 34.763985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.896166, 33.920624, 34.957050>,  <25.279972, 34.200603, 35.421871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.896166, 33.920624, 34.957050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.783836, 34.299908, 34.897671>,  <25.716438, 34.527477, 34.862041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.783836, 34.299908, 34.897671>,  <25.896166, 33.920624, 34.957050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.783836, 34.299908, 34.897671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932183, 0.306284, 0.192936,
		0.228411, -0.084200, -0.969917,
		-0.280825, 0.948209, -0.148449,
		25.699589, 34.584370, 34.853138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.459961, 34.245499, 34.668415>,  <25.896166, 33.920624, 34.957050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.459961, 34.245499, 34.668415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.258131, 34.573917, 34.775211>,  <26.137033, 34.770969, 34.839291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.258131, 34.573917, 34.775211>,  <26.459961, 34.245499, 34.668415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.258131, 34.573917, 34.775211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859814, 0.505898, 0.069188,
		-0.078263, 0.264474, -0.961212,
		-0.504574, 0.821049, 0.266991,
		26.106758, 34.820232, 34.855309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.998589, 34.655308, 34.325089>,  <26.459961, 34.245499, 34.668415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.998589, 34.655308, 34.325089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.072659, 34.725269, 33.938282>,  <27.117100, 34.767246, 33.706200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.072659, 34.725269, 33.938282>,  <26.998589, 34.655308, 34.325089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.072659, 34.725269, 33.938282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187128, 0.959753, 0.209420,
		0.964725, -0.219735, 0.144991,
		0.185173, 0.174901, -0.967017,
		27.128212, 34.777740, 33.648178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.689436, 34.967663, 34.389370>,  <26.998589, 34.655308, 34.325089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.689436, 34.967663, 34.389370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.495846, 35.081696, 34.058434>,  <27.379692, 35.150116, 33.859871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.495846, 35.081696, 34.058434>,  <27.689436, 34.967663, 34.389370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.495846, 35.081696, 34.058434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144539, 0.958503, 0.245725,
		0.863061, -0.000658, -0.505099,
		-0.483977, 0.285082, -0.827342,
		27.350653, 35.167221, 33.810230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.122662, 35.494801, 34.113930>,  <27.689436, 34.967663, 34.389370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.122662, 35.494801, 34.113930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.761717, 35.551727, 33.951206>,  <27.545151, 35.585884, 33.853573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.761717, 35.551727, 33.951206>,  <28.122662, 35.494801, 34.113930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.761717, 35.551727, 33.951206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143420, 0.989267, 0.027948,
		0.406420, -0.033126, -0.913086,
		-0.902360, 0.142314, -0.406809,
		27.491009, 35.594421, 33.829163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.198380, 36.010509, 33.630566>,  <28.122662, 35.494801, 34.113930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.198380, 36.010509, 33.630566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.800705, 36.021923, 33.672100>,  <27.562099, 36.028770, 33.697021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.800705, 36.021923, 33.672100>,  <28.198380, 36.010509, 33.630566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.800705, 36.021923, 33.672100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021641, 0.997525, -0.066901,
		-0.105484, -0.064265, -0.992342,
		-0.994186, 0.028532, 0.103832,
		27.502449, 36.030483, 33.703251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.871157, 36.464085, 33.084946>,  <28.198380, 36.010509, 33.630566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.871157, 36.464085, 33.084946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.588511, 36.438599, 33.366837>,  <27.418922, 36.423306, 33.535969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.588511, 36.438599, 33.366837>,  <27.871157, 36.464085, 33.084946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.588511, 36.438599, 33.366837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184531, 0.978068, -0.096598,
		-0.683113, -0.198301, -0.702875,
		-0.706615, -0.063715, 0.704723,
		27.376526, 36.419483, 33.578255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.300604, 36.612480, 32.728188>,  <27.871157, 36.464085, 33.084946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.300604, 36.612480, 32.728188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.232016, 36.698311, 33.112801>,  <27.190863, 36.749809, 33.343571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.232016, 36.698311, 33.112801>,  <27.300604, 36.612480, 32.728188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.232016, 36.698311, 33.112801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360123, 0.894798, -0.263907,
		-0.917011, -0.391524, -0.076155,
		-0.171470, 0.214581, 0.961537,
		27.180574, 36.762684, 33.401260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.603022, 36.932411, 32.768250>,  <27.300604, 36.612480, 32.728188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.603022, 36.932411, 32.768250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.786253, 37.036671, 33.108185>,  <26.896191, 37.099228, 33.312145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.786253, 37.036671, 33.108185>,  <26.603022, 36.932411, 32.768250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.786253, 37.036671, 33.108185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344948, 0.933248, -0.100297,
		-0.819253, -0.247207, 0.517409,
		0.458077, 0.260649, 0.849840,
		26.923676, 37.114864, 33.363136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.197479, 37.537739, 33.012836>,  <26.603022, 36.932411, 32.768250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.197479, 37.537739, 33.012836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.506372, 37.528645, 33.266808>,  <26.691708, 37.523190, 33.419189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.506372, 37.528645, 33.266808>,  <26.197479, 37.537739, 33.012836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.506372, 37.528645, 33.266808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089718, 0.985443, 0.144402,
		-0.628972, -0.168477, 0.758953,
		0.772234, -0.022733, 0.634932,
		26.738043, 37.521824, 33.457287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.045935, 38.151665, 33.380821>,  <26.197479, 37.537739, 33.012836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.045935, 38.151665, 33.380821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.435394, 38.088268, 33.446411>,  <26.669071, 38.050232, 33.485764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.435394, 38.088268, 33.446411>,  <26.045935, 38.151665, 33.380821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.435394, 38.088268, 33.446411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163111, 0.986493, -0.015029,
		-0.159373, 0.041379, 0.986351,
		0.973650, -0.158489, 0.163970,
		26.727489, 38.040722, 33.495602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.169558, 38.646465, 33.947201>,  <26.045935, 38.151665, 33.380821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.169558, 38.646465, 33.947201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.492012, 38.562027, 33.726082>,  <26.685484, 38.511364, 33.593410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.492012, 38.562027, 33.726082>,  <26.169558, 38.646465, 33.947201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.492012, 38.562027, 33.726082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261729, 0.965052, 0.013154,
		0.530699, -0.155287, 0.833213,
		0.806137, -0.211096, -0.552795,
		26.733852, 38.498699, 33.560242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.809872, 39.025429, 34.300255>,  <26.169558, 38.646465, 33.947201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.809872, 39.025429, 34.300255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.932989, 38.942188, 33.928890>,  <27.006859, 38.892242, 33.706070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.932989, 38.942188, 33.928890>,  <26.809872, 39.025429, 34.300255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.932989, 38.942188, 33.928890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288047, 0.950376, -0.117534,
		0.906804, -0.231252, 0.352462,
		0.307792, -0.208106, -0.928416,
		27.025326, 38.879757, 33.650364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.419960, 39.276852, 34.301498>,  <26.809872, 39.025429, 34.300255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.419960, 39.276852, 34.301498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.331203, 39.258167, 33.911919>,  <27.277950, 39.246956, 33.678169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.331203, 39.258167, 33.911919>,  <27.419960, 39.276852, 34.301498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.331203, 39.258167, 33.911919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097185, 0.992819, -0.069755,
		0.970216, -0.110132, -0.215759,
		-0.221892, -0.046709, -0.973952,
		27.264635, 39.244156, 33.619732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.002439, 39.502789, 33.968197>,  <27.419960, 39.276852, 34.301498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.002439, 39.502789, 33.968197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.712206, 39.549873, 33.697002>,  <27.538065, 39.578125, 33.534286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.712206, 39.549873, 33.697002>,  <28.002439, 39.502789, 33.968197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.712206, 39.549873, 33.697002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283907, 0.948705, -0.139125,
		0.626836, -0.293433, -0.721785,
		-0.725585, 0.117712, -0.677990,
		27.494530, 39.585186, 33.493607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.246716, 39.932655, 33.458130>,  <28.002439, 39.502789, 33.968197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.246716, 39.932655, 33.458130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.861372, 39.963276, 33.355305>,  <27.630167, 39.981647, 33.293610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.861372, 39.963276, 33.355305>,  <28.246716, 39.932655, 33.458130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.861372, 39.963276, 33.355305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118463, 0.981300, -0.151710,
		0.240645, -0.176604, -0.954411,
		-0.963357, 0.076555, -0.257066,
		27.572365, 39.986240, 33.278183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.306957, 40.195724, 32.796101>,  <28.246716, 39.932655, 33.458130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.306957, 40.195724, 32.796101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.952196, 40.266872, 32.966637>,  <27.739340, 40.309559, 33.068958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.952196, 40.266872, 32.966637>,  <28.306957, 40.195724, 32.796101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.952196, 40.266872, 32.966637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026019, 0.940673, -0.338316,
		-0.461219, -0.288961, -0.838915,
		-0.886905, 0.177865, 0.426338,
		27.686125, 40.320232, 33.094540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.009909, 40.637909, 32.290321>,  <28.306957, 40.195724, 32.796101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.009909, 40.637909, 32.290321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.834427, 40.674149, 32.647942>,  <27.729137, 40.695892, 32.862514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.834427, 40.674149, 32.647942>,  <28.009909, 40.637909, 32.290321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.834427, 40.674149, 32.647942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009586, 0.995320, -0.096158,
		-0.898581, -0.033615, -0.437519,
		-0.438704, 0.090600, 0.894053,
		27.702816, 40.701328, 32.916157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.433475, 40.941418, 32.142841>,  <28.009909, 40.637909, 32.290321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.433475, 40.941418, 32.142841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.483946, 41.011116, 32.533474>,  <27.514227, 41.052937, 32.767853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.483946, 41.011116, 32.533474>,  <27.433475, 40.941418, 32.142841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.483946, 41.011116, 32.533474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345991, 0.930364, -0.121299,
		-0.929715, -0.322584, 0.177677,
		0.126175, 0.174248, 0.976584,
		27.521799, 41.063389, 32.826450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.901230, 41.510597, 32.261169>,  <27.433475, 40.941418, 32.142841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.901230, 41.510597, 32.261169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.135765, 41.506092, 32.585167>,  <27.276485, 41.503387, 32.779564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.135765, 41.506092, 32.585167>,  <26.901230, 41.510597, 32.261169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.135765, 41.506092, 32.585167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082885, 0.993821, 0.073817,
		-0.805816, -0.110418, 0.581781,
		0.586337, -0.011261, 0.809989,
		27.311666, 41.502712, 32.828163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.656513, 41.873302, 32.770359>,  <26.901230, 41.510597, 32.261169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.656513, 41.873302, 32.770359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.043219, 41.892052, 32.870895>,  <27.275242, 41.903301, 32.931217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.043219, 41.892052, 32.870895>,  <26.656513, 41.873302, 32.770359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.043219, 41.892052, 32.870895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016587, 0.992480, -0.121275,
		-0.255130, 0.113075, 0.960272,
		0.966765, 0.046869, 0.251336,
		27.333248, 41.906113, 32.946297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.730202, 42.490276, 33.173462>,  <26.656513, 41.873302, 32.770359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.730202, 42.490276, 33.173462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.084482, 42.406384, 33.007790>,  <27.297050, 42.356049, 32.908386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.084482, 42.406384, 33.007790>,  <26.730202, 42.490276, 33.173462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.084482, 42.406384, 33.007790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020125, 0.908643, -0.417089,
		0.463816, 0.361082, 0.809008,
		0.885703, -0.209734, -0.414176,
		27.350193, 42.343464, 32.883537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.236702, 42.906921, 33.411942>,  <26.730202, 42.490276, 33.173462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.236702, 42.906921, 33.411942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.333771, 42.807133, 33.036949>,  <27.392012, 42.747261, 32.811954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.333771, 42.807133, 33.036949>,  <27.236702, 42.906921, 33.411942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.333771, 42.807133, 33.036949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012615, 0.965475, -0.260188,
		0.970026, 0.074967, 0.231148,
		0.242673, -0.249473, -0.937482,
		27.406572, 42.732292, 32.755703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.896652, 43.239113, 33.213909>,  <27.236702, 42.906921, 33.411942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.896652, 43.239113, 33.213909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.712824, 43.138474, 32.873207>,  <27.602528, 43.078091, 32.668785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.712824, 43.138474, 32.873207>,  <27.896652, 43.239113, 33.213909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.712824, 43.138474, 32.873207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238503, 0.888846, -0.391241,
		0.855518, -0.382950, -0.348481,
		-0.459572, -0.251600, -0.851758,
		27.574953, 43.062992, 32.617680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.360035, 43.348320, 32.742676>,  <27.896652, 43.239113, 33.213909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.360035, 43.348320, 32.742676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.001596, 43.369480, 32.566399>,  <27.786533, 43.382175, 32.460632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.001596, 43.369480, 32.566399>,  <28.360035, 43.348320, 32.742676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.001596, 43.369480, 32.566399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271967, 0.850099, -0.450961,
		0.350774, -0.523959, -0.776160,
		-0.896098, 0.052905, -0.440692,
		27.732767, 43.385353, 32.434193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.395145, 43.795341, 32.125980>,  <28.360035, 43.348320, 32.742676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.395145, 43.795341, 32.125980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.003746, 43.716007, 32.103325>,  <27.768908, 43.668407, 32.089729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.003746, 43.716007, 32.103325>,  <28.395145, 43.795341, 32.125980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.003746, 43.716007, 32.103325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097673, 0.687410, -0.719672,
		0.181669, -0.698664, -0.692000,
		-0.978497, -0.198332, -0.056641,
		27.710197, 43.656509, 32.086334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.145874, 43.454739, 31.462528>,  <28.395145, 43.795341, 32.125980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.145874, 43.454739, 31.462528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.867378, 43.686436, 31.632107>,  <27.700281, 43.825455, 31.733854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.867378, 43.686436, 31.632107>,  <28.145874, 43.454739, 31.462528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.867378, 43.686436, 31.632107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113229, 0.671838, -0.731992,
		-0.708825, -0.461638, -0.533346,
		-0.696237, 0.579245, 0.423945,
		27.658506, 43.860210, 31.759291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.550037, 43.699039, 31.013248>,  <28.145874, 43.454739, 31.462528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.550037, 43.699039, 31.013248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.627871, 43.956913, 31.308956>,  <27.674570, 44.111637, 31.486380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.627871, 43.956913, 31.308956>,  <27.550037, 43.699039, 31.013248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.627871, 43.956913, 31.308956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122451, 0.731811, -0.670416,
		-0.973213, 0.220974, 0.063454,
		0.194581, 0.644688, 0.739267,
		27.686245, 44.150318, 31.530737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.658354, 43.603333, 30.319559>,  <27.550037, 43.699039, 31.013248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.658354, 43.603333, 30.319559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.601496, 43.465977, 29.948210>,  <27.567381, 43.383564, 29.725401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.601496, 43.465977, 29.948210>,  <27.658354, 43.603333, 30.319559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.601496, 43.465977, 29.948210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727099, -0.672629, 0.137466,
		-0.671656, -0.655479, 0.345292,
		-0.142147, -0.343392, -0.928373,
		27.558851, 43.362961, 29.669699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.539539, 42.892914, 30.423922>,  <27.658354, 43.603333, 30.319559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.539539, 42.892914, 30.423922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.710014, 42.990906, 30.075588>,  <27.812300, 43.049702, 29.866589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.710014, 42.990906, 30.075588>,  <27.539539, 42.892914, 30.423922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.710014, 42.990906, 30.075588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512652, -0.858545, 0.009370,
		-0.745354, -0.450427, -0.491491,
		0.426188, 0.244980, -0.870832,
		27.837870, 43.064400, 29.814339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.343414, 42.395809, 29.903419>,  <27.539539, 42.892914, 30.423922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.343414, 42.395809, 29.903419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.713665, 42.545670, 29.882040>,  <27.935816, 42.635586, 29.869211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.713665, 42.545670, 29.882040>,  <27.343414, 42.395809, 29.903419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.713665, 42.545670, 29.882040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377804, -0.922997, 0.073077,
		-0.021957, -0.087835, -0.995893,
		0.925625, 0.374648, -0.053450,
		27.991352, 42.658066, 29.866005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.690228, 42.086273, 29.275133>,  <27.343414, 42.395809, 29.903419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.690228, 42.086273, 29.275133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.882814, 42.205795, 29.604715>,  <27.998367, 42.277508, 29.802465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.882814, 42.205795, 29.604715>,  <27.690228, 42.086273, 29.275133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.882814, 42.205795, 29.604715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140545, -0.954247, 0.263932,
		0.865121, -0.011272, -0.501436,
		0.481469, 0.298808, 0.823955,
		28.027254, 42.295437, 29.851902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.387913, 41.771885, 29.324036>,  <27.690228, 42.086273, 29.275133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.387913, 41.771885, 29.324036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.241518, 41.868385, 29.683558>,  <28.153681, 41.926285, 29.899271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.241518, 41.868385, 29.683558>,  <28.387913, 41.771885, 29.324036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.241518, 41.868385, 29.683558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195516, -0.924326, 0.327711,
		0.909849, 0.295669, 0.291125,
		-0.365989, 0.241248, 0.898806,
		28.131721, 41.940758, 29.953199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.901926, 41.530827, 29.806555>,  <28.387913, 41.771885, 29.324036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.901926, 41.530827, 29.806555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.547264, 41.562912, 29.988724>,  <28.334467, 41.582161, 30.098024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.547264, 41.562912, 29.988724>,  <28.901926, 41.530827, 29.806555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.547264, 41.562912, 29.988724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125053, -0.906558, 0.403131,
		0.445203, 0.414390, 0.793773,
		-0.886654, 0.080211, 0.455423,
		28.281267, 41.586975, 30.125351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.988111, 41.247772, 30.490084>,  <28.901926, 41.530827, 29.806555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.988111, 41.247772, 30.490084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.591972, 41.227020, 30.438669>,  <28.354290, 41.214569, 30.407820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.591972, 41.227020, 30.438669>,  <28.988111, 41.247772, 30.490084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.591972, 41.227020, 30.438669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001971, -0.932492, 0.361185,
		-0.138599, 0.357445, 0.923593,
		-0.990347, -0.051880, -0.128537,
		28.294868, 41.211456, 30.400108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.767185, 41.007587, 31.143314>,  <28.988111, 41.247772, 30.490084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.767185, 41.007587, 31.143314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.481981, 40.915646, 30.878351>,  <28.310860, 40.860481, 30.719374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.481981, 40.915646, 30.878351>,  <28.767185, 41.007587, 31.143314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.481981, 40.915646, 30.878351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038176, -0.956065, 0.290659,
		-0.700116, 0.181954, 0.690457,
		-0.713008, -0.229854, -0.662410,
		28.268080, 40.846691, 30.679628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.259943, 40.640156, 31.481010>,  <28.767185, 41.007587, 31.143314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.259943, 40.640156, 31.481010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.197891, 40.553352, 31.095505>,  <28.160660, 40.501270, 30.864201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.197891, 40.553352, 31.095505>,  <28.259943, 40.640156, 31.481010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.197891, 40.553352, 31.095505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084490, -0.969087, 0.231802,
		-0.984275, 0.117388, 0.131998,
		-0.155128, -0.217004, -0.963766,
		28.151354, 40.488251, 30.806376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.706528, 40.052547, 31.374340>,  <28.259943, 40.640156, 31.481010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.706528, 40.052547, 31.374340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.894913, 40.043201, 31.021603>,  <28.007944, 40.037594, 30.809959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.894913, 40.043201, 31.021603>,  <27.706528, 40.052547, 31.374340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.894913, 40.043201, 31.021603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007725, -0.999720, 0.022363,
		-0.882120, -0.003720, -0.471010,
		0.470961, -0.023365, -0.881845,
		28.036201, 40.036190, 30.757050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.402281, 39.552837, 31.020813>,  <27.706528, 40.052547, 31.374340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.402281, 39.552837, 31.020813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.767693, 39.585705, 30.861456>,  <27.986938, 39.605423, 30.765842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.767693, 39.585705, 30.861456>,  <27.402281, 39.552837, 31.020813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.767693, 39.585705, 30.861456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061208, -0.996002, -0.065069,
		-0.402146, 0.035057, -0.914904,
		0.913527, 0.082167, -0.398392,
		28.041750, 39.610355, 30.741938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.383541, 39.111214, 30.495773>,  <27.402281, 39.552837, 31.020813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.383541, 39.111214, 30.495773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.782118, 39.117558, 30.528894>,  <28.021263, 39.121365, 30.548767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.782118, 39.117558, 30.528894>,  <27.383541, 39.111214, 30.495773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.782118, 39.117558, 30.528894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025270, -0.993171, -0.113900,
		0.080430, 0.115587, -0.990036,
		0.996440, 0.015857, 0.082802,
		28.081049, 39.122314, 30.553736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.736948, 38.609406, 29.964016>,  <27.383541, 39.111214, 30.495773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.736948, 38.609406, 29.964016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.016020, 38.674000, 30.243206>,  <28.183462, 38.712757, 30.410719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.016020, 38.674000, 30.243206>,  <27.736948, 38.609406, 29.964016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.016020, 38.674000, 30.243206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264804, -0.963396, -0.041794,
		0.665675, 0.213985, -0.714903,
		0.697679, 0.161488, 0.697973,
		28.225323, 38.722446, 30.452599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.209391, 38.221645, 29.706129>,  <27.736948, 38.609406, 29.964016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.209391, 38.221645, 29.706129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.318462, 38.285389, 30.085655>,  <28.383905, 38.323635, 30.313372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.318462, 38.285389, 30.085655>,  <28.209391, 38.221645, 29.706129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.318462, 38.285389, 30.085655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287773, -0.954548, 0.077619,
		0.918060, 0.251879, -0.306142,
		0.272677, 0.159358, 0.948816,
		28.400265, 38.333195, 30.370300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.674906, 37.758263, 29.793596>,  <28.209391, 38.221645, 29.706129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.674906, 37.758263, 29.793596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.587397, 37.840332, 30.175180>,  <28.534891, 37.889572, 30.404131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.587397, 37.840332, 30.175180>,  <28.674906, 37.758263, 29.793596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.587397, 37.840332, 30.175180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088359, -0.969463, 0.228766,
		0.971767, 0.134339, 0.193964,
		-0.218773, 0.205169, 0.953962,
		28.521765, 37.901882, 30.461369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.236357, 37.498188, 30.213909>,  <28.674906, 37.758263, 29.793596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.236357, 37.498188, 30.213909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.899584, 37.533844, 30.426775>,  <28.697519, 37.555237, 30.554495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.899584, 37.533844, 30.426775>,  <29.236357, 37.498188, 30.213909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.899584, 37.533844, 30.426775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037584, -0.974177, 0.222637,
		0.538269, 0.207447, 0.816843,
		-0.841935, 0.089139, 0.532166,
		28.647003, 37.560585, 30.586424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.422001, 37.215023, 30.706596>,  <29.236357, 37.498188, 30.213909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.422001, 37.215023, 30.706596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.024950, 37.196117, 30.751240>,  <28.786720, 37.184772, 30.778027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.024950, 37.196117, 30.751240>,  <29.422001, 37.215023, 30.706596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.024950, 37.196117, 30.751240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078804, -0.951312, 0.297986,
		0.092089, 0.304585, 0.948023,
		-0.992627, -0.047266, 0.111608,
		28.727161, 37.181938, 30.784721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.357391, 36.989811, 31.368410>,  <29.422001, 37.215023, 30.706596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.357391, 36.989811, 31.368410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.011238, 36.902382, 31.188036>,  <28.803547, 36.849926, 31.079811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.011238, 36.902382, 31.188036>,  <29.357391, 36.989811, 31.368410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.011238, 36.902382, 31.188036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021563, -0.915270, 0.402263,
		-0.500650, 0.338388, 0.796771,
		-0.865381, -0.218574, -0.450933,
		28.751623, 36.836811, 31.052755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.019588, 36.660683, 31.890020>,  <29.357391, 36.989811, 31.368410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.019588, 36.660683, 31.890020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.830242, 36.556149, 31.553537>,  <28.716635, 36.493427, 31.351648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.830242, 36.556149, 31.553537>,  <29.019588, 36.660683, 31.890020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.830242, 36.556149, 31.553537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230921, -0.884761, 0.404813,
		-0.850060, 0.385876, 0.358466,
		-0.473364, -0.261338, -0.841207,
		28.688232, 36.477749, 31.301176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.349117, 36.283390, 32.060699>,  <29.019588, 36.660683, 31.890020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.349117, 36.283390, 32.060699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.435444, 36.210182, 31.677048>,  <28.487240, 36.166256, 31.446857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.435444, 36.210182, 31.677048>,  <28.349117, 36.283390, 32.060699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.435444, 36.210182, 31.677048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188517, -0.971605, 0.142985,
		-0.958062, 0.149953, -0.244194,
		0.215819, -0.183024, -0.959127,
		28.500189, 36.155273, 31.389309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.926128, 35.683254, 31.958342>,  <28.349117, 36.283390, 32.060699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.926128, 35.683254, 31.958342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.165497, 35.685627, 31.637878>,  <28.309118, 35.687050, 31.445601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.165497, 35.685627, 31.637878>,  <27.926128, 35.683254, 31.958342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.165497, 35.685627, 31.637878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040294, -0.998484, -0.037484,
		-0.800166, 0.054713, -0.597277,
		0.598423, 0.005927, -0.801158,
		28.345024, 35.687405, 31.397532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.668125, 35.306721, 31.398628>,  <27.926128, 35.683254, 31.958342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.668125, 35.306721, 31.398628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.067636, 35.294113, 31.383430>,  <28.307344, 35.286549, 31.374311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.067636, 35.294113, 31.383430>,  <27.668125, 35.306721, 31.398628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.067636, 35.294113, 31.383430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033425, -0.998165, -0.050494,
		-0.036332, 0.051702, -0.998001,
		0.998781, -0.031524, -0.037993,
		28.367271, 35.284657, 31.372032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.825104, 35.014332, 30.787355>,  <27.668125, 35.306721, 31.398628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.825104, 35.014332, 30.787355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.120123, 34.965881, 31.053093>,  <28.297134, 34.936813, 31.212536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.120123, 34.965881, 31.053093>,  <27.825104, 35.014332, 30.787355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.120123, 34.965881, 31.053093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012864, -0.986124, -0.165509,
		0.675172, 0.113525, -0.728872,
		0.737548, -0.121123, 0.664344,
		28.341387, 34.929543, 31.252396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.836075, 34.334038, 30.787373>,  <27.825104, 35.014332, 30.787355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.836075, 34.334038, 30.787373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.118069, 34.435375, 31.052345>,  <28.287266, 34.496178, 31.211329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.118069, 34.435375, 31.052345>,  <27.836075, 34.334038, 30.787373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.118069, 34.435375, 31.052345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194678, -0.967272, 0.162742,
		0.681980, 0.014230, -0.731232,
		0.704985, 0.253341, 0.662431,
		28.329565, 34.511379, 31.251074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.470985, 33.960827, 30.610777>,  <27.836075, 34.334038, 30.787373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.470985, 33.960827, 30.610777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.511410, 34.050426, 30.998512>,  <28.535664, 34.104187, 31.231153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.511410, 34.050426, 30.998512>,  <28.470985, 33.960827, 30.610777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.511410, 34.050426, 30.998512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374388, -0.911266, 0.171543,
		0.921748, 0.345572, -0.175954,
		0.101060, 0.223995, 0.969336,
		28.541727, 34.117626, 31.289312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.178360, 33.926857, 30.738993>,  <28.470985, 33.960827, 30.610777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.178360, 33.926857, 30.738993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.948837, 33.867214, 31.061113>,  <28.811123, 33.831429, 31.254387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.948837, 33.867214, 31.061113>,  <29.178360, 33.926857, 30.738993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.948837, 33.867214, 31.061113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286016, -0.957860, 0.026446,
		0.767424, 0.245505, 0.592273,
		-0.573807, -0.149105, 0.805303,
		28.776695, 33.822483, 31.302704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.451578, 33.429649, 31.194729>,  <29.178360, 33.926857, 30.738993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.451578, 33.429649, 31.194729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.068398, 33.362400, 31.287735>,  <28.838490, 33.322048, 31.343538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.068398, 33.362400, 31.287735>,  <29.451578, 33.429649, 31.194729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.068398, 33.362400, 31.287735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147012, -0.983496, -0.105463,
		0.246411, -0.066845, 0.966858,
		-0.957951, -0.168127, 0.232517,
		28.781012, 33.311962, 31.357491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.483131, 32.845676, 31.610802>,  <29.451578, 33.429649, 31.194729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.483131, 32.845676, 31.610802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.143446, 32.871361, 31.401148>,  <28.939634, 32.886772, 31.275356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.143446, 32.871361, 31.401148>,  <29.483131, 32.845676, 31.610802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.143446, 32.871361, 31.401148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059388, -0.974667, -0.215631,
		-0.524702, -0.214243, 0.823886,
		-0.849212, 0.064213, -0.524133,
		28.888683, 32.890625, 31.243908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.160784, 32.351990, 32.135777>,  <29.483131, 32.845676, 31.610802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.160784, 32.351990, 32.135777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.052885, 31.970972, 32.192188>,  <28.988146, 31.742361, 32.226036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.052885, 31.970972, 32.192188>,  <29.160784, 32.351990, 32.135777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.052885, 31.970972, 32.192188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685181, -0.086961, 0.723163,
		-0.676583, 0.291704, 0.676125,
		-0.269746, -0.952548, 0.141033,
		28.971962, 31.685207, 32.234497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.714064, 32.101383, 32.812347>,  <29.160784, 32.351990, 32.135777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.714064, 32.101383, 32.812347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.979099, 31.836941, 32.671539>,  <29.138121, 31.678276, 32.587055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.979099, 31.836941, 32.671539>,  <28.714064, 32.101383, 32.812347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.979099, 31.836941, 32.671539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586439, 0.165569, 0.792891,
		-0.465900, -0.731798, 0.497401,
		0.662591, -0.661104, -0.352016,
		29.177877, 31.638609, 32.565933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.005056, 32.485588, 33.426479>,  <28.714064, 32.101383, 32.812347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.005056, 32.485588, 33.426479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.657177, 32.436462, 33.617702>,  <28.448448, 32.406986, 33.732437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.657177, 32.436462, 33.617702>,  <29.005056, 32.485588, 33.426479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.657177, 32.436462, 33.617702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221928, 0.767828, 0.600989,
		-0.440873, 0.628775, -0.640525,
		-0.869700, -0.122810, 0.478058,
		28.396267, 32.399620, 33.761120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.623875, 33.135109, 33.425911>,  <29.005056, 32.485588, 33.426479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.623875, 33.135109, 33.425911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.524874, 32.928513, 33.753811>,  <28.465473, 32.804554, 33.950550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.524874, 32.928513, 33.753811>,  <28.623875, 33.135109, 33.425911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.524874, 32.928513, 33.753811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208409, 0.797885, 0.565636,
		-0.946208, 0.310839, -0.089837,
		-0.247501, -0.516487, 0.819747,
		28.450623, 32.773567, 33.999737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.169563, 33.544647, 33.756161>,  <28.623875, 33.135109, 33.425911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.169563, 33.544647, 33.756161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.355902, 33.293785, 34.005856>,  <28.467705, 33.143269, 34.155670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.355902, 33.293785, 34.005856>,  <28.169563, 33.544647, 33.756161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.355902, 33.293785, 34.005856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191607, 0.760212, 0.620777,
		-0.863872, -0.169579, 0.474308,
		0.465846, -0.627152, 0.624234,
		28.495655, 33.105640, 34.193127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.897564, 33.659431, 34.504467>,  <28.169563, 33.544647, 33.756161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.897564, 33.659431, 34.504467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.266184, 33.508232, 34.539940>,  <28.487356, 33.417511, 34.561222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.266184, 33.508232, 34.539940>,  <27.897564, 33.659431, 34.504467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.266184, 33.508232, 34.539940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258616, 0.767972, 0.585950,
		-0.289593, -0.517047, 0.805480,
		0.921550, -0.377997, 0.088682,
		28.542648, 33.394833, 34.566544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.173697, 33.941265, 35.186306>,  <27.897564, 33.659431, 34.504467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.173697, 33.941265, 35.186306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.490446, 33.764645, 35.017559>,  <28.680496, 33.658672, 34.916309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.490446, 33.764645, 35.017559>,  <28.173697, 33.941265, 35.186306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.490446, 33.764645, 35.017559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603514, 0.671398, 0.430111,
		0.093324, -0.595195, 0.798144,
		0.791872, -0.441551, -0.421866,
		28.728008, 33.632179, 34.890999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.670815, 33.707191, 35.713882>,  <28.173697, 33.941265, 35.186306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.670815, 33.707191, 35.713882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.875895, 33.779217, 35.378094>,  <28.998943, 33.822433, 35.176620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.875895, 33.779217, 35.378094>,  <28.670815, 33.707191, 35.713882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.875895, 33.779217, 35.378094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591912, 0.634123, 0.497522,
		0.621913, -0.751975, 0.218537,
		0.512703, 0.180060, -0.839473,
		29.029705, 33.833237, 35.126251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.330341, 33.594200, 35.887241>,  <28.670815, 33.707191, 35.713882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.330341, 33.594200, 35.887241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.347742, 33.818424, 35.556454>,  <29.358183, 33.952961, 35.357983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.347742, 33.818424, 35.556454>,  <29.330341, 33.594200, 35.887241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.347742, 33.818424, 35.556454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621670, 0.632784, 0.461639,
		0.782070, -0.534183, -0.320959,
		0.043502, 0.560565, -0.826967,
		29.360792, 33.986595, 35.308365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.011253, 33.773396, 35.880932>,  <29.330341, 33.594200, 35.887241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.011253, 33.773396, 35.880932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.834841, 34.027157, 35.626995>,  <29.728992, 34.179413, 35.474632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.834841, 34.027157, 35.626995>,  <30.011253, 33.773396, 35.880932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.834841, 34.027157, 35.626995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604585, 0.732782, 0.312261,
		0.663300, -0.246098, -0.706731,
		-0.441033, 0.634402, -0.634842,
		29.702532, 34.217476, 35.436543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.503471, 34.164658, 35.540668>,  <30.011253, 33.773396, 35.880932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.503471, 34.164658, 35.540668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.177742, 34.396774, 35.536091>,  <29.982304, 34.536045, 35.533344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.177742, 34.396774, 35.536091>,  <30.503471, 34.164658, 35.540668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.177742, 34.396774, 35.536091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542755, 0.768331, 0.339242,
		0.205650, 0.270044, -0.940630,
		-0.814325, 0.580296, -0.011440,
		29.933445, 34.570862, 35.532658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.749672, 34.801685, 35.216377>,  <30.503471, 34.164658, 35.540668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.749672, 34.801685, 35.216377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.415216, 34.882751, 35.420261>,  <30.214544, 34.931393, 35.542591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.415216, 34.882751, 35.420261>,  <30.749672, 34.801685, 35.216377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.415216, 34.882751, 35.420261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464880, 0.755043, 0.462382,
		-0.291140, 0.623567, -0.725536,
		-0.836137, 0.202669, 0.509707,
		30.164375, 34.943554, 35.573174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.830067, 35.416794, 35.305359>,  <30.749672, 34.801685, 35.216377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.830067, 35.416794, 35.305359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.536293, 35.342247, 35.566395>,  <30.360029, 35.297520, 35.723015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.536293, 35.342247, 35.566395>,  <30.830067, 35.416794, 35.305359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.536293, 35.342247, 35.566395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425415, 0.622786, 0.656627,
		-0.528800, 0.759870, -0.378110,
		-0.734434, -0.186371, 0.652589,
		30.315964, 35.286335, 35.762173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.694971, 36.169872, 35.596218>,  <30.830067, 35.416794, 35.305359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.694971, 36.169872, 35.596218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.528049, 35.907261, 35.847561>,  <30.427896, 35.749695, 35.998367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.528049, 35.907261, 35.847561>,  <30.694971, 36.169872, 35.596218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.528049, 35.907261, 35.847561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179423, 0.618305, 0.765183,
		-0.890879, 0.432056, -0.140225,
		-0.417304, -0.656526, 0.628356,
		30.402859, 35.710304, 36.036068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.430721, 36.552277, 36.009556>,  <30.694971, 36.169872, 35.596218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.430721, 36.552277, 36.009556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.459610, 36.214016, 36.221085>,  <30.476944, 36.011059, 36.348000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.459610, 36.214016, 36.221085>,  <30.430721, 36.552277, 36.009556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.459610, 36.214016, 36.221085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251086, 0.528544, 0.810924,
		-0.965267, 0.074213, 0.250505,
		0.072222, -0.845656, 0.528819,
		30.481277, 35.960320, 36.379730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.089470, 36.656349, 36.591301>,  <30.430721, 36.552277, 36.009556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.089470, 36.656349, 36.591301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.329700, 36.352486, 36.691082>,  <30.473839, 36.170166, 36.750950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.329700, 36.352486, 36.691082>,  <30.089470, 36.656349, 36.591301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.329700, 36.352486, 36.691082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180939, 0.433016, 0.883039,
		-0.778825, -0.485197, 0.397511,
		0.600576, -0.759658, 0.249453,
		30.509874, 36.124588, 36.765919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.938612, 36.477016, 37.219204>,  <30.089470, 36.656349, 36.591301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.938612, 36.477016, 37.219204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320744, 36.360668, 37.198269>,  <30.550022, 36.290859, 37.185707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320744, 36.360668, 37.198269>,  <29.938612, 36.477016, 37.219204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.320744, 36.360668, 37.198269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185602, 0.452659, 0.872154,
		-0.229994, -0.842908, 0.486424,
		0.955330, -0.290872, -0.052336,
		30.607342, 36.273407, 37.182568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.067858, 36.294975, 37.926716>,  <29.938612, 36.477016, 37.219204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.067858, 36.294975, 37.926716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.423323, 36.315067, 37.744396>,  <30.636602, 36.327122, 37.635006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.423323, 36.315067, 37.744396>,  <30.067858, 36.294975, 37.926716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.423323, 36.315067, 37.744396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448268, 0.114229, 0.886571,
		0.096589, -0.992184, 0.079000,
		0.888665, 0.050220, -0.455798,
		30.689922, 36.330135, 37.607658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.437855, 35.764385, 38.084740>,  <30.067858, 36.294975, 37.926716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.437855, 35.764385, 38.084740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.724916, 36.024845, 37.985962>,  <30.897154, 36.181122, 37.926697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.724916, 36.024845, 37.985962>,  <30.437855, 35.764385, 38.084740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.724916, 36.024845, 37.985962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410370, -0.108923, 0.905390,
		0.562643, -0.751096, -0.345380,
		0.717655, 0.651145, -0.246943,
		30.940212, 36.220188, 37.911880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.113535, 35.424820, 38.196350>,  <30.437855, 35.764385, 38.084740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.113535, 35.424820, 38.196350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.154718, 35.821777, 38.223328>,  <31.179428, 36.059952, 38.239513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.154718, 35.821777, 38.223328>,  <31.113535, 35.424820, 38.196350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.154718, 35.821777, 38.223328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341469, -0.098947, 0.934670,
		0.934237, -0.073201, -0.349060,
		0.102957, 0.992397, 0.067444,
		31.185606, 36.119495, 38.243561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.798542, 35.552715, 38.421719>,  <31.113535, 35.424820, 38.196350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.798542, 35.552715, 38.421719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.581814, 35.877487, 38.508629>,  <31.451777, 36.072350, 38.560776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.581814, 35.877487, 38.508629>,  <31.798542, 35.552715, 38.421719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.581814, 35.877487, 38.508629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349349, -0.017572, 0.936828,
		0.764453, 0.583496, -0.274124,
		-0.541818, 0.811926, 0.217276,
		31.419268, 36.121063, 38.573811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078270, 35.669373, 39.131634>,  <31.798542, 35.552715, 38.421719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078270, 35.669373, 39.131634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785786, 35.932610, 39.059818>,  <31.610294, 36.090553, 39.016727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785786, 35.932610, 39.059818>,  <32.078270, 35.669373, 39.131634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785786, 35.932610, 39.059818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079445, 0.179248, 0.980591,
		0.677505, 0.731286, -0.078786,
		-0.731215, 0.658096, -0.179538,
		31.566422, 36.130039, 39.005959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.299263, 36.285580, 39.442524>,  <32.078270, 35.669373, 39.131634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.299263, 36.285580, 39.442524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.901567, 36.257355, 39.410259>,  <31.662951, 36.240417, 39.390900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.901567, 36.257355, 39.410259>,  <32.299263, 36.285580, 39.442524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.901567, 36.257355, 39.410259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090883, 0.156252, 0.983527,
		-0.056801, 0.985193, -0.161765,
		-0.994240, -0.070567, -0.080662,
		31.603294, 36.236183, 39.386059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014519, 36.820156, 39.863422>,  <32.299263, 36.285580, 39.442524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014519, 36.820156, 39.863422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703051, 36.572266, 39.824211>,  <31.516171, 36.423531, 39.800682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703051, 36.572266, 39.824211>,  <32.014519, 36.820156, 39.863422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703051, 36.572266, 39.824211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284150, 0.209005, 0.935722,
		-0.559406, 0.756473, -0.338842,
		-0.778668, -0.619731, -0.098033,
		31.469450, 36.386345, 39.794800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423538, 37.160362, 40.048584>,  <32.014519, 36.820156, 39.863422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.423538, 37.160362, 40.048584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.288513, 36.787083, 40.097874>,  <31.207499, 36.563114, 40.127449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.288513, 36.787083, 40.097874>,  <31.423538, 37.160362, 40.048584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.288513, 36.787083, 40.097874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435680, 0.270935, 0.858357,
		-0.834407, 0.236062, -0.498035,
		-0.337561, -0.933204, 0.123223,
		31.187244, 36.507122, 40.134842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.826086, 37.258209, 40.298389>,  <31.423538, 37.160362, 40.048584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.826086, 37.258209, 40.298389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.885099, 36.874645, 40.395317>,  <30.920507, 36.644505, 40.453476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.885099, 36.874645, 40.395317>,  <30.826086, 37.258209, 40.298389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.885099, 36.874645, 40.395317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209912, 0.209063, 0.955107,
		-0.966525, -0.191777, -0.170443,
		0.147535, -0.958913, 0.242321,
		30.929359, 36.586971, 40.468014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.289148, 37.196095, 40.691132>,  <30.826086, 37.258209, 40.298389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.289148, 37.196095, 40.691132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.528784, 36.891602, 40.790421>,  <30.672565, 36.708904, 40.849995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.528784, 36.891602, 40.790421>,  <30.289148, 37.196095, 40.691132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.528784, 36.891602, 40.790421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165044, 0.185949, 0.968599,
		-0.783487, -0.621246, -0.014237,
		0.599090, -0.761234, 0.248221,
		30.708511, 36.663231, 40.864887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.901283, 36.724876, 41.206440>,  <30.289148, 37.196095, 40.691132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.901283, 36.724876, 41.206440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.290131, 36.657051, 41.271225>,  <30.523439, 36.616356, 41.310097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.290131, 36.657051, 41.271225>,  <29.901283, 36.724876, 41.206440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.290131, 36.657051, 41.271225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155609, 0.050196, 0.986542,
		-0.175417, -0.984239, 0.022409,
		0.972118, -0.169569, 0.161962,
		30.581766, 36.606182, 41.319813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.972984, 36.368996, 41.879524>,  <29.901283, 36.724876, 41.206440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.972984, 36.368996, 41.879524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.355587, 36.480274, 41.844414>,  <30.585148, 36.547043, 41.823349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.355587, 36.480274, 41.844414>,  <29.972984, 36.368996, 41.879524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.355587, 36.480274, 41.844414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076515, 0.051092, 0.995758,
		0.281505, -0.959163, 0.027583,
		0.956504, 0.278200, -0.087773,
		30.642538, 36.563732, 41.818081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.242125, 35.928772, 42.399879>,  <29.972984, 36.368996, 41.879524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.242125, 35.928772, 42.399879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.489681, 36.231224, 42.314796>,  <30.638214, 36.412693, 42.263748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.489681, 36.231224, 42.314796>,  <30.242125, 35.928772, 42.399879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.489681, 36.231224, 42.314796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207987, 0.103380, 0.972653,
		0.757440, -0.646206, -0.093284,
		0.618891, 0.756128, -0.212707,
		30.675348, 36.458061, 42.250984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.900799, 35.762909, 42.707390>,  <30.242125, 35.928772, 42.399879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.900799, 35.762909, 42.707390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.916201, 36.156876, 42.639919>,  <30.925442, 36.393257, 42.599438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.916201, 36.156876, 42.639919>,  <30.900799, 35.762909, 42.707390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.916201, 36.156876, 42.639919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344312, 0.145390, 0.927529,
		0.938065, -0.093791, -0.333522,
		0.038504, 0.984919, -0.168679,
		30.927752, 36.452351, 42.589317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.621601, 36.077988, 42.862991>,  <30.900799, 35.762909, 42.707390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.621601, 36.077988, 42.862991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.347733, 36.367443, 42.897781>,  <31.183411, 36.541119, 42.918655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.347733, 36.367443, 42.897781>,  <31.621601, 36.077988, 42.862991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.347733, 36.367443, 42.897781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276702, 0.147675, 0.949541,
		0.674285, 0.674190, -0.301342,
		-0.684672, 0.723643, 0.086975,
		31.142330, 36.584538, 42.923874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.005802, 36.607990, 43.276882>,  <31.621601, 36.077988, 42.862991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.005802, 36.607990, 43.276882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608513, 36.653179, 43.287827>,  <31.370140, 36.680294, 43.294392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608513, 36.653179, 43.287827>,  <32.005802, 36.607990, 43.276882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.608513, 36.653179, 43.287827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073173, 0.424776, 0.902337,
		0.090319, 0.898222, -0.430163,
		-0.993221, 0.112974, 0.027360,
		31.310547, 36.687073, 43.296036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.816017, 37.221104, 43.550777>,  <32.005802, 36.607990, 43.276882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.816017, 37.221104, 43.550777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.475262, 37.025219, 43.625038>,  <31.270809, 36.907688, 43.669594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.475262, 37.025219, 43.625038>,  <31.816017, 37.221104, 43.550777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.475262, 37.025219, 43.625038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094392, 0.492242, 0.865325,
		-0.515145, 0.719638, -0.465560,
		-0.851889, -0.489714, 0.185648,
		31.219694, 36.878304, 43.680733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.483034, 37.655792, 44.066093>,  <31.816017, 37.221104, 43.550777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.483034, 37.655792, 44.066093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.295898, 37.303551, 44.096210>,  <31.183617, 37.092205, 44.114281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.295898, 37.303551, 44.096210>,  <31.483034, 37.655792, 44.066093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.295898, 37.303551, 44.096210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042475, 0.107499, 0.993298,
		-0.882793, 0.461505, -0.087695,
		-0.467839, -0.880601, 0.075297,
		31.155546, 37.039371, 44.118801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.868219, 37.841263, 44.487854>,  <31.483034, 37.655792, 44.066093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.868219, 37.841263, 44.487854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.973829, 37.456085, 44.509838>,  <31.037195, 37.224979, 44.523029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.973829, 37.456085, 44.509838>,  <30.868219, 37.841263, 44.487854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.973829, 37.456085, 44.509838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423973, 0.167053, 0.890135,
		-0.866336, -0.211716, 0.452370,
		0.264026, -0.962949, 0.054962,
		31.053038, 37.167202, 44.526325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.619612, 37.659088, 45.085194>,  <30.868219, 37.841263, 44.487854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.619612, 37.659088, 45.085194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.847153, 37.337223, 45.017155>,  <30.983677, 37.144104, 44.976334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.847153, 37.337223, 45.017155>,  <30.619612, 37.659088, 45.085194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.847153, 37.337223, 45.017155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395763, 0.086518, 0.914268,
		-0.720958, -0.587400, 0.367669,
		0.568851, -0.804659, -0.170096,
		31.017809, 37.095825, 44.966125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.553564, 37.121094, 45.637264>,  <30.619612, 37.659088, 45.085194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.553564, 37.121094, 45.637264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917927, 37.086159, 45.475960>,  <31.136543, 37.065197, 45.379177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917927, 37.086159, 45.475960>,  <30.553564, 37.121094, 45.637264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.917927, 37.086159, 45.475960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412615, 0.193451, 0.890127,
		0.000267, -0.977214, 0.212254,
		0.910905, -0.087342, -0.403265,
		31.191198, 37.059956, 45.354980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.894567, 36.641987, 46.161823>,  <30.553564, 37.121094, 45.637264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.894567, 36.641987, 46.161823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.195765, 36.773926, 45.934067>,  <31.376482, 36.853088, 45.797413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.195765, 36.773926, 45.934067>,  <30.894567, 36.641987, 46.161823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.195765, 36.773926, 45.934067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498784, 0.278294, 0.820833,
		0.429208, -0.902082, 0.045030,
		0.752991, 0.329848, -0.569391,
		31.421661, 36.872879, 45.763248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440041, 36.132904, 46.243752>,  <30.894567, 36.641987, 46.161823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440041, 36.132904, 46.243752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.588190, 36.492397, 46.149860>,  <31.677080, 36.708096, 46.093525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.588190, 36.492397, 46.149860>,  <31.440041, 36.132904, 46.243752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.588190, 36.492397, 46.149860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436744, 0.054534, 0.897931,
		0.819805, -0.435084, -0.372320,
		0.370372, 0.898737, -0.234728,
		31.699301, 36.762020, 46.079441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178509, 36.153656, 46.247227>,  <31.440041, 36.132904, 46.243752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178509, 36.153656, 46.247227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064812, 36.532143, 46.309048>,  <31.996593, 36.759235, 46.346142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064812, 36.532143, 46.309048>,  <32.178509, 36.153656, 46.247227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064812, 36.532143, 46.309048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560008, 0.033014, 0.827829,
		0.778200, 0.321857, -0.539270,
		-0.284246, 0.946212, 0.154551,
		31.979538, 36.816006, 46.355412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.745163, 36.381992, 46.546379>,  <32.178509, 36.153656, 46.247227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.745163, 36.381992, 46.546379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.503262, 36.692207, 46.618828>,  <32.358120, 36.878338, 46.662296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.503262, 36.692207, 46.618828>,  <32.745163, 36.381992, 46.546379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.503262, 36.692207, 46.618828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406303, 0.104848, 0.907703,
		0.684972, 0.622529, -0.378512,
		-0.604758, 0.775541, 0.181118,
		32.321835, 36.924870, 46.673164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168247, 37.047726, 46.792072>,  <32.745163, 36.381992, 46.546379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168247, 37.047726, 46.792072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800209, 37.155273, 46.906006>,  <32.579388, 37.219803, 46.974365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800209, 37.155273, 46.906006>,  <33.168247, 37.047726, 46.792072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800209, 37.155273, 46.906006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379088, 0.428267, 0.820293,
		0.098566, 0.862726, -0.495972,
		-0.920096, 0.268870, 0.284836,
		32.524181, 37.235935, 46.991455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298290, 37.780640, 47.054981>,  <33.168247, 37.047726, 46.792072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.298290, 37.780640, 47.054981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.964344, 37.621353, 47.206997>,  <32.763977, 37.525780, 47.298206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.964344, 37.621353, 47.206997>,  <33.298290, 37.780640, 47.054981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964344, 37.621353, 47.206997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231531, 0.372320, 0.898761,
		-0.499395, 0.838333, -0.218637,
		-0.834864, -0.398216, 0.380034,
		32.713886, 37.501888, 47.321007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.871861, 38.292267, 47.302124>,  <33.298290, 37.780640, 47.054981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.871861, 38.292267, 47.302124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788948, 37.961193, 47.510727>,  <32.739201, 37.762550, 47.635887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788948, 37.961193, 47.510727>,  <32.871861, 38.292267, 47.302124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.788948, 37.961193, 47.510727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246888, 0.471570, 0.846563,
		-0.946615, 0.304233, 0.106596,
		-0.207285, -0.827686, 0.521507,
		32.726761, 37.712887, 47.667179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.427742, 38.511772, 47.836609>,  <32.871861, 38.292267, 47.302124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.427742, 38.511772, 47.836609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613041, 38.171875, 47.937283>,  <32.724220, 37.967937, 47.997688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613041, 38.171875, 47.937283>,  <32.427742, 38.511772, 47.836609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613041, 38.171875, 47.937283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290302, 0.413825, 0.862829,
		-0.837335, -0.326634, 0.438383,
		0.463243, -0.849740, 0.251688,
		32.752014, 37.916954, 48.012791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.269489, 38.363949, 48.552181>,  <32.427742, 38.511772, 47.836609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.269489, 38.363949, 48.552181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603996, 38.155617, 48.483604>,  <32.804699, 38.030617, 48.442459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603996, 38.155617, 48.483604>,  <32.269489, 38.363949, 48.552181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603996, 38.155617, 48.483604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341089, 0.249314, 0.906367,
		-0.429323, -0.816441, 0.386143,
		0.836266, -0.520833, -0.171443,
		32.854877, 37.999367, 48.432171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512253, 38.080345, 49.135376>,  <32.269489, 38.363949, 48.552181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512253, 38.080345, 49.135376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.827877, 38.115349, 48.892155>,  <33.017250, 38.136353, 48.746223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.827877, 38.115349, 48.892155>,  <32.512253, 38.080345, 49.135376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.827877, 38.115349, 48.892155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575635, 0.240348, 0.781586,
		0.214541, -0.966734, 0.139274,
		0.789060, 0.087511, -0.608050,
		33.064594, 38.141602, 48.709740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095024, 37.551815, 49.472176>,  <32.512253, 38.080345, 49.135376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095024, 37.551815, 49.472176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.211121, 37.882565, 49.279495>,  <33.280777, 38.081017, 49.163887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.211121, 37.882565, 49.279495>,  <33.095024, 37.551815, 49.472176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.211121, 37.882565, 49.279495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488724, 0.304693, 0.817502,
		0.822746, -0.472688, -0.315682,
		0.290237, 0.826878, -0.481699,
		33.298191, 38.130627, 49.134987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800716, 37.612961, 49.384644>,  <33.095024, 37.551815, 49.472176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800716, 37.612961, 49.384644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.650185, 37.982746, 49.409130>,  <33.559864, 38.204617, 49.423820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.650185, 37.982746, 49.409130>,  <33.800716, 37.612961, 49.384644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650185, 37.982746, 49.409130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547082, 0.168413, 0.819962,
		0.747714, 0.342065, -0.569135,
		-0.376330, 0.924461, 0.061213,
		33.537285, 38.260086, 49.427494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199589, 37.014816, 49.196754>,  <33.800716, 37.612961, 49.384644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199589, 37.014816, 49.196754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148506, 36.826096, 49.545715>,  <34.117859, 36.712864, 49.755093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148506, 36.826096, 49.545715>,  <34.199589, 37.014816, 49.196754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148506, 36.826096, 49.545715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109797, -0.880926, -0.460342,
		0.985716, 0.037000, 0.164301,
		-0.127704, -0.471806, 0.872405,
		34.110195, 36.684555, 49.807438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691036, 36.409580, 49.235664>,  <34.199589, 37.014816, 49.196754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691036, 36.409580, 49.235664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393505, 36.358734, 49.498131>,  <34.214985, 36.328224, 49.655613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393505, 36.358734, 49.498131>,  <34.691036, 36.409580, 49.235664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393505, 36.358734, 49.498131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068419, -0.991071, -0.114440,
		0.664859, -0.040230, 0.745885,
		-0.743829, -0.127119, 0.656170,
		34.170357, 36.320599, 49.694981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917164, 35.897011, 49.789551>,  <34.691036, 36.409580, 49.235664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917164, 35.897011, 49.789551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517509, 35.912407, 49.795921>,  <34.277718, 35.921642, 49.799744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517509, 35.912407, 49.795921>,  <34.917164, 35.897011, 49.789551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517509, 35.912407, 49.795921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039367, -0.997469, -0.059212,
		0.013611, -0.059788, 0.998118,
		-0.999132, 0.038487, 0.015931,
		34.217770, 35.923954, 49.800701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578594, 35.570381, 50.334808>,  <34.917164, 35.897011, 49.789551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578594, 35.570381, 50.334808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343601, 35.512264, 50.016373>,  <34.202606, 35.477394, 49.825314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343601, 35.512264, 50.016373>,  <34.578594, 35.570381, 50.334808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343601, 35.512264, 50.016373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076712, -0.969320, 0.233524,
		-0.805592, 0.198261, 0.558314,
		-0.587483, -0.145296, -0.796086,
		34.167355, 35.468674, 49.777546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831966, 35.466534, 50.470867>,  <34.578594, 35.570381, 50.334808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831966, 35.466534, 50.470867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930294, 35.273384, 50.134678>,  <33.989292, 35.157494, 49.932964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930294, 35.273384, 50.134678>,  <33.831966, 35.466534, 50.470867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930294, 35.273384, 50.134678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292586, -0.863603, 0.410590,
		-0.924103, 0.144982, -0.353572,
		0.245818, -0.482878, -0.840478,
		34.004040, 35.128521, 49.882534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478310, 34.777428, 50.329464>,  <33.831966, 35.466534, 50.470867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478310, 34.777428, 50.329464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788204, 34.730915, 50.080864>,  <33.974140, 34.703007, 49.931702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788204, 34.730915, 50.080864>,  <33.478310, 34.777428, 50.329464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788204, 34.730915, 50.080864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038523, -0.989798, 0.137170,
		-0.631112, -0.082328, -0.771311,
		0.774735, -0.116283, -0.621502,
		34.020626, 34.696030, 49.894413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801685, 35.009407, 50.243282>,  <33.478310, 34.777428, 50.329464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801685, 35.009407, 50.243282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933823, 35.309338, 50.013973>,  <33.013103, 35.489296, 49.876389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933823, 35.309338, 50.013973>,  <32.801685, 35.009407, 50.243282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933823, 35.309338, 50.013973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168736, -0.550666, -0.817493,
		-0.928658, 0.366780, -0.055384,
		0.330338, 0.749826, -0.573269,
		33.032925, 35.534286, 49.841991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289619, 35.098717, 49.748173>,  <32.801685, 35.009407, 50.243282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289619, 35.098717, 49.748173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632282, 35.245010, 49.602634>,  <32.837879, 35.332787, 49.515312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632282, 35.245010, 49.602634>,  <32.289619, 35.098717, 49.748173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632282, 35.245010, 49.602634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129404, -0.530390, -0.837819,
		-0.499399, 0.764804, -0.407033,
		0.856654, 0.365734, -0.363845,
		32.889278, 35.354729, 49.493481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130005, 35.286404, 49.058853>,  <32.289619, 35.098717, 49.748173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130005, 35.286404, 49.058853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527344, 35.311104, 49.019978>,  <32.765747, 35.325924, 48.996651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527344, 35.311104, 49.019978>,  <32.130005, 35.286404, 49.058853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527344, 35.311104, 49.019978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049546, -0.532709, -0.844847,
		-0.103940, 0.844042, -0.526107,
		0.993349, 0.061747, -0.097189,
		32.825348, 35.329628, 48.990822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283813, 35.612328, 48.398754>,  <32.130005, 35.286404, 49.058853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283813, 35.612328, 48.398754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.596828, 35.372959, 48.467495>,  <32.784637, 35.229340, 48.508739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.596828, 35.372959, 48.467495>,  <32.283813, 35.612328, 48.398754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.596828, 35.372959, 48.467495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066598, -0.354893, -0.932532,
		0.619036, 0.718293, -0.317569,
		0.782534, -0.598420, 0.171854,
		32.831589, 35.193432, 48.519051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750397, 35.686256, 47.724094>,  <32.283813, 35.612328, 48.398754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750397, 35.686256, 47.724094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901451, 35.382133, 47.935501>,  <32.992085, 35.199661, 48.062344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901451, 35.382133, 47.935501>,  <32.750397, 35.686256, 47.724094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901451, 35.382133, 47.935501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205699, -0.487632, -0.848471,
		0.902816, 0.429130, -0.027755,
		0.377638, -0.760304, 0.528513,
		33.014744, 35.154041, 48.094055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.335728, 35.524952, 47.489975>,  <32.750397, 35.686256, 47.724094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.335728, 35.524952, 47.489975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.210342, 35.181435, 47.652065>,  <33.135113, 34.975323, 47.749321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.210342, 35.181435, 47.652065>,  <33.335728, 35.524952, 47.489975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210342, 35.181435, 47.652065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180327, -0.472801, -0.862521,
		0.932321, -0.197295, 0.303070,
		-0.313463, -0.858798, 0.405225,
		33.116302, 34.923794, 47.773632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691654, 35.053238, 47.151108>,  <33.335728, 35.524952, 47.489975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.691654, 35.053238, 47.151108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423481, 34.804047, 47.312313>,  <33.262577, 34.654530, 47.409035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423481, 34.804047, 47.312313>,  <33.691654, 35.053238, 47.151108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423481, 34.804047, 47.312313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123846, -0.629501, -0.767066,
		0.731564, -0.464353, 0.499190,
		-0.670430, -0.622981, 0.403012,
		33.222351, 34.617153, 47.433216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914215, 34.344524, 47.101612>,  <33.691654, 35.053238, 47.151108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914215, 34.344524, 47.101612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520168, 34.300606, 47.154518>,  <33.283741, 34.274254, 47.186264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520168, 34.300606, 47.154518>,  <33.914215, 34.344524, 47.101612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520168, 34.300606, 47.154518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038212, -0.610323, -0.791230,
		0.167604, -0.784506, 0.597042,
		-0.985114, -0.109799, 0.132270,
		33.224636, 34.267666, 47.194199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867653, 33.636543, 46.971199>,  <33.914215, 34.344524, 47.101612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867653, 33.636543, 46.971199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506413, 33.800831, 46.921055>,  <33.289669, 33.899403, 46.890968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506413, 33.800831, 46.921055>,  <33.867653, 33.636543, 46.971199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506413, 33.800831, 46.921055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148535, -0.572673, -0.806215,
		-0.402918, -0.709475, 0.578189,
		-0.903103, 0.410720, -0.125359,
		33.235481, 33.924046, 46.883446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474609, 33.079464, 46.864346>,  <33.867653, 33.636543, 46.971199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474609, 33.079464, 46.864346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229450, 33.359230, 46.717285>,  <33.082355, 33.527092, 46.629047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229450, 33.359230, 46.717285>,  <33.474609, 33.079464, 46.864346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229450, 33.359230, 46.717285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249102, -0.612592, -0.750120,
		-0.749869, -0.368164, 0.549683,
		-0.612898, 0.699419, -0.367654,
		33.045582, 33.569057, 46.606991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898651, 32.669945, 46.617641>,  <33.474609, 33.079464, 46.864346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898651, 32.669945, 46.617641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875561, 33.020805, 46.426949>,  <32.861706, 33.231319, 46.312531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875561, 33.020805, 46.426949>,  <32.898651, 32.669945, 46.617641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875561, 33.020805, 46.426949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221911, -0.476859, -0.850506,
		-0.973357, 0.056694, 0.222177,
		-0.057729, 0.877149, -0.476735,
		32.858242, 33.283951, 46.283928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.177013, 32.730412, 46.365387>,  <32.898651, 32.669945, 46.617641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.177013, 32.730412, 46.365387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.418873, 32.967606, 46.152683>,  <32.563988, 33.109921, 46.025059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.418873, 32.967606, 46.152683>,  <32.177013, 32.730412, 46.365387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.418873, 32.967606, 46.152683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378787, -0.373218, -0.846893,
		-0.700659, 0.713495, -0.001049,
		0.604646, 0.592986, -0.531762,
		32.600266, 33.145500, 45.993156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712154, 33.068768, 45.876816>,  <32.177013, 32.730412, 46.365387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712154, 33.068768, 45.876816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074886, 33.131260, 45.720226>,  <32.292526, 33.168755, 45.626270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074886, 33.131260, 45.720226>,  <31.712154, 33.068768, 45.876816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.074886, 33.131260, 45.720226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323298, -0.338110, -0.883833,
		-0.270447, 0.928048, -0.256097,
		0.906828, 0.156234, -0.391477,
		32.346935, 33.178131, 45.602783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.611418, 33.507915, 45.224674>,  <31.712154, 33.068768, 45.876816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.611418, 33.507915, 45.224674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967184, 33.326420, 45.202545>,  <32.180645, 33.217522, 45.189266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967184, 33.326420, 45.202545>,  <31.611418, 33.507915, 45.224674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967184, 33.326420, 45.202545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233256, -0.346445, -0.908608,
		0.393102, 0.821036, -0.413971,
		0.889417, -0.453736, -0.055323,
		32.234009, 33.190300, 45.185947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.739298, 33.724930, 44.600052>,  <31.611418, 33.507915, 45.224674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.739298, 33.724930, 44.600052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967926, 33.408676, 44.687874>,  <32.105103, 33.218925, 44.740566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967926, 33.408676, 44.687874>,  <31.739298, 33.724930, 44.600052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967926, 33.408676, 44.687874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012905, -0.276196, -0.961015,
		0.820450, 0.546456, -0.168069,
		0.571572, -0.790634, 0.219553,
		32.139397, 33.171486, 44.753738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.305840, 33.784149, 44.148479>,  <31.739298, 33.724930, 44.600052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.305840, 33.784149, 44.148479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.233429, 33.405071, 44.253635>,  <32.189983, 33.177624, 44.316727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.233429, 33.405071, 44.253635>,  <32.305840, 33.784149, 44.148479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.233429, 33.405071, 44.253635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037303, -0.273728, -0.961083,
		0.982771, -0.164171, 0.084903,
		-0.181022, -0.947692, 0.262888,
		32.179123, 33.120762, 44.332500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.812733, 33.380451, 43.780197>,  <32.305840, 33.784149, 44.148479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.812733, 33.380451, 43.780197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511932, 33.141331, 43.891281>,  <32.331451, 32.997856, 43.957932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511932, 33.141331, 43.891281>,  <32.812733, 33.380451, 43.780197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511932, 33.141331, 43.891281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052693, -0.365445, -0.929340,
		0.657051, -0.713500, 0.243315,
		-0.752002, -0.597803, 0.277712,
		32.286331, 32.961990, 43.974594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.743729, 33.071175, 43.158932>,  <32.812733, 33.380451, 43.780197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.743729, 33.071175, 43.158932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.416019, 32.977760, 43.368412>,  <32.219395, 32.921711, 43.494099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.416019, 32.977760, 43.368412>,  <32.743729, 33.071175, 43.158932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.416019, 32.977760, 43.368412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446854, -0.312303, -0.838325,
		0.359329, -0.920830, 0.151504,
		-0.819270, -0.233534, 0.523696,
		32.170238, 32.907700, 43.525520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426025, 32.490868, 42.794960>,  <32.743729, 33.071175, 43.158932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426025, 32.490868, 42.794960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111217, 32.586510, 43.022446>,  <31.922333, 32.643894, 43.158936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111217, 32.586510, 43.022446>,  <32.426025, 32.490868, 42.794960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.111217, 32.586510, 43.022446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615071, -0.232545, -0.753399,
		-0.047887, -0.942737, 0.330081,
		-0.787017, 0.239101, 0.568714,
		31.875113, 32.658241, 43.193058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.951151, 31.835655, 42.834518>,  <32.426025, 32.490868, 42.794960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.951151, 31.835655, 42.834518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.765272, 32.183380, 42.901871>,  <31.653744, 32.392014, 42.942284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.765272, 32.183380, 42.901871>,  <31.951151, 31.835655, 42.834518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.765272, 32.183380, 42.901871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659423, -0.212844, -0.721012,
		-0.590946, -0.446087, 0.672153,
		-0.464698, 0.869312, 0.168381,
		31.625862, 32.444172, 42.952385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.301895, 31.634865, 42.787556>,  <31.951151, 31.835655, 42.834518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.301895, 31.634865, 42.787556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.300079, 32.031448, 42.735424>,  <31.298990, 32.269398, 42.704144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.300079, 32.031448, 42.735424>,  <31.301895, 31.634865, 42.787556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.300079, 32.031448, 42.735424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608181, -0.106193, -0.786663,
		-0.793785, 0.075692, 0.603470,
		-0.004540, 0.991461, -0.130329,
		31.298717, 32.328888, 42.696327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.676691, 31.800129, 42.622231>,  <31.301895, 31.634865, 42.787556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.676691, 31.800129, 42.622231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.870565, 32.123497, 42.488640>,  <30.986891, 32.317516, 42.408485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.870565, 32.123497, 42.488640>,  <30.676691, 31.800129, 42.622231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.870565, 32.123497, 42.488640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581494, 0.012581, -0.813454,
		-0.653409, 0.588473, 0.476188,
		0.484687, 0.808419, -0.333973,
		31.015972, 32.366024, 42.388447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.196465, 32.163704, 42.350430>,  <30.676691, 31.800129, 42.622231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.196465, 32.163704, 42.350430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.512531, 32.313602, 42.156441>,  <30.702171, 32.403542, 42.040047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.512531, 32.313602, 42.156441>,  <30.196465, 32.163704, 42.350430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.512531, 32.313602, 42.156441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567236, 0.147478, -0.810243,
		-0.232113, 0.915323, 0.329102,
		0.790169, 0.374747, -0.484973,
		30.749582, 32.426025, 42.010948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.063583, 32.807140, 42.159840>,  <30.196465, 32.163704, 42.350430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.063583, 32.807140, 42.159840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.361391, 32.689476, 41.920120>,  <30.540075, 32.618877, 41.776287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.361391, 32.689476, 41.920120>,  <30.063583, 32.807140, 42.159840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.361391, 32.689476, 41.920120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548224, 0.242888, -0.800285,
		0.380975, 0.924378, 0.019569,
		0.744519, -0.294160, -0.599301,
		30.584747, 32.601227, 41.740330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.103237, 33.410412, 41.695107>,  <30.063583, 32.807140, 42.159840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.103237, 33.410412, 41.695107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.293669, 33.112621, 41.507874>,  <30.407928, 32.933949, 41.395535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.293669, 33.112621, 41.507874>,  <30.103237, 33.410412, 41.695107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.293669, 33.112621, 41.507874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383126, 0.303513, -0.872407,
		0.791557, 0.594670, -0.140732,
		0.476080, -0.744478, -0.468082,
		30.436493, 32.889278, 41.367451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.305651, 33.657501, 40.944889>,  <30.103237, 33.410412, 41.695107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.305651, 33.657501, 40.944889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.351213, 33.262066, 40.905468>,  <30.378551, 33.024803, 40.881817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.351213, 33.262066, 40.905468>,  <30.305651, 33.657501, 40.944889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.351213, 33.262066, 40.905468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404792, 0.044406, -0.913330,
		0.907287, 0.143924, -0.395116,
		0.113905, -0.988592, -0.098549,
		30.385386, 32.965488, 40.875904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.582018, 33.561565, 40.235588>,  <30.305651, 33.657501, 40.944889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.582018, 33.561565, 40.235588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.440990, 33.207630, 40.357414>,  <30.356375, 32.995270, 40.430511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.440990, 33.207630, 40.357414>,  <30.582018, 33.561565, 40.235588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.440990, 33.207630, 40.357414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398561, -0.152483, -0.904377,
		0.846667, -0.440242, -0.298901,
		-0.352568, -0.884837, 0.304566,
		30.335220, 32.942181, 40.448784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.753107, 33.139187, 39.689823>,  <30.582018, 33.561565, 40.235588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.753107, 33.139187, 39.689823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.442242, 32.960819, 39.867443>,  <30.255722, 32.853798, 39.974014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.442242, 32.960819, 39.867443>,  <30.753107, 33.139187, 39.689823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.442242, 32.960819, 39.867443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339698, -0.296718, -0.892504,
		0.529741, -0.844461, 0.079120,
		-0.777161, -0.445920, 0.444045,
		30.209093, 32.827045, 40.000656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.759523, 32.512917, 39.382038>,  <30.753107, 33.139187, 39.689823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.759523, 32.512917, 39.382038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.390602, 32.578358, 39.522087>,  <30.169249, 32.617622, 39.606117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.390602, 32.578358, 39.522087>,  <30.759523, 32.512917, 39.382038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.390602, 32.578358, 39.522087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376680, -0.178010, -0.909079,
		-0.086399, -0.970334, 0.225804,
		-0.922306, 0.163600, 0.350125,
		30.113911, 32.627438, 39.627125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.346617, 31.862404, 39.356403>,  <30.759523, 32.512917, 39.382038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.346617, 31.862404, 39.356403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.072615, 32.153130, 39.376434>,  <29.908215, 32.327564, 39.388454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.072615, 32.153130, 39.376434>,  <30.346617, 31.862404, 39.356403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.072615, 32.153130, 39.376434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430276, -0.348136, -0.832865,
		-0.587905, -0.592063, 0.551206,
		-0.685003, 0.726817, 0.050080,
		29.867113, 32.371174, 39.391457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.752878, 31.539272, 39.100296>,  <30.346617, 31.862404, 39.356403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.752878, 31.539272, 39.100296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.635599, 31.921116, 39.079311>,  <29.565231, 32.150223, 39.066719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.635599, 31.921116, 39.079311>,  <29.752878, 31.539272, 39.100296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.635599, 31.921116, 39.079311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426654, -0.179755, -0.886372,
		-0.855570, -0.237500, 0.459992,
		-0.293199, 0.954611, -0.052462,
		29.547640, 32.207500, 39.063572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.018705, 31.597769, 38.982895>,  <29.752878, 31.539272, 39.100296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.018705, 31.597769, 38.982895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.193850, 31.924438, 38.832523>,  <29.298937, 32.120441, 38.742302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.193850, 31.924438, 38.832523>,  <29.018705, 31.597769, 38.982895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.193850, 31.924438, 38.832523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429127, -0.177583, -0.885615,
		-0.790017, 0.549097, 0.272700,
		0.437862, 0.816674, -0.375926,
		29.325209, 32.169441, 38.719746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.444389, 32.072895, 38.619221>,  <29.018705, 31.597769, 38.982895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.444389, 32.072895, 38.619221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.814075, 32.157990, 38.492367>,  <29.035887, 32.209045, 38.416256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.814075, 32.157990, 38.492367>,  <28.444389, 32.072895, 38.619221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.814075, 32.157990, 38.492367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296477, -0.123697, -0.946995,
		-0.240686, 0.969249, -0.051252,
		0.924214, 0.212733, -0.317132,
		29.091339, 32.221809, 38.397228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.346909, 32.458439, 38.030548>,  <28.444389, 32.072895, 38.619221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.346909, 32.458439, 38.030548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.734911, 32.381126, 37.971577>,  <28.967712, 32.334740, 37.936195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.734911, 32.381126, 37.971577>,  <28.346909, 32.458439, 38.030548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.734911, 32.381126, 37.971577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152331, -0.010692, -0.988272,
		0.189437, 0.981085, -0.039814,
		0.970005, -0.193280, -0.147424,
		29.025913, 32.323143, 37.927349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.658649, 33.036354, 37.620060>,  <28.346909, 32.458439, 38.030548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.658649, 33.036354, 37.620060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.881912, 32.711868, 37.550323>,  <29.015869, 32.517178, 37.508480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.881912, 32.711868, 37.550323>,  <28.658649, 33.036354, 37.620060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.881912, 32.711868, 37.550323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219078, 0.058583, -0.973947,
		0.800291, 0.581811, -0.145020,
		0.558158, -0.811211, -0.174345,
		29.049360, 32.468506, 37.498020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.040024, 33.151340, 37.001247>,  <28.658649, 33.036354, 37.620060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.040024, 33.151340, 37.001247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.089338, 32.756413, 37.041245>,  <29.118927, 32.519455, 37.065243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.089338, 32.756413, 37.041245>,  <29.040024, 33.151340, 37.001247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.089338, 32.756413, 37.041245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158277, -0.119036, -0.980193,
		0.979668, 0.105016, -0.170945,
		0.123285, -0.987321, 0.099994,
		29.126324, 32.460217, 37.071243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.486929, 32.935959, 36.344723>,  <29.040024, 33.151340, 37.001247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.486929, 32.935959, 36.344723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.289713, 32.626472, 36.503860>,  <29.171383, 32.440781, 36.599342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.289713, 32.626472, 36.503860>,  <29.486929, 32.935959, 36.344723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.289713, 32.626472, 36.503860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208306, -0.339004, -0.917434,
		0.844701, -0.535204, 0.005973,
		-0.493039, -0.773713, 0.397843,
		29.141802, 32.394360, 36.623215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.784163, 32.287582, 36.015602>,  <29.486929, 32.935959, 36.344723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.784163, 32.287582, 36.015602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.414762, 32.183670, 36.128494>,  <29.193123, 32.121323, 36.196232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.414762, 32.183670, 36.128494>,  <29.784163, 32.287582, 36.015602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.414762, 32.183670, 36.128494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210421, -0.272100, -0.938981,
		0.320729, -0.926538, 0.196620,
		-0.923502, -0.259786, 0.282234,
		29.137712, 32.105736, 36.213165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.574696, 31.655121, 35.677238>,  <29.784163, 32.287582, 36.015602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.574696, 31.655121, 35.677238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.256378, 31.875669, 35.777401>,  <29.065388, 32.007999, 35.837498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.256378, 31.875669, 35.777401>,  <29.574696, 31.655121, 35.677238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.256378, 31.875669, 35.777401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297989, 0.003427, -0.954563,
		-0.527178, -0.834252, 0.161576,
		-0.795792, 0.551372, 0.250405,
		29.017641, 32.041080, 35.852524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.559000, 31.010851, 35.286850>,  <29.574696, 31.655121, 35.677238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.559000, 31.010851, 35.286850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.802334, 30.741919, 35.118137>,  <29.948334, 30.580559, 35.016911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.802334, 30.741919, 35.118137>,  <29.559000, 31.010851, 35.286850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.802334, 30.741919, 35.118137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612334, 0.059471, 0.788359,
		-0.504954, -0.737858, 0.447869,
		0.608333, -0.672331, -0.421786,
		29.984833, 30.540220, 34.991600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.468332, 30.413412, 35.698734>,  <29.559000, 31.010851, 35.286850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.468332, 30.413412, 35.698734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.811102, 30.495190, 35.509468>,  <30.016764, 30.544256, 35.395908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.811102, 30.495190, 35.509468>,  <29.468332, 30.413412, 35.698734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.811102, 30.495190, 35.509468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507410, -0.173134, 0.844132,
		0.090658, -0.963445, -0.252099,
		0.856923, 0.204445, -0.473166,
		30.068178, 30.556522, 35.367519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.077730, 29.917645, 35.929619>,  <29.468332, 30.413412, 35.698734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.077730, 29.917645, 35.929619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.293659, 30.219566, 35.780563>,  <30.423218, 30.400719, 35.691128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.293659, 30.219566, 35.780563>,  <30.077730, 29.917645, 35.929619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.293659, 30.219566, 35.780563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678296, -0.127882, 0.723575,
		0.498503, -0.643364, -0.581014,
		0.539824, 0.754804, -0.372642,
		30.455606, 30.446007, 35.668770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.785938, 29.664070, 35.943287>,  <30.077730, 29.917645, 35.929619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.785938, 29.664070, 35.943287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.809546, 30.062551, 35.917683>,  <30.823709, 30.301640, 35.902321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.809546, 30.062551, 35.917683>,  <30.785938, 29.664070, 35.943287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.809546, 30.062551, 35.917683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789604, -0.007354, 0.613572,
		0.610771, -0.086752, -0.787040,
		0.059017, 0.996203, -0.064008,
		30.827251, 30.361412, 35.898479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.517544, 29.809505, 35.993721>,  <30.785938, 29.664070, 35.943287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.517544, 29.809505, 35.993721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.373873, 30.172832, 36.079468>,  <31.287670, 30.390829, 36.130917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.373873, 30.172832, 36.079468>,  <31.517544, 29.809505, 35.993721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.373873, 30.172832, 36.079468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709717, 0.116677, 0.694758,
		0.606048, 0.401682, -0.686555,
		-0.359177, 0.908316, 0.214368,
		31.266119, 30.445328, 36.143780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.137299, 30.270454, 36.093204>,  <31.517544, 29.809505, 35.993721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.137299, 30.270454, 36.093204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.833473, 30.424837, 36.302624>,  <31.651178, 30.517467, 36.428276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.833473, 30.424837, 36.302624>,  <32.137299, 30.270454, 36.093204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.833473, 30.424837, 36.302624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620114, 0.186826, 0.761941,
		0.196265, 0.903401, -0.381243,
		-0.759565, 0.385956, 0.523544,
		31.605604, 30.540625, 36.459686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400143, 30.889137, 36.367813>,  <32.137299, 30.270454, 36.093204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400143, 30.889137, 36.367813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.065720, 30.822826, 36.577011>,  <31.865065, 30.783039, 36.702530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.065720, 30.822826, 36.577011>,  <32.400143, 30.889137, 36.367813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.065720, 30.822826, 36.577011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475321, 0.257202, 0.841378,
		-0.273998, 0.952032, -0.136238,
		-0.836059, -0.165780, 0.522993,
		31.814901, 30.773092, 36.733910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.405666, 31.390812, 36.788021>,  <32.400143, 30.889137, 36.367813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.405666, 31.390812, 36.788021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.152054, 31.129940, 36.954231>,  <31.999886, 30.973417, 37.053955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.152054, 31.129940, 36.954231>,  <32.405666, 31.390812, 36.788021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.152054, 31.129940, 36.954231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333326, 0.254364, 0.907851,
		-0.697778, 0.714113, 0.056114,
		-0.634035, -0.652182, 0.415522,
		31.961843, 30.934286, 37.078888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207729, 31.743797, 37.337029>,  <32.405666, 31.390812, 36.788021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207729, 31.743797, 37.337029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114147, 31.363731, 37.419445>,  <32.057999, 31.135693, 37.468895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114147, 31.363731, 37.419445>,  <32.207729, 31.743797, 37.337029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114147, 31.363731, 37.419445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344263, 0.117228, 0.931526,
		-0.909256, 0.288870, 0.299680,
		-0.233959, -0.950164, 0.206037,
		32.043961, 31.078682, 37.481255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.980934, 31.771843, 38.056717>,  <32.207729, 31.743797, 37.337029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.980934, 31.771843, 38.056717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.081589, 31.387100, 38.013794>,  <32.141979, 31.156256, 37.988041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.081589, 31.387100, 38.013794>,  <31.980934, 31.771843, 38.056717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.081589, 31.387100, 38.013794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347482, -0.013691, 0.937587,
		-0.903292, -0.273215, 0.330782,
		0.251634, -0.961855, -0.107305,
		32.157078, 31.098543, 37.981602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.791334, 31.487110, 38.628365>,  <31.980934, 31.771843, 38.056717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.791334, 31.487110, 38.628365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047897, 31.204039, 38.509850>,  <32.201836, 31.034195, 38.438740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047897, 31.204039, 38.509850>,  <31.791334, 31.487110, 38.628365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047897, 31.204039, 38.509850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394119, -0.027406, 0.918651,
		-0.658232, -0.706000, 0.261333,
		0.641405, -0.707681, -0.296287,
		32.240318, 30.991734, 38.420963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.733566, 30.959381, 39.129215>,  <31.791334, 31.487110, 38.628365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.733566, 30.959381, 39.129215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.090725, 30.922304, 38.952969>,  <32.305019, 30.900059, 38.847221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.090725, 30.922304, 38.952969>,  <31.733566, 30.959381, 39.129215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.090725, 30.922304, 38.952969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411676, -0.228301, 0.882271,
		-0.182374, -0.969168, -0.165690,
		0.892895, -0.092692, -0.440619,
		32.358593, 30.894497, 38.820782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.981750, 30.355474, 39.442642>,  <31.733566, 30.959381, 39.129215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.981750, 30.355474, 39.442642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290653, 30.551373, 39.280769>,  <32.475994, 30.668911, 39.183647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290653, 30.551373, 39.280769>,  <31.981750, 30.355474, 39.442642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.290653, 30.551373, 39.280769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474209, -0.020467, 0.880174,
		0.422780, -0.871624, -0.248048,
		0.772258, 0.489747, -0.404680,
		32.522331, 30.698296, 39.159367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645332, 30.048738, 39.709034>,  <31.981750, 30.355474, 39.442642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645332, 30.048738, 39.709034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.731190, 30.428188, 39.616047>,  <32.782703, 30.655859, 39.560257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.731190, 30.428188, 39.616047>,  <32.645332, 30.048738, 39.709034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731190, 30.428188, 39.616047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438147, 0.119197, 0.890966,
		0.872901, -0.293091, -0.390053,
		0.214641, 0.948626, -0.232464,
		32.795582, 30.712776, 39.546307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306099, 30.156912, 40.083511>,  <32.645332, 30.048738, 39.709034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306099, 30.156912, 40.083511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187710, 30.524935, 39.980831>,  <33.116676, 30.745749, 39.919224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187710, 30.524935, 39.980831>,  <33.306099, 30.156912, 40.083511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187710, 30.524935, 39.980831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156315, 0.311768, 0.937212,
		0.942319, 0.237265, -0.236094,
		-0.295974, 0.920058, -0.256697,
		33.098919, 30.800953, 39.903824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820141, 30.577480, 40.350464>,  <33.306099, 30.156912, 40.083511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820141, 30.577480, 40.350464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.495907, 30.807220, 40.304733>,  <33.301365, 30.945065, 40.277294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.495907, 30.807220, 40.304733>,  <33.820141, 30.577480, 40.350464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495907, 30.807220, 40.304733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052305, 0.265447, 0.962706,
		0.583280, 0.774375, -0.245209,
		-0.810586, 0.574352, -0.114326,
		33.252731, 30.979527, 40.270435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058350, 31.204390, 40.515369>,  <33.820141, 30.577480, 40.350464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058350, 31.204390, 40.515369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.665924, 31.211630, 40.592499>,  <33.430470, 31.215975, 40.638775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.665924, 31.211630, 40.592499>,  <34.058350, 31.204390, 40.515369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665924, 31.211630, 40.592499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179767, 0.455502, 0.871895,
		-0.072045, 0.890051, -0.450133,
		-0.981067, 0.018103, 0.192819,
		33.371605, 31.217060, 40.650345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067879, 31.803148, 40.925648>,  <34.058350, 31.204390, 40.515369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067879, 31.803148, 40.925648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711922, 31.622339, 40.950199>,  <33.498348, 31.513853, 40.964931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711922, 31.622339, 40.950199>,  <34.067879, 31.803148, 40.925648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711922, 31.622339, 40.950199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068411, 0.265273, 0.961743,
		-0.451013, 0.851648, -0.266988,
		-0.889892, -0.452024, 0.061379,
		33.444954, 31.486732, 40.968613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583992, 32.271801, 41.063400>,  <34.067879, 31.803148, 40.925648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583992, 32.271801, 41.063400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507854, 31.908619, 41.212738>,  <33.462173, 31.690710, 41.302341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507854, 31.908619, 41.212738>,  <33.583992, 32.271801, 41.063400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507854, 31.908619, 41.212738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137053, 0.351997, 0.925913,
		-0.972104, 0.227409, 0.057438,
		-0.190343, -0.907956, 0.373345,
		33.450752, 31.636232, 41.324741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243568, 32.344193, 41.722782>,  <33.583992, 32.271801, 41.063400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243568, 32.344193, 41.722782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327404, 31.954742, 41.758823>,  <33.377705, 31.721071, 41.780449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327404, 31.954742, 41.758823>,  <33.243568, 32.344193, 41.722782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327404, 31.954742, 41.758823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103702, 0.113764, 0.988081,
		-0.972274, -0.197749, 0.124811,
		0.209591, -0.973629, 0.090103,
		33.390282, 31.662653, 41.785854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947945, 32.201714, 42.363716>,  <33.243568, 32.344193, 41.722782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947945, 32.201714, 42.363716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180573, 31.883303, 42.296638>,  <33.320148, 31.692257, 42.256390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180573, 31.883303, 42.296638>,  <32.947945, 32.201714, 42.363716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180573, 31.883303, 42.296638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239973, -0.029101, 0.970344,
		-0.777300, -0.604561, 0.174101,
		0.581565, -0.796027, -0.167698,
		33.355042, 31.644495, 42.246330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757172, 31.667139, 42.858696>,  <32.947945, 32.201714, 42.363716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.757172, 31.667139, 42.858696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.131874, 31.593365, 42.739723>,  <33.356697, 31.549101, 42.668339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.131874, 31.593365, 42.739723>,  <32.757172, 31.667139, 42.858696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131874, 31.593365, 42.739723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277148, -0.128030, 0.952259,
		-0.213712, -0.974470, -0.068817,
		0.936759, -0.184437, -0.297434,
		33.412903, 31.538034, 42.650494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061737, 31.094286, 43.296822>,  <32.757172, 31.667139, 42.858696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.061737, 31.094286, 43.296822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385300, 31.273312, 43.144318>,  <33.579437, 31.380728, 43.052814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385300, 31.273312, 43.144318>,  <33.061737, 31.094286, 43.296822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385300, 31.273312, 43.144318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370144, 0.116169, 0.921682,
		0.456803, -0.886674, -0.071694,
		0.808903, 0.447564, -0.381264,
		33.627972, 31.407581, 43.029938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629147, 30.848185, 43.606178>,  <33.061737, 31.094286, 43.296822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629147, 30.848185, 43.606178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.779247, 31.181225, 43.443226>,  <33.869308, 31.381048, 43.345455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.779247, 31.181225, 43.443226>,  <33.629147, 30.848185, 43.606178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779247, 31.181225, 43.443226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433184, 0.231030, 0.871193,
		0.819474, -0.503390, -0.273974,
		0.375253, 0.832601, -0.407383,
		33.891823, 31.431005, 43.321011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261894, 30.816343, 43.954128>,  <33.629147, 30.848185, 43.606178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261894, 30.816343, 43.954128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206318, 31.175077, 43.786137>,  <34.172974, 31.390318, 43.685341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206318, 31.175077, 43.786137>,  <34.261894, 30.816343, 43.954128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206318, 31.175077, 43.786137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436866, 0.436102, 0.786742,
		0.888732, -0.074165, -0.452388,
		-0.138939, 0.896836, -0.419978,
		34.164635, 31.444128, 43.660145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879986, 31.239479, 44.042526>,  <34.261894, 30.816343, 43.954128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879986, 31.239479, 44.042526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611897, 31.530056, 43.981762>,  <34.451042, 31.704403, 43.945305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611897, 31.530056, 43.981762>,  <34.879986, 31.239479, 44.042526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611897, 31.530056, 43.981762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369069, 0.503822, 0.780994,
		0.643882, 0.467380, -0.605782,
		-0.670227, 0.726443, -0.151907,
		34.410828, 31.747990, 43.936192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231827, 31.956766, 44.037418>,  <34.879986, 31.239479, 44.042526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.231827, 31.956766, 44.037418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.851864, 32.028946, 44.139496>,  <34.623886, 32.072254, 44.200741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.851864, 32.028946, 44.139496>,  <35.231827, 31.956766, 44.037418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.851864, 32.028946, 44.139496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309376, 0.658863, 0.685701,
		-0.044401, 0.730299, -0.681683,
		-0.949903, 0.180450, 0.255191,
		34.566895, 32.083080, 44.216053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004246, 32.632893, 43.875462>,  <35.231827, 31.956766, 44.037418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.004246, 32.632893, 43.875462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825809, 32.505325, 44.209957>,  <34.718750, 32.428783, 44.410656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825809, 32.505325, 44.209957>,  <35.004246, 32.632893, 43.875462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825809, 32.505325, 44.209957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387164, 0.773642, 0.501579,
		-0.806913, 0.547510, -0.221638,
		-0.446089, -0.318921, 0.836238,
		34.691982, 32.409649, 44.460827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941296, 33.303722, 44.224663>,  <35.004246, 32.632893, 43.875462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.941296, 33.303722, 44.224663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849010, 33.009975, 44.479996>,  <34.793640, 32.833725, 44.633198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849010, 33.009975, 44.479996>,  <34.941296, 33.303722, 44.224663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849010, 33.009975, 44.479996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174914, 0.614046, 0.769644,
		-0.957171, 0.289221, -0.013217,
		-0.230714, -0.734369, 0.638336,
		34.779797, 32.789665, 44.671497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453575, 33.611351, 44.587532>,  <34.941296, 33.303722, 44.224663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453575, 33.611351, 44.587532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575790, 33.305332, 44.814285>,  <34.649120, 33.121723, 44.950336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575790, 33.305332, 44.814285>,  <34.453575, 33.611351, 44.587532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575790, 33.305332, 44.814285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156595, 0.627618, 0.762609,
		-0.939215, -0.144235, 0.311563,
		0.305537, -0.765043, 0.566882,
		34.667450, 33.075821, 44.984348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228004, 33.784435, 45.207260>,  <34.453575, 33.611351, 44.587532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228004, 33.784435, 45.207260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509678, 33.518311, 45.306446>,  <34.678680, 33.358635, 45.365955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509678, 33.518311, 45.306446>,  <34.228004, 33.784435, 45.207260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509678, 33.518311, 45.306446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289887, 0.588204, 0.754971,
		-0.648144, -0.459757, 0.607069,
		0.704184, -0.665312, 0.247963,
		34.720932, 33.318718, 45.380836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.208858, 33.706139, 45.944519>,  <34.228004, 33.784435, 45.207260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.208858, 33.706139, 45.944519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.578636, 33.578026, 45.861736>,  <34.800503, 33.501160, 45.812065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.578636, 33.578026, 45.861736>,  <34.208858, 33.706139, 45.944519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578636, 33.578026, 45.861736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354868, 0.523924, 0.774321,
		-0.139570, -0.789255, 0.597993,
		0.924440, -0.320281, -0.206957,
		34.855968, 33.481941, 45.799648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506748, 33.460392, 46.646770>,  <34.208858, 33.706139, 45.944519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506748, 33.460392, 46.646770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823063, 33.517414, 46.408665>,  <35.012852, 33.551628, 46.265800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823063, 33.517414, 46.408665>,  <34.506748, 33.460392, 46.646770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823063, 33.517414, 46.408665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486143, 0.444628, 0.752311,
		0.371916, -0.884298, 0.282303,
		0.790787, 0.142557, -0.595259,
		35.060299, 33.560181, 46.230087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119957, 33.245178, 47.016941>,  <34.506748, 33.460392, 46.646770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119957, 33.245178, 47.016941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.237732, 33.492931, 46.725826>,  <35.308399, 33.641582, 46.551159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.237732, 33.492931, 46.725826>,  <35.119957, 33.245178, 47.016941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237732, 33.492931, 46.725826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487021, 0.557988, 0.671908,
		0.822262, -0.552284, -0.137357,
		0.294441, 0.619380, -0.727786,
		35.326065, 33.678745, 46.507492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832184, 33.553383, 47.187202>,  <35.119957, 33.245178, 47.016941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832184, 33.553383, 47.187202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691681, 33.822647, 46.926903>,  <35.607380, 33.984203, 46.770721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691681, 33.822647, 46.926903>,  <35.832184, 33.553383, 47.187202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691681, 33.822647, 46.926903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310443, 0.739458, 0.597350,
		0.883314, 0.007803, -0.468717,
		-0.351258, 0.673157, -0.650751,
		35.586304, 34.024593, 46.731678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459927, 33.901756, 46.980396>,  <35.832184, 33.553383, 47.187202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459927, 33.901756, 46.980396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.138592, 34.132561, 46.921471>,  <35.945789, 34.271046, 46.886116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.138592, 34.132561, 46.921471>,  <36.459927, 33.901756, 46.980396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138592, 34.132561, 46.921471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504058, 0.790553, 0.347780,
		0.317132, 0.205132, -0.925931,
		-0.803338, 0.577016, -0.147311,
		35.897591, 34.305664, 46.877277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774487, 34.468124, 46.725014>,  <36.459927, 33.901756, 46.980396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774487, 34.468124, 46.725014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.419640, 34.589108, 46.864468>,  <36.206734, 34.661697, 46.948139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.419640, 34.589108, 46.864468>,  <36.774487, 34.468124, 46.725014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419640, 34.589108, 46.864468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443788, 0.766505, 0.464244,
		-0.126817, 0.566557, -0.814205,
		-0.887113, 0.302461, 0.348637,
		36.153507, 34.679844, 46.969059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778454, 35.174141, 46.748558>,  <36.774487, 34.468124, 46.725014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778454, 35.174141, 46.748558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495323, 35.053188, 47.003914>,  <36.325443, 34.980618, 47.157127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495323, 35.053188, 47.003914>,  <36.778454, 35.174141, 46.748558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495323, 35.053188, 47.003914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310114, 0.678973, 0.665451,
		-0.634672, 0.668999, -0.386823,
		-0.707829, -0.302384, 0.638391,
		36.282974, 34.962475, 47.195431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466366, 35.827320, 47.111568>,  <36.778454, 35.174141, 46.748558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466366, 35.827320, 47.111568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.447144, 35.485451, 47.318340>,  <36.435612, 35.280327, 47.442406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.447144, 35.485451, 47.318340>,  <36.466366, 35.827320, 47.111568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447144, 35.485451, 47.318340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394677, 0.459170, 0.795860,
		-0.917563, 0.242267, 0.315255,
		-0.048055, -0.854675, 0.516934,
		36.432728, 35.229050, 47.473419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018280, 36.421764, 47.196651>,  <36.466366, 35.827320, 47.111568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018280, 36.421764, 47.196651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294758, 36.706459, 47.146549>,  <36.460644, 36.877274, 47.116489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294758, 36.706459, 47.146549>,  <36.018280, 36.421764, 47.196651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294758, 36.706459, 47.146549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327675, 0.154179, -0.932126,
		-0.644112, 0.685322, 0.339784,
		0.691194, 0.711732, -0.125254,
		36.502117, 36.919979, 47.108974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694691, 37.014805, 46.941677>,  <36.018280, 36.421764, 47.196651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694691, 37.014805, 46.941677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082687, 37.012707, 46.844440>,  <36.315483, 37.011448, 46.786098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082687, 37.012707, 46.844440>,  <35.694691, 37.014805, 46.941677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082687, 37.012707, 46.844440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242814, 0.031766, -0.969553,
		0.012807, 0.999482, 0.029539,
		0.969988, -0.005244, -0.243094,
		36.373684, 37.011135, 46.771511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768501, 37.677074, 46.576996>,  <35.694691, 37.014805, 46.941677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768501, 37.677074, 46.576996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.051266, 37.414200, 46.472393>,  <36.220924, 37.256474, 46.409630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.051266, 37.414200, 46.472393>,  <35.768501, 37.677074, 46.576996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051266, 37.414200, 46.472393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405574, -0.073722, -0.911085,
		0.579475, 0.750113, -0.318653,
		0.706908, -0.657187, -0.261507,
		36.263340, 37.217045, 46.393940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043957, 37.856716, 45.882217>,  <35.768501, 37.677074, 46.576996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043957, 37.856716, 45.882217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.086349, 37.464153, 45.946232>,  <36.111786, 37.228615, 45.984638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.086349, 37.464153, 45.946232>,  <36.043957, 37.856716, 45.882217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086349, 37.464153, 45.946232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602390, -0.191415, -0.774911,
		0.791135, -0.014272, -0.611476,
		0.105986, -0.981406, 0.160032,
		36.118145, 37.169731, 45.994240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209137, 37.645779, 45.273579>,  <36.043957, 37.856716, 45.882217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209137, 37.645779, 45.273579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100128, 37.314323, 45.469166>,  <36.034721, 37.115452, 45.586517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100128, 37.314323, 45.469166>,  <36.209137, 37.645779, 45.273579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100128, 37.314323, 45.469166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465060, -0.331447, -0.820891,
		0.842289, -0.451112, -0.295039,
		-0.272524, -0.828638, 0.488968,
		36.018372, 37.065731, 45.615856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271736, 37.097408, 44.786720>,  <36.209137, 37.645779, 45.273579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271736, 37.097408, 44.786720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.035545, 36.930698, 45.063164>,  <35.893829, 36.830673, 45.229031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.035545, 36.930698, 45.063164>,  <36.271736, 37.097408, 44.786720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035545, 36.930698, 45.063164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530973, -0.444286, -0.721580,
		0.607785, -0.793040, 0.041048,
		-0.590478, -0.416771, 0.691113,
		35.858402, 36.805668, 45.270496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071262, 36.457142, 44.460640>,  <36.271736, 37.097408, 44.786720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071262, 36.457142, 44.460640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.790482, 36.485832, 44.744080>,  <35.622013, 36.503044, 44.914143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.790482, 36.485832, 44.744080>,  <36.071262, 36.457142, 44.460640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790482, 36.485832, 44.744080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707963, -0.178930, -0.683208,
		0.077790, -0.981244, 0.176377,
		-0.701953, 0.071722, 0.708603,
		35.579895, 36.507347, 44.956661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648254, 35.827156, 44.349216>,  <36.071262, 36.457142, 44.460640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648254, 35.827156, 44.349216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.456425, 36.131496, 44.524086>,  <35.341328, 36.314098, 44.629009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.456425, 36.131496, 44.524086>,  <35.648254, 35.827156, 44.349216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.456425, 36.131496, 44.524086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752560, -0.100389, -0.650826,
		-0.451293, -0.641116, 0.620729,
		-0.479570, 0.760849, 0.437173,
		35.312553, 36.359753, 44.655239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.049431, 35.580605, 44.210941>,  <35.648254, 35.827156, 44.349216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.049431, 35.580605, 44.210941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987206, 35.965942, 44.298363>,  <34.949871, 36.197144, 44.350815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987206, 35.965942, 44.298363>,  <35.049431, 35.580605, 44.210941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987206, 35.965942, 44.298363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693253, 0.051145, -0.718878,
		-0.703706, -0.263342, 0.659886,
		-0.155561, 0.963346, 0.218553,
		34.940536, 36.254948, 44.363930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402344, 35.555553, 44.482994>,  <35.049431, 35.580605, 44.210941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402344, 35.555553, 44.482994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491707, 35.928120, 44.368065>,  <34.545322, 36.151661, 44.299107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491707, 35.928120, 44.368065>,  <34.402344, 35.555553, 44.482994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491707, 35.928120, 44.368065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837318, 0.032480, -0.545751,
		-0.498989, 0.362504, 0.787147,
		0.223403, 0.931417, -0.287324,
		34.558727, 36.207546, 44.281868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785076, 35.917782, 44.600010>,  <34.402344, 35.555553, 44.482994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785076, 35.917782, 44.600010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996086, 36.122555, 44.328823>,  <34.122692, 36.245419, 44.166111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996086, 36.122555, 44.328823>,  <33.785076, 35.917782, 44.600010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996086, 36.122555, 44.328823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757172, -0.078558, -0.648474,
		-0.385233, 0.855428, 0.346177,
		0.527528, 0.511930, -0.677969,
		34.154343, 36.276134, 44.125431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341366, 36.075005, 44.129589>,  <33.785076, 35.917782, 44.600010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341366, 36.075005, 44.129589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.664368, 36.178299, 43.917458>,  <33.858170, 36.240276, 43.790180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.664368, 36.178299, 43.917458>,  <33.341366, 36.075005, 44.129589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664368, 36.178299, 43.917458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428200, -0.361708, -0.828138,
		-0.405681, 0.895812, -0.181503,
		0.807507, 0.258241, -0.530325,
		33.906620, 36.255772, 43.758362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170753, 36.495327, 43.523212>,  <33.341366, 36.075005, 44.129589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170753, 36.495327, 43.523212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527004, 36.338341, 43.431347>,  <33.740757, 36.244148, 43.376228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527004, 36.338341, 43.431347>,  <33.170753, 36.495327, 43.523212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527004, 36.338341, 43.431347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390629, -0.401780, -0.828240,
		0.232783, 0.827370, -0.511147,
		0.890629, -0.392469, -0.229667,
		33.794193, 36.220600, 43.362446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400787, 36.670765, 42.860321>,  <33.170753, 36.495327, 43.523212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400787, 36.670765, 42.860321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643414, 36.354240, 42.891029>,  <33.788990, 36.164326, 42.909454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643414, 36.354240, 42.891029>,  <33.400787, 36.670765, 42.860321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643414, 36.354240, 42.891029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411334, -0.394998, -0.821450,
		0.680351, 0.466688, -0.565089,
		0.606570, -0.791314, 0.076773,
		33.825386, 36.116844, 42.914062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.588104, 36.537601, 42.124283>,  <33.400787, 36.670765, 42.860321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.588104, 36.537601, 42.124283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660378, 36.195084, 42.317822>,  <33.703743, 35.989571, 42.433945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660378, 36.195084, 42.317822>,  <33.588104, 36.537601, 42.124283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660378, 36.195084, 42.317822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228903, -0.515044, -0.826035,
		0.956534, 0.038496, -0.289069,
		0.180682, -0.856299, 0.483845,
		33.714581, 35.938194, 42.462975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154808, 36.191113, 41.796989>,  <33.588104, 36.537601, 42.124283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154808, 36.191113, 41.796989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926819, 35.912735, 41.971706>,  <33.790024, 35.745708, 42.076534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926819, 35.912735, 41.971706>,  <34.154808, 36.191113, 41.796989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926819, 35.912735, 41.971706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101637, -0.467795, -0.877974,
		0.815352, -0.544817, 0.195897,
		-0.569975, -0.695948, 0.436791,
		33.755825, 35.703949, 42.102745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456818, 35.498100, 41.639572>,  <34.154808, 36.191113, 41.796989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456818, 35.498100, 41.639572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.095219, 35.386135, 41.768837>,  <33.878258, 35.318958, 41.846394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.095219, 35.386135, 41.768837>,  <34.456818, 35.498100, 41.639572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095219, 35.386135, 41.768837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044357, -0.690387, -0.722079,
		0.425223, -0.667095, 0.611694,
		-0.904001, -0.279911, 0.323159,
		33.824017, 35.302162, 41.865784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483295, 34.795135, 41.631100>,  <34.456818, 35.498100, 41.639572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483295, 34.795135, 41.631100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.088074, 34.855610, 41.643024>,  <33.850941, 34.891895, 41.650181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.088074, 34.855610, 41.643024>,  <34.483295, 34.795135, 41.631100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.088074, 34.855610, 41.643024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125918, -0.680595, -0.721758,
		-0.088831, -0.716891, 0.691503,
		-0.988055, 0.151187, 0.029812,
		33.791656, 34.900967, 41.651966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180332, 34.149422, 41.540726>,  <34.483295, 34.795135, 41.631100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180332, 34.149422, 41.540726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890865, 34.403511, 41.432804>,  <33.717186, 34.555965, 41.368050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890865, 34.403511, 41.432804>,  <34.180332, 34.149422, 41.540726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890865, 34.403511, 41.432804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065019, -0.451954, -0.889669,
		-0.687080, -0.626281, 0.368365,
		-0.723667, 0.635224, -0.269808,
		33.673763, 34.594078, 41.351860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883579, 33.737045, 41.189999>,  <34.180332, 34.149422, 41.540726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883579, 33.737045, 41.189999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697155, 34.074551, 41.083530>,  <33.585300, 34.277054, 41.019650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697155, 34.074551, 41.083530>,  <33.883579, 33.737045, 41.189999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697155, 34.074551, 41.083530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296252, -0.432307, -0.851672,
		-0.833678, -0.318079, 0.451449,
		-0.466063, 0.843764, -0.266173,
		33.557335, 34.327679, 41.003677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.109913, 33.612465, 41.148602>,  <33.883579, 33.737045, 41.189999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.109913, 33.612465, 41.148602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218128, 33.914551, 40.909786>,  <33.283058, 34.095802, 40.766495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218128, 33.914551, 40.909786>,  <33.109913, 33.612465, 41.148602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218128, 33.914551, 40.909786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115211, -0.590311, -0.798911,
		-0.955791, 0.284921, -0.072692,
		0.270538, 0.755217, -0.597040,
		33.299290, 34.141117, 40.730675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658741, 33.499741, 40.603172>,  <33.109913, 33.612465, 41.148602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.658741, 33.499741, 40.603172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965263, 33.705944, 40.449795>,  <33.149178, 33.829666, 40.357769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965263, 33.705944, 40.449795>,  <32.658741, 33.499741, 40.603172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965263, 33.705944, 40.449795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061863, -0.534839, -0.842686,
		-0.639489, 0.669477, -0.377960,
		0.766307, 0.515507, -0.383439,
		33.195156, 33.860596, 40.334763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476528, 33.464813, 39.859646>,  <32.658741, 33.499741, 40.603172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476528, 33.464813, 39.859646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849648, 33.608936, 39.856564>,  <33.073521, 33.695412, 39.854713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849648, 33.608936, 39.856564>,  <32.476528, 33.464813, 39.859646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849648, 33.608936, 39.856564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166233, -0.449137, -0.877863,
		-0.319762, 0.817591, -0.478851,
		0.932802, 0.360308, -0.007706,
		33.129490, 33.717030, 39.854252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.638187, 33.746975, 39.209621>,  <32.476528, 33.464813, 39.859646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.638187, 33.746975, 39.209621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016083, 33.669708, 39.315571>,  <33.242821, 33.623348, 39.379139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016083, 33.669708, 39.315571>,  <32.638187, 33.746975, 39.209621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016083, 33.669708, 39.315571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230084, -0.184847, -0.955454,
		0.233527, 0.963596, -0.130186,
		0.944736, -0.193170, 0.264875,
		33.299503, 33.611755, 39.395035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023819, 33.915947, 38.639645>,  <32.638187, 33.746975, 39.209621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023819, 33.915947, 38.639645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.268970, 33.706421, 38.876286>,  <33.416061, 33.580704, 39.018269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.268970, 33.706421, 38.876286>,  <33.023819, 33.915947, 38.639645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.268970, 33.706421, 38.876286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369208, -0.472102, -0.800503,
		0.698612, 0.709038, -0.095946,
		0.612883, -0.523817, 0.591599,
		33.452835, 33.549274, 39.053764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683277, 33.992649, 38.390881>,  <33.023819, 33.915947, 38.639645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683277, 33.992649, 38.390881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753414, 33.671501, 38.618793>,  <33.795494, 33.478813, 38.755543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753414, 33.671501, 38.618793>,  <33.683277, 33.992649, 38.390881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753414, 33.671501, 38.618793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688175, -0.313922, -0.654116,
		0.704039, 0.506803, 0.497473,
		0.175340, -0.802872, 0.569783,
		33.806015, 33.430641, 38.789730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430332, 34.006817, 38.503319>,  <33.683277, 33.992649, 38.390881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430332, 34.006817, 38.503319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.264774, 33.645390, 38.547607>,  <34.165440, 33.428535, 38.574181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.264774, 33.645390, 38.547607>,  <34.430332, 34.006817, 38.503319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.264774, 33.645390, 38.547607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694916, -0.392181, -0.602732,
		0.588033, -0.172523, 0.790224,
		-0.413896, -0.903565, 0.110726,
		34.140606, 33.374321, 38.580826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008904, 33.609226, 38.470711>,  <34.430332, 34.006817, 38.503319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008904, 33.609226, 38.470711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704407, 33.351688, 38.439816>,  <34.521709, 33.197166, 38.421276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704407, 33.351688, 38.439816>,  <35.008904, 33.609226, 38.470711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704407, 33.351688, 38.439816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501978, -0.509677, -0.698747,
		0.410519, -0.570691, 0.711186,
		-0.761244, -0.643849, -0.077242,
		34.476032, 33.158535, 38.416641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267223, 32.884747, 38.516071>,  <35.008904, 33.609226, 38.470711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.267223, 32.884747, 38.516071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.914715, 32.853626, 38.329605>,  <34.703209, 32.834953, 38.217724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.914715, 32.853626, 38.329605>,  <35.267223, 32.884747, 38.516071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914715, 32.853626, 38.329605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424587, -0.563563, -0.708606,
		-0.207581, -0.822401, 0.529686,
		-0.881269, -0.077804, -0.466166,
		34.650333, 32.830284, 38.189754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174591, 32.197388, 38.393234>,  <35.267223, 32.884747, 38.516071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174591, 32.197388, 38.393234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927914, 32.352551, 38.119236>,  <34.779907, 32.445648, 37.954838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927914, 32.352551, 38.119236>,  <35.174591, 32.197388, 38.393234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927914, 32.352551, 38.119236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473686, -0.512138, -0.716475,
		-0.628733, -0.766320, 0.132090,
		-0.616698, 0.387902, -0.684993,
		34.742905, 32.468922, 37.913738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955868, 31.632214, 37.951664>,  <35.174591, 32.197388, 38.393234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955868, 31.632214, 37.951664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896126, 31.961151, 37.732048>,  <34.860279, 32.158512, 37.600281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896126, 31.961151, 37.732048>,  <34.955868, 31.632214, 37.951664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896126, 31.961151, 37.732048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371185, -0.468025, -0.801982,
		-0.916469, -0.323575, -0.235339,
		-0.149356, 0.822345, -0.549036,
		34.851318, 32.207855, 37.567337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686287, 31.379906, 37.271961>,  <34.955868, 31.632214, 37.951664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686287, 31.379906, 37.271961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797508, 31.747437, 37.159927>,  <34.864243, 31.967955, 37.092709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797508, 31.747437, 37.159927>,  <34.686287, 31.379906, 37.271961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797508, 31.747437, 37.159927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475923, -0.385055, -0.790715,
		-0.834375, 0.086565, -0.544357,
		0.278056, 0.918825, -0.280082,
		34.880924, 32.023083, 37.075901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582829, 31.403389, 36.492542>,  <34.686287, 31.379906, 37.271961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582829, 31.403389, 36.492542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846279, 31.687963, 36.590580>,  <35.004349, 31.858707, 36.649403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846279, 31.687963, 36.590580>,  <34.582829, 31.403389, 36.492542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846279, 31.687963, 36.590580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606612, -0.309278, -0.732372,
		-0.445233, 0.631036, -0.635264,
		0.658626, 0.711435, 0.245094,
		35.043865, 31.901394, 36.664108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741276, 31.750875, 35.925621>,  <34.582829, 31.403389, 36.492542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741276, 31.750875, 35.925621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049686, 31.865574, 36.153057>,  <35.234734, 31.934393, 36.289520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049686, 31.865574, 36.153057>,  <34.741276, 31.750875, 35.925621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049686, 31.865574, 36.153057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603872, -0.045814, -0.795764,
		-0.202132, 0.956911, -0.208482,
		0.771026, 0.286746, 0.568591,
		35.280994, 31.951597, 36.323635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136940, 32.280815, 35.622768>,  <34.741276, 31.750875, 35.925621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136940, 32.280815, 35.622768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.404339, 32.122601, 35.874695>,  <35.564777, 32.027672, 36.025848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.404339, 32.122601, 35.874695>,  <35.136940, 32.280815, 35.622768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404339, 32.122601, 35.874695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667176, -0.055246, -0.742848,
		0.328622, 0.916785, 0.226964,
		0.668493, -0.395541, 0.629813,
		35.604885, 32.003937, 36.063637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651535, 32.804329, 35.725231>,  <35.136940, 32.280815, 35.622768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651535, 32.804329, 35.725231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827213, 32.457851, 35.820576>,  <35.932621, 32.249966, 35.877781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827213, 32.457851, 35.820576>,  <35.651535, 32.804329, 35.725231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827213, 32.457851, 35.820576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824248, 0.282972, -0.490450,
		0.357376, 0.411871, 0.838239,
		0.439200, -0.866192, 0.238357,
		35.958973, 32.197994, 35.892082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362083, 32.993122, 36.013882>,  <35.651535, 32.804329, 35.725231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362083, 32.993122, 36.013882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395878, 32.606754, 35.916016>,  <36.416153, 32.374935, 35.857296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395878, 32.606754, 35.916016>,  <36.362083, 32.993122, 36.013882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395878, 32.606754, 35.916016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904261, 0.177462, -0.388355,
		0.418538, -0.188429, 0.888437,
		0.084486, -0.965920, -0.244664,
		36.421223, 32.316978, 35.842617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052258, 32.881577, 36.232643>,  <36.362083, 32.993122, 36.013882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052258, 32.881577, 36.232643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920628, 32.609016, 35.971138>,  <36.841648, 32.445480, 35.814236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920628, 32.609016, 35.971138>,  <37.052258, 32.881577, 36.232643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920628, 32.609016, 35.971138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855094, 0.078717, -0.512462,
		0.400655, -0.727664, 0.556759,
		-0.329074, -0.681402, -0.653760,
		36.821907, 32.404594, 35.775009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674618, 32.480209, 36.132862>,  <37.052258, 32.881577, 36.232643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674618, 32.480209, 36.132862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.448910, 32.392616, 35.814453>,  <37.313484, 32.340061, 35.623409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.448910, 32.392616, 35.814453>,  <37.674618, 32.480209, 36.132862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448910, 32.392616, 35.814453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819860, -0.035210, -0.571480,
		0.097116, -0.975093, 0.199401,
		-0.564268, -0.218981, -0.796021,
		37.279629, 32.326923, 35.575645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978207, 31.921612, 35.803837>,  <37.674618, 32.480209, 36.132862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978207, 31.921612, 35.803837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758236, 32.127586, 35.540802>,  <37.626255, 32.251171, 35.382980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758236, 32.127586, 35.540802>,  <37.978207, 31.921612, 35.803837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758236, 32.127586, 35.540802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798119, 0.091953, -0.595442,
		-0.246146, -0.852283, -0.461546,
		-0.549926, 0.514935, -0.657590,
		37.593258, 32.282066, 35.343525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103184, 31.619638, 35.139366>,  <37.978207, 31.921612, 35.803837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103184, 31.619638, 35.139366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.009315, 32.002621, 35.072186>,  <37.952995, 32.232410, 35.031879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.009315, 32.002621, 35.072186>,  <38.103184, 31.619638, 35.139366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009315, 32.002621, 35.072186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856533, 0.121974, -0.501472,
		-0.459652, -0.261534, -0.848716,
		-0.234673, 0.957456, -0.167947,
		37.938915, 32.289856, 35.021801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114101, 31.792662, 34.365780>,  <38.103184, 31.619638, 35.139366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114101, 31.792662, 34.365780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220299, 32.094482, 34.605835>,  <38.284016, 32.275574, 34.749866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220299, 32.094482, 34.605835>,  <38.114101, 31.792662, 34.365780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220299, 32.094482, 34.605835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860204, 0.095713, -0.500887,
		-0.435387, 0.649222, -0.623658,
		0.265495, 0.754553, 0.600136,
		38.299946, 32.320847, 34.785877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163647, 32.565033, 33.984440>,  <38.114101, 31.792662, 34.365780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163647, 32.565033, 33.984440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395313, 32.492676, 34.302395>,  <38.534313, 32.449261, 34.493168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395313, 32.492676, 34.302395>,  <38.163647, 32.565033, 33.984440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395313, 32.492676, 34.302395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797794, 0.326228, -0.507051,
		-0.167593, 0.927822, 0.333254,
		0.579170, -0.180890, 0.794885,
		38.569065, 32.438408, 34.540859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658394, 33.197269, 34.139244>,  <38.163647, 32.565033, 33.984440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658394, 33.197269, 34.139244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826054, 32.866940, 34.290154>,  <38.926647, 32.668743, 34.380699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826054, 32.866940, 34.290154>,  <38.658394, 33.197269, 34.139244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826054, 32.866940, 34.290154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833654, 0.185459, -0.520217,
		0.359636, 0.532565, 0.766183,
		0.419145, -0.825820, 0.377277,
		38.951797, 32.619194, 34.403336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368469, 33.351120, 34.382324>,  <38.658394, 33.197269, 34.139244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368469, 33.351120, 34.382324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370411, 32.953957, 34.334808>,  <39.371578, 32.715660, 34.306301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370411, 32.953957, 34.334808>,  <39.368469, 33.351120, 34.382324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370411, 32.953957, 34.334808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952258, 0.040855, -0.302550,
		0.305258, -0.111646, 0.945702,
		0.004858, -0.992908, -0.118788,
		39.371868, 32.656086, 34.299171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961830, 33.439770, 34.746586>,  <39.368469, 33.351120, 34.382324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961830, 33.439770, 34.746586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.805328, 33.272484, 35.074493>,  <39.711430, 33.172112, 35.271236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.805328, 33.272484, 35.074493>,  <39.961830, 33.439770, 34.746586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.805328, 33.272484, 35.074493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863913, -0.140059, -0.483774,
		0.317138, -0.897484, -0.306505,
		-0.391251, -0.418217, 0.819767,
		39.687954, 33.147018, 35.320423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.728222, 33.293678, 34.601700>,  <39.961830, 33.439770, 34.746586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.728222, 33.293678, 34.601700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.708340, 33.047173, 34.287312>,  <40.696411, 32.899269, 34.098679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.708340, 33.047173, 34.287312>,  <40.728222, 33.293678, 34.601700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.708340, 33.047173, 34.287312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934506, -0.249013, 0.254345,
		-0.352460, 0.747137, -0.563523,
		-0.049706, -0.616262, -0.785971,
		40.693428, 32.862293, 34.051521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.330116, 33.582638, 34.378475>,  <40.728222, 33.293678, 34.601700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.330116, 33.582638, 34.378475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.680893, 33.749100, 34.282326>,  <41.891361, 33.848976, 34.224636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.680893, 33.749100, 34.282326>,  <41.330116, 33.582638, 34.378475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.680893, 33.749100, 34.282326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434721, 0.900143, -0.027567,
		0.204899, 0.128670, 0.970289,
		0.876946, 0.416156, -0.240374,
		41.943977, 33.873947, 34.210213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.262375, 34.281822, 34.709652>,  <41.330116, 33.582638, 34.378475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.262375, 34.281822, 34.709652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.565224, 34.363388, 34.461399>,  <41.746933, 34.412327, 34.312447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.565224, 34.363388, 34.461399>,  <41.262375, 34.281822, 34.709652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.565224, 34.363388, 34.461399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319717, 0.944145, -0.079820,
		0.569686, 0.258859, 0.780032,
		0.757125, 0.203918, -0.620628,
		41.792362, 34.424564, 34.275211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.745796, 34.943432, 34.938183>,  <41.262375, 34.281822, 34.709652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.745796, 34.943432, 34.938183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.758385, 34.885441, 34.542610>,  <41.765938, 34.850647, 34.305267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.758385, 34.885441, 34.542610>,  <41.745796, 34.943432, 34.938183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.758385, 34.885441, 34.542610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336894, 0.929987, -0.147059,
		0.941017, 0.337794, -0.019575,
		0.031471, -0.144980, -0.988934,
		41.767826, 34.841946, 34.245930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.858818, 35.585278, 34.671951>,  <41.745796, 34.943432, 34.938183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.858818, 35.585278, 34.671951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.773212, 35.417583, 34.319035>,  <41.721848, 35.316967, 34.107285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.773212, 35.417583, 34.319035>,  <41.858818, 35.585278, 34.671951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.773212, 35.417583, 34.319035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423036, 0.853903, -0.303135,
		0.880476, 0.308364, -0.360103,
		-0.214017, -0.419239, -0.882290,
		41.709007, 35.291813, 34.054348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.969265, 36.191505, 34.191322>,  <41.858818, 35.585278, 34.671951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.969265, 36.191505, 34.191322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.754860, 35.927910, 33.980259>,  <41.626217, 35.769753, 33.853619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.754860, 35.927910, 33.980259>,  <41.969265, 36.191505, 34.191322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.754860, 35.927910, 33.980259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455641, 0.752008, -0.476314,
		0.710690, -0.014887, -0.703348,
		-0.536014, -0.658986, -0.527661,
		41.594055, 35.730213, 33.821960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.952267, 36.355694, 33.442280>,  <41.969265, 36.191505, 34.191322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.952267, 36.355694, 33.442280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.637466, 36.111450, 33.477558>,  <41.448586, 35.964905, 33.498726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.637466, 36.111450, 33.477558>,  <41.952267, 36.355694, 33.442280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.637466, 36.111450, 33.477558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575043, 0.674229, -0.463402,
		0.223495, -0.415414, -0.881749,
		-0.787004, -0.610612, 0.088194,
		41.401363, 35.928268, 33.504017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.594032, 36.316547, 32.748970>,  <41.952267, 36.355694, 33.442280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.594032, 36.316547, 32.748970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.322269, 36.243317, 33.033192>,  <41.159214, 36.199379, 33.203724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.322269, 36.243317, 33.033192>,  <41.594032, 36.316547, 32.748970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.322269, 36.243317, 33.033192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664475, 0.564287, -0.489953,
		-0.311261, -0.805024, -0.505028,
		-0.679404, -0.183075, 0.710559,
		41.118446, 36.188393, 33.246361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003674, 36.413731, 32.346596>,  <41.594032, 36.316547, 32.748970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.003674, 36.413731, 32.346596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.872501, 36.390446, 32.723759>,  <40.793797, 36.376472, 32.950054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.872501, 36.390446, 32.723759>,  <41.003674, 36.413731, 32.346596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.872501, 36.390446, 32.723759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834432, 0.485811, -0.260213,
		-0.442925, -0.872123, -0.207890,
		-0.327933, -0.058215, 0.942906,
		40.774120, 36.372982, 33.006630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350021, 36.150448, 32.373940>,  <41.003674, 36.413731, 32.346596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350021, 36.150448, 32.373940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.397747, 36.392277, 32.688965>,  <40.426384, 36.537373, 32.877979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.397747, 36.392277, 32.688965>,  <40.350021, 36.150448, 32.373940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397747, 36.392277, 32.688965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790863, 0.537435, -0.292743,
		-0.600249, -0.587926, 0.542259,
		0.119317, 0.604571, 0.787564,
		40.433540, 36.573647, 32.925236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735676, 36.365234, 32.600815>,  <40.350021, 36.150448, 32.373940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.735676, 36.365234, 32.600815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.962715, 36.645115, 32.774368>,  <40.098938, 36.813042, 32.878498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.962715, 36.645115, 32.774368>,  <39.735676, 36.365234, 32.600815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.962715, 36.645115, 32.774368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677240, 0.696476, -0.237206,
		-0.468160, -0.159203, 0.869184,
		0.567601, 0.699697, 0.433881,
		40.132996, 36.855022, 32.904533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240498, 36.781471, 32.966160>,  <39.735676, 36.365234, 32.600815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240498, 36.781471, 32.966160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575943, 36.998589, 32.947819>,  <39.777210, 37.128860, 32.936813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575943, 36.998589, 32.947819>,  <39.240498, 36.781471, 32.966160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575943, 36.998589, 32.947819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543998, 0.830157, -0.122088,
		-0.028205, 0.127328, 0.991460,
		0.838612, 0.542796, -0.045852,
		39.827526, 37.161427, 32.934063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989269, 37.374401, 33.285713>,  <39.240498, 36.781471, 32.966160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989269, 37.374401, 33.285713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330975, 37.489986, 33.112858>,  <39.535995, 37.559338, 33.009144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330975, 37.489986, 33.112858>,  <38.989269, 37.374401, 33.285713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330975, 37.489986, 33.112858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393262, 0.902876, -0.173668,
		0.339981, 0.318300, 0.884929,
		0.854259, 0.288965, -0.432135,
		39.587254, 37.576675, 32.983215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097630, 37.903790, 33.781685>,  <38.989269, 37.374401, 33.285713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097630, 37.903790, 33.781685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.324028, 37.974777, 33.459656>,  <39.459869, 38.017368, 33.266438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.324028, 37.974777, 33.459656>,  <39.097630, 37.903790, 33.781685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.324028, 37.974777, 33.459656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343985, 0.938323, -0.034994,
		0.749211, 0.296741, 0.592138,
		0.566001, 0.177469, -0.805076,
		39.493828, 38.028019, 33.218132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677536, 38.392376, 33.836983>,  <39.097630, 37.903790, 33.781685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.677536, 38.392376, 33.836983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.590797, 38.414539, 33.447132>,  <39.538754, 38.427837, 33.213223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.590797, 38.414539, 33.447132>,  <39.677536, 38.392376, 33.836983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590797, 38.414539, 33.447132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317981, 0.939929, 0.124181,
		0.922965, 0.336843, -0.186207,
		-0.216851, 0.055405, -0.974631,
		39.525742, 38.431160, 33.154743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697784, 39.099972, 33.709557>,  <39.677536, 38.392376, 33.836983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.697784, 39.099972, 33.709557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515480, 38.972778, 33.377010>,  <39.406097, 38.896461, 33.177483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515480, 38.972778, 33.377010>,  <39.697784, 39.099972, 33.709557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515480, 38.972778, 33.377010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542146, 0.839940, -0.024054,
		0.705945, 0.439757, -0.555208,
		-0.455764, -0.317984, -0.831364,
		39.378750, 38.877384, 33.127602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713097, 39.696556, 33.316292>,  <39.697784, 39.099972, 33.709557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.713097, 39.696556, 33.316292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414818, 39.478287, 33.163357>,  <39.235851, 39.347324, 33.071594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414818, 39.478287, 33.163357>,  <39.713097, 39.696556, 33.316292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414818, 39.478287, 33.163357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572493, 0.818302, -0.051311,
		0.340870, 0.180626, -0.922595,
		-0.745694, -0.545670, -0.382342,
		39.191109, 39.314587, 33.048653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355492, 40.113590, 32.801712>,  <39.713097, 39.696556, 33.316292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.355492, 40.113590, 32.801712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.089138, 39.828770, 32.890778>,  <38.929325, 39.657879, 32.944218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.089138, 39.828770, 32.890778>,  <39.355492, 40.113590, 32.801712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.089138, 39.828770, 32.890778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731107, 0.682247, -0.004665,
		-0.148588, -0.165895, -0.974885,
		-0.665886, -0.712052, 0.222661,
		38.889374, 39.615154, 32.957577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827660, 40.110840, 32.316303>,  <39.355492, 40.113590, 32.801712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827660, 40.110840, 32.316303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.653290, 39.966236, 32.645977>,  <38.548668, 39.879475, 32.843781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.653290, 39.966236, 32.645977>,  <38.827660, 40.110840, 32.316303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653290, 39.966236, 32.645977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648820, 0.760883, -0.009428,
		-0.623698, -0.538857, -0.566245,
		-0.435927, -0.361511, 0.824183,
		38.522511, 39.857784, 32.893230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273232, 40.473103, 32.295605>,  <38.827660, 40.110840, 32.316303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273232, 40.473103, 32.295605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210709, 40.299431, 32.650467>,  <38.173195, 40.195229, 32.863384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210709, 40.299431, 32.650467>,  <38.273232, 40.473103, 32.295605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210709, 40.299431, 32.650467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759728, 0.626828, 0.172916,
		-0.631173, -0.646971, -0.427841,
		-0.156311, -0.434183, 0.887159,
		38.163815, 40.169174, 32.916615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548542, 40.349937, 32.358955>,  <38.273232, 40.473103, 32.295605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.548542, 40.349937, 32.358955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694744, 40.339348, 32.731129>,  <37.782463, 40.332996, 32.954433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694744, 40.339348, 32.731129>,  <37.548542, 40.349937, 32.358955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694744, 40.339348, 32.731129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677283, 0.678132, 0.285349,
		-0.638511, -0.734463, 0.229930,
		0.365501, -0.026471, 0.930434,
		37.804394, 40.331406, 33.010258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959957, 40.265602, 32.806541>,  <37.548542, 40.349937, 32.358955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959957, 40.265602, 32.806541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.247757, 40.445076, 33.018581>,  <37.420437, 40.552761, 33.145805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.247757, 40.445076, 33.018581>,  <36.959957, 40.265602, 32.806541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247757, 40.445076, 33.018581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674720, 0.632436, 0.380497,
		-0.164530, -0.631435, 0.757773,
		0.719502, 0.448682, 0.530096,
		37.463608, 40.579681, 33.177608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868256, 40.240929, 33.624363>,  <36.959957, 40.265602, 32.806541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868256, 40.240929, 33.624363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055672, 40.557602, 33.467537>,  <37.168121, 40.747604, 33.373440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055672, 40.557602, 33.467537>,  <36.868256, 40.240929, 33.624363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055672, 40.557602, 33.467537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727136, 0.597628, 0.337807,
		0.501744, 0.126808, 0.855671,
		0.468536, 0.791682, -0.392063,
		37.196232, 40.795105, 33.349918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208942, 40.421200, 34.047215>,  <36.868256, 40.240929, 33.624363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208942, 40.421200, 34.047215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013466, 40.710907, 33.852638>,  <35.896179, 40.884731, 33.735893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013466, 40.710907, 33.852638>,  <36.208942, 40.421200, 34.047215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013466, 40.710907, 33.852638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391820, 0.315972, 0.864083,
		0.779527, 0.612863, 0.129371,
		-0.488687, 0.724266, -0.486440,
		35.866859, 40.928188, 33.706707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373142, 41.143112, 34.288811>,  <36.208942, 40.421200, 34.047215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373142, 41.143112, 34.288811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.009430, 41.078369, 34.135445>,  <35.791203, 41.039524, 34.043423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.009430, 41.078369, 34.135445>,  <36.373142, 41.143112, 34.288811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009430, 41.078369, 34.135445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409248, 0.180272, 0.894437,
		-0.075653, 0.970208, -0.230158,
		-0.909281, -0.161859, -0.383418,
		35.736645, 41.029812, 34.020420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753403, 41.583866, 34.741985>,  <36.373142, 41.143112, 34.288811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753403, 41.583866, 34.741985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947254, 41.250889, 34.634525>,  <37.063564, 41.051102, 34.570049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947254, 41.250889, 34.634525>,  <36.753403, 41.583866, 34.741985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947254, 41.250889, 34.634525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164682, -0.214810, 0.962672,
		-0.859080, -0.510777, 0.032986,
		0.484625, -0.832444, -0.268654,
		37.092640, 41.001156, 34.553928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493359, 40.987061, 35.117527>,  <36.753403, 41.583866, 34.741985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493359, 40.987061, 35.117527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869385, 40.929508, 34.993862>,  <37.095001, 40.894978, 34.919662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869385, 40.929508, 34.993862>,  <36.493359, 40.987061, 35.117527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869385, 40.929508, 34.993862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162124, -0.609032, 0.776399,
		-0.300001, -0.779986, -0.549201,
		0.940061, -0.143882, -0.309165,
		37.151402, 40.886345, 34.901112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678173, 40.353901, 35.357563>,  <36.493359, 40.987061, 35.117527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678173, 40.353901, 35.357563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.036320, 40.524628, 35.306728>,  <37.251205, 40.627064, 35.276230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.036320, 40.524628, 35.306728>,  <36.678173, 40.353901, 35.357563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036320, 40.524628, 35.306728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360044, -0.525831, 0.770630,
		0.262095, -0.735749, -0.624483,
		0.895363, 0.426820, -0.127085,
		37.304928, 40.652672, 35.268604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239086, 39.963757, 35.200027>,  <36.678173, 40.353901, 35.357563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239086, 39.963757, 35.200027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.391502, 40.270798, 35.406166>,  <37.482952, 40.455025, 35.529850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.391502, 40.270798, 35.406166>,  <37.239086, 39.963757, 35.200027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391502, 40.270798, 35.406166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361688, -0.636741, 0.680987,
		0.850875, -0.073089, -0.520259,
		0.381043, 0.767606, 0.515351,
		37.505814, 40.501080, 35.560772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946110, 39.853790, 35.288647>,  <37.239086, 39.963757, 35.200027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.946110, 39.853790, 35.288647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.799507, 40.088291, 35.577637>,  <37.711544, 40.228992, 35.751030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.799507, 40.088291, 35.577637>,  <37.946110, 39.853790, 35.288647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.799507, 40.088291, 35.577637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385071, -0.611308, 0.691392,
		0.846990, 0.531607, -0.001701,
		-0.366509, 0.586257, 0.722478,
		37.689556, 40.264168, 35.794380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505009, 40.182007, 35.714211>,  <37.946110, 39.853790, 35.288647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505009, 40.182007, 35.714211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142288, 40.075245, 35.844730>,  <37.924656, 40.011189, 35.923042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142288, 40.075245, 35.844730>,  <38.505009, 40.182007, 35.714211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142288, 40.075245, 35.844730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416303, -0.688824, 0.593475,
		0.066359, 0.674003, 0.735742,
		-0.906801, -0.266909, 0.326299,
		37.870247, 39.995171, 35.942619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504150, 40.249748, 36.452736>,  <38.505009, 40.182007, 35.714211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504150, 40.249748, 36.452736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.276588, 39.938068, 36.347511>,  <38.140053, 39.751060, 36.284378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.276588, 39.938068, 36.347511>,  <38.504150, 40.249748, 36.452736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276588, 39.938068, 36.347511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725647, -0.626125, 0.285315,
		-0.387024, -0.028571, 0.921627,
		-0.568902, -0.779199, -0.263058,
		38.105919, 39.704308, 36.268593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663403, 39.740299, 36.976276>,  <38.504150, 40.249748, 36.452736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663403, 39.740299, 36.976276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.510014, 39.554024, 36.657257>,  <38.417980, 39.442257, 36.465847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.510014, 39.554024, 36.657257>,  <38.663403, 39.740299, 36.976276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.510014, 39.554024, 36.657257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689097, -0.719229, 0.088630,
		-0.614891, -0.515598, 0.596714,
		-0.383477, -0.465692, -0.797544,
		38.394970, 39.414318, 36.417995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610653, 38.967293, 37.184647>,  <38.663403, 39.740299, 36.976276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610653, 38.967293, 37.184647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.645332, 38.963619, 36.786171>,  <38.666142, 38.961414, 36.547085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.645332, 38.963619, 36.786171>,  <38.610653, 38.967293, 37.184647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.645332, 38.963619, 36.786171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758501, -0.647684, 0.071987,
		-0.645880, -0.761854, -0.049181,
		0.086698, -0.009191, -0.996192,
		38.671341, 38.960861, 36.487312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775085, 38.299820, 37.019814>,  <38.610653, 38.967293, 37.184647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.775085, 38.299820, 37.019814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.857018, 38.486877, 36.675873>,  <38.906178, 38.599113, 36.469509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.857018, 38.486877, 36.675873>,  <38.775085, 38.299820, 37.019814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.857018, 38.486877, 36.675873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678363, -0.701109, -0.219706,
		-0.705597, -0.538291, -0.460843,
		0.204835, 0.467642, -0.859857,
		38.918468, 38.627171, 36.417915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.877766, 37.757362, 36.441750>,  <38.775085, 38.299820, 37.019814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.877766, 37.757362, 36.441750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.054565, 38.095112, 36.320644>,  <39.160645, 38.297764, 36.247982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.054565, 38.095112, 36.320644>,  <38.877766, 37.757362, 36.441750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054565, 38.095112, 36.320644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852662, -0.500309, -0.150526,
		-0.278576, -0.191621, -0.941104,
		0.441999, 0.844377, -0.302762,
		39.187164, 38.348427, 36.229816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378334, 37.557007, 35.999622>,  <38.877766, 37.757362, 36.441750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378334, 37.557007, 35.999622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.516148, 37.928165, 36.056618>,  <39.598835, 38.150860, 36.090816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.516148, 37.928165, 36.056618>,  <39.378334, 37.557007, 35.999622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.516148, 37.928165, 36.056618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920734, -0.304384, -0.244127,
		-0.183153, 0.215307, -0.959217,
		0.344533, 0.927897, 0.142491,
		39.619507, 38.206535, 36.099365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782696, 37.708107, 35.455978>,  <39.378334, 37.557007, 35.999622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.782696, 37.708107, 35.455978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.893490, 37.970978, 35.736378>,  <39.959965, 38.128700, 35.904617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.893490, 37.970978, 35.736378>,  <39.782696, 37.708107, 35.455978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.893490, 37.970978, 35.736378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949676, -0.076175, -0.303832,
		-0.146275, 0.749873, -0.645208,
		0.276984, 0.657182, 0.700994,
		39.976585, 38.168133, 35.946674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214680, 38.150341, 35.139046>,  <39.782696, 37.708107, 35.455978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214680, 38.150341, 35.139046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.327816, 38.210232, 35.518009>,  <40.395699, 38.246166, 35.745388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.327816, 38.210232, 35.518009>,  <40.214680, 38.150341, 35.139046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.327816, 38.210232, 35.518009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825920, -0.540253, -0.161194,
		0.487705, 0.828076, -0.276469,
		0.282844, 0.149726, 0.947408,
		40.412670, 38.255150, 35.802231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.910450, 38.323322, 35.158333>,  <40.214680, 38.150341, 35.139046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.910450, 38.323322, 35.158333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.856499, 38.205772, 35.536846>,  <40.824127, 38.135242, 35.763954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.856499, 38.205772, 35.536846>,  <40.910450, 38.323322, 35.158333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.856499, 38.205772, 35.536846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891919, -0.452001, -0.013241,
		0.431610, 0.842219, 0.323078,
		-0.134879, -0.293874, 0.946280,
		40.816036, 38.117611, 35.820728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.525345, 38.481312, 35.426456>,  <40.910450, 38.323322, 35.158333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.525345, 38.481312, 35.426456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.393616, 38.209156, 35.688332>,  <41.314579, 38.045860, 35.845455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.393616, 38.209156, 35.688332>,  <41.525345, 38.481312, 35.426456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.393616, 38.209156, 35.688332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904756, -0.425742, 0.012655,
		0.270117, 0.596497, 0.755796,
		-0.329322, -0.680393, 0.654685,
		41.294819, 38.005039, 35.884735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.989262, 38.508621, 35.985001>,  <41.525345, 38.481312, 35.426456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.989262, 38.508621, 35.985001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.808136, 38.154072, 35.946430>,  <41.699459, 37.941341, 35.923286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.808136, 38.154072, 35.946430>,  <41.989262, 38.508621, 35.985001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.808136, 38.154072, 35.946430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859825, -0.462731, 0.215826,
		-0.235923, 0.014819, 0.971659,
		-0.452815, -0.886375, -0.096427,
		41.672291, 37.888161, 35.917503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.348400, 38.104443, 36.437550>,  <41.989262, 38.508621, 35.985001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.348400, 38.104443, 36.437550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.149471, 37.824333, 36.232697>,  <42.030113, 37.656269, 36.109783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.149471, 37.824333, 36.232697>,  <42.348400, 38.104443, 36.437550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.149471, 37.824333, 36.232697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751772, -0.642489, 0.148479,
		-0.433019, -0.311168, 0.845973,
		-0.497326, -0.700273, -0.512137,
		42.000275, 37.614250, 36.079056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.292641, 37.448631, 36.773533>,  <42.348400, 38.104443, 36.437550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.292641, 37.448631, 36.773533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.266369, 37.363972, 36.383480>,  <42.250607, 37.313175, 36.149448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.266369, 37.363972, 36.383480>,  <42.292641, 37.448631, 36.773533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.266369, 37.363972, 36.383480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813536, -0.577227, 0.070495,
		-0.577795, -0.788678, 0.210096,
		-0.065675, -0.211652, -0.975136,
		42.246666, 37.300476, 36.090939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.516792, 36.769035, 36.789482>,  <42.292641, 37.448631, 36.773533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.516792, 36.769035, 36.789482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.546398, 36.883484, 36.407349>,  <42.564159, 36.952152, 36.178070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.546398, 36.883484, 36.407349>,  <42.516792, 36.769035, 36.789482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.546398, 36.883484, 36.407349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785261, -0.607221, -0.121028,
		-0.614725, -0.741227, -0.269622,
		0.074011, 0.286122, -0.955331,
		42.568600, 36.969322, 36.120750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.595657, 36.184277, 36.375359>,  <42.516792, 36.769035, 36.789482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.595657, 36.184277, 36.375359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.691944, 36.435104, 36.079025>,  <42.749714, 36.585602, 35.901226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.691944, 36.435104, 36.079025>,  <42.595657, 36.184277, 36.375359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.691944, 36.435104, 36.079025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737732, -0.614207, -0.280180,
		-0.630720, -0.479096, -0.610458,
		0.240715, 0.627069, -0.740838,
		42.764160, 36.623226, 35.856773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.648884, 35.806187, 35.730209>,  <42.595657, 36.184277, 36.375359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.648884, 35.806187, 35.730209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.857124, 36.141167, 35.663692>,  <42.982067, 36.342155, 35.623783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.857124, 36.141167, 35.663692>,  <42.648884, 35.806187, 35.730209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.857124, 36.141167, 35.663692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745863, -0.540864, -0.388785,
		-0.415529, 0.078371, -0.906197,
		0.520600, 0.837451, -0.166291,
		43.013306, 36.392403, 35.613804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.723347, 35.926441, 34.979996>,  <42.648884, 35.806187, 35.730209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.723347, 35.926441, 34.979996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.040039, 36.096539, 35.155415>,  <43.230057, 36.198597, 35.260666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.040039, 36.096539, 35.155415>,  <42.723347, 35.926441, 34.979996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.040039, 36.096539, 35.155415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603377, -0.432338, -0.670089,
		-0.095353, 0.795142, -0.598881,
		0.791735, 0.425246, 0.438546,
		43.277561, 36.224113, 35.286980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.124531, 36.080021, 34.328789>,  <42.723347, 35.926441, 34.979996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.124531, 36.080021, 34.328789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.366272, 36.148109, 34.640118>,  <43.511318, 36.188961, 34.826916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.366272, 36.148109, 34.640118>,  <43.124531, 36.080021, 34.328789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.366272, 36.148109, 34.640118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740067, -0.481728, -0.469296,
		0.295055, 0.859630, -0.417109,
		0.604354, 0.170220, 0.778319,
		43.547577, 36.199177, 34.873615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.634605, 36.623913, 34.163136>,  <43.124531, 36.080021, 34.328789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.634605, 36.623913, 34.163136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.777122, 36.378685, 34.445187>,  <43.862633, 36.231548, 34.614418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.777122, 36.378685, 34.445187>,  <43.634605, 36.623913, 34.163136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.777122, 36.378685, 34.445187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677312, -0.350402, -0.646890,
		0.643665, 0.708073, 0.290393,
		0.356291, -0.613067, 0.705128,
		43.884010, 36.194763, 34.656723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.399178, 36.653652, 34.161530>,  <43.634605, 36.623913, 34.163136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.399178, 36.653652, 34.161530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.299629, 36.311081, 34.342457>,  <44.239899, 36.105537, 34.451012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.299629, 36.311081, 34.342457>,  <44.399178, 36.653652, 34.161530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.299629, 36.311081, 34.342457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759021, -0.462553, -0.458183,
		0.601622, 0.229289, 0.765165,
		-0.248872, -0.856429, 0.452317,
		44.224968, 36.054153, 34.478153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.098625, 36.248459, 34.321674>,  <44.399178, 36.653652, 34.161530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.098625, 36.248459, 34.321674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.793873, 35.989986, 34.339504>,  <44.611019, 35.834904, 34.350201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.793873, 35.989986, 34.339504>,  <45.098625, 36.248459, 34.321674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.793873, 35.989986, 34.339504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556034, -0.687787, -0.466663,
		0.332204, -0.330760, 0.883311,
		-0.761884, -0.646178, 0.044572,
		44.565308, 35.796131, 34.352875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.426823, 35.585407, 34.328579>,  <45.098625, 36.248459, 34.321674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.426823, 35.585407, 34.328579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.042908, 35.520531, 34.236927>,  <44.812557, 35.481606, 34.181938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.042908, 35.520531, 34.236927>,  <45.426823, 35.585407, 34.328579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.042908, 35.520531, 34.236927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266368, -0.783826, -0.560950,
		-0.088615, -0.599426, 0.795510,
		-0.959789, -0.162189, -0.229127,
		44.754971, 35.471874, 34.168190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.243145, 35.367416, 34.431316>,  <45.426823, 35.585407, 34.328579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.243145, 35.367416, 34.431316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.608929, 35.527321, 34.456459>,  <46.828400, 35.623264, 34.471546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.608929, 35.527321, 34.456459>,  <46.243145, 35.367416, 34.431316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.608929, 35.527321, 34.456459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311866, -0.795164, 0.520052,
		0.257879, -0.455964, -0.851819,
		0.914461, 0.399764, 0.062857,
		46.883266, 35.647251, 34.475315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.760056, 34.912319, 34.166729>,  <46.243145, 35.367416, 34.431316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.760056, 34.912319, 34.166729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.932590, 35.134251, 34.451298>,  <47.036110, 35.267410, 34.622040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.932590, 35.134251, 34.451298>,  <46.760056, 34.912319, 34.166729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.932590, 35.134251, 34.451298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326846, -0.831077, 0.449981,
		0.840905, 0.038432, -0.539817,
		0.431336, 0.554828, 0.711418,
		47.061993, 35.300697, 34.664722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.314415, 34.626919, 34.334938>,  <46.760056, 34.912319, 34.166729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.314415, 34.626919, 34.334938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.301914, 34.847404, 34.668449>,  <47.294415, 34.979698, 34.868557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.301914, 34.847404, 34.668449>,  <47.314415, 34.626919, 34.334938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.301914, 34.847404, 34.668449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351050, -0.774986, 0.525510,
		0.935835, 0.309122, -0.169282,
		-0.031255, 0.551217, 0.833776,
		47.292538, 35.012768, 34.918583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.958305, 34.729031, 34.767784>,  <47.314415, 34.626919, 34.334938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.958305, 34.729031, 34.767784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.656227, 34.767117, 35.027206>,  <47.474979, 34.789967, 35.182858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.656227, 34.767117, 35.027206>,  <47.958305, 34.729031, 34.767784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.656227, 34.767117, 35.027206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282503, -0.845523, 0.453081,
		0.591505, 0.525381, 0.611634,
		-0.755191, 0.095211, 0.648553,
		47.429668, 34.795681, 35.221771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.742325, 39.672920, 39.921307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.433941, 39.430325, 39.999073>,  <33.248913, 39.284767, 40.045734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.433941, 39.430325, 39.999073>,  <33.742325, 39.672920, 39.921307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433941, 39.430325, 39.999073> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183311, -0.081038, -0.979709,
		0.609936, -0.790953, -0.048699,
		-0.770957, -0.606487, 0.194419,
		33.202652, 39.248379, 40.057400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882050, 38.964996, 39.514053>,  <33.742325, 39.672920, 39.921307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882050, 38.964996, 39.514053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.496712, 38.991371, 39.618065>,  <33.265507, 39.007195, 39.680473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.496712, 38.991371, 39.618065>,  <33.882050, 38.964996, 39.514053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496712, 38.991371, 39.618065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268210, -0.255353, -0.928902,
		0.005156, -0.964597, 0.263677,
		-0.963347, 0.065932, 0.260031,
		33.207706, 39.011150, 39.696075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592289, 38.401958, 39.246815>,  <33.882050, 38.964996, 39.514053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592289, 38.401958, 39.246815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.280727, 38.642967, 39.316422>,  <33.093792, 38.787571, 39.358185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.280727, 38.642967, 39.316422>,  <33.592289, 38.401958, 39.246815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280727, 38.642967, 39.316422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365372, -0.210448, -0.906760,
		-0.509723, -0.769856, 0.384063,
		-0.778901, 0.602523, 0.174014,
		33.047058, 38.823723, 39.368626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070866, 38.009289, 39.072754>,  <33.592289, 38.401958, 39.246815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.070866, 38.009289, 39.072754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.902035, 38.369740, 39.033115>,  <32.800735, 38.586010, 39.009331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.902035, 38.369740, 39.033115>,  <33.070866, 38.009289, 39.072754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902035, 38.369740, 39.033115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256141, -0.223403, -0.940470,
		-0.869620, -0.371571, 0.325109,
		-0.422081, 0.901125, -0.099101,
		32.775410, 38.640076, 39.003384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323734, 37.965023, 38.740311>,  <33.070866, 38.009289, 39.072754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323734, 37.965023, 38.740311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.469650, 38.333641, 38.687107>,  <32.557201, 38.554810, 38.655186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.469650, 38.333641, 38.687107>,  <32.323734, 37.965023, 38.740311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469650, 38.333641, 38.687107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211625, -0.057049, -0.975685,
		-0.906722, 0.384066, 0.174210,
		0.364789, 0.921542, -0.133005,
		32.579086, 38.610104, 38.647205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.821032, 38.242493, 38.292030>,  <32.323734, 37.965023, 38.740311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.821032, 38.242493, 38.292030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.161499, 38.450760, 38.265461>,  <32.365780, 38.575722, 38.249519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.161499, 38.450760, 38.265461>,  <31.821032, 38.242493, 38.292030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.161499, 38.450760, 38.265461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017783, -0.097874, -0.995040,
		-0.524588, 0.848130, -0.074048,
		0.851170, 0.520669, -0.066426,
		32.416851, 38.606960, 38.245533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.704529, 38.754089, 37.808445>,  <31.821032, 38.242493, 38.292030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.704529, 38.754089, 37.808445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.103035, 38.719643, 37.810966>,  <32.342140, 38.698975, 37.812481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.103035, 38.719643, 37.810966>,  <31.704529, 38.754089, 37.808445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.103035, 38.719643, 37.810966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005340, -0.134321, -0.990924,
		0.086177, 0.987189, -0.134279,
		0.996266, -0.086112, 0.006304,
		32.401917, 38.693810, 37.812859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.943712, 39.184727, 37.192440>,  <31.704529, 38.754089, 37.808445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.943712, 39.184727, 37.192440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.247959, 38.939846, 37.278854>,  <32.430508, 38.792919, 37.330704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.247959, 38.939846, 37.278854>,  <31.943712, 39.184727, 37.192440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.247959, 38.939846, 37.278854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005486, -0.338816, -0.940837,
		0.649175, 0.714434, -0.261068,
		0.760619, -0.612200, 0.216031,
		32.476147, 38.756187, 37.343662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.348614, 39.133842, 36.527431>,  <31.943712, 39.184727, 37.192440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.348614, 39.133842, 36.527431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.480225, 38.832748, 36.755512>,  <32.559189, 38.652092, 36.892361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.480225, 38.832748, 36.755512>,  <32.348614, 39.133842, 36.527431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480225, 38.832748, 36.755512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219369, -0.526377, -0.821465,
		0.918488, 0.395366, -0.008064,
		0.329024, -0.752737, 0.570202,
		32.578934, 38.606926, 36.926575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.840919, 38.828094, 36.080994>,  <32.348614, 39.133842, 36.527431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.840919, 38.828094, 36.080994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.763008, 38.554314, 36.362015>,  <32.716263, 38.390045, 36.530628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.763008, 38.554314, 36.362015>,  <32.840919, 38.828094, 36.080994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763008, 38.554314, 36.362015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195792, -0.728990, -0.655926,
		0.961107, 0.009795, 0.276002,
		-0.194778, -0.684454, 0.702555,
		32.704575, 38.348976, 36.572781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419422, 38.418209, 36.033077>,  <32.840919, 38.828094, 36.080994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419422, 38.418209, 36.033077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.098778, 38.227009, 36.176708>,  <32.906391, 38.112289, 36.262886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.098778, 38.227009, 36.176708>,  <33.419422, 38.418209, 36.033077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098778, 38.227009, 36.176708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208977, -0.786760, -0.580807,
		0.560136, -0.390540, 0.730565,
		-0.801609, -0.478002, 0.359079,
		32.858295, 38.083607, 36.284431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646919, 37.712421, 36.112473>,  <33.419422, 38.418209, 36.033077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646919, 37.712421, 36.112473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.250355, 37.660110, 36.113636>,  <33.012417, 37.628723, 36.114334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.250355, 37.660110, 36.113636>,  <33.646919, 37.712421, 36.112473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250355, 37.660110, 36.113636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112100, -0.860845, -0.496367,
		0.067423, -0.491775, 0.868108,
		-0.991407, -0.130782, 0.002913,
		32.952934, 37.620876, 36.114510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621643, 37.004677, 36.217590>,  <33.646919, 37.712421, 36.112473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621643, 37.004677, 36.217590> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.257740, 37.117958, 36.096180>,  <33.039398, 37.185928, 36.023335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.257740, 37.117958, 36.096180>,  <33.621643, 37.004677, 36.217590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257740, 37.117958, 36.096180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041753, -0.789879, -0.611839,
		-0.413026, -0.543955, 0.730427,
		-0.909761, 0.283203, -0.303529,
		32.984810, 37.202919, 36.005123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.197651, 36.425980, 36.310902>,  <33.621643, 37.004677, 36.217590>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.197651, 36.425980, 36.310902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.042507, 36.636486, 36.008217>,  <32.949421, 36.762791, 35.826607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.042507, 36.636486, 36.008217>,  <33.197651, 36.425980, 36.310902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042507, 36.636486, 36.008217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002549, -0.820364, -0.571835,
		-0.921717, -0.223718, 0.316840,
		-0.387854, 0.526263, -0.756714,
		32.926151, 36.794365, 35.781204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607952, 36.040638, 36.113495>,  <33.197651, 36.425980, 36.310902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607952, 36.040638, 36.113495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.639473, 36.282990, 35.796837>,  <32.658386, 36.428398, 35.606842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.639473, 36.282990, 35.796837>,  <32.607952, 36.040638, 36.113495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639473, 36.282990, 35.796837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079077, -0.787816, -0.610814,
		-0.993749, 0.110735, -0.014172,
		0.078803, 0.605875, -0.791648,
		32.663113, 36.464752, 35.559341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034550, 35.969486, 35.779236>,  <32.607952, 36.040638, 36.113495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.034550, 35.969486, 35.779236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.346451, 36.071037, 35.550316>,  <32.533592, 36.131969, 35.412964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.346451, 36.071037, 35.550316>,  <32.034550, 35.969486, 35.779236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.346451, 36.071037, 35.550316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114607, -0.840770, -0.529123,
		-0.615507, 0.478175, -0.626498,
		0.779754, 0.253878, -0.572302,
		32.580376, 36.147202, 35.378624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.872875, 35.596474, 35.217861>,  <32.034550, 35.969486, 35.779236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.872875, 35.596474, 35.217861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.239964, 35.728683, 35.129734>,  <32.460217, 35.808010, 35.076859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.239964, 35.728683, 35.129734>,  <31.872875, 35.596474, 35.217861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239964, 35.728683, 35.129734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155757, -0.809652, -0.565865,
		-0.365418, 0.484988, -0.794516,
		0.917719, 0.330529, -0.220321,
		32.515278, 35.827843, 35.063637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984167, 35.575924, 34.509075>,  <31.872875, 35.596474, 35.217861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984167, 35.575924, 34.509075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.364471, 35.591732, 34.632034>,  <32.592655, 35.601215, 34.705811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.364471, 35.591732, 34.632034>,  <31.984167, 35.575924, 34.509075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364471, 35.591732, 34.632034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206922, -0.819348, -0.534652,
		0.230737, 0.571933, -0.787181,
		0.950760, 0.039521, 0.307399,
		32.649700, 35.603588, 34.724255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.451248, 35.445999, 33.897438>,  <31.984167, 35.575924, 34.509075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.451248, 35.445999, 33.897438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.664715, 35.359024, 34.224346>,  <32.792793, 35.306839, 34.420490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.664715, 35.359024, 34.224346>,  <32.451248, 35.445999, 33.897438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664715, 35.359024, 34.224346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425158, -0.766404, -0.481525,
		0.731058, 0.604439, -0.316556,
		0.533662, -0.217436, 0.817267,
		32.824814, 35.293793, 34.469528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108974, 35.275284, 33.599525>,  <32.451248, 35.445999, 33.897438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108974, 35.275284, 33.599525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.100262, 35.126984, 33.970917>,  <33.095036, 35.038006, 34.193752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.100262, 35.126984, 33.970917>,  <33.108974, 35.275284, 33.599525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.100262, 35.126984, 33.970917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518602, -0.798172, -0.306551,
		0.854738, 0.474835, 0.209654,
		-0.021778, -0.370748, 0.928478,
		33.093727, 35.015759, 34.249458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759140, 34.894394, 33.673885>,  <33.108974, 35.275284, 33.599525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759140, 34.894394, 33.673885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.495659, 34.747055, 33.936314>,  <33.337570, 34.658649, 34.093773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.495659, 34.747055, 33.936314>,  <33.759140, 34.894394, 33.673885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495659, 34.747055, 33.936314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219147, -0.928087, -0.301048,
		0.719784, -0.054523, 0.692053,
		-0.658700, -0.368351, 0.656073,
		33.298050, 34.636551, 34.133137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163502, 34.476559, 33.957703>,  <33.759140, 34.894394, 33.673885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163502, 34.476559, 33.957703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.784473, 34.365505, 34.020985>,  <33.557056, 34.298874, 34.058952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.784473, 34.365505, 34.020985>,  <34.163502, 34.476559, 33.957703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784473, 34.365505, 34.020985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199982, -0.901397, -0.384046,
		0.249230, -0.332273, 0.909659,
		-0.947572, -0.277631, 0.158207,
		33.500202, 34.282215, 34.068447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809772, 34.313225, 33.822678>,  <34.163502, 34.476559, 33.957703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809772, 34.313225, 33.822678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.195831, 34.245827, 33.902779>,  <35.427467, 34.205387, 33.950840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.195831, 34.245827, 33.902779>,  <34.809772, 34.313225, 33.822678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195831, 34.245827, 33.902779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041964, 0.655627, 0.753918,
		-0.258326, -0.736044, 0.625705,
		0.965146, -0.168500, 0.200253,
		35.485374, 34.195278, 33.962856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906170, 34.304039, 34.566505>,  <34.809772, 34.313225, 33.822678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906170, 34.304039, 34.566505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.247471, 34.394886, 34.378731>,  <35.452251, 34.449394, 34.266064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.247471, 34.394886, 34.378731>,  <34.906170, 34.304039, 34.566505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247471, 34.394886, 34.378731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143783, 0.762835, 0.630404,
		0.501283, -0.605392, 0.618236,
		0.853254, 0.227119, -0.469441,
		35.503448, 34.463020, 34.237900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449146, 34.325851, 35.188629>,  <34.906170, 34.304039, 34.566505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449146, 34.325851, 35.188629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.579956, 34.519321, 34.863888>,  <35.658443, 34.635403, 34.669041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.579956, 34.519321, 34.863888>,  <35.449146, 34.325851, 35.188629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579956, 34.519321, 34.863888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158431, 0.818875, 0.551673,
		0.931640, -0.309036, 0.191166,
		0.327028, 0.483674, -0.811857,
		35.678066, 34.664425, 34.620331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013699, 34.534580, 35.429096>,  <35.449146, 34.325851, 35.188629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013699, 34.534580, 35.429096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.909592, 34.765778, 35.119724>,  <35.847126, 34.904495, 34.934101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.909592, 34.765778, 35.119724>,  <36.013699, 34.534580, 35.429096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909592, 34.765778, 35.119724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016255, 0.803542, 0.595027,
		0.965399, 0.142296, -0.218533,
		-0.260270, 0.577990, -0.773425,
		35.831512, 34.939175, 34.887695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382641, 35.096531, 35.495708>,  <36.013699, 34.534580, 35.429096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382641, 35.096531, 35.495708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.080627, 35.203491, 35.256233>,  <35.899418, 35.267666, 35.112549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.080627, 35.203491, 35.256233>,  <36.382641, 35.096531, 35.495708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.080627, 35.203491, 35.256233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087593, 0.863749, 0.496251,
		0.649811, 0.427126, -0.628736,
		-0.755032, 0.267397, -0.598686,
		35.854118, 35.283710, 35.076626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539951, 35.793682, 35.237843>,  <36.382641, 35.096531, 35.495708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539951, 35.793682, 35.237843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.146526, 35.723984, 35.218933>,  <35.910469, 35.682163, 35.207588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.146526, 35.723984, 35.218933>,  <36.539951, 35.793682, 35.237843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146526, 35.723984, 35.218933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178414, 0.897893, 0.402439,
		-0.027673, 0.404261, -0.914225,
		-0.983566, -0.174247, -0.047278,
		35.851456, 35.671711, 35.204750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263382, 36.379250, 34.976555>,  <36.539951, 35.793682, 35.237843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.263382, 36.379250, 34.976555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.974052, 36.196339, 35.183514>,  <35.800457, 36.086594, 35.307690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.974052, 36.196339, 35.183514>,  <36.263382, 36.379250, 34.976555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974052, 36.196339, 35.183514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102038, 0.811858, 0.574870,
		-0.682930, 0.363021, -0.633894,
		-0.723322, -0.457277, 0.517400,
		35.757057, 36.059155, 35.338734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756008, 36.925293, 35.075188>,  <36.263382, 36.379250, 34.976555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756008, 36.925293, 35.075188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.675213, 36.618580, 35.318909>,  <35.626736, 36.434551, 35.465141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.675213, 36.618580, 35.318909>,  <35.756008, 36.925293, 35.075188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675213, 36.618580, 35.318909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260179, 0.641779, 0.721406,
		-0.944197, -0.012811, -0.329133,
		-0.201989, -0.766782, 0.609299,
		35.614616, 36.388546, 35.501698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243038, 37.288929, 35.375687>,  <35.756008, 36.925293, 35.075188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243038, 37.288929, 35.375687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.326015, 36.958923, 35.585949>,  <35.375801, 36.760918, 35.712105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.326015, 36.958923, 35.585949>,  <35.243038, 37.288929, 35.375687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326015, 36.958923, 35.585949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216616, 0.485266, 0.847109,
		-0.953963, -0.289594, -0.078045,
		0.207445, -0.825017, 0.525656,
		35.388248, 36.711418, 35.743645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778015, 37.274498, 36.021698>,  <35.243038, 37.288929, 35.375687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778015, 37.274498, 36.021698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.066498, 37.018383, 36.127453>,  <35.239586, 36.864716, 36.190907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.066498, 37.018383, 36.127453>,  <34.778015, 37.274498, 36.021698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066498, 37.018383, 36.127453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085104, 0.460672, 0.883481,
		-0.687476, -0.614668, 0.386729,
		0.721203, -0.640284, 0.264390,
		35.282860, 36.826298, 36.206768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644115, 36.970116, 36.667263>,  <34.778015, 37.274498, 36.021698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644115, 36.970116, 36.667263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.038719, 36.911919, 36.637230>,  <35.275482, 36.876999, 36.619209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.038719, 36.911919, 36.637230>,  <34.644115, 36.970116, 36.667263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038719, 36.911919, 36.637230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129559, 0.413360, 0.901304,
		-0.100099, -0.898869, 0.426632,
		0.986506, -0.145494, -0.075079,
		35.334671, 36.868271, 36.614708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769474, 36.721527, 37.294258>,  <34.644115, 36.970116, 36.667263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.769474, 36.721527, 37.294258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.120594, 36.846718, 37.149200>,  <35.331264, 36.921833, 37.062164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.120594, 36.846718, 37.149200>,  <34.769474, 36.721527, 37.294258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120594, 36.846718, 37.149200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178274, 0.489225, 0.853743,
		0.444617, -0.814067, 0.373646,
		0.877801, 0.312977, -0.362644,
		35.383934, 36.940613, 37.040405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361828, 36.476997, 37.778790>,  <34.769474, 36.721527, 37.294258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361828, 36.476997, 37.778790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.475117, 36.804550, 37.579102>,  <35.543091, 37.001080, 37.459290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.475117, 36.804550, 37.579102>,  <35.361828, 36.476997, 37.778790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475117, 36.804550, 37.579102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256851, 0.436754, 0.862133,
		0.924020, -0.372401, -0.086631,
		0.283223, 0.818879, -0.499221,
		35.560085, 37.050213, 37.429337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948551, 36.659302, 38.120407>,  <35.361828, 36.476997, 37.778790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948551, 36.659302, 38.120407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.859364, 37.000130, 37.930981>,  <35.805851, 37.204624, 37.817326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.859364, 37.000130, 37.930981>,  <35.948551, 36.659302, 38.120407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859364, 37.000130, 37.930981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223280, 0.517523, 0.826024,
		0.948911, 0.078438, -0.305640,
		-0.222968, 0.852067, -0.473569,
		35.792473, 37.255749, 37.788910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571316, 37.166767, 38.216694>,  <35.948551, 36.659302, 38.120407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571316, 37.166767, 38.216694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.256302, 37.400387, 38.138031>,  <36.067291, 37.540558, 38.090832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.256302, 37.400387, 38.138031>,  <36.571316, 37.166767, 38.216694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256302, 37.400387, 38.138031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234275, 0.578886, 0.781029,
		0.570001, 0.569017, -0.592721,
		-0.787537, 0.584047, -0.196659,
		36.020042, 37.575600, 38.079033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883648, 37.786087, 38.232533>,  <36.571316, 37.166767, 38.216694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.883648, 37.786087, 38.232533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.492989, 37.844147, 38.295883>,  <36.258591, 37.878983, 38.333893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.492989, 37.844147, 38.295883>,  <36.883648, 37.786087, 38.232533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492989, 37.844147, 38.295883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200768, 0.354318, 0.913319,
		0.076450, 0.923791, -0.375187,
		-0.976651, 0.145149, 0.158380,
		36.199993, 37.887691, 38.343399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819202, 38.467102, 38.528538>,  <36.883648, 37.786087, 38.232533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819202, 38.467102, 38.528538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.453217, 38.322906, 38.601082>,  <36.233627, 38.236389, 38.644608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.453217, 38.322906, 38.601082>,  <36.819202, 38.467102, 38.528538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453217, 38.322906, 38.601082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110644, 0.656307, 0.746337,
		-0.388080, 0.662802, -0.640381,
		-0.914960, -0.360492, 0.181365,
		36.178730, 38.214760, 38.655491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333633, 39.028603, 38.554802>,  <36.819202, 38.467102, 38.528538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333633, 39.028603, 38.554802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.125507, 38.750675, 38.753395>,  <36.000633, 38.583920, 38.872551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.125507, 38.750675, 38.753395>,  <36.333633, 39.028603, 38.554802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125507, 38.750675, 38.753395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183625, 0.658813, 0.729553,
		-0.834000, 0.288428, -0.470375,
		-0.520313, -0.694820, 0.496487,
		35.969414, 38.542229, 38.902340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.539646, 39.538265, 39.184471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.582653, 39.152699, 39.281876>,  <35.608456, 38.921356, 39.340317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.582653, 39.152699, 39.281876>,  <35.539646, 39.538265, 39.184471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582653, 39.152699, 39.281876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366996, 0.189156, 0.910788,
		-0.923988, -0.187290, -0.333418,
		0.107514, -0.963920, 0.243512,
		35.614906, 38.863522, 39.354931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985687, 39.400906, 39.538052>,  <35.539646, 39.538265, 39.184471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985687, 39.400906, 39.538052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.230076, 39.106564, 39.654823>,  <35.376709, 38.929958, 39.724888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.230076, 39.106564, 39.654823>,  <34.985687, 39.400906, 39.538052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230076, 39.106564, 39.654823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256982, 0.164435, 0.952324,
		-0.748780, -0.656865, -0.088637,
		0.610974, -0.735860, 0.291928,
		35.413368, 38.885807, 39.742401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574085, 38.894241, 39.987488>,  <34.985687, 39.400906, 39.538052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574085, 38.894241, 39.987488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.963501, 38.852268, 40.068684>,  <35.197151, 38.827084, 40.117401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.963501, 38.852268, 40.068684>,  <34.574085, 38.894241, 39.987488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963501, 38.852268, 40.068684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177397, 0.212863, 0.960843,
		-0.144029, -0.971431, 0.188618,
		0.973543, -0.104930, 0.202987,
		35.255566, 38.820789, 40.129581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605896, 38.493710, 40.535439>,  <34.574085, 38.894241, 39.987488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605896, 38.493710, 40.535439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.954842, 38.689144, 40.542030>,  <35.164207, 38.806404, 40.545986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.954842, 38.689144, 40.542030>,  <34.605896, 38.493710, 40.535439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954842, 38.689144, 40.542030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065878, 0.084085, 0.994278,
		0.484405, -0.868454, 0.105540,
		0.872360, 0.488586, 0.016481,
		35.216549, 38.835720, 40.546974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973423, 38.166786, 41.092648>,  <34.605896, 38.493710, 40.535439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973423, 38.166786, 41.092648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.159744, 38.514130, 41.024548>,  <35.271538, 38.722534, 40.983688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.159744, 38.514130, 41.024548>,  <34.973423, 38.166786, 41.092648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159744, 38.514130, 41.024548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058760, 0.161622, 0.985102,
		0.882937, -0.468865, 0.024259,
		0.465800, 0.868357, -0.170253,
		35.299484, 38.774635, 40.973473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493797, 38.166237, 41.521233>,  <34.973423, 38.166786, 41.092648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493797, 38.166237, 41.521233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.419773, 38.549660, 41.434582>,  <35.375359, 38.779713, 41.382591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.419773, 38.549660, 41.434582>,  <35.493797, 38.166237, 41.521233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419773, 38.549660, 41.434582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161559, 0.247115, 0.955423,
		0.969357, 0.141810, -0.200593,
		-0.185058, 0.958553, -0.216632,
		35.364254, 38.837227, 41.369591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839558, 38.546040, 41.978745>,  <35.493797, 38.166237, 41.521233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839558, 38.546040, 41.978745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.596836, 38.831100, 41.837933>,  <35.451202, 39.002136, 41.753445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.596836, 38.831100, 41.837933>,  <35.839558, 38.546040, 41.978745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596836, 38.831100, 41.837933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150031, 0.537614, 0.829736,
		0.780567, 0.450668, -0.433144,
		-0.606800, 0.712650, -0.352029,
		35.414795, 39.044895, 41.732323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194271, 39.153500, 41.875351>,  <35.839558, 38.546040, 41.978745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.194271, 39.153500, 41.875351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.808681, 39.248150, 41.923962>,  <35.577328, 39.304939, 41.953129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.808681, 39.248150, 41.923962>,  <36.194271, 39.153500, 41.875351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808681, 39.248150, 41.923962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214789, 0.422889, 0.880358,
		0.156925, 0.874742, -0.458477,
		-0.963971, 0.236626, 0.121523,
		35.519489, 39.319138, 41.960419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245926, 39.763973, 42.123077>,  <36.194271, 39.153500, 41.875351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245926, 39.763973, 42.123077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.882282, 39.629467, 42.221416>,  <35.664097, 39.548763, 42.280418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.882282, 39.629467, 42.221416>,  <36.245926, 39.763973, 42.123077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882282, 39.629467, 42.221416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117091, 0.360102, 0.925536,
		-0.399760, 0.870200, -0.287998,
		-0.909110, -0.336270, 0.245847,
		35.609550, 39.528587, 42.295170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961349, 40.239231, 42.585880>,  <36.245926, 39.763973, 42.123077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961349, 40.239231, 42.585880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.725224, 39.919662, 42.631939>,  <35.583549, 39.727921, 42.659573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.725224, 39.919662, 42.631939>,  <35.961349, 40.239231, 42.585880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725224, 39.919662, 42.631939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013095, 0.152112, 0.988277,
		-0.807069, 0.581884, -0.100255,
		-0.590312, -0.798920, 0.115145,
		35.548130, 39.679985, 42.666481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592045, 40.427204, 43.154858>,  <35.961349, 40.239231, 42.585880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.592045, 40.427204, 43.154858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.470360, 40.046558, 43.137508>,  <35.397350, 39.818172, 43.127098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.470360, 40.046558, 43.137508>,  <35.592045, 40.427204, 43.154858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470360, 40.046558, 43.137508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073210, -0.022039, 0.997073,
		-0.949786, 0.306499, -0.062964,
		-0.304214, -0.951616, -0.043371,
		35.379097, 39.761074, 43.124496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000267, 40.274654, 43.672691>,  <35.592045, 40.427204, 43.154858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000267, 40.274654, 43.672691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.184399, 39.925171, 43.609779>,  <35.294876, 39.715481, 43.572033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.184399, 39.925171, 43.609779>,  <35.000267, 40.274654, 43.672691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184399, 39.925171, 43.609779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027633, -0.162974, 0.986243,
		-0.887320, -0.458338, -0.050878,
		0.460325, -0.873708, -0.157276,
		35.322495, 39.663059, 43.562595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880322, 39.985962, 44.283791>,  <35.000267, 40.274654, 43.672691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880322, 39.985962, 44.283791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.145687, 39.735928, 44.119278>,  <35.304905, 39.585907, 44.020573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.145687, 39.735928, 44.119278>,  <34.880322, 39.985962, 44.283791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145687, 39.735928, 44.119278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384717, -0.186486, 0.904000,
		-0.641774, -0.757953, 0.116763,
		0.663415, -0.625085, -0.411279,
		35.344711, 39.548401, 43.995895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717621, 39.335903, 44.678196>,  <34.880322, 39.985962, 44.283791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717621, 39.335903, 44.678196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.071712, 39.376751, 44.496674>,  <35.284168, 39.401260, 44.387760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.071712, 39.376751, 44.496674>,  <34.717621, 39.335903, 44.678196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071712, 39.376751, 44.496674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465131, -0.203932, 0.861432,
		-0.004574, -0.973644, -0.228027,
		0.885230, 0.102123, -0.453804,
		35.337280, 39.407387, 44.360531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231220, 38.783615, 44.895546>,  <34.717621, 39.335903, 44.678196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.231220, 38.783615, 44.895546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.472969, 39.074707, 44.765839>,  <35.618019, 39.249363, 44.688015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.472969, 39.074707, 44.765839>,  <35.231220, 38.783615, 44.895546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472969, 39.074707, 44.765839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616006, -0.168718, 0.769461,
		0.505249, -0.664790, -0.550253,
		0.604367, 0.727729, -0.324270,
		35.654278, 39.293026, 44.668556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770870, 38.599682, 45.287067>,  <35.231220, 38.783615, 44.895546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770870, 38.599682, 45.287067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.893848, 38.959354, 45.162521>,  <35.967636, 39.175159, 45.087795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.893848, 38.959354, 45.162521>,  <35.770870, 38.599682, 45.287067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893848, 38.959354, 45.162521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547604, 0.100412, 0.830690,
		0.778208, -0.425894, -0.461526,
		0.307443, 0.899184, -0.311363,
		35.986080, 39.229111, 45.069111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494659, 38.662659, 45.127174>,  <35.770870, 38.599682, 45.287067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494659, 38.662659, 45.127174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.373329, 39.030190, 45.228172>,  <36.300533, 39.250710, 45.288773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.373329, 39.030190, 45.228172>,  <36.494659, 38.662659, 45.127174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373329, 39.030190, 45.228172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606734, -0.018092, 0.794699,
		0.734758, 0.394249, -0.551995,
		-0.303322, 0.918826, 0.252497,
		36.282333, 39.305836, 45.303921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153339, 39.000217, 45.231659>,  <36.494659, 38.662659, 45.127174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153339, 39.000217, 45.231659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.898537, 39.273968, 45.373562>,  <36.745655, 39.438217, 45.458706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.898537, 39.273968, 45.373562>,  <37.153339, 39.000217, 45.231659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898537, 39.273968, 45.373562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612965, 0.170633, 0.771465,
		0.467437, 0.708883, -0.528192,
		-0.637006, 0.684375, 0.354760,
		36.707436, 39.479279, 45.479988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496937, 39.678486, 45.474892>,  <37.153339, 39.000217, 45.231659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496937, 39.678486, 45.474892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.161259, 39.605244, 45.679726>,  <36.959854, 39.561298, 45.802628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.161259, 39.605244, 45.679726>,  <37.496937, 39.678486, 45.474892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161259, 39.605244, 45.679726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512751, 0.047394, 0.857228,
		-0.181230, 0.981951, 0.054113,
		-0.839191, -0.183102, 0.512086,
		36.909500, 39.550312, 45.833351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557663, 40.193523, 45.981472>,  <37.496937, 39.678486, 45.474892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557663, 40.193523, 45.981472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.282070, 39.939228, 46.120701>,  <37.116714, 39.786652, 46.204239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.282070, 39.939228, 46.120701>,  <37.557663, 40.193523, 45.981472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282070, 39.939228, 46.120701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349384, 0.129439, 0.927996,
		-0.635013, 0.760978, 0.132935,
		-0.688978, -0.635734, 0.348068,
		37.075378, 39.748508, 46.225121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382263, 40.507465, 46.712433>,  <37.557663, 40.193523, 45.981472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382263, 40.507465, 46.712433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.286606, 40.119972, 46.685997>,  <37.229214, 39.887478, 46.670135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.286606, 40.119972, 46.685997>,  <37.382263, 40.507465, 46.712433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286606, 40.119972, 46.685997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272057, -0.132183, 0.953159,
		-0.932093, 0.209959, 0.295161,
		-0.239140, -0.968734, -0.066086,
		37.214863, 39.829353, 46.666172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903435, 40.280724, 47.273399>,  <37.382263, 40.507465, 46.712433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903435, 40.280724, 47.273399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.060436, 39.929398, 47.164211>,  <37.154636, 39.718601, 47.098698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.060436, 39.929398, 47.164211>,  <36.903435, 40.280724, 47.273399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060436, 39.929398, 47.164211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185182, -0.215239, 0.958843,
		-0.900915, -0.426898, 0.078165,
		0.392504, -0.878311, -0.272966,
		37.178188, 39.665905, 47.082321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549301, 39.667755, 47.619961>,  <36.903435, 40.280724, 47.273399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549301, 39.667755, 47.619961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.941338, 39.631828, 47.549133>,  <37.176559, 39.610271, 47.506638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.941338, 39.631828, 47.549133>,  <36.549301, 39.667755, 47.619961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941338, 39.631828, 47.549133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115258, -0.468768, 0.875770,
		-0.161661, -0.878743, -0.449083,
		0.980092, -0.089817, -0.177064,
		37.235367, 39.604881, 47.496014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971222, 39.955906, 47.552456>,  <36.549301, 39.667755, 47.619961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.971222, 39.955906, 47.552456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.718693, 39.694901, 47.720100>,  <35.567173, 39.538300, 47.820686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.718693, 39.694901, 47.720100>,  <35.971222, 39.955906, 47.552456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718693, 39.694901, 47.720100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439431, -0.144316, -0.886608,
		0.639006, -0.743910, -0.195624,
		-0.631325, -0.652511, 0.419116,
		35.529297, 39.499146, 47.845837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898067, 39.301029, 47.308041>,  <35.971222, 39.955906, 47.552456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.898067, 39.301029, 47.308041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.536423, 39.391479, 47.453064>,  <35.319435, 39.445751, 47.540077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.536423, 39.391479, 47.453064>,  <35.898067, 39.301029, 47.308041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536423, 39.391479, 47.453064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417350, -0.285360, -0.862779,
		-0.091637, -0.931363, 0.352371,
		-0.904114, 0.226125, 0.362555,
		35.265190, 39.459316, 47.561829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444134, 38.831211, 46.959084>,  <35.898067, 39.301029, 47.308041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444134, 38.831211, 46.959084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.171715, 39.088367, 47.099293>,  <35.008263, 39.242661, 47.183418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.171715, 39.088367, 47.099293>,  <35.444134, 38.831211, 46.959084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171715, 39.088367, 47.099293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549038, -0.131611, -0.825370,
		-0.484491, -0.754565, 0.442605,
		-0.681047, 0.642892, 0.350521,
		34.967400, 39.281235, 47.204449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708076, 38.521400, 46.899605>,  <35.444134, 38.831211, 46.959084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708076, 38.521400, 46.899605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.619503, 38.910603, 46.925594>,  <34.566360, 39.144123, 46.941189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.619503, 38.910603, 46.925594>,  <34.708076, 38.521400, 46.899605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619503, 38.910603, 46.925594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717239, -0.117358, -0.686873,
		-0.660709, -0.198693, 0.723867,
		-0.221429, 0.973009, 0.064971,
		34.553074, 39.202507, 46.945087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915146, 38.499710, 46.951187>,  <34.708076, 38.521400, 46.899605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915146, 38.499710, 46.951187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.987324, 38.882710, 46.861183>,  <34.030628, 39.112511, 46.807182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.987324, 38.882710, 46.861183>,  <33.915146, 38.499710, 46.951187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.987324, 38.882710, 46.861183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673016, -0.046633, -0.738156,
		-0.717280, 0.284630, 0.636000,
		0.180442, 0.957503, -0.225010,
		34.041458, 39.169960, 46.793682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270790, 38.867908, 46.965275>,  <33.915146, 38.499710, 46.951187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270790, 38.867908, 46.965275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.531528, 39.033413, 46.711063>,  <33.687973, 39.132717, 46.558537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.531528, 39.033413, 46.711063>,  <33.270790, 38.867908, 46.965275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531528, 39.033413, 46.711063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655518, -0.113949, -0.746534,
		-0.381306, 0.903225, 0.196951,
		0.651846, 0.413763, -0.635530,
		33.727081, 39.157543, 46.520405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786499, 39.212936, 46.543858>,  <33.270790, 38.867908, 46.965275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786499, 39.212936, 46.543858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.118782, 39.287048, 46.333866>,  <33.318150, 39.331516, 46.207870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.118782, 39.287048, 46.333866>,  <32.786499, 39.212936, 46.543858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118782, 39.287048, 46.333866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548108, 0.107021, -0.829533,
		-0.097511, 0.976841, 0.190455,
		0.830704, 0.185278, -0.524978,
		33.367992, 39.342632, 46.176373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572529, 39.729698, 46.117897>,  <32.786499, 39.212936, 46.543858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572529, 39.729698, 46.117897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.886375, 39.538391, 45.960091>,  <33.074684, 39.423607, 45.865406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.886375, 39.538391, 45.960091>,  <32.572529, 39.729698, 46.117897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.886375, 39.538391, 45.960091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467911, -0.039345, -0.882899,
		0.406736, 0.877335, -0.254656,
		0.784618, -0.478263, -0.394512,
		33.121761, 39.394913, 45.841736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.544266, 39.995998, 45.514462>,  <32.572529, 39.729698, 46.117897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.544266, 39.995998, 45.514462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.790562, 39.685604, 45.459740>,  <32.938339, 39.499367, 45.426907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.790562, 39.685604, 45.459740>,  <32.544266, 39.995998, 45.514462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790562, 39.685604, 45.459740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410036, -0.167292, -0.896596,
		0.672855, 0.608166, -0.421189,
		0.615741, -0.775982, -0.136806,
		32.975285, 39.452808, 45.418697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.906116, 40.093452, 44.901787>,  <32.544266, 39.995998, 45.514462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.906116, 40.093452, 44.901787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.906490, 39.696686, 44.952549>,  <32.906715, 39.458626, 44.983006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.906490, 39.696686, 44.952549>,  <32.906116, 40.093452, 44.901787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906490, 39.696686, 44.952549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346551, -0.119361, -0.930406,
		0.938031, -0.043114, -0.343860,
		0.000930, -0.991914, 0.126905,
		32.906769, 39.399113, 44.990620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348473, 39.801376, 44.502937>,  <32.906116, 40.093452, 44.901787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348473, 39.801376, 44.502937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.116432, 39.480404, 44.558926>,  <32.977207, 39.287819, 44.592518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.116432, 39.480404, 44.558926>,  <33.348473, 39.801376, 44.502937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116432, 39.480404, 44.558926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050859, -0.207185, -0.976979,
		0.812958, -0.559623, 0.160999,
		-0.580097, -0.802431, 0.139971,
		32.942402, 39.239674, 44.600918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670826, 39.314892, 44.143707>,  <33.348473, 39.801376, 44.502937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670826, 39.314892, 44.143707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.302582, 39.171997, 44.206772>,  <33.081635, 39.086262, 44.244610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.302582, 39.171997, 44.206772>,  <33.670826, 39.314892, 44.143707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.302582, 39.171997, 44.206772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093471, -0.190403, -0.977246,
		0.379128, -0.914400, 0.141896,
		-0.920611, -0.357238, 0.157657,
		33.026398, 39.064827, 44.254070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614872, 38.783611, 43.684433>,  <33.670826, 39.314892, 44.143707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614872, 38.783611, 43.684433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.230434, 38.840431, 43.779190>,  <32.999771, 38.874523, 43.836044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.230434, 38.840431, 43.779190>,  <33.614872, 38.783611, 43.684433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.230434, 38.840431, 43.779190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265950, -0.244267, -0.932526,
		-0.074602, -0.959247, 0.272543,
		-0.961096, 0.142051, 0.236889,
		32.942104, 38.883045, 43.850258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304756, 38.150803, 43.438454>,  <33.614872, 38.783611, 43.684433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.304756, 38.150803, 43.438454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.033218, 38.444515, 43.437435>,  <32.870296, 38.620743, 43.436825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.033218, 38.444515, 43.437435>,  <33.304756, 38.150803, 43.438454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033218, 38.444515, 43.437435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209756, -0.197242, -0.957652,
		-0.703688, -0.649559, 0.287916,
		-0.678841, 0.734280, -0.002548,
		32.829567, 38.664799, 43.436672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763428, 37.902554, 43.019344>,  <33.304756, 38.150803, 43.438454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763428, 37.902554, 43.019344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.724041, 38.300079, 43.039894>,  <32.700409, 38.538593, 43.052223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.724041, 38.300079, 43.039894>,  <32.763428, 37.902554, 43.019344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724041, 38.300079, 43.039894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212849, 0.029397, -0.976643,
		-0.972111, -0.107105, 0.208638,
		-0.098470, 0.993813, 0.051375,
		32.694500, 38.598225, 43.055305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390938, 38.032249, 42.402760>,  <32.763428, 37.902554, 43.019344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390938, 38.032249, 42.402760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.550308, 38.380005, 42.519661>,  <32.645931, 38.588657, 42.589802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.550308, 38.380005, 42.519661>,  <32.390938, 38.032249, 42.402760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.550308, 38.380005, 42.519661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004168, 0.316923, -0.948442,
		-0.917189, 0.379106, 0.122648,
		0.398430, 0.869390, 0.292258,
		32.669838, 38.640823, 42.607338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.970224, 38.612625, 42.139568>,  <32.390938, 38.032249, 42.402760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.970224, 38.612625, 42.139568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.314529, 38.815418, 42.157719>,  <32.521114, 38.937092, 42.168610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.314529, 38.815418, 42.157719>,  <31.970224, 38.612625, 42.139568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314529, 38.815418, 42.157719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000610, 0.088126, -0.996109,
		-0.509005, 0.857442, 0.075546,
		0.860763, 0.506979, 0.045380,
		32.572758, 38.967510, 42.171333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.893764, 39.230476, 41.649487>,  <31.970224, 38.612625, 42.139568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.893764, 39.230476, 41.649487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.285427, 39.190437, 41.720181>,  <32.520424, 39.166416, 41.762596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.285427, 39.190437, 41.720181>,  <31.893764, 39.230476, 41.649487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.285427, 39.190437, 41.720181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197003, 0.256269, -0.946317,
		0.049429, 0.961409, 0.270646,
		0.979156, -0.100093, 0.176734,
		32.579174, 39.160408, 41.773201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.216255, 39.796860, 41.099476>,  <31.893764, 39.230476, 41.649487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.216255, 39.796860, 41.099476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.490639, 39.530308, 41.216370>,  <32.655270, 39.370377, 41.286507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.490639, 39.530308, 41.216370>,  <32.216255, 39.796860, 41.099476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490639, 39.530308, 41.216370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422684, 0.038011, -0.905479,
		0.592286, 0.744642, 0.307743,
		0.685956, -0.666381, 0.292235,
		32.696426, 39.330395, 41.304039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.823765, 40.061855, 41.037804>,  <32.216255, 39.796860, 41.099476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.823765, 40.061855, 41.037804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.879192, 39.666615, 41.011089>,  <32.912449, 39.429470, 40.995060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.879192, 39.666615, 41.011089>,  <32.823765, 40.061855, 41.037804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879192, 39.666615, 41.011089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342515, 0.111094, -0.932921,
		0.929237, 0.106397, 0.353833,
		0.138569, -0.988098, -0.066790,
		32.920761, 39.370186, 40.991051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404427, 40.012650, 40.699135>,  <32.823765, 40.061855, 41.037804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.404427, 40.012650, 40.699135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.214775, 39.669243, 40.621002>,  <33.100983, 39.463200, 40.574123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.214775, 39.669243, 40.621002>,  <33.404427, 40.012650, 40.699135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.214775, 39.669243, 40.621002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122194, 0.155543, -0.980242,
		0.871935, -0.488630, 0.031158,
		-0.474129, -0.858515, -0.195331,
		33.072536, 39.411690, 40.562405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.452572, 40.991829, 33.885792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.128189, 40.838669, 33.708820>,  <37.933559, 40.746773, 33.602638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.128189, 40.838669, 33.708820>,  <38.452572, 40.991829, 33.885792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128189, 40.838669, 33.708820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526807, -0.806848, -0.267340,
		-0.254605, -0.449873, 0.856032,
		-0.810957, -0.382897, -0.442424,
		37.884903, 40.723801, 33.576092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327003, 40.247704, 34.245911>,  <38.452572, 40.991829, 33.885792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.327003, 40.247704, 34.245911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.163521, 40.282539, 33.882511>,  <38.065430, 40.303440, 33.664471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.163521, 40.282539, 33.882511>,  <38.327003, 40.247704, 34.245911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163521, 40.282539, 33.882511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363388, -0.897600, -0.249525,
		-0.837202, -0.432121, 0.335209,
		-0.408709, 0.087092, -0.908500,
		38.040909, 40.308666, 33.609962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069458, 39.637211, 34.075848>,  <38.327003, 40.247704, 34.245911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069458, 39.637211, 34.075848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.101822, 39.798531, 33.711254>,  <38.121239, 39.895325, 33.492496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.101822, 39.798531, 33.711254>,  <38.069458, 39.637211, 34.075848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101822, 39.798531, 33.711254> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329782, -0.873808, -0.357357,
		-0.940583, -0.271678, -0.203701,
		0.080909, 0.403301, -0.911483,
		38.126095, 39.919521, 33.437809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730145, 39.174232, 33.654270>,  <38.069458, 39.637211, 34.075848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730145, 39.174232, 33.654270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.989025, 39.365608, 33.416874>,  <38.144352, 39.480434, 33.274437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.989025, 39.365608, 33.416874>,  <37.730145, 39.174232, 33.654270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989025, 39.365608, 33.416874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449189, -0.868362, -0.210184,
		-0.615922, -0.130556, -0.776914,
		0.647202, 0.478438, -0.593487,
		38.183186, 39.509140, 33.238827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032726, 38.657944, 33.282665>,  <37.730145, 39.174232, 33.654270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032726, 38.657944, 33.282665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.290051, 38.954117, 33.204781>,  <38.444443, 39.131821, 33.158051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.290051, 38.954117, 33.204781>,  <38.032726, 38.657944, 33.282665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290051, 38.954117, 33.204781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742229, -0.665526, -0.078556,
		-0.187753, -0.093987, -0.977709,
		0.643307, 0.740434, -0.194715,
		38.483044, 39.176247, 33.146366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213642, 38.530834, 32.650681>,  <38.032726, 38.657944, 33.282665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213642, 38.530834, 32.650681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.518467, 38.761513, 32.768452>,  <38.701363, 38.899921, 32.839115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.518467, 38.761513, 32.768452>,  <38.213642, 38.530834, 32.650681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518467, 38.761513, 32.768452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646860, -0.657699, -0.386011,
		-0.028966, 0.484617, -0.874247,
		0.762058, 0.576697, 0.294429,
		38.747086, 38.934521, 32.856781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677021, 38.452995, 32.119392>,  <38.213642, 38.530834, 32.650681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677021, 38.452995, 32.119392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.916199, 38.595913, 32.406391>,  <39.059704, 38.681664, 32.578590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.916199, 38.595913, 32.406391>,  <38.677021, 38.452995, 32.119392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916199, 38.595913, 32.406391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610550, -0.783003, -0.118896,
		0.519323, 0.509162, -0.686337,
		0.597941, 0.357297, 0.717500,
		39.095581, 38.703102, 32.621639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502045, 38.541809, 31.884735>,  <38.677021, 38.452995, 32.119392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502045, 38.541809, 31.884735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.462311, 38.489876, 32.279354>,  <39.438469, 38.458714, 32.516125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.462311, 38.489876, 32.279354>,  <39.502045, 38.541809, 31.884735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462311, 38.489876, 32.279354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491850, -0.868269, -0.064746,
		0.864994, 0.478801, 0.150113,
		-0.099338, -0.129838, 0.986547,
		39.432510, 38.450924, 32.575317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144073, 38.237473, 32.115997>,  <39.502045, 38.541809, 31.884735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.144073, 38.237473, 32.115997> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.940105, 38.161667, 32.451630>,  <39.817722, 38.116184, 32.653011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.940105, 38.161667, 32.451630>,  <40.144073, 38.237473, 32.115997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940105, 38.161667, 32.451630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585291, -0.791274, 0.176973,
		0.630408, 0.581352, 0.514409,
		-0.509922, -0.189514, 0.839085,
		39.787128, 38.104813, 32.703354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599670, 38.187286, 32.525055>,  <40.144073, 38.237473, 32.115997>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.599670, 38.187286, 32.525055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.279266, 37.983475, 32.650761>,  <40.087025, 37.861187, 32.726185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.279266, 37.983475, 32.650761>,  <40.599670, 38.187286, 32.525055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.279266, 37.983475, 32.650761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589740, -0.761836, 0.267978,
		0.102875, 0.399988, 0.910729,
		-0.801014, -0.509525, 0.314262,
		40.038963, 37.830616, 32.745041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.940384, 37.780445, 33.053112>,  <40.599670, 38.187286, 32.525055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.940384, 37.780445, 33.053112> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.576794, 37.615219, 33.030689>,  <40.358639, 37.516083, 33.017235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.576794, 37.615219, 33.030689>,  <40.940384, 37.780445, 33.053112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.576794, 37.615219, 33.030689> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336322, -0.806156, 0.486827,
		-0.246284, 0.423660, 0.871698,
		-0.908973, -0.413068, -0.056057,
		40.304100, 37.491299, 33.013870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790569, 37.610039, 33.743587>,  <40.940384, 37.780445, 33.053112>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.790569, 37.610039, 33.743587> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.588417, 37.371910, 33.493729>,  <40.467125, 37.229031, 33.343815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.588417, 37.371910, 33.493729>,  <40.790569, 37.610039, 33.743587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.588417, 37.371910, 33.493729> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430998, -0.801279, 0.414961,
		-0.747552, -0.059510, 0.661532,
		-0.505377, -0.595324, -0.624647,
		40.436806, 37.193314, 33.306335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.517490, 37.151974, 34.052689>,  <40.790569, 37.610039, 33.743587>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.517490, 37.151974, 34.052689> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.475159, 36.954887, 33.707195>,  <40.449760, 36.836636, 33.499901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.475159, 36.954887, 33.707195>,  <40.517490, 37.151974, 34.052689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.475159, 36.954887, 33.707195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471900, -0.789454, 0.392520,
		-0.875277, -0.366056, 0.316058,
		-0.105828, -0.492712, -0.863733,
		40.443409, 36.807076, 33.448074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.295269, 36.485622, 34.225410>,  <40.517490, 37.151974, 34.052689>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.295269, 36.485622, 34.225410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.433483, 36.445145, 33.852238>,  <40.516411, 36.420860, 33.628334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.433483, 36.445145, 33.852238>,  <40.295269, 36.485622, 34.225410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433483, 36.445145, 33.852238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608552, -0.732616, 0.304857,
		-0.714331, -0.673078, -0.191567,
		0.345537, -0.101191, -0.932933,
		40.537144, 36.414787, 33.572357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.206085, 35.828186, 34.122025>,  <40.295269, 36.485622, 34.225410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.206085, 35.828186, 34.122025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.488178, 35.932976, 33.858505>,  <40.657433, 35.995850, 33.700394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.488178, 35.932976, 33.858505>,  <40.206085, 35.828186, 34.122025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.488178, 35.932976, 33.858505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540360, -0.800175, 0.260252,
		-0.458973, -0.539526, -0.705872,
		0.705234, 0.261976, -0.658797,
		40.699749, 36.011570, 33.660866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.448215, 35.182556, 33.969975>,  <40.206085, 35.828186, 34.122025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.448215, 35.182556, 33.969975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.725327, 35.419109, 33.804893>,  <40.891594, 35.561043, 33.705845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.725327, 35.419109, 33.804893>,  <40.448215, 35.182556, 33.969975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.725327, 35.419109, 33.804893> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681453, -0.724097, 0.106323,
		-0.235956, -0.354893, -0.904641,
		0.692782, 0.591383, -0.412698,
		40.933163, 35.596523, 33.681084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713898, 34.838108, 33.360935>,  <40.448215, 35.182556, 33.969975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713898, 34.838108, 33.360935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.987972, 35.097752, 33.493103>,  <41.152416, 35.253536, 33.572403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.987972, 35.097752, 33.493103>,  <40.713898, 34.838108, 33.360935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.987972, 35.097752, 33.493103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681805, -0.731186, 0.022566,
		0.256246, 0.209819, -0.943565,
		0.685186, 0.649109, 0.330419,
		41.193527, 35.292484, 33.592228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.283485, 34.791962, 32.956085>,  <40.713898, 34.838108, 33.360935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.283485, 34.791962, 32.956085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.404789, 34.927280, 33.312420>,  <41.477573, 35.008472, 33.526218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.404789, 34.927280, 33.312420>,  <41.283485, 34.791962, 32.956085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.404789, 34.927280, 33.312420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568845, -0.814283, 0.115581,
		0.764491, 0.471694, -0.439383,
		0.303263, 0.338301, 0.890833,
		41.495770, 35.028770, 33.579670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039993, 34.806625, 32.923920>,  <41.283485, 34.791962, 32.956085>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.039993, 34.806625, 32.923920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.950420, 34.796028, 33.313618>,  <41.896679, 34.789669, 33.547436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.950420, 34.796028, 33.313618>,  <42.039993, 34.806625, 32.923920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.950420, 34.796028, 33.313618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731860, -0.664709, 0.150143,
		0.643612, 0.746633, 0.168234,
		-0.223929, -0.026490, 0.974246,
		41.883244, 34.788082, 33.605892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.576900, 34.522430, 33.257874>,  <42.039993, 34.806625, 32.923920>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.576900, 34.522430, 33.257874> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.333149, 34.473927, 33.571293>,  <42.186897, 34.444824, 33.759346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.333149, 34.473927, 33.571293>,  <42.576900, 34.522430, 33.257874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.333149, 34.473927, 33.571293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426829, -0.882991, 0.195307,
		0.668185, 0.453458, 0.589834,
		-0.609382, -0.121257, 0.783550,
		42.150333, 34.437550, 33.806358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.112667, 34.436302, 33.811649>,  <42.576900, 34.522430, 33.257874>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.112667, 34.436302, 33.811649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.758526, 34.282787, 33.916615>,  <42.546043, 34.190678, 33.979595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.758526, 34.282787, 33.916615>,  <43.112667, 34.436302, 33.811649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.758526, 34.282787, 33.916615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464486, -0.754662, 0.463397,
		0.020187, 0.532157, 0.846405,
		-0.885350, -0.383789, 0.262414,
		42.492920, 34.167652, 33.995338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.545387, 35.031353, 33.956604>,  <43.112667, 34.436302, 33.811649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.545387, 35.031353, 33.956604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.918667, 35.153931, 34.031689>,  <44.142635, 35.227478, 34.076740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.918667, 35.153931, 34.031689>,  <43.545387, 35.031353, 33.956604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.918667, 35.153931, 34.031689> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323397, 0.488358, 0.810506,
		0.156706, -0.817067, 0.554838,
		0.933197, 0.306444, 0.187709,
		44.198627, 35.245865, 34.088001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.769222, 34.810349, 34.585850>,  <43.545387, 35.031353, 33.956604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.769222, 34.810349, 34.585850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.967571, 35.145638, 34.495087>,  <44.086578, 35.346813, 34.440628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.967571, 35.145638, 34.495087>,  <43.769222, 34.810349, 34.585850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.967571, 35.145638, 34.495087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317288, 0.418115, 0.851180,
		0.808357, -0.350078, 0.473290,
		0.495870, 0.838227, -0.226911,
		44.116333, 35.397106, 34.427013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.851410, 35.100597, 35.257278>,  <43.769222, 34.810349, 34.585850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.851410, 35.100597, 35.257278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.992802, 35.380733, 35.009224>,  <44.077637, 35.548817, 34.860390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.992802, 35.380733, 35.009224>,  <43.851410, 35.100597, 35.257278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.992802, 35.380733, 35.009224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223581, 0.706973, 0.670970,
		0.908331, -0.098521, 0.406483,
		0.353477, 0.700345, -0.620138,
		44.098846, 35.590836, 34.823181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.243767, 35.508881, 35.746353>,  <43.851410, 35.100597, 35.257278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.243767, 35.508881, 35.746353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.119671, 35.692383, 35.413296>,  <44.045212, 35.802483, 35.213463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.119671, 35.692383, 35.413296>,  <44.243767, 35.508881, 35.746353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.119671, 35.692383, 35.413296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399891, 0.731627, 0.552096,
		0.862461, 0.504248, -0.043527,
		-0.310239, 0.458755, -0.832644,
		44.026600, 35.830009, 35.163502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.481377, 36.225494, 35.880657>,  <44.243767, 35.508881, 35.746353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.481377, 36.225494, 35.880657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.197227, 36.223099, 35.599136>,  <44.026737, 36.221661, 35.430222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.197227, 36.223099, 35.599136>,  <44.481377, 36.225494, 35.880657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.197227, 36.223099, 35.599136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508558, 0.695653, 0.507380,
		0.486564, 0.718353, -0.497218,
		-0.710369, -0.005991, -0.703804,
		43.984116, 36.221302, 35.387997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.278500, 36.857864, 35.754257>,  <44.481377, 36.225494, 35.880657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.278500, 36.857864, 35.754257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.966236, 36.651695, 35.612888>,  <43.778877, 36.527992, 35.528065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.966236, 36.651695, 35.612888>,  <44.278500, 36.857864, 35.754257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.966236, 36.651695, 35.612888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624929, 0.638487, 0.449220,
		-0.005880, 0.571554, -0.820543,
		-0.780659, -0.515423, -0.353426,
		43.732037, 36.497070, 35.506859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.733616, 37.457867, 35.751907>,  <44.278500, 36.857864, 35.754257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.733616, 37.457867, 35.751907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.520691, 37.126514, 35.682137>,  <43.392937, 36.927704, 35.640274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.520691, 37.126514, 35.682137>,  <43.733616, 37.457867, 35.751907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.520691, 37.126514, 35.682137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838228, 0.544589, -0.028229,
		0.118375, 0.131182, -0.984266,
		-0.532317, -0.828381, -0.174426,
		43.360996, 36.878002, 35.629810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.305870, 37.561058, 35.060627>,  <43.733616, 37.457867, 35.751907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.305870, 37.561058, 35.060627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.144695, 37.282227, 35.297852>,  <43.047989, 37.114925, 35.440186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.144695, 37.282227, 35.297852>,  <43.305870, 37.561058, 35.060627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.144695, 37.282227, 35.297852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892821, 0.441888, -0.087206,
		-0.201276, -0.564633, -0.800423,
		-0.402937, -0.697082, 0.593058,
		43.023815, 37.073101, 35.475769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.619099, 37.265774, 34.818851>,  <43.305870, 37.561058, 35.060627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.619099, 37.265774, 34.818851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.602909, 37.191341, 35.211533>,  <42.593193, 37.146683, 35.447140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.602909, 37.191341, 35.211533>,  <42.619099, 37.265774, 34.818851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.602909, 37.191341, 35.211533> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930151, 0.365868, 0.030997,
		-0.364941, -0.911875, -0.187891,
		-0.040478, -0.186079, 0.981700,
		42.590767, 37.135517, 35.506042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.981453, 37.018982, 34.884403>,  <42.619099, 37.265774, 34.818851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.981453, 37.018982, 34.884403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.057941, 37.080585, 35.272160>,  <42.103832, 37.117546, 35.504814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.057941, 37.080585, 35.272160>,  <41.981453, 37.018982, 34.884403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.057941, 37.080585, 35.272160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917962, 0.377743, 0.121061,
		-0.347536, -0.913013, 0.213600,
		0.191217, 0.154004, 0.969391,
		42.115307, 37.126785, 35.562977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.355614, 36.669559, 35.327717>,  <41.981453, 37.018982, 34.884403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.355614, 36.669559, 35.327717> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.537041, 36.956814, 35.538830>,  <41.645897, 37.129166, 35.665497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.537041, 36.956814, 35.538830>,  <41.355614, 36.669559, 35.327717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.537041, 36.956814, 35.538830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889264, 0.403886, 0.214674,
		-0.059001, -0.566712, 0.821800,
		0.453572, 0.718132, 0.527787,
		41.673111, 37.172253, 35.697166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.068130, 36.693466, 36.049946>,  <41.355614, 36.669559, 35.327717>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.068130, 36.693466, 36.049946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.231499, 37.049995, 35.971218>,  <41.329517, 37.263912, 35.923981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.231499, 37.049995, 35.971218>,  <41.068130, 36.693466, 36.049946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.231499, 37.049995, 35.971218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871952, 0.444745, 0.204698,
		0.269989, 0.088018, 0.958832,
		0.408418, 0.891322, -0.196824,
		41.354023, 37.317390, 35.912170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.905651, 37.086018, 36.714981>,  <41.068130, 36.693466, 36.049946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.905651, 37.086018, 36.714981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.005070, 37.378014, 36.460316>,  <41.064720, 37.553211, 36.307518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.005070, 37.378014, 36.460316>,  <40.905651, 37.086018, 36.714981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.005070, 37.378014, 36.460316> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858115, 0.470826, 0.204846,
		0.449291, 0.495412, 0.743441,
		0.248548, 0.729993, -0.636658,
		41.079636, 37.597012, 36.269318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.744385, 37.692726, 37.051491>,  <40.905651, 37.086018, 36.714981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.744385, 37.692726, 37.051491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.774548, 37.826118, 36.675598>,  <40.792645, 37.906155, 36.450062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.774548, 37.826118, 36.675598>,  <40.744385, 37.692726, 37.051491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.774548, 37.826118, 36.675598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783044, 0.603294, 0.151255,
		0.617378, 0.724448, 0.306625,
		0.075409, 0.333483, -0.939736,
		40.797169, 37.926163, 36.393677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.529152, 38.445854, 37.119503>,  <40.744385, 37.692726, 37.051491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.529152, 38.445854, 37.119503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.519707, 38.400215, 36.722229>,  <40.514038, 38.372833, 36.483864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.519707, 38.400215, 36.722229>,  <40.529152, 38.445854, 37.119503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.519707, 38.400215, 36.722229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824310, 0.564328, -0.045230,
		0.565645, 0.817627, -0.107380,
		-0.023616, -0.114099, -0.993188,
		40.512623, 38.365986, 36.424271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.394127, 39.084713, 36.806725>,  <40.529152, 38.445854, 37.119503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.394127, 39.084713, 36.806725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.274395, 38.808125, 36.543732>,  <40.202557, 38.642174, 36.385937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.274395, 38.808125, 36.543732>,  <40.394127, 39.084713, 36.806725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.274395, 38.808125, 36.543732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913223, 0.407266, -0.012563,
		0.276455, 0.596664, -0.753369,
		-0.299326, -0.691467, -0.657478,
		40.184597, 38.600685, 36.346489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957657, 39.420033, 36.407986>,  <40.394127, 39.084713, 36.806725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957657, 39.420033, 36.407986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.865944, 39.045296, 36.302338>,  <39.810917, 38.820454, 36.238949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.865944, 39.045296, 36.302338>,  <39.957657, 39.420033, 36.407986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865944, 39.045296, 36.302338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884314, 0.313873, -0.345648,
		0.406717, 0.154311, -0.900427,
		-0.229283, -0.936841, -0.264117,
		39.797157, 38.764244, 36.223103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585003, 39.505604, 35.787701>,  <39.957657, 39.420033, 36.407986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.585003, 39.505604, 35.787701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.471752, 39.154541, 35.942390>,  <39.403801, 38.943901, 36.035202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.471752, 39.154541, 35.942390>,  <39.585003, 39.505604, 35.787701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471752, 39.154541, 35.942390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956181, 0.226960, -0.184951,
		0.074554, -0.422139, -0.903460,
		-0.283125, -0.877660, 0.386721,
		39.386814, 38.891243, 36.058407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.136566, 39.313049, 35.319633>,  <39.585003, 39.505604, 35.787701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.136566, 39.313049, 35.319633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.061432, 39.107555, 35.654488>,  <39.016354, 38.984261, 35.855400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.061432, 39.107555, 35.654488>,  <39.136566, 39.313049, 35.319633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.061432, 39.107555, 35.654488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934681, 0.355388, 0.008374,
		-0.301810, -0.780884, -0.546929,
		-0.187833, -0.513731, 0.837137,
		39.005081, 38.953438, 35.905628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566727, 38.919289, 35.214306>,  <39.136566, 39.313049, 35.319633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566727, 38.919289, 35.214306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.574051, 38.929779, 35.614101>,  <38.578445, 38.936073, 35.853977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.574051, 38.929779, 35.614101>,  <38.566727, 38.919289, 35.214306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574051, 38.929779, 35.614101> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915221, 0.402905, 0.006196,
		-0.402536, -0.914866, 0.031380,
		0.018312, 0.026225, 0.999489,
		38.579544, 38.937649, 35.913948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921398, 38.780170, 35.410114>,  <38.566727, 38.919289, 35.214306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921398, 38.780170, 35.410114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.063152, 38.984695, 35.723286>,  <38.148205, 39.107410, 35.911186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.063152, 38.984695, 35.723286>,  <37.921398, 38.780170, 35.410114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063152, 38.984695, 35.723286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761895, 0.643312, -0.075268,
		-0.542150, -0.569833, 0.617546,
		0.354385, 0.511312, 0.782925,
		38.169468, 39.138088, 35.958164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.545006, 37.341984, 36.703590> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179909, 37.213192, 36.804165>,  <35.960850, 37.135918, 36.864510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179909, 37.213192, 36.804165>,  <36.545006, 37.341984, 36.703590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179909, 37.213192, 36.804165> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048097, -0.695892, -0.716534,
		0.405683, -0.641921, 0.650660,
		-0.912747, -0.321981, 0.251437,
		35.906086, 37.116596, 36.879597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603466, 36.642994, 36.444485>,  <36.545006, 37.341984, 36.703590>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603466, 36.642994, 36.444485> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218571, 36.729111, 36.511108>,  <35.987633, 36.780781, 36.551083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218571, 36.729111, 36.511108>,  <36.603466, 36.642994, 36.444485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218571, 36.729111, 36.511108> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267644, -0.636799, -0.723086,
		-0.049611, -0.740361, 0.670376,
		-0.962240, 0.215295, 0.166561,
		35.929897, 36.793701, 36.561077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274624, 36.027489, 36.521996>,  <36.603466, 36.642994, 36.444485>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274624, 36.027489, 36.521996> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989014, 36.283039, 36.407455>,  <35.817646, 36.436371, 36.338734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989014, 36.283039, 36.407455>,  <36.274624, 36.027489, 36.521996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989014, 36.283039, 36.407455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241510, -0.608661, -0.755780,
		-0.657142, -0.470493, 0.588898,
		-0.714029, 0.638880, -0.286348,
		35.774803, 36.474705, 36.321552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611549, 35.685062, 36.554386>,  <36.274624, 36.027489, 36.521996>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611549, 35.685062, 36.554386> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571461, 35.994408, 36.303986>,  <35.547409, 36.180016, 36.153748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571461, 35.994408, 36.303986>,  <35.611549, 35.685062, 36.554386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571461, 35.994408, 36.303986> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415434, -0.604222, -0.679949,
		-0.904085, 0.191916, 0.381835,
		-0.100219, 0.773359, -0.625997,
		35.541393, 36.226414, 36.116188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150990, 35.294224, 36.136635>,  <35.611549, 35.685062, 36.554386>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150990, 35.294224, 36.136635> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263504, 35.628670, 35.948257>,  <35.331013, 35.829338, 35.835232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263504, 35.628670, 35.948257>,  <35.150990, 35.294224, 36.136635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263504, 35.628670, 35.948257> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117432, -0.457083, -0.881637,
		-0.952412, 0.303295, -0.030384,
		0.281284, 0.836114, -0.470948,
		35.347889, 35.879505, 35.806973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540531, 35.568504, 35.650948>,  <35.150990, 35.294224, 36.136635>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540531, 35.568504, 35.650948> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897060, 35.705700, 35.532356>,  <35.110977, 35.788017, 35.461201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897060, 35.705700, 35.532356>,  <34.540531, 35.568504, 35.650948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897060, 35.705700, 35.532356> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129265, -0.434547, -0.891325,
		-0.434547, 0.832784, -0.342986,
		0.891325, 0.342986, -0.296481,
		35.164459, 35.808598, 35.443413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630833, 35.570206, 34.899426>,  <34.540531, 35.568504, 35.650948>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.630833, 35.570206, 34.899426> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017330, 35.609028, 34.994892>,  <35.249229, 35.632320, 35.052170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017330, 35.609028, 34.994892>,  <34.630833, 35.570206, 34.899426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017330, 35.609028, 34.994892> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247561, -0.606367, -0.755667,
		0.071373, 0.789239, -0.609924,
		0.966240, 0.097059, 0.238663,
		35.307201, 35.638145, 35.066490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909935, 35.671719, 34.179089>,  <34.630833, 35.570206, 34.899426>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909935, 35.671719, 34.179089> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192509, 35.559834, 34.439152>,  <35.362053, 35.492702, 34.595192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192509, 35.559834, 34.439152>,  <34.909935, 35.671719, 34.179089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192509, 35.559834, 34.439152> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332872, -0.679362, -0.653960,
		0.624617, 0.678401, -0.386815,
		0.706434, -0.279715, 0.650162,
		35.404438, 35.475918, 34.634201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565331, 35.741394, 33.860527>,  <34.909935, 35.671719, 34.179089>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.565331, 35.741394, 33.860527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614178, 35.484974, 34.163616>,  <35.643486, 35.331123, 34.345470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614178, 35.484974, 34.163616>,  <35.565331, 35.741394, 33.860527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614178, 35.484974, 34.163616> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182133, -0.736000, -0.652022,
		0.975662, 0.217628, 0.026880,
		0.122115, -0.641048, 0.757724,
		35.650810, 35.292660, 34.390934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017086, 35.300312, 33.441608>,  <35.565331, 35.741394, 33.860527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017086, 35.300312, 33.441608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925320, 35.124306, 33.788883>,  <35.870262, 35.018700, 33.997250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925320, 35.124306, 33.788883>,  <36.017086, 35.300312, 33.441608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925320, 35.124306, 33.788883> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135027, -0.897742, -0.419318,
		0.963918, 0.021032, 0.265367,
		-0.229412, -0.440020, 0.868189,
		35.856495, 34.992298, 34.049339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667873, 34.858463, 33.746189>,  <36.017086, 35.300312, 33.441608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667873, 34.858463, 33.746189> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318462, 34.730377, 33.892841>,  <36.108818, 34.653526, 33.980835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318462, 34.730377, 33.892841>,  <36.667873, 34.858463, 33.746189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318462, 34.730377, 33.892841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179699, -0.912105, -0.368474,
		0.452399, -0.255986, 0.854287,
		-0.873523, -0.320212, 0.366635,
		36.056404, 34.634315, 34.002831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861526, 34.249821, 33.950008>,  <36.667873, 34.858463, 33.746189>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.861526, 34.249821, 33.950008> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463337, 34.218731, 33.928116>,  <36.224422, 34.200077, 33.914978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463337, 34.218731, 33.928116>,  <36.861526, 34.249821, 33.950008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463337, 34.218731, 33.928116> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092520, -0.924494, -0.369798,
		-0.021858, -0.373187, 0.927499,
		-0.995471, -0.077729, -0.054735,
		36.164696, 34.195412, 33.911694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580666, 33.613750, 34.401447>,  <36.861526, 34.249821, 33.950008>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580666, 33.613750, 34.401447> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421745, 33.721226, 34.050457>,  <36.326393, 33.785709, 33.839863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421745, 33.721226, 34.050457>,  <36.580666, 33.613750, 34.401447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421745, 33.721226, 34.050457> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088824, -0.940430, -0.328180,
		-0.913381, -0.208326, 0.349765,
		-0.397298, 0.268686, -0.877475,
		36.302555, 33.801830, 33.787216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247719, 33.272377, 34.623333>,  <36.580666, 33.613750, 34.401447>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247719, 33.272377, 34.623333> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421844, 32.912403, 34.633354>,  <37.526318, 32.696419, 34.639366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421844, 32.912403, 34.633354>,  <37.247719, 33.272377, 34.623333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421844, 32.912403, 34.633354> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819044, -0.384326, 0.425982,
		-0.373722, -0.205964, -0.904384,
		0.435315, -0.899929, 0.025062,
		37.552437, 32.642426, 34.640869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794048, 32.716438, 34.307606>,  <37.247719, 33.272377, 34.623333>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794048, 32.716438, 34.307606> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026909, 32.572632, 34.599316>,  <37.166626, 32.486347, 34.774342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026909, 32.572632, 34.599316>,  <36.794048, 32.716438, 34.307606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026909, 32.572632, 34.599316> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795035, -0.439615, 0.417922,
		0.170351, -0.823095, -0.541751,
		0.582151, -0.359517, 0.729278,
		37.201553, 32.464775, 34.818100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623432, 32.040142, 34.442570>,  <36.794048, 32.716438, 34.307606>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623432, 32.040142, 34.442570> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800049, 32.147953, 34.784889>,  <36.906017, 32.212639, 34.990280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800049, 32.147953, 34.784889>,  <36.623432, 32.040142, 34.442570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800049, 32.147953, 34.784889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769976, -0.375848, 0.515631,
		0.460631, -0.886617, 0.041582,
		0.441539, 0.269532, 0.855801,
		36.932510, 32.228813, 35.041630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512756, 31.474264, 34.897621>,  <36.623432, 32.040142, 34.442570>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.512756, 31.474264, 34.897621> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594158, 31.757154, 35.168446>,  <36.642998, 31.926889, 35.330940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594158, 31.757154, 35.168446>,  <36.512756, 31.474264, 34.897621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594158, 31.757154, 35.168446> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717797, -0.362528, 0.594424,
		0.665848, -0.606962, 0.433870,
		0.203502, 0.707227, 0.677065,
		36.655209, 31.969322, 35.371567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574680, 31.061813, 35.532547>,  <36.512756, 31.474264, 34.897621>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574680, 31.061813, 35.532547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522697, 31.448658, 35.620007>,  <36.491508, 31.680765, 35.672482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522697, 31.448658, 35.620007>,  <36.574680, 31.061813, 35.532547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522697, 31.448658, 35.620007> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616839, -0.251510, 0.745823,
		0.776286, -0.037946, 0.629237,
		-0.129959, 0.967110, 0.218651,
		36.483711, 31.738791, 35.685600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521137, 31.127758, 36.303795>,  <36.574680, 31.061813, 35.532547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521137, 31.127758, 36.303795> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354950, 31.469471, 36.178837>,  <36.255238, 31.674500, 36.103863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354950, 31.469471, 36.178837>,  <36.521137, 31.127758, 36.303795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354950, 31.469471, 36.178837> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645480, -0.034916, 0.762979,
		0.640892, 0.518636, 0.565929,
		-0.415468, 0.854282, -0.312392,
		36.230309, 31.725756, 36.085121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620281, 31.699373, 36.759289>,  <36.521137, 31.127758, 36.303795>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620281, 31.699373, 36.759289> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282494, 31.788788, 36.564594>,  <36.079823, 31.842436, 36.447777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282494, 31.788788, 36.564594>,  <36.620281, 31.699373, 36.759289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282494, 31.788788, 36.564594> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481138, 0.082701, 0.872735,
		0.235341, 0.971181, 0.037714,
		-0.844465, 0.223536, -0.486735,
		36.029156, 31.855848, 36.418575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233997, 32.166882, 37.190186>,  <36.620281, 31.699373, 36.759289>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233997, 32.166882, 37.190186> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944057, 32.124645, 36.917877>,  <35.770096, 32.099304, 36.754494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944057, 32.124645, 36.917877>,  <36.233997, 32.166882, 37.190186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944057, 32.124645, 36.917877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645653, 0.448768, 0.617850,
		0.240268, 0.887388, -0.393464,
		-0.724847, -0.105592, -0.680770,
		35.726604, 32.092968, 36.713646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841122, 32.788334, 37.174599>,  <36.233997, 32.166882, 37.190186>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841122, 32.788334, 37.174599> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581291, 32.539837, 36.999279>,  <35.425392, 32.390739, 36.894089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581291, 32.539837, 36.999279>,  <35.841122, 32.788334, 37.174599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581291, 32.539837, 36.999279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745385, 0.406766, 0.528150,
		-0.149822, 0.669778, -0.727290,
		-0.649580, -0.621240, -0.438301,
		35.386417, 32.353466, 36.867790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333038, 33.253174, 36.919052>,  <35.841122, 32.788334, 37.174599>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333038, 33.253174, 36.919052> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.175404, 32.887375, 36.955685>,  <35.080822, 32.667896, 36.977665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.175404, 32.887375, 36.955685>,  <35.333038, 33.253174, 36.919052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175404, 32.887375, 36.955685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697490, 0.362473, 0.618159,
		-0.598503, 0.179728, -0.780700,
		-0.394083, -0.914501, 0.091582,
		35.057178, 32.613026, 36.983158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633453, 33.242630, 36.832451>,  <35.333038, 33.253174, 36.919052>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633453, 33.242630, 36.832451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675781, 32.911514, 37.052837>,  <34.701180, 32.712845, 37.185070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675781, 32.911514, 37.052837>,  <34.633453, 33.242630, 36.832451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675781, 32.911514, 37.052837> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625425, 0.375357, 0.684069,
		-0.773075, -0.416979, -0.477999,
		0.105822, -0.827789, 0.550968,
		34.707527, 32.663177, 37.218128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960571, 33.042377, 37.042324>,  <34.633453, 33.242630, 36.832451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960571, 33.042377, 37.042324> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204834, 32.862865, 37.303307>,  <34.351391, 32.755157, 37.459896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204834, 32.862865, 37.303307>,  <33.960571, 33.042377, 37.042324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204834, 32.862865, 37.303307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616878, 0.247039, 0.747284,
		-0.496548, -0.858818, -0.125987,
		0.610657, -0.448781, 0.652452,
		34.388031, 32.728230, 37.499043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.520638, 32.861824, 37.568874>,  <33.960571, 33.042377, 37.042324>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.520638, 32.861824, 37.568874> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873348, 32.828522, 37.754581>,  <34.084972, 32.808540, 37.866005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873348, 32.828522, 37.754581>,  <33.520638, 32.861824, 37.568874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873348, 32.828522, 37.754581> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404208, 0.373906, 0.834752,
		-0.243091, -0.923722, 0.296047,
		0.881772, -0.083256, 0.464269,
		34.137878, 32.803543, 37.893864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513222, 32.324306, 38.162144>,  <33.520638, 32.861824, 37.568874>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513222, 32.324306, 38.162144> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815346, 32.575245, 38.237968>,  <33.996620, 32.725807, 38.283463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815346, 32.575245, 38.237968>,  <33.513222, 32.324306, 38.162144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815346, 32.575245, 38.237968> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360515, 0.156181, 0.919585,
		0.547294, -0.762916, 0.344134,
		0.755313, 0.627349, 0.189565,
		34.041939, 32.763451, 38.294838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583546, 32.212749, 38.769947>,  <33.513222, 32.324306, 38.162144>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583546, 32.212749, 38.769947> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766788, 32.564175, 38.715889>,  <33.876732, 32.775032, 38.683453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766788, 32.564175, 38.715889>,  <33.583546, 32.212749, 38.769947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766788, 32.564175, 38.715889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340828, 0.314026, 0.886129,
		0.820961, -0.359877, 0.443296,
		0.458103, 0.878565, -0.135147,
		33.904221, 32.827744, 38.675346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506374, 31.408997, 38.726227>,  <33.583546, 32.212749, 38.769947>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506374, 31.408997, 38.726227> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201317, 31.203642, 38.883610>,  <33.018284, 31.080429, 38.978039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201317, 31.203642, 38.883610>,  <33.506374, 31.408997, 38.726227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201317, 31.203642, 38.883610> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250751, -0.326063, -0.911486,
		0.596237, -0.793799, 0.119938,
		-0.762644, -0.513387, 0.393457,
		32.972523, 31.049625, 39.001648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.522102, 30.788300, 38.302448>,  <33.506374, 31.408997, 38.726227>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.522102, 30.788300, 38.302448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.153679, 30.806467, 38.457157>,  <32.932625, 30.817368, 38.549980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.153679, 30.806467, 38.457157>,  <33.522102, 30.788300, 38.302448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153679, 30.806467, 38.457157> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385989, -0.238135, -0.891237,
		0.051625, -0.970170, 0.236867,
		-0.921058, 0.045418, 0.386769,
		32.877361, 30.820093, 38.573189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.183247, 30.174881, 38.072182>,  <33.522102, 30.788300, 38.302448>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.183247, 30.174881, 38.072182> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905334, 30.447742, 38.163345>,  <32.738586, 30.611460, 38.218044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905334, 30.447742, 38.163345>,  <33.183247, 30.174881, 38.072182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.905334, 30.447742, 38.163345> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506855, -0.239580, -0.828070,
		-0.510269, -0.690845, 0.512209,
		-0.694783, 0.682155, 0.227908,
		32.696899, 30.652390, 38.231716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569221, 29.904036, 37.794754>,  <33.183247, 30.174881, 38.072182>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.569221, 29.904036, 37.794754> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.437840, 30.278465, 37.845161>,  <32.359009, 30.503124, 37.875404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.437840, 30.278465, 37.845161>,  <32.569221, 29.904036, 37.794754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.437840, 30.278465, 37.845161> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698058, -0.150701, -0.700003,
		-0.636264, -0.317886, 0.702934,
		-0.328455, 0.936075, 0.126017,
		32.339302, 30.559288, 37.882965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.822237, 29.821575, 37.823586>,  <32.569221, 29.904036, 37.794754>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.822237, 29.821575, 37.823586> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894815, 30.201694, 37.722385>,  <31.938362, 30.429766, 37.661667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894815, 30.201694, 37.722385>,  <31.822237, 29.821575, 37.823586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.894815, 30.201694, 37.722385> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809536, -0.001725, -0.587067,
		-0.558326, 0.311333, 0.768989,
		0.181447, 0.950299, -0.252998,
		31.949249, 30.486784, 37.646484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.181313, 30.140614, 37.809959>,  <31.822237, 29.821575, 37.823586>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.181313, 30.140614, 37.809959> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.406647, 30.370607, 37.572624>,  <31.541847, 30.508604, 37.430222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.406647, 30.370607, 37.572624>,  <31.181313, 30.140614, 37.809959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406647, 30.370607, 37.572624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676001, -0.092151, -0.731116,
		-0.475056, 0.812960, 0.336777,
		0.563333, 0.574982, -0.593339,
		31.575647, 30.543102, 37.394623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.779131, 30.546053, 37.430161>,  <31.181313, 30.140614, 37.809959>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.779131, 30.546053, 37.430161> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.110582, 30.598309, 37.212425>,  <31.309454, 30.629662, 37.081783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.110582, 30.598309, 37.212425>,  <30.779131, 30.546053, 37.430161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.110582, 30.598309, 37.212425> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552571, 0.035122, -0.832726,
		-0.089667, 0.990808, 0.101290,
		0.828629, 0.130638, -0.544342,
		31.359171, 30.637501, 37.049122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.613024, 31.215479, 37.082436>,  <30.779131, 30.546053, 37.430161>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.613024, 31.215479, 37.082436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.905228, 31.036322, 36.876232>,  <31.080551, 30.928827, 36.752510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.905228, 31.036322, 36.876232>,  <30.613024, 31.215479, 37.082436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.905228, 31.036322, 36.876232> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501295, 0.160915, -0.850182,
		0.463743, 0.879488, -0.106976,
		0.730511, -0.447893, -0.515506,
		31.124380, 30.901955, 36.721581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.808485, 31.602179, 36.529568>,  <30.613024, 31.215479, 37.082436>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.808485, 31.602179, 36.529568> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.918600, 31.230560, 36.430702>,  <30.984669, 31.007589, 36.371384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.918600, 31.230560, 36.430702>,  <30.808485, 31.602179, 36.529568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.918600, 31.230560, 36.430702> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553744, 0.056930, -0.830738,
		0.785866, 0.365556, -0.498782,
		0.275286, -0.929046, -0.247164,
		31.001186, 30.951847, 36.356552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.845331, 31.679379, 35.849411>,  <30.808485, 31.602179, 36.529568>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.845331, 31.679379, 35.849411> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859407, 31.279634, 35.851994>,  <30.867853, 31.039787, 35.853542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859407, 31.279634, 35.851994>,  <30.845331, 31.679379, 35.849411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.859407, 31.279634, 35.851994> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414246, -0.020462, -0.909935,
		0.909485, 0.029348, -0.414701,
		0.035190, -0.999360, 0.006452,
		30.869965, 30.979826, 35.853928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.186409, 31.324175, 35.263607>,  <30.845331, 31.679379, 35.849411>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.186409, 31.324175, 35.263607> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.887671, 31.088055, 35.386089>,  <30.708427, 30.946383, 35.459579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.887671, 31.088055, 35.386089>,  <31.186409, 31.324175, 35.263607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.887671, 31.088055, 35.386089> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399755, 0.030548, -0.916113,
		0.531429, -0.806604, -0.258790,
		-0.746846, -0.590302, 0.306210,
		30.663616, 30.910965, 35.477951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.030005, 30.958347, 34.631931>,  <31.186409, 31.324175, 35.263607>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.030005, 30.958347, 34.631931> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.733675, 30.875994, 34.887680>,  <30.555878, 30.826582, 35.041130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.733675, 30.875994, 34.887680>,  <31.030005, 30.958347, 34.631931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.733675, 30.875994, 34.887680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668823, 0.138093, -0.730483,
		0.062100, -0.968785, -0.240000,
		-0.740823, -0.205881, 0.639370,
		30.511429, 30.814228, 35.079491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.578140, 31.145784, 42.206699> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.228863, 31.283823, 42.344360>,  <34.019295, 31.366646, 42.426956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.228863, 31.283823, 42.344360>,  <34.578140, 31.145784, 42.206699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228863, 31.283823, 42.344360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431279, -0.218244, -0.875425,
		-0.227022, -0.912831, 0.339412,
		-0.873189, 0.345122, 0.344138,
		33.966904, 31.387352, 42.447605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.132320, 30.601076, 42.095257>,  <34.578140, 31.145784, 42.206699>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.132320, 30.601076, 42.095257> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.893597, 30.918013, 42.145878>,  <33.750362, 31.108173, 42.176250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.893597, 30.918013, 42.145878>,  <34.132320, 30.601076, 42.095257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893597, 30.918013, 42.145878> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479037, -0.225322, -0.848383,
		-0.643693, -0.566946, 0.514035,
		-0.596811, 0.792340, 0.126550,
		33.714554, 31.155714, 42.183842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481228, 30.368198, 41.875511>,  <34.132320, 30.601076, 42.095257>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.481228, 30.368198, 41.875511> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.454460, 30.767052, 41.861382>,  <33.438400, 31.006363, 41.852905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.454460, 30.767052, 41.861382>,  <33.481228, 30.368198, 41.875511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454460, 30.767052, 41.861382> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434763, -0.061002, -0.898476,
		-0.898055, -0.044769, 0.437599,
		-0.066918, 0.997133, -0.035320,
		33.434383, 31.066191, 41.850784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867722, 30.484106, 41.643238>,  <33.481228, 30.368198, 41.875511>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867722, 30.484106, 41.643238> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.046825, 30.830143, 41.552795>,  <33.154289, 31.037766, 41.498531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.046825, 30.830143, 41.552795>,  <32.867722, 30.484106, 41.643238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046825, 30.830143, 41.552795> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336962, -0.070976, -0.938839,
		-0.828232, 0.496564, 0.259723,
		0.447760, 0.865093, -0.226108,
		33.181152, 31.089670, 41.484962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.343338, 30.827793, 41.264065>,  <32.867722, 30.484106, 41.643238>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.343338, 30.827793, 41.264065> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.684971, 31.019049, 41.182163>,  <32.889950, 31.133802, 41.133022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.684971, 31.019049, 41.182163>,  <32.343338, 30.827793, 41.264065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.684971, 31.019049, 41.182163> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212422, -0.038691, -0.976412,
		-0.474781, 0.877433, 0.068521,
		0.854085, 0.478137, -0.204756,
		32.941196, 31.162489, 41.120735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.124866, 31.412739, 40.831749>,  <32.343338, 30.827793, 41.264065>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.124866, 31.412739, 40.831749> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.508968, 31.327862, 40.759205>,  <32.739429, 31.276936, 40.715679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.508968, 31.327862, 40.759205>,  <32.124866, 31.412739, 40.831749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508968, 31.327862, 40.759205> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160500, 0.111858, -0.980677,
		0.228381, 0.970804, 0.073355,
		0.960251, -0.212195, -0.181360,
		32.797043, 31.264204, 40.704796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.357647, 31.930141, 40.350327>,  <32.124866, 31.412739, 40.831749>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.357647, 31.930141, 40.350327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.584316, 31.603310, 40.307877>,  <32.720318, 31.407211, 40.282406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.584316, 31.603310, 40.307877>,  <32.357647, 31.930141, 40.350327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.584316, 31.603310, 40.307877> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102423, 0.057941, -0.993052,
		0.817551, 0.573607, -0.050854,
		0.566675, -0.817079, -0.106120,
		32.754318, 31.358187, 40.276039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.662666, 32.075485, 39.779064>,  <32.357647, 31.930141, 40.350327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.662666, 32.075485, 39.779064> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.790157, 31.697134, 39.803513>,  <32.866650, 31.470123, 39.818180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.790157, 31.697134, 39.803513>,  <32.662666, 32.075485, 39.779064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790157, 31.697134, 39.803513> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091859, -0.095001, -0.991230,
		0.943385, 0.310316, -0.117166,
		0.318726, -0.945875, 0.061117,
		32.885777, 31.413372, 39.821846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201202, 31.936548, 39.336418>,  <32.662666, 32.075485, 39.779064>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201202, 31.936548, 39.336418> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.077305, 31.558052, 39.373714>,  <33.002968, 31.330956, 39.396091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.077305, 31.558052, 39.373714>,  <33.201202, 31.936548, 39.336418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077305, 31.558052, 39.373714> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043769, -0.083768, -0.995523,
		0.949813, -0.312436, -0.015470,
		-0.309742, -0.946238, 0.093239,
		32.984383, 31.274181, 39.401688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860901, 32.347488, 39.482113>,  <33.201202, 31.936548, 39.336418>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860901, 32.347488, 39.482113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.859791, 32.677681, 39.256348>,  <33.859123, 32.875797, 39.120888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.859791, 32.677681, 39.256348>,  <33.860901, 32.347488, 39.482113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859791, 32.677681, 39.256348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175950, 0.555211, 0.812886,
		0.984395, 0.101565, 0.143703,
		-0.002775, 0.825485, -0.564417,
		33.858959, 32.925327, 39.087021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329556, 32.788265, 39.714397>,  <33.860901, 32.347488, 39.482113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329556, 32.788265, 39.714397> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.058552, 33.013512, 39.525135>,  <33.895950, 33.148659, 39.411575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.058552, 33.013512, 39.525135>,  <34.329556, 32.788265, 39.714397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058552, 33.013512, 39.525135> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023627, 0.626313, 0.779214,
		0.735132, 0.539106, -0.411030,
		-0.677512, 0.563114, -0.473160,
		33.855297, 33.182446, 39.383186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402641, 33.302742, 40.064888>,  <34.329556, 32.788265, 39.714397>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402641, 33.302742, 40.064888> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.083397, 33.420464, 39.854588>,  <33.891850, 33.491096, 39.728409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.083397, 33.420464, 39.854588>,  <34.402641, 33.302742, 40.064888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083397, 33.420464, 39.854588> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194919, 0.699551, 0.687485,
		0.570114, 0.651165, -0.500953,
		-0.798108, 0.294299, -0.525748,
		33.843964, 33.508755, 39.696861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390625, 33.966763, 40.016121>,  <34.402641, 33.302742, 40.064888>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390625, 33.966763, 40.016121> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.000355, 33.911930, 39.947685>,  <33.766193, 33.879028, 39.906624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.000355, 33.911930, 39.947685>,  <34.390625, 33.966763, 40.016121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000355, 33.911930, 39.947685> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210363, 0.805139, 0.554525,
		0.061735, 0.577025, -0.814390,
		-0.975672, -0.137084, -0.171090,
		33.707653, 33.870804, 39.896358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178375, 34.575356, 39.887550>,  <34.390625, 33.966763, 40.016121>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178375, 34.575356, 39.887550> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.866104, 34.367676, 40.026680>,  <33.678741, 34.243069, 40.110157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.866104, 34.367676, 40.026680>,  <34.178375, 34.575356, 39.887550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866104, 34.367676, 40.026680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190041, 0.727442, 0.659328,
		-0.595343, 0.448620, -0.666564,
		-0.780674, -0.519200, 0.347821,
		33.631901, 34.211914, 40.131027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660606, 35.144463, 40.020588>,  <34.178375, 34.575356, 39.887550>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660606, 35.144463, 40.020588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.569180, 34.825363, 40.243782>,  <33.514324, 34.633904, 40.377697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.569180, 34.825363, 40.243782>,  <33.660606, 35.144463, 40.020588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569180, 34.825363, 40.243782> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023254, 0.577468, 0.816082,
		-0.973251, 0.173553, -0.150540,
		-0.228566, -0.797753, 0.557986,
		33.500610, 34.586037, 40.411179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.213387, 35.457226, 40.526070>,  <33.660606, 35.144463, 40.020588>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.213387, 35.457226, 40.526070> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.293411, 35.096199, 40.678570>,  <33.341427, 34.879581, 40.770069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.293411, 35.096199, 40.678570>,  <33.213387, 35.457226, 40.526070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.293411, 35.096199, 40.678570> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150648, 0.356153, 0.922204,
		-0.968133, -0.241929, -0.064719,
		0.200058, -0.902566, 0.381250,
		33.353428, 34.825428, 40.792946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646282, 35.264957, 40.955006>,  <33.213387, 35.457226, 40.526070>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.646282, 35.264957, 40.955006> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.966290, 35.058067, 41.076630>,  <33.158295, 34.933933, 41.149605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.966290, 35.058067, 41.076630>,  <32.646282, 35.264957, 40.955006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966290, 35.058067, 41.076630> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209656, 0.233834, 0.949403,
		-0.562155, -0.823285, 0.078631,
		0.800016, -0.517227, 0.304058,
		33.206295, 34.902901, 41.167847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.501877, 35.033195, 41.648132>,  <32.646282, 35.264957, 40.955006>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.501877, 35.033195, 41.648132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.900764, 35.005493, 41.637108>,  <33.140099, 34.988873, 41.630493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.900764, 35.005493, 41.637108>,  <32.501877, 35.033195, 41.648132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900764, 35.005493, 41.637108> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049732, 0.342835, 0.938078,
		-0.055520, -0.936839, 0.345326,
		0.997218, -0.069256, -0.027556,
		33.199928, 34.984718, 41.628841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668533, 34.928135, 42.309196>,  <32.501877, 35.033195, 41.648132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668533, 34.928135, 42.309196> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.017895, 35.060272, 42.166065>,  <33.227512, 35.139553, 42.080189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.017895, 35.060272, 42.166065>,  <32.668533, 34.928135, 42.309196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017895, 35.060272, 42.166065> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105119, 0.589557, 0.800857,
		0.475516, -0.737086, 0.480197,
		0.873404, 0.330342, -0.357825,
		33.279915, 35.159374, 42.058716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148087, 34.782131, 42.815121>,  <32.668533, 34.928135, 42.309196>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148087, 34.782131, 42.815121> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.307224, 35.078140, 42.598202>,  <33.402706, 35.255745, 42.468052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.307224, 35.078140, 42.598202>,  <33.148087, 34.782131, 42.815121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307224, 35.078140, 42.598202> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453665, 0.355085, 0.817376,
		0.797439, -0.571207, -0.194456,
		0.397842, 0.740025, -0.542295,
		33.426579, 35.300148, 42.435513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.790344, 34.834095, 43.107979>,  <33.148087, 34.782131, 42.815121>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.790344, 34.834095, 43.107979> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.765942, 35.183395, 42.914604>,  <33.751301, 35.392975, 42.798580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.765942, 35.183395, 42.914604>,  <33.790344, 34.834095, 43.107979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765942, 35.183395, 42.914604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608026, 0.416611, 0.675825,
		0.791570, -0.252712, -0.556376,
		-0.061003, 0.873254, -0.483432,
		33.747643, 35.445370, 42.769573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488598, 35.087872, 43.182045>,  <33.790344, 34.834095, 43.107979>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488598, 35.087872, 43.182045> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.245712, 35.397846, 43.111893>,  <34.099979, 35.583832, 43.069801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.245712, 35.397846, 43.111893>,  <34.488598, 35.087872, 43.182045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245712, 35.397846, 43.111893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556652, 0.572424, 0.602055,
		0.566947, 0.267953, -0.778956,
		-0.607215, 0.774940, -0.175377,
		34.063549, 35.630329, 43.059280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946297, 35.678429, 43.159012>,  <34.488598, 35.087872, 43.182045>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946297, 35.678429, 43.159012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.573441, 35.809410, 43.220833>,  <34.349728, 35.888000, 43.257927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.573441, 35.809410, 43.220833>,  <34.946297, 35.678429, 43.159012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573441, 35.809410, 43.220833> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338663, 0.637349, 0.692166,
		0.128150, 0.697537, -0.704996,
		-0.932140, 0.327457, 0.154553,
		34.293800, 35.907646, 43.267200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.358013, 37.602753, 42.980026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.636934, 37.316837, 42.958698>,  <30.804287, 37.145287, 42.945904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.636934, 37.316837, 42.958698>,  <30.358013, 37.602753, 42.980026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.636934, 37.316837, 42.958698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052266, 0.023479, -0.998357,
		0.714867, 0.698946, -0.020987,
		0.697305, -0.714789, -0.053316,
		30.846127, 37.102402, 42.942703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.963570, 37.730663, 42.457512>,  <30.358013, 37.602753, 42.980026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.963570, 37.730663, 42.457512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.950533, 37.332260, 42.490749>,  <30.942711, 37.093220, 42.510693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.950533, 37.332260, 42.490749>,  <30.963570, 37.730663, 42.457512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.950533, 37.332260, 42.490749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056092, -0.084828, -0.994816,
		0.997894, -0.027764, 0.058633,
		-0.032594, -0.996009, 0.083092,
		30.940754, 37.033459, 42.515678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.392286, 37.596359, 42.009907>,  <30.963570, 37.730663, 42.457512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.392286, 37.596359, 42.009907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.186979, 37.259201, 42.074520>,  <31.063795, 37.056908, 42.113289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.186979, 37.259201, 42.074520>,  <31.392286, 37.596359, 42.009907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.186979, 37.259201, 42.074520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133883, -0.264551, -0.955033,
		0.847723, -0.468559, 0.248634,
		-0.513266, -0.842891, 0.161534,
		31.032999, 37.006332, 42.122982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.747950, 37.192410, 41.631889>,  <31.392286, 37.596359, 42.009907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.747950, 37.192410, 41.631889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.418209, 36.973377, 41.689304>,  <31.220366, 36.841957, 41.723755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.418209, 36.973377, 41.689304>,  <31.747950, 37.192410, 41.631889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.418209, 36.973377, 41.689304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024440, -0.287755, -0.957392,
		0.565551, -0.785719, 0.250594,
		-0.824352, -0.547578, 0.143538,
		31.170904, 36.809105, 41.732365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830206, 36.424305, 41.470371>,  <31.747950, 37.192410, 41.631889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.830206, 36.424305, 41.470371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.440420, 36.507420, 41.436321>,  <31.206549, 36.557289, 41.415890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.440420, 36.507420, 41.436321>,  <31.830206, 36.424305, 41.470371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440420, 36.507420, 41.436321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029922, -0.255561, -0.966330,
		-0.222542, -0.944201, 0.242817,
		-0.974464, 0.207783, -0.085126,
		31.148081, 36.569756, 41.410782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.657349, 35.782085, 41.044827>,  <31.830206, 36.424305, 41.470371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.657349, 35.782085, 41.044827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.347979, 36.032784, 41.006863>,  <31.162357, 36.183201, 40.984085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.347979, 36.032784, 41.006863>,  <31.657349, 35.782085, 41.044827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.347979, 36.032784, 41.006863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076938, -0.241428, -0.967364,
		-0.629202, -0.740881, 0.234947,
		-0.773424, 0.626744, -0.094905,
		31.115952, 36.220806, 40.978390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.182802, 35.371536, 40.683956>,  <31.657349, 35.782085, 41.044827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.182802, 35.371536, 40.683956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.126757, 35.762772, 40.622368>,  <31.093130, 35.997513, 40.585415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.126757, 35.762772, 40.622368>,  <31.182802, 35.371536, 40.683956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.126757, 35.762772, 40.622368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089337, -0.167355, -0.981841,
		-0.986097, -0.123813, 0.110828,
		-0.140112, 0.978091, -0.153967,
		31.084723, 36.056198, 40.576180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.723600, 35.339176, 40.269184>,  <31.182802, 35.371536, 40.683956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.723600, 35.339176, 40.269184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.867039, 35.708809, 40.216297>,  <30.953102, 35.930588, 40.184566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.867039, 35.708809, 40.216297>,  <30.723600, 35.339176, 40.269184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.867039, 35.708809, 40.216297> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045306, -0.158698, -0.986287,
		-0.932392, 0.347689, -0.098775,
		0.358597, 0.924082, -0.132217,
		30.974617, 35.986034, 40.176632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.429569, 35.613117, 39.706070>,  <30.723600, 35.339176, 40.269184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.429569, 35.613117, 39.706070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.750261, 35.851402, 39.725464>,  <30.942677, 35.994373, 39.737099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.750261, 35.851402, 39.725464>,  <30.429569, 35.613117, 39.706070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.750261, 35.851402, 39.725464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010859, 0.066587, -0.997722,
		-0.597587, 0.800431, 0.046916,
		0.801731, 0.595716, 0.048483,
		30.990780, 36.030117, 39.740009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.336800, 36.234489, 39.409374>,  <30.429569, 35.613117, 39.706070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.336800, 36.234489, 39.409374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.735313, 36.262066, 39.388721>,  <30.974422, 36.278610, 39.376331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.735313, 36.262066, 39.388721>,  <30.336800, 36.234489, 39.409374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.735313, 36.262066, 39.388721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070659, 0.311403, -0.947647,
		-0.049249, 0.947774, 0.315117,
		0.996284, 0.068937, -0.051633,
		31.034199, 36.282745, 39.373230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.555738, 36.920757, 39.099270>,  <30.336800, 36.234489, 39.409374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.555738, 36.920757, 39.099270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.877731, 36.690281, 39.042683>,  <31.070927, 36.551994, 39.008732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.877731, 36.690281, 39.042683>,  <30.555738, 36.920757, 39.099270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.877731, 36.690281, 39.042683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068397, 0.326976, -0.942554,
		0.589345, 0.749062, 0.302619,
		0.804981, -0.576188, -0.141468,
		31.119226, 36.517426, 39.000244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.961018, 37.294571, 38.809063>,  <30.555738, 36.920757, 39.099270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.961018, 37.294571, 38.809063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.110123, 36.934361, 38.719524>,  <31.199585, 36.718235, 38.665802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.110123, 36.934361, 38.719524>,  <30.961018, 37.294571, 38.809063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.110123, 36.934361, 38.719524> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116192, 0.194038, -0.974088,
		0.920624, 0.389113, -0.032304,
		0.372762, -0.900522, -0.223848,
		31.221951, 36.664204, 38.652370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.456945, 37.392132, 38.196766>,  <30.961018, 37.294571, 38.809063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.456945, 37.392132, 38.196766> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.343410, 37.009014, 38.214985>,  <31.275290, 36.779144, 38.225918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.343410, 37.009014, 38.214985>,  <31.456945, 37.392132, 38.196766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.343410, 37.009014, 38.214985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084275, -0.022403, -0.996191,
		0.955162, -0.286595, -0.074359,
		-0.283837, -0.957790, 0.045552,
		31.258259, 36.721676, 38.228649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.764536, 37.096123, 37.561935>,  <31.456945, 37.392132, 38.196766>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.764536, 37.096123, 37.561935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.484934, 36.845947, 37.700626>,  <31.317173, 36.695843, 37.783840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.484934, 36.845947, 37.700626>,  <31.764536, 37.096123, 37.561935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.484934, 36.845947, 37.700626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302563, -0.180657, -0.935852,
		0.647958, -0.759070, -0.062955,
		-0.699004, -0.625441, 0.346724,
		31.275232, 36.658314, 37.804646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429035, 37.502220, 37.490902>,  <31.764536, 37.096123, 37.561935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429035, 37.502220, 37.490902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.513306, 37.760361, 37.197197>,  <32.563866, 37.915245, 37.020973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.513306, 37.760361, 37.197197>,  <32.429035, 37.502220, 37.490902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513306, 37.760361, 37.197197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187128, 0.710602, 0.678254,
		0.959479, -0.280290, 0.028940,
		0.210673, 0.645355, -0.734258,
		32.576508, 37.953968, 36.976921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.109676, 37.620491, 37.454369>,  <32.429035, 37.502220, 37.490902>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.109676, 37.620491, 37.454369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.913498, 37.937469, 37.309322>,  <32.795792, 38.127655, 37.222294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.913498, 37.937469, 37.309322>,  <33.109676, 37.620491, 37.454369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913498, 37.937469, 37.309322> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045793, 0.438952, 0.897343,
		0.870267, 0.423495, -0.251572,
		-0.490448, 0.792448, -0.362613,
		32.766365, 38.175205, 37.200539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579346, 38.115402, 37.665951>,  <33.109676, 37.620491, 37.454369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579346, 38.115402, 37.665951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.249702, 38.319298, 37.567142>,  <33.051918, 38.441635, 37.507858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.249702, 38.319298, 37.567142>,  <33.579346, 38.115402, 37.665951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249702, 38.319298, 37.567142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065954, 0.519485, 0.851930,
		0.562585, 0.685787, -0.461729,
		-0.824105, 0.509736, -0.247024,
		33.002472, 38.472218, 37.493034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721184, 38.762165, 37.806202>,  <33.579346, 38.115402, 37.665951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721184, 38.762165, 37.806202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.321999, 38.738041, 37.814514>,  <33.082489, 38.723568, 37.819504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.321999, 38.738041, 37.814514>,  <33.721184, 38.762165, 37.806202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321999, 38.738041, 37.814514> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009816, 0.467144, 0.884126,
		-0.063029, 0.882122, -0.466785,
		-0.997963, -0.060308, 0.020785,
		33.022610, 38.719948, 37.820751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446083, 39.391514, 38.160400>,  <33.721184, 38.762165, 37.806202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446083, 39.391514, 38.160400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.114506, 39.169510, 38.188156>,  <32.915558, 39.036308, 38.204811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.114506, 39.169510, 38.188156>,  <33.446083, 39.391514, 38.160400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.114506, 39.169510, 38.188156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152257, 0.343285, 0.926808,
		-0.538210, 0.757706, -0.369068,
		-0.828943, -0.555011, 0.069393,
		32.865822, 39.003006, 38.208973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898655, 39.851807, 38.419586>,  <33.446083, 39.391514, 38.160400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898655, 39.851807, 38.419586> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.809872, 39.467319, 38.485058>,  <32.756603, 39.236626, 38.524342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.809872, 39.467319, 38.485058>,  <32.898655, 39.851807, 38.419586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809872, 39.467319, 38.485058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002615, 0.168448, 0.985707,
		-0.975054, 0.218354, -0.039901,
		-0.221954, -0.961222, 0.163674,
		32.743286, 39.178951, 38.534161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425186, 39.922100, 38.976601>,  <32.898655, 39.851807, 38.419586>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425186, 39.922100, 38.976601> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.520271, 39.534096, 38.996883>,  <32.577320, 39.301292, 39.009052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.520271, 39.534096, 38.996883>,  <32.425186, 39.922100, 38.976601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520271, 39.534096, 38.996883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063436, 0.067597, 0.995694,
		-0.969263, -0.233469, 0.077602,
		0.237709, -0.970012, 0.050709,
		32.591583, 39.243092, 39.012096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.070698, 39.687683, 39.498646>,  <32.425186, 39.922100, 38.976601>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.070698, 39.687683, 39.498646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.354839, 39.409218, 39.457153>,  <32.525326, 39.242138, 39.432259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.354839, 39.409218, 39.457153>,  <32.070698, 39.687683, 39.498646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.354839, 39.409218, 39.457153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071696, -0.075048, 0.994599,
		-0.700185, -0.713954, -0.003399,
		0.710353, -0.696159, -0.103735,
		32.567944, 39.200371, 39.426033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.918533, 39.118046, 39.881763>,  <32.070698, 39.687683, 39.498646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.918533, 39.118046, 39.881763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.314796, 39.088760, 39.835751>,  <32.552555, 39.071190, 39.808144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.314796, 39.088760, 39.835751>,  <31.918533, 39.118046, 39.881763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314796, 39.088760, 39.835751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116544, 0.016668, 0.993046,
		-0.070789, -0.997177, 0.025046,
		0.990660, -0.073216, -0.115035,
		32.611996, 39.066795, 39.801239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111179, 38.593910, 40.253559>,  <31.918533, 39.118046, 39.881763>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111179, 38.593910, 40.253559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.455517, 38.789448, 40.197010>,  <32.662117, 38.906769, 40.163082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.455517, 38.789448, 40.197010>,  <32.111179, 38.593910, 40.253559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.455517, 38.789448, 40.197010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235991, -0.137366, 0.961997,
		0.450846, -0.861489, -0.233612,
		0.860841, 0.488842, -0.141373,
		32.713768, 38.936100, 40.154598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634876, 38.193893, 40.465569>,  <32.111179, 38.593910, 40.253559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634876, 38.193893, 40.465569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.763336, 38.571960, 40.489304>,  <32.840412, 38.798801, 40.503544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.763336, 38.571960, 40.489304>,  <32.634876, 38.193893, 40.465569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763336, 38.571960, 40.489304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076196, -0.088243, 0.993180,
		0.943959, -0.314435, -0.100357,
		0.321146, 0.945168, 0.059339,
		32.859680, 38.855511, 40.507107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113777, 38.038136, 41.023998>,  <32.634876, 38.193893, 40.465569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113777, 38.038136, 41.023998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.059589, 38.432819, 40.988121>,  <33.027077, 38.669632, 40.966595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.059589, 38.432819, 40.988121>,  <33.113777, 38.038136, 41.023998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.059589, 38.432819, 40.988121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041418, 0.096088, 0.994511,
		0.989916, 0.131009, -0.053884,
		-0.135467, 0.986713, -0.089693,
		33.018948, 38.728832, 40.961212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577328, 38.387230, 41.575603>,  <33.113777, 38.038136, 41.023998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577328, 38.387230, 41.575603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.306480, 38.673595, 41.507515>,  <33.143970, 38.845413, 41.466663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.306480, 38.673595, 41.507515>,  <33.577328, 38.387230, 41.575603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306480, 38.673595, 41.507515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076213, 0.161848, 0.983868,
		0.731916, 0.679169, -0.055028,
		-0.677120, 0.715915, -0.170220,
		33.103344, 38.888371, 41.456448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839027, 39.051071, 41.832096>,  <33.577328, 38.387230, 41.575603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839027, 39.051071, 41.832096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.439514, 39.070671, 41.834320>,  <33.199806, 39.082432, 41.835655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.439514, 39.070671, 41.834320>,  <33.839027, 39.051071, 41.832096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439514, 39.070671, 41.834320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010023, 0.091329, 0.995770,
		0.048281, 0.994615, -0.091709,
		-0.998784, 0.048996, 0.005559,
		33.139877, 39.085369, 41.835987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280430, 39.703728, 41.887791>,  <33.839027, 39.051071, 41.832096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.280430, 39.703728, 41.887791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.669693, 39.615826, 41.915131>,  <34.903252, 39.563084, 41.931534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.669693, 39.615826, 41.915131>,  <34.280430, 39.703728, 41.887791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669693, 39.615826, 41.915131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072214, 0.009577, -0.997343,
		0.218517, 0.975508, 0.025190,
		0.973157, -0.219756, 0.068352,
		34.961639, 39.549900, 41.935635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549015, 39.953671, 41.348667>,  <34.280430, 39.703728, 41.887791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549015, 39.953671, 41.348667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.828102, 39.694988, 41.471924>,  <34.995556, 39.539780, 41.545876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.828102, 39.694988, 41.471924>,  <34.549015, 39.953671, 41.348667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828102, 39.694988, 41.471924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186140, -0.251700, -0.949736,
		0.691763, 0.720009, -0.055238,
		0.697722, -0.646710, 0.308139,
		35.037418, 39.500977, 41.564365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269154, 40.136497, 41.019897>,  <34.549015, 39.953671, 41.348667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269154, 40.136497, 41.019897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.314022, 39.752941, 41.124168>,  <35.340942, 39.522808, 41.186729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.314022, 39.752941, 41.124168>,  <35.269154, 40.136497, 41.019897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.314022, 39.752941, 41.124168> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308161, -0.215830, -0.926528,
		0.944698, 0.184262, 0.271282,
		0.112173, -0.958887, 0.260676,
		35.347675, 39.465275, 41.202370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829491, 39.902229, 40.649315>,  <35.269154, 40.136497, 41.019897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829491, 39.902229, 40.649315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.703228, 39.545597, 40.779202>,  <35.627468, 39.331615, 40.857132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.703228, 39.545597, 40.779202>,  <35.829491, 39.902229, 40.649315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703228, 39.545597, 40.779202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330184, -0.424035, -0.843311,
		0.889572, -0.158982, 0.428237,
		-0.315659, -0.891582, 0.324716,
		35.608532, 39.278122, 40.876617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347050, 39.397938, 40.530590>,  <35.829491, 39.902229, 40.649315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347050, 39.397938, 40.530590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.991699, 39.214474, 40.538784>,  <35.778488, 39.104397, 40.543701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.991699, 39.214474, 40.538784>,  <36.347050, 39.397938, 40.530590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991699, 39.214474, 40.538784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234337, -0.491342, -0.838850,
		0.394811, -0.740414, 0.543977,
		-0.888375, -0.458662, 0.020481,
		35.725185, 39.076874, 40.544930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548168, 38.737518, 40.343884>,  <36.347050, 39.397938, 40.530590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548168, 38.737518, 40.343884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.154438, 38.769089, 40.280796>,  <35.918201, 38.788033, 40.242943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.154438, 38.769089, 40.280796>,  <36.548168, 38.737518, 40.343884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154438, 38.769089, 40.280796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087451, -0.558165, -0.825109,
		-0.153158, -0.825967, 0.542513,
		-0.984325, 0.078929, -0.157719,
		35.859142, 38.792767, 40.233479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305489, 38.086090, 40.222061>,  <36.548168, 38.737518, 40.343884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305489, 38.086090, 40.222061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.019829, 38.317596, 40.064575>,  <35.848431, 38.456501, 39.970081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.019829, 38.317596, 40.064575>,  <36.305489, 38.086090, 40.222061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019829, 38.317596, 40.064575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040727, -0.595864, -0.802052,
		-0.698804, -0.556753, 0.449110,
		-0.714153, 0.578767, -0.393718,
		35.805584, 38.491226, 39.946461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.844379, 37.639210, 39.855659>,  <36.305489, 38.086090, 40.222061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.844379, 37.639210, 39.855659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.762070, 37.991154, 39.684311>,  <35.712685, 38.202320, 39.581501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.762070, 37.991154, 39.684311>,  <35.844379, 37.639210, 39.855659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762070, 37.991154, 39.684311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060872, -0.448399, -0.891758,
		-0.976705, -0.157421, 0.145826,
		-0.205770, 0.879862, -0.428371,
		35.700340, 38.255112, 39.555798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226749, 37.672894, 39.559113>,  <35.844379, 37.639210, 39.855659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226749, 37.672894, 39.559113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.484726, 37.898331, 39.352654>,  <35.639511, 38.033592, 39.228779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.484726, 37.898331, 39.352654>,  <35.226749, 37.672894, 39.559113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484726, 37.898331, 39.352654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156002, -0.564076, -0.810852,
		-0.748139, 0.603473, -0.275875,
		0.644942, 0.563593, -0.516151,
		35.678207, 38.067410, 39.197807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202282, 37.373600, 38.924191>,  <35.226749, 37.672894, 39.559113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202282, 37.373600, 38.924191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.464211, 37.670731, 38.868462>,  <35.621368, 37.849010, 38.835026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.464211, 37.670731, 38.868462>,  <35.202282, 37.373600, 38.924191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464211, 37.670731, 38.868462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004076, -0.180868, -0.983499,
		-0.755769, 0.644588, -0.115409,
		0.654825, 0.742828, -0.139322,
		35.660660, 37.893578, 38.826664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901062, 37.897919, 38.500721>,  <35.202282, 37.373600, 38.924191>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901062, 37.897919, 38.500721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.298290, 37.908688, 38.454967>,  <35.536629, 37.915150, 38.427513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.298290, 37.908688, 38.454967>,  <34.901062, 37.897919, 38.500721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298290, 37.908688, 38.454967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108444, -0.165019, -0.980310,
		-0.045269, 0.985923, -0.160956,
		0.993071, 0.026923, -0.114388,
		35.596210, 37.916763, 38.420650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027962, 38.384521, 37.875732>,  <34.901062, 37.897919, 38.500721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027962, 38.384521, 37.875732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.336163, 38.135208, 37.929157>,  <35.521084, 37.985619, 37.961212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.336163, 38.135208, 37.929157>,  <35.027962, 38.384521, 37.875732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336163, 38.135208, 37.929157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005195, -0.215660, -0.976454,
		0.637416, 0.751667, -0.169405,
		0.770502, -0.623288, 0.133560,
		35.567314, 37.948223, 37.969227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514915, 38.409184, 37.261135>,  <35.027962, 38.384521, 37.875732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514915, 38.409184, 37.261135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.568291, 38.046890, 37.422054>,  <35.600315, 37.829514, 37.518608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.568291, 38.046890, 37.422054>,  <35.514915, 38.409184, 37.261135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568291, 38.046890, 37.422054> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162730, -0.380399, -0.910393,
		0.977606, 0.186945, 0.096631,
		0.133435, -0.905731, 0.402302,
		35.608322, 37.775169, 37.542744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109573, 38.089443, 36.998440>,  <35.514915, 38.409184, 37.261135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109573, 38.089443, 36.998440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.898384, 37.766384, 37.103470>,  <35.771671, 37.572548, 37.166489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.898384, 37.766384, 37.103470>,  <36.109573, 38.089443, 36.998440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898384, 37.766384, 37.103470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131831, -0.383376, -0.914135,
		0.838966, -0.448023, 0.308885,
		-0.527973, -0.807650, 0.262576,
		35.739990, 37.524090, 37.182243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.424328, 42.259251, 32.751316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.073866, 42.278996, 32.943115>,  <27.863588, 42.290840, 33.058193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.073866, 42.278996, 32.943115>,  <28.424328, 42.259251, 32.751316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.073866, 42.278996, 32.943115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109035, -0.948667, 0.296889,
		0.469535, 0.312403, 0.825797,
		-0.876155, 0.049359, 0.479495,
		27.811020, 42.293804, 33.086964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.511383, 41.970238, 33.427345>,  <28.424328, 42.259251, 32.751316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.511383, 41.970238, 33.427345> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.125956, 41.939579, 33.324844>,  <27.894699, 41.921185, 33.263344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.125956, 41.939579, 33.324844>,  <28.511383, 41.970238, 33.427345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.125956, 41.939579, 33.324844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001339, -0.956664, 0.291191,
		-0.267466, 0.280925, 0.921707,
		-0.963566, -0.076649, -0.256251,
		27.836885, 41.916584, 33.247971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.180233, 41.510262, 33.883709>,  <28.511383, 41.970238, 33.427345>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.180233, 41.510262, 33.883709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.920523, 41.513115, 33.579502>,  <27.764696, 41.514828, 33.396976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.920523, 41.513115, 33.579502>,  <28.180233, 41.510262, 33.883709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.920523, 41.513115, 33.579502> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224473, -0.957208, 0.182661,
		-0.726673, 0.289314, 0.623092,
		-0.649275, 0.007132, -0.760520,
		27.725740, 41.515255, 33.351345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.565695, 41.180485, 34.111183>,  <28.180233, 41.510262, 33.883709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.565695, 41.180485, 34.111183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.555929, 41.156830, 33.712002>,  <27.550070, 41.142635, 33.472492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.555929, 41.156830, 33.712002>,  <27.565695, 41.180485, 34.111183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.555929, 41.156830, 33.712002> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352513, -0.933619, 0.063953,
		-0.935488, 0.353352, 0.001947,
		-0.024416, -0.059141, -0.997951,
		27.548605, 41.139088, 33.412617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.012255, 40.891205, 33.993870>,  <27.565695, 41.180485, 34.111183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.012255, 40.891205, 33.993870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.206656, 40.841087, 33.647900>,  <27.323296, 40.811016, 33.440315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.206656, 40.841087, 33.647900>,  <27.012255, 40.891205, 33.993870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.206656, 40.841087, 33.647900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440738, -0.889745, -0.118757,
		-0.754687, 0.438923, -0.487641,
		0.486001, -0.125297, -0.864930,
		27.352455, 40.803497, 33.388420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.476791, 40.646976, 33.497620>,  <27.012255, 40.891205, 33.993870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.476791, 40.646976, 33.497620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.836117, 40.538311, 33.359501>,  <27.051712, 40.473110, 33.276630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.836117, 40.538311, 33.359501>,  <26.476791, 40.646976, 33.497620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.836117, 40.538311, 33.359501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268920, -0.961484, 0.056841,
		-0.347435, 0.041795, -0.936772,
		0.898316, -0.271665, -0.345293,
		27.105612, 40.456810, 33.255913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.313353, 40.128429, 33.011005>,  <26.476791, 40.646976, 33.497620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.313353, 40.128429, 33.011005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.704147, 40.094791, 33.089420>,  <26.938623, 40.074608, 33.136467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.704147, 40.094791, 33.089420>,  <26.313353, 40.128429, 33.011005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.704147, 40.094791, 33.089420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084152, -0.996421, -0.008040,
		0.196007, -0.008641, -0.980564,
		0.976985, -0.084092, 0.196033,
		26.997242, 40.069565, 33.148232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.537741, 39.648834, 32.610325>,  <26.313353, 40.128429, 33.011005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.537741, 39.648834, 32.610325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.833889, 39.652740, 32.879177>,  <27.011578, 39.655083, 33.040489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.833889, 39.652740, 32.879177>,  <26.537741, 39.648834, 32.610325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.833889, 39.652740, 32.879177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000661, -0.999905, 0.013795,
		0.672197, -0.009769, -0.740308,
		0.740372, 0.009763, 0.672126,
		27.056002, 39.655670, 33.080814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.990618, 39.235962, 32.345131>,  <26.537741, 39.648834, 32.610325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.990618, 39.235962, 32.345131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.061596, 39.249264, 32.738560>,  <27.104183, 39.257244, 32.974617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.061596, 39.249264, 32.738560>,  <26.990618, 39.235962, 32.345131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.061596, 39.249264, 32.738560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086672, -0.995018, 0.049274,
		0.980306, -0.093991, -0.173681,
		0.177447, 0.033251, 0.983569,
		27.114830, 39.259239, 33.033630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.465033, 38.699173, 32.394730>,  <26.990618, 39.235962, 32.345131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.465033, 38.699173, 32.394730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.324678, 38.746349, 32.766315>,  <27.240465, 38.774654, 32.989265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.324678, 38.746349, 32.766315>,  <27.465033, 38.699173, 32.394730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.324678, 38.746349, 32.766315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019322, -0.990914, 0.133100,
		0.936218, 0.064653, 0.345420,
		-0.350887, 0.117937, 0.928961,
		27.219412, 38.781731, 33.045002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.767832, 38.093571, 32.733486>,  <27.465033, 38.699173, 32.394730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.767832, 38.093571, 32.733486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.510921, 38.205017, 33.019104>,  <27.356775, 38.271885, 33.190475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.510921, 38.205017, 33.019104>,  <27.767832, 38.093571, 32.733486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.510921, 38.205017, 33.019104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093380, -0.953097, 0.287900,
		0.760765, 0.118233, 0.638167,
		-0.642274, 0.278617, 0.714042,
		27.318239, 38.288601, 33.233318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.953043, 37.855804, 33.471451>,  <27.767832, 38.093571, 32.733486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.953043, 37.855804, 33.471451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.556503, 37.908264, 33.469391>,  <27.318579, 37.939739, 33.468155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.556503, 37.908264, 33.469391>,  <27.953043, 37.855804, 33.471451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.556503, 37.908264, 33.469391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118900, -0.880793, 0.458331,
		0.055574, 0.454979, 0.888767,
		-0.991350, 0.131145, -0.005148,
		27.259098, 37.947609, 33.467846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.757849, 37.673481, 34.148357>,  <27.953043, 37.855804, 33.471451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.757849, 37.673481, 34.148357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.417912, 37.623177, 33.943630>,  <27.213949, 37.592995, 33.820793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.417912, 37.623177, 33.943630>,  <27.757849, 37.673481, 34.148357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.417912, 37.623177, 33.943630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069774, -0.935720, 0.345774,
		-0.522401, 0.329564, 0.786438,
		-0.849841, -0.125759, -0.511816,
		27.162960, 37.585449, 33.790085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.314085, 37.249588, 34.575405>,  <27.757849, 37.673481, 34.148357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.314085, 37.249588, 34.575405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.175766, 37.207268, 34.202477>,  <27.092775, 37.181877, 33.978718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.175766, 37.207268, 34.202477>,  <27.314085, 37.249588, 34.575405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.175766, 37.207268, 34.202477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224887, -0.955318, 0.191817,
		-0.910961, 0.275998, 0.306554,
		-0.345797, -0.105798, -0.932326,
		27.072027, 37.175529, 33.922779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.712748, 36.908752, 34.600239>,  <27.314085, 37.249588, 34.575405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.712748, 36.908752, 34.600239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.840986, 36.851059, 34.225769>,  <26.917931, 36.816444, 34.001087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.840986, 36.851059, 34.225769>,  <26.712748, 36.908752, 34.600239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.840986, 36.851059, 34.225769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097091, -0.978130, 0.183944,
		-0.942227, -0.149866, -0.299582,
		0.320597, -0.144230, -0.936171,
		26.937166, 36.807789, 33.944920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.463154, 36.222694, 34.431492>,  <26.712748, 36.908752, 34.600239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.463154, 36.222694, 34.431492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.725737, 36.295620, 34.138691>,  <26.883287, 36.339375, 33.963013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.725737, 36.295620, 34.138691>,  <26.463154, 36.222694, 34.431492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.725737, 36.295620, 34.138691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197797, -0.978005, -0.066199,
		-0.727968, -0.101330, -0.678082,
		0.656459, 0.182314, -0.731999,
		26.922674, 36.350315, 33.919090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.256542, 35.838737, 33.997078>,  <26.463154, 36.222694, 34.431492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.256542, 35.838737, 33.997078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.638605, 35.903992, 33.898232>,  <26.867842, 35.943142, 33.838924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.638605, 35.903992, 33.898232>,  <26.256542, 35.838737, 33.997078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.638605, 35.903992, 33.898232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114165, -0.972915, -0.201002,
		-0.273209, 0.163777, -0.947910,
		0.955156, 0.163134, -0.247112,
		26.925152, 35.952930, 33.824097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.306721, 35.687229, 33.283646>,  <26.256542, 35.838737, 33.997078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.306721, 35.687229, 33.283646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.667763, 35.664192, 33.454285>,  <26.884388, 35.650372, 33.556667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.667763, 35.664192, 33.454285>,  <26.306721, 35.687229, 33.283646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.667763, 35.664192, 33.454285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134542, -0.903618, -0.406660,
		0.408903, 0.424449, -0.807862,
		0.902606, -0.057593, 0.426598,
		26.938545, 35.646915, 33.582264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.762630, 35.569550, 32.762962>,  <26.306721, 35.687229, 33.283646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.762630, 35.569550, 32.762962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.979671, 35.447266, 33.075916>,  <27.109896, 35.373894, 33.263687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.979671, 35.447266, 33.075916>,  <26.762630, 35.569550, 32.762962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.979671, 35.447266, 33.075916> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067185, -0.912642, -0.403200,
		0.837299, 0.271341, -0.474661,
		0.542601, -0.305709, 0.782385,
		27.142452, 35.355553, 33.310631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.311813, 35.156208, 32.473598>,  <26.762630, 35.569550, 32.762962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.311813, 35.156208, 32.473598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.269711, 35.029243, 32.850571>,  <27.244450, 34.953064, 33.076752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.269711, 35.029243, 32.850571>,  <27.311813, 35.156208, 32.473598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.269711, 35.029243, 32.850571> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017946, -0.948143, -0.317336,
		0.994283, -0.016489, 0.105494,
		-0.105256, -0.317415, 0.942427,
		27.238134, 34.934017, 33.133297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.817383, 34.762482, 32.463562>,  <27.311813, 35.156208, 32.473598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.817383, 34.762482, 32.463562> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.545155, 34.672348, 32.742432>,  <27.381817, 34.618267, 32.909752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.545155, 34.672348, 32.742432>,  <27.817383, 34.762482, 32.463562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.545155, 34.672348, 32.742432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010176, -0.948536, -0.316506,
		0.732611, -0.222499, 0.643254,
		-0.680572, -0.225330, 0.697172,
		27.340982, 34.604748, 32.951584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.569084, 34.421791, 32.543518>,  <27.817383, 34.762482, 32.463562>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.569084, 34.421791, 32.543518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.587561, 34.322987, 32.156353>,  <28.598646, 34.263702, 31.924055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.587561, 34.322987, 32.156353>,  <28.569084, 34.421791, 32.543518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.587561, 34.322987, 32.156353> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318855, 0.921904, -0.220055,
		0.946677, -0.298459, 0.121347,
		0.046193, -0.247013, -0.967910,
		28.601418, 34.248882, 31.865980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.049452, 34.785770, 32.275822>,  <28.569084, 34.421791, 32.543518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.049452, 34.785770, 32.275822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.842505, 34.698330, 31.944874>,  <28.718336, 34.645866, 31.746305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.842505, 34.698330, 31.944874>,  <29.049452, 34.785770, 32.275822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.842505, 34.698330, 31.944874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237696, 0.892072, -0.384328,
		0.822089, -0.395503, -0.409572,
		-0.517370, -0.218598, -0.827371,
		28.687294, 34.632751, 31.696663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.474802, 35.066502, 31.774673>,  <29.049452, 34.785770, 32.275822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.474802, 35.066502, 31.774673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.116266, 35.010780, 31.606308>,  <28.901144, 34.977348, 31.505289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.116266, 35.010780, 31.606308>,  <29.474802, 35.066502, 31.774673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.116266, 35.010780, 31.606308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009800, 0.955352, -0.295307,
		0.443259, -0.260571, -0.857685,
		-0.896340, -0.139303, -0.420915,
		28.847364, 34.968990, 31.480034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.591236, 35.199306, 31.059656>,  <29.474802, 35.066502, 31.774673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.591236, 35.199306, 31.059656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.215347, 35.265572, 31.179306>,  <28.989813, 35.305332, 31.251095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.215347, 35.265572, 31.179306>,  <29.591236, 35.199306, 31.059656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.215347, 35.265572, 31.179306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016514, 0.851786, -0.523629,
		-0.341535, -0.497006, -0.797708,
		-0.939724, 0.165664, 0.299123,
		28.933430, 35.315269, 31.269043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.228310, 35.549873, 30.494057>,  <29.591236, 35.199306, 31.059656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.228310, 35.549873, 30.494057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.976919, 35.622974, 30.796480>,  <28.826086, 35.666836, 30.977934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.976919, 35.622974, 30.796480>,  <29.228310, 35.549873, 30.494057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.976919, 35.622974, 30.796480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225570, 0.887416, -0.402009,
		-0.744404, -0.423196, -0.516495,
		-0.628475, 0.182751, 0.756056,
		28.788376, 35.677799, 31.023296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.779696, 35.831993, 30.140842>,  <29.228310, 35.549873, 30.494057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.779696, 35.831993, 30.140842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.675474, 35.931927, 30.513872>,  <28.612942, 35.991886, 30.737690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.675474, 35.931927, 30.513872>,  <28.779696, 35.831993, 30.140842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.675474, 35.931927, 30.513872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129483, 0.948170, -0.290187,
		-0.956737, -0.196361, -0.214699,
		-0.260552, 0.249833, 0.932575,
		28.597309, 36.006878, 30.793644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.066957, 36.149544, 30.171747>,  <28.779696, 35.831993, 30.140842>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.066957, 36.149544, 30.171747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.269056, 36.282471, 30.490316>,  <28.390316, 36.362225, 30.681458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.269056, 36.282471, 30.490316>,  <28.066957, 36.149544, 30.171747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.269056, 36.282471, 30.490316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207038, 0.942607, -0.261968,
		-0.837771, -0.032532, 0.545051,
		0.505247, 0.332316, 0.796424,
		28.420631, 36.382164, 30.729244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.547523, 36.650242, 30.567629>,  <28.066957, 36.149544, 30.171747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.547523, 36.650242, 30.567629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.926577, 36.702717, 30.684095>,  <28.154009, 36.734203, 30.753975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.926577, 36.702717, 30.684095>,  <27.547523, 36.650242, 30.567629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.926577, 36.702717, 30.684095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153325, 0.986674, 0.054455,
		-0.280144, -0.096247, 0.955121,
		0.947634, 0.131189, 0.291168,
		28.210867, 36.742073, 30.771446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.451929, 37.084442, 31.063356>,  <27.547523, 36.650242, 30.567629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.451929, 37.084442, 31.063356> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.838938, 37.106247, 30.964621>,  <28.071142, 37.119328, 30.905378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.838938, 37.106247, 30.964621>,  <27.451929, 37.084442, 31.063356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.838938, 37.106247, 30.964621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080721, 0.991972, -0.097339,
		0.239553, 0.114103, 0.964155,
		0.967522, 0.054510, -0.246840,
		28.129194, 37.122601, 30.890568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.673149, 37.635933, 31.428232>,  <27.451929, 37.084442, 31.063356>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.673149, 37.635933, 31.428232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.970339, 37.584721, 31.165447>,  <28.148653, 37.553993, 31.007776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.970339, 37.584721, 31.165447>,  <27.673149, 37.635933, 31.428232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.970339, 37.584721, 31.165447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162085, 0.986736, -0.008986,
		0.649399, -0.099807, 0.753869,
		0.742973, -0.128027, -0.656963,
		28.193232, 37.546314, 30.968359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.183464, 38.133308, 31.668592>,  <27.673149, 37.635933, 31.428232>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.183464, 38.133308, 31.668592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.303999, 38.052261, 31.295897>,  <28.376320, 38.003632, 31.072279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.303999, 38.052261, 31.295897>,  <28.183464, 38.133308, 31.668592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.303999, 38.052261, 31.295897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299401, 0.947848, -0.109290,
		0.905293, -0.246031, 0.346285,
		0.301336, -0.202618, -0.931742,
		28.394400, 37.991478, 31.016375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.739328, 38.489212, 31.635616>,  <28.183464, 38.133308, 31.668592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.739328, 38.489212, 31.635616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.650402, 38.431896, 31.249861>,  <28.597046, 38.397507, 31.018408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.650402, 38.431896, 31.249861>,  <28.739328, 38.489212, 31.635616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.650402, 38.431896, 31.249861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255202, 0.946102, -0.199407,
		0.940982, -0.290445, -0.173765,
		-0.222316, -0.143294, -0.964387,
		28.583708, 38.388908, 30.960545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.186609, 39.046658, 31.251400>,  <28.739328, 38.489212, 31.635616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.186609, 39.046658, 31.251400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.903513, 38.927940, 30.994959>,  <28.733654, 38.856709, 30.841095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.903513, 38.927940, 30.994959>,  <29.186609, 39.046658, 31.251400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.903513, 38.927940, 30.994959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009192, 0.911266, -0.411715,
		0.706410, -0.285495, -0.647670,
		-0.707743, -0.296794, -0.641103,
		28.691191, 38.838902, 30.802628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.349512, 39.535385, 30.746376>,  <29.186609, 39.046658, 31.251400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.349512, 39.535385, 30.746376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.981684, 39.391747, 30.682579>,  <28.760986, 39.305561, 30.644300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.981684, 39.391747, 30.682579>,  <29.349512, 39.535385, 30.746376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.981684, 39.391747, 30.682579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325672, 0.923665, -0.201945,
		0.219837, -0.133760, -0.966323,
		-0.919570, -0.359099, -0.159494,
		28.705812, 39.284016, 30.634731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.143932, 39.678993, 30.075254>,  <29.349512, 39.535385, 30.746376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.143932, 39.678993, 30.075254> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.791090, 39.652843, 30.261850>,  <28.579384, 39.637154, 30.373808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.791090, 39.652843, 30.261850>,  <29.143932, 39.678993, 30.075254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.791090, 39.652843, 30.261850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070288, 0.997503, 0.006871,
		-0.465776, -0.026728, -0.884499,
		-0.882107, -0.065370, 0.466491,
		28.526459, 39.633232, 30.401798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.677740, 40.056393, 29.681574>,  <29.143932, 39.678993, 30.075254>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.677740, 40.056393, 29.681574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.479170, 40.037750, 30.028305>,  <28.360027, 40.026566, 30.236343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.479170, 40.037750, 30.028305>,  <28.677740, 40.056393, 29.681574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.479170, 40.037750, 30.028305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411442, 0.891906, -0.187670,
		-0.764382, -0.449813, -0.461940,
		-0.496423, -0.046611, 0.866828,
		28.330242, 40.023766, 30.288353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.016441, 40.126217, 29.619333>,  <28.677740, 40.056393, 29.681574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.016441, 40.126217, 29.619333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.080833, 40.259262, 29.991022>,  <28.119469, 40.339088, 30.214035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.080833, 40.259262, 29.991022>,  <28.016441, 40.126217, 29.619333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.080833, 40.259262, 29.991022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423270, 0.873790, -0.239446,
		-0.891587, -0.354765, 0.281449,
		0.160980, 0.332616, 0.929221,
		28.129128, 40.359047, 30.269789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.421848, 40.568027, 29.736853>,  <28.016441, 40.126217, 29.619333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.421848, 40.568027, 29.736853> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.674141, 40.663166, 30.032314>,  <27.825516, 40.720249, 30.209591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.674141, 40.663166, 30.032314>,  <27.421848, 40.568027, 29.736853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.674141, 40.663166, 30.032314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252236, 0.963020, -0.094709,
		-0.733864, -0.126579, 0.667399,
		0.630731, 0.237845, 0.738653,
		27.863359, 40.734520, 30.253910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.083530, 41.096519, 30.087420>,  <27.421848, 40.568027, 29.736853>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.083530, 41.096519, 30.087420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.467764, 41.120129, 30.196079>,  <27.698305, 41.134296, 30.261274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.467764, 41.120129, 30.196079>,  <27.083530, 41.096519, 30.087420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.467764, 41.120129, 30.196079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033269, 0.994584, -0.098466,
		-0.275988, 0.085548, 0.957346,
		0.960585, 0.059025, 0.271647,
		27.755939, 41.137836, 30.277573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.099382, 41.551373, 30.643368>,  <27.083530, 41.096519, 30.087420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.099382, 41.551373, 30.643368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.464590, 41.567898, 30.481037>,  <27.683714, 41.577812, 30.383638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.464590, 41.567898, 30.481037>,  <27.099382, 41.551373, 30.643368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.464590, 41.567898, 30.481037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059320, 0.997730, -0.031890,
		0.403586, 0.053189, 0.913395,
		0.913017, 0.041312, -0.405824,
		27.738495, 41.580292, 30.359289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.477547, 42.119625, 31.042654>,  <27.099382, 41.551373, 30.643368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.477547, 42.119625, 31.042654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.681944, 42.067825, 30.702744>,  <27.804583, 42.036747, 30.498796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.681944, 42.067825, 30.702744>,  <27.477547, 42.119625, 31.042654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.681944, 42.067825, 30.702744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097156, 0.990953, -0.092587,
		0.854077, -0.035250, 0.518950,
		0.510992, -0.129495, -0.849775,
		27.835241, 42.028976, 30.447811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.922630, 36.441204, 42.947067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.624947, 36.379330, 43.206982>,  <34.446335, 36.342205, 43.362930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.624947, 36.379330, 43.206982>,  <34.922630, 36.441204, 42.947067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624947, 36.379330, 43.206982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402757, 0.672144, 0.621297,
		-0.532854, 0.724082, -0.437917,
		-0.744213, -0.154686, 0.649784,
		34.401684, 36.332924, 43.401917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908871, 37.086536, 43.336922>,  <34.922630, 36.441204, 42.947067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908871, 37.086536, 43.336922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.670845, 36.849453, 43.554028>,  <34.528030, 36.707203, 43.684292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.670845, 36.849453, 43.554028>,  <34.908871, 37.086536, 43.336922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670845, 36.849453, 43.554028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410160, 0.356808, 0.839319,
		-0.691137, 0.722068, 0.030784,
		-0.595062, -0.592711, 0.542766,
		34.492325, 36.671638, 43.716858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848900, 37.457920, 43.978016>,  <34.908871, 37.086536, 43.336922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848900, 37.457920, 43.978016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.749165, 37.079113, 44.058994>,  <34.689323, 36.851830, 44.107582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.749165, 37.079113, 44.058994>,  <34.848900, 37.457920, 43.978016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749165, 37.079113, 44.058994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507273, 0.050355, 0.860313,
		-0.824928, 0.317203, 0.467842,
		-0.249335, -0.947020, 0.202448,
		34.674362, 36.795006, 44.119728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659264, 37.494930, 44.597931>,  <34.848900, 37.457920, 43.978016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659264, 37.494930, 44.597931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.732670, 37.106243, 44.538483>,  <34.776714, 36.873032, 44.502815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.732670, 37.106243, 44.538483>,  <34.659264, 37.494930, 44.597931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732670, 37.106243, 44.538483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447693, -0.051980, 0.892676,
		-0.875154, -0.230352, 0.425492,
		0.183512, -0.971718, -0.148617,
		34.787724, 36.814728, 44.493896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440346, 37.138035, 45.250980>,  <34.659264, 37.494930, 44.597931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440346, 37.138035, 45.250980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.712822, 36.905212, 45.073357>,  <34.876308, 36.765518, 44.966782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.712822, 36.905212, 45.073357>,  <34.440346, 37.138035, 45.250980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712822, 36.905212, 45.073357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494705, -0.081158, 0.865263,
		-0.539674, -0.809086, 0.232664,
		0.681189, -0.582060, -0.444058,
		34.917179, 36.730595, 44.940140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680386, 36.785801, 45.824947>,  <34.440346, 37.138035, 45.250980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680386, 36.785801, 45.824947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.967236, 36.685596, 45.564800>,  <35.139347, 36.625473, 45.408714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.967236, 36.685596, 45.564800>,  <34.680386, 36.785801, 45.824947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967236, 36.685596, 45.564800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680014, 0.047081, 0.731686,
		-0.152673, -0.966969, 0.204111,
		0.717127, -0.250507, -0.650365,
		35.182373, 36.610443, 45.369690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081825, 36.327801, 46.184784>,  <34.680386, 36.785801, 45.824947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081825, 36.327801, 46.184784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.324738, 36.470352, 45.900757>,  <35.470486, 36.555882, 45.730339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.324738, 36.470352, 45.900757>,  <35.081825, 36.327801, 46.184784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324738, 36.470352, 45.900757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668094, 0.254599, 0.699164,
		0.429951, -0.898985, -0.083481,
		0.607283, 0.356379, -0.710071,
		35.506924, 36.577267, 45.687737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635864, 36.179996, 46.452820>,  <35.081825, 36.327801, 46.184784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635864, 36.179996, 46.452820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.768421, 36.409027, 46.152863>,  <35.847954, 36.546444, 45.972889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.768421, 36.409027, 46.152863>,  <35.635864, 36.179996, 46.452820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768421, 36.409027, 46.152863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816138, 0.224819, 0.532329,
		0.473389, -0.788423, -0.392799,
		0.331392, 0.572577, -0.749890,
		35.867840, 36.580799, 45.927895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379421, 35.909657, 46.235695>,  <35.635864, 36.179996, 46.452820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379421, 35.909657, 46.235695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.306000, 36.297924, 46.173580>,  <36.261948, 36.530884, 46.136311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.306000, 36.297924, 46.173580>,  <36.379421, 35.909657, 46.235695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306000, 36.297924, 46.173580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751649, 0.240398, 0.614193,
		0.633508, -0.003985, -0.773726,
		-0.183554, 0.970666, -0.155289,
		36.250935, 36.589123, 46.126995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131649, 36.305119, 46.074722>,  <36.379421, 35.909657, 46.235695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131649, 36.305119, 46.074722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.849964, 36.566753, 46.185184>,  <36.680954, 36.723736, 46.251461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.849964, 36.566753, 46.185184>,  <37.131649, 36.305119, 46.074722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849964, 36.566753, 46.185184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679261, 0.507475, 0.530164,
		0.206631, 0.560928, -0.801663,
		-0.704208, 0.654087, 0.276156,
		36.638702, 36.762978, 46.268032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440292, 37.090218, 46.055294>,  <37.131649, 36.305119, 46.074722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440292, 37.090218, 46.055294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.142906, 37.017292, 46.312675>,  <36.964474, 36.973537, 46.467102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.142906, 37.017292, 46.312675>,  <37.440292, 37.090218, 46.055294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142906, 37.017292, 46.312675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515193, 0.457345, 0.724853,
		-0.426430, 0.870400, -0.246090,
		-0.743461, -0.182315, 0.643449,
		36.919868, 36.962597, 46.505711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954819, 37.406849, 45.723953>,  <37.440292, 37.090218, 46.055294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954819, 37.406849, 45.723953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.235844, 37.606327, 45.927013>,  <38.404457, 37.726013, 46.048851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.235844, 37.606327, 45.927013>,  <37.954819, 37.406849, 45.723953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235844, 37.606327, 45.927013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457914, -0.862872, 0.213929,
		0.544722, 0.082162, -0.834582,
		0.702561, 0.498699, 0.507649,
		38.446613, 37.755936, 46.079308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866085, 37.862576, 46.369183>,  <37.954819, 37.406849, 45.723953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866085, 37.862576, 46.369183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.197376, 38.016403, 46.206139>,  <38.396152, 38.108700, 46.108311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.197376, 38.016403, 46.206139>,  <37.866085, 37.862576, 46.369183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197376, 38.016403, 46.206139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317818, 0.921419, 0.223558,
		0.461554, -0.055611, 0.885368,
		0.828227, 0.384570, -0.407610,
		38.445843, 38.131775, 46.083855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293568, 38.347218, 46.843372>,  <37.866085, 37.862576, 46.369183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293568, 38.347218, 46.843372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.283821, 38.433250, 46.452854>,  <38.277973, 38.484871, 46.218544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.283821, 38.433250, 46.452854>,  <38.293568, 38.347218, 46.843372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283821, 38.433250, 46.452854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319847, 0.923572, 0.211455,
		0.947156, 0.317416, 0.046291,
		-0.024367, 0.215087, -0.976291,
		38.276512, 38.497776, 46.159966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583584, 38.524376, 46.555309>,  <38.293568, 38.347218, 46.843372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583584, 38.524376, 46.555309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.450333, 38.863678, 46.719986>,  <37.370380, 39.067257, 46.818794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.450333, 38.863678, 46.719986>,  <37.583584, 38.524376, 46.555309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.450333, 38.863678, 46.719986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485988, 0.219694, -0.845902,
		-0.807984, -0.481875, 0.339053,
		-0.333131, 0.848251, 0.411696,
		37.350391, 39.118153, 46.843494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833000, 38.570278, 46.594528>,  <37.583584, 38.524376, 46.555309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833000, 38.570278, 46.594528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.940067, 38.953728, 46.633286>,  <37.004307, 39.183800, 46.656540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.940067, 38.953728, 46.633286>,  <36.833000, 38.570278, 46.594528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.940067, 38.953728, 46.633286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724299, 0.266515, -0.635894,
		-0.635408, 0.100030, 0.765670,
		0.267671, 0.958626, 0.096894,
		37.020370, 39.241314, 46.662354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117840, 38.955429, 46.629177>,  <36.833000, 38.570278, 46.594528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117840, 38.955429, 46.629177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.411003, 39.191490, 46.493790>,  <36.586903, 39.333126, 46.412556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.411003, 39.191490, 46.493790>,  <36.117840, 38.955429, 46.629177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411003, 39.191490, 46.493790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536128, 0.194735, -0.821368,
		-0.418822, 0.783451, 0.459122,
		0.732908, 0.590155, -0.338470,
		36.630875, 39.368538, 46.392250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790451, 39.598721, 46.497551>,  <36.117840, 38.955429, 46.629177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790451, 39.598721, 46.497551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.122257, 39.556118, 46.278259>,  <36.321342, 39.530556, 46.146683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.122257, 39.556118, 46.278259>,  <35.790451, 39.598721, 46.497551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122257, 39.556118, 46.278259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530101, 0.158792, -0.832933,
		0.175766, 0.981551, 0.075263,
		0.829517, -0.106505, -0.548231,
		36.371113, 39.524166, 46.113789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790607, 40.146938, 46.138119>,  <35.790451, 39.598721, 46.497551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790607, 40.146938, 46.138119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.046406, 39.904037, 45.949528>,  <36.199883, 39.758297, 45.836372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.046406, 39.904037, 45.949528>,  <35.790607, 40.146938, 46.138119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046406, 39.904037, 45.949528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347531, 0.318697, -0.881847,
		0.685764, 0.727788, -0.007235,
		0.639492, -0.607253, -0.471480,
		36.238255, 39.721863, 45.808083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970966, 40.536163, 45.474991>,  <35.790607, 40.146938, 46.138119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970966, 40.536163, 45.474991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.046032, 40.144932, 45.438892>,  <36.091072, 39.910194, 45.417233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.046032, 40.144932, 45.438892>,  <35.970966, 40.536163, 45.474991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046032, 40.144932, 45.438892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350219, 0.019211, -0.936471,
		0.917676, 0.207345, -0.338937,
		0.187661, -0.978079, -0.090246,
		36.102329, 39.851509, 45.411819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155895, 40.587379, 44.863083>,  <35.970966, 40.536163, 45.474991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155895, 40.587379, 44.863083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.140472, 40.189472, 44.900944>,  <36.131218, 39.950729, 44.923660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.140472, 40.189472, 44.900944>,  <36.155895, 40.587379, 44.863083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140472, 40.189472, 44.900944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268686, -0.080914, -0.959823,
		0.962456, -0.062440, -0.264159,
		-0.038558, -0.994763, 0.094653,
		36.128906, 39.891045, 44.929340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430386, 40.282333, 44.319733>,  <36.155895, 40.587379, 44.863083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.430386, 40.282333, 44.319733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.185497, 39.981834, 44.418373>,  <36.038563, 39.801537, 44.477558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.185497, 39.981834, 44.418373>,  <36.430386, 40.282333, 44.319733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185497, 39.981834, 44.418373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195177, -0.158648, -0.967852,
		0.766220, -0.640669, -0.049499,
		-0.612220, -0.751248, 0.246604,
		36.001831, 39.756458, 44.492355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591858, 39.650787, 43.980957>,  <36.430386, 40.282333, 44.319733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.591858, 39.650787, 43.980957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.215313, 39.563942, 44.084263>,  <35.989388, 39.511833, 44.146248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.215313, 39.563942, 44.084263>,  <36.591858, 39.650787, 43.980957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215313, 39.563942, 44.084263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189280, -0.293836, -0.936928,
		0.279310, -0.930871, 0.235510,
		-0.941361, -0.217116, 0.258267,
		35.932903, 39.498806, 44.161743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406898, 38.925465, 43.721901>,  <36.591858, 39.650787, 43.980957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406898, 38.925465, 43.721901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.057140, 39.115917, 43.759289>,  <35.847286, 39.230190, 43.781723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.057140, 39.115917, 43.759289>,  <36.406898, 38.925465, 43.721901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057140, 39.115917, 43.759289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246413, -0.269783, -0.930859,
		-0.417998, -0.836966, 0.353222,
		-0.874390, 0.476135, 0.093470,
		35.794823, 39.258759, 43.787331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903053, 38.495537, 43.311428>,  <36.406898, 38.925465, 43.721901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903053, 38.495537, 43.311428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.731358, 38.847660, 43.392246>,  <35.628342, 39.058933, 43.440735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.731358, 38.847660, 43.392246>,  <35.903053, 38.495537, 43.311428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731358, 38.847660, 43.392246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400370, 0.015068, -0.916230,
		-0.809606, -0.474169, 0.345980,
		-0.429234, 0.880305, 0.202042,
		35.602589, 39.111752, 43.452858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264862, 38.459900, 43.073235>,  <35.903053, 38.495537, 43.311428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.264862, 38.459900, 43.073235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.295113, 38.857868, 43.099781>,  <35.313263, 39.096649, 43.115707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.295113, 38.857868, 43.099781>,  <35.264862, 38.459900, 43.073235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295113, 38.857868, 43.099781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403197, 0.091386, -0.910539,
		-0.911983, 0.042101, 0.408062,
		0.075626, 0.994925, 0.066367,
		35.317799, 39.156345, 43.119690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690937, 38.684757, 42.849018>,  <35.264862, 38.459900, 43.073235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690937, 38.684757, 42.849018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.938984, 38.993214, 42.791340>,  <35.087811, 39.178288, 42.756733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.938984, 38.993214, 42.791340>,  <34.690937, 38.684757, 42.849018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938984, 38.993214, 42.791340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401050, 0.153645, -0.903079,
		-0.674250, 0.617843, 0.404545,
		0.620117, 0.771144, -0.144191,
		35.125019, 39.224556, 42.748081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321709, 39.180058, 42.522816>,  <34.690937, 38.684757, 42.849018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321709, 39.180058, 42.522816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.699600, 39.291672, 42.453964>,  <34.926334, 39.358643, 42.412655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.699600, 39.291672, 42.453964>,  <34.321709, 39.180058, 42.522816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699600, 39.291672, 42.453964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228235, 0.182836, -0.956284,
		-0.235369, 0.942713, 0.236416,
		0.944727, 0.279038, -0.172127,
		34.983017, 39.375381, 42.402325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679958, 39.485538, 42.400875>,  <34.321709, 39.180058, 42.522816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679958, 39.485538, 42.400875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.330482, 39.307598, 42.322113>,  <33.120796, 39.200836, 42.274857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.330482, 39.307598, 42.322113>,  <33.679958, 39.485538, 42.400875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330482, 39.307598, 42.322113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231612, 0.024424, 0.972502,
		-0.427806, 0.895273, -0.124371,
		-0.873692, -0.444847, -0.196907,
		33.068375, 39.174145, 42.263042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096375, 39.814537, 42.752441>,  <33.679958, 39.485538, 42.400875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096375, 39.814537, 42.752441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.993732, 39.428577, 42.730103>,  <32.932148, 39.197002, 42.716698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.993732, 39.428577, 42.730103>,  <33.096375, 39.814537, 42.752441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993732, 39.428577, 42.730103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217871, 0.001449, 0.975976,
		-0.941641, 0.262605, -0.210596,
		-0.256601, -0.964902, -0.055849,
		32.916752, 39.139107, 42.713348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322216, 39.835533, 43.047997>,  <33.096375, 39.814537, 42.752441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322216, 39.835533, 43.047997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.442474, 39.454041, 43.049427>,  <32.514629, 39.225147, 43.050285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.442474, 39.454041, 43.049427>,  <32.322216, 39.835533, 43.047997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.442474, 39.454041, 43.049427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065354, 0.024342, 0.997565,
		-0.951494, -0.299680, 0.069648,
		0.300646, -0.953729, 0.003576,
		32.532669, 39.167923, 43.050499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876385, 39.537251, 43.575531>,  <32.322216, 39.835533, 43.047997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876385, 39.537251, 43.575531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.181957, 39.288174, 43.507809>,  <32.365299, 39.138729, 43.467175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.181957, 39.288174, 43.507809>,  <31.876385, 39.537251, 43.575531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.181957, 39.288174, 43.507809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210637, -0.007364, 0.977537,
		-0.609950, -0.782433, 0.125536,
		0.763932, -0.622691, -0.169301,
		32.411137, 39.101368, 43.457020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.716518, 39.082008, 44.043209>,  <31.876385, 39.537251, 43.575531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.716518, 39.082008, 44.043209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.104992, 39.000099, 43.994434>,  <32.338078, 38.950954, 43.965168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.104992, 39.000099, 43.994434>,  <31.716518, 39.082008, 44.043209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104992, 39.000099, 43.994434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083149, -0.188375, 0.978571,
		-0.223358, -0.960511, -0.165920,
		0.971184, -0.204776, -0.121941,
		32.396347, 38.938667, 43.957851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.817019, 38.508286, 44.477032>,  <31.716518, 39.082008, 44.043209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.817019, 38.508286, 44.477032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.175022, 38.677582, 44.420708>,  <32.389824, 38.779160, 44.386913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.175022, 38.677582, 44.420708>,  <31.817019, 38.508286, 44.477032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175022, 38.677582, 44.420708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205452, -0.110973, 0.972355,
		0.395913, -0.899196, -0.186277,
		0.895010, 0.423239, -0.140806,
		32.443523, 38.804554, 44.378468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.287025, 38.109783, 44.887222>,  <31.817019, 38.508286, 44.477032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.287025, 38.109783, 44.887222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.475384, 38.451706, 44.799984>,  <32.588398, 38.656860, 44.747643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.475384, 38.451706, 44.799984>,  <32.287025, 38.109783, 44.887222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475384, 38.451706, 44.799984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257848, 0.103064, 0.960673,
		0.843666, -0.508612, -0.171877,
		0.470895, 0.854805, -0.218096,
		32.616653, 38.708149, 44.734554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386539, 37.374565, 45.087891>,  <32.287025, 38.109783, 44.887222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386539, 37.374565, 45.087891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.088730, 37.212902, 45.300430>,  <31.910044, 37.115902, 45.427956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.088730, 37.212902, 45.300430>,  <32.386539, 37.374565, 45.087891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088730, 37.212902, 45.300430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480696, -0.227762, -0.846792,
		0.463260, -0.885878, -0.024703,
		-0.744527, -0.404160, 0.531351,
		31.865372, 37.091656, 45.459835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.278809, 36.767330, 44.775131>,  <32.386539, 37.374565, 45.087891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.278809, 36.767330, 44.775131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.941292, 36.861343, 44.968117>,  <31.738781, 36.917751, 45.083908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.941292, 36.861343, 44.968117>,  <32.278809, 36.767330, 44.775131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.941292, 36.861343, 44.968117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527806, -0.200729, -0.825305,
		-0.097126, -0.951036, 0.293424,
		-0.843793, 0.235030, 0.482467,
		31.688154, 36.931850, 45.112858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.890726, 36.152794, 44.780403>,  <32.278809, 36.767330, 44.775131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.890726, 36.152794, 44.780403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.629017, 36.452915, 44.818275>,  <31.471991, 36.632988, 44.841000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.629017, 36.452915, 44.818275>,  <31.890726, 36.152794, 44.780403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.629017, 36.452915, 44.818275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375692, -0.213813, -0.901742,
		-0.656339, -0.625558, 0.421777,
		-0.654274, 0.750307, 0.094683,
		31.432735, 36.678009, 44.846680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.329279, 35.856251, 44.579723>,  <31.890726, 36.152794, 44.780403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.329279, 35.856251, 44.579723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.231665, 36.243984, 44.568176>,  <31.173096, 36.476624, 44.561249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.231665, 36.243984, 44.568176>,  <31.329279, 35.856251, 44.579723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.231665, 36.243984, 44.568176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271116, -0.096772, -0.957670,
		-0.931098, -0.225880, 0.286418,
		-0.244035, 0.969337, -0.028864,
		31.158455, 36.534786, 44.559517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681105, 35.851795, 44.239609>,  <31.329279, 35.856251, 44.579723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.681105, 35.851795, 44.239609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.813887, 36.228180, 44.213066>,  <30.893557, 36.454010, 44.197140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.813887, 36.228180, 44.213066>,  <30.681105, 35.851795, 44.239609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.813887, 36.228180, 44.213066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235204, 0.014444, -0.971839,
		-0.913501, 0.338216, 0.226112,
		0.331957, 0.940958, -0.066355,
		30.913473, 36.510468, 44.193161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.214544, 36.088394, 43.677906>,  <30.681105, 35.851795, 44.239609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.214544, 36.088394, 43.677906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.518208, 36.346863, 43.709251>,  <30.700405, 36.501942, 43.728058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.518208, 36.346863, 43.709251>,  <30.214544, 36.088394, 43.677906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.518208, 36.346863, 43.709251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045039, 0.067953, -0.996671,
		-0.649344, 0.760163, 0.022485,
		0.759160, 0.646170, 0.078362,
		30.745956, 36.540714, 43.732761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.974287, 36.689110, 43.327541>,  <30.214544, 36.088394, 43.677906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.974287, 36.689110, 43.327541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.373400, 36.704105, 43.305542>,  <30.612867, 36.713104, 43.292343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.373400, 36.704105, 43.305542>,  <29.974287, 36.689110, 43.327541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.373400, 36.704105, 43.305542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058142, 0.088760, -0.994355,
		-0.032397, 0.995347, 0.090743,
		0.997783, 0.037490, -0.054996,
		30.672735, 36.715351, 43.289043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.055206, 34.425186, 48.094070> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.039207, 34.779552, 47.909222>,  <36.029610, 34.992172, 47.798313>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.039207, 34.779552, 47.909222>,  <36.055206, 34.425186, 48.094070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.039207, 34.779552, 47.909222> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679281, -0.363288, -0.637651,
		-0.732787, 0.288408, 0.616314,
		-0.039995, 0.885913, -0.462123,
		36.027210, 35.045326, 47.770584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320217, 34.597191, 47.896709>,  <36.055206, 34.425186, 48.094070>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320217, 34.597191, 47.896709> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.618420, 34.726795, 47.663731>,  <35.797340, 34.804558, 47.523941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.618420, 34.726795, 47.663731>,  <35.320217, 34.597191, 47.896709>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618420, 34.726795, 47.663731> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344734, -0.560465, -0.753018,
		-0.570426, 0.762167, -0.306132,
		0.745502, 0.324007, -0.582449,
		35.842072, 34.823997, 47.488995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962299, 35.037807, 47.377430>,  <35.320217, 34.597191, 47.896709>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962299, 35.037807, 47.377430> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.320374, 34.927319, 47.237522>,  <35.535217, 34.861023, 47.153580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.320374, 34.927319, 47.237522>,  <34.962299, 35.037807, 47.377430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320374, 34.927319, 47.237522> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444187, -0.617277, -0.649359,
		-0.036535, 0.736661, -0.675275,
		0.895189, -0.276224, -0.349767,
		35.588932, 34.844452, 47.132591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866955, 35.064110, 46.585121>,  <34.962299, 35.037807, 47.377430>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866955, 35.064110, 46.585121> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.181225, 34.834839, 46.678223>,  <35.369789, 34.697277, 46.734085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.181225, 34.834839, 46.678223>,  <34.866955, 35.064110, 46.585121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181225, 34.834839, 46.678223> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229283, -0.619238, -0.750982,
		0.574578, 0.536664, -0.617943,
		0.785678, -0.573181, 0.232753,
		35.416927, 34.662884, 46.748047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230984, 34.868069, 45.888214>,  <34.866955, 35.064110, 46.585121>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230984, 34.868069, 45.888214> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.358963, 34.599560, 46.155655>,  <35.435749, 34.438454, 46.316120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.358963, 34.599560, 46.155655>,  <35.230984, 34.868069, 45.888214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358963, 34.599560, 46.155655> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236598, -0.739946, -0.629684,
		0.917419, 0.043274, -0.395563,
		0.319944, -0.671273, 0.668601,
		35.454945, 34.398178, 46.356236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769699, 34.500931, 45.629822>,  <35.230984, 34.868069, 45.888214>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769699, 34.500931, 45.629822> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.588394, 34.267471, 45.899315>,  <35.479610, 34.127396, 46.061008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.588394, 34.267471, 45.899315>,  <35.769699, 34.500931, 45.629822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588394, 34.267471, 45.899315> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164970, -0.687844, -0.706863,
		0.875980, -0.431537, 0.215488,
		-0.453259, -0.583649, 0.673728,
		35.452415, 34.092377, 46.101433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992996, 33.810966, 45.405056>,  <35.769699, 34.500931, 45.629822>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992996, 33.810966, 45.405056> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.719002, 33.722034, 45.682579>,  <35.554607, 33.668674, 45.849091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.719002, 33.722034, 45.682579>,  <35.992996, 33.810966, 45.405056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719002, 33.722034, 45.682579> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356368, -0.728353, -0.585238,
		0.635452, -0.648129, 0.419679,
		-0.684984, -0.222330, 0.693805,
		35.513508, 33.655334, 45.890720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028126, 33.155453, 45.443062>,  <35.992996, 33.810966, 45.405056>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028126, 33.155453, 45.443062> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.658600, 33.228283, 45.577766>,  <35.436882, 33.271980, 45.658588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.658600, 33.228283, 45.577766>,  <36.028126, 33.155453, 45.443062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658600, 33.228283, 45.577766> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356921, -0.727756, -0.585644,
		0.138452, -0.661227, 0.737299,
		-0.923818, 0.182074, 0.336765,
		35.381454, 33.282906, 45.678795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711861, 32.523453, 45.510040>,  <36.028126, 33.155453, 45.443062>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711861, 32.523453, 45.510040> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.389500, 32.760265, 45.508114>,  <35.196083, 32.902351, 45.506958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.389500, 32.760265, 45.508114>,  <35.711861, 32.523453, 45.510040>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389500, 32.760265, 45.508114> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501777, -0.687316, -0.525183,
		-0.314230, -0.420833, 0.850976,
		-0.805903, 0.592028, -0.004811,
		35.147728, 32.937874, 45.506672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.998196, 32.185902, 45.839745>,  <35.711861, 32.523453, 45.510040>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.998196, 32.185902, 45.839745> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.917877, 32.448452, 45.548855>,  <34.869686, 32.605984, 45.374321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.917877, 32.448452, 45.548855>,  <34.998196, 32.185902, 45.839745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.917877, 32.448452, 45.548855> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574711, -0.680101, -0.455159,
		-0.793340, 0.326550, 0.513786,
		-0.200794, 0.656375, -0.727223,
		34.857639, 32.645363, 45.330688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370461, 31.958464, 45.579704>,  <34.998196, 32.185902, 45.839745>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370461, 31.958464, 45.579704> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.470173, 32.231510, 45.304928>,  <34.530003, 32.395336, 45.140060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.470173, 32.231510, 45.304928>,  <34.370461, 31.958464, 45.579704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470173, 32.231510, 45.304928> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382707, -0.582161, -0.717373,
		-0.889603, 0.441728, 0.116118,
		0.249285, 0.682616, -0.686944,
		34.544960, 32.436295, 45.098846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725971, 32.001614, 45.198826>,  <34.370461, 31.958464, 45.579704>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725971, 32.001614, 45.198826> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.014072, 32.159042, 44.970322>,  <34.186932, 32.253498, 44.833221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.014072, 32.159042, 44.970322>,  <33.725971, 32.001614, 45.198826>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014072, 32.159042, 44.970322> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346860, -0.508835, -0.787893,
		-0.600769, 0.765630, -0.229975,
		0.720254, 0.393572, -0.571258,
		34.230148, 32.277115, 44.798943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449032, 32.637150, 45.172295>,  <33.725971, 32.001614, 45.198826>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.449032, 32.637150, 45.172295> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.097862, 32.825035, 45.135166>,  <32.887161, 32.937767, 45.112888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.097862, 32.825035, 45.135166>,  <33.449032, 32.637150, 45.172295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097862, 32.825035, 45.135166> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279253, 0.659808, 0.697618,
		0.388926, 0.586535, -0.710432,
		-0.877926, 0.469712, -0.092825,
		32.834484, 32.965950, 45.107319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497654, 33.391037, 45.054607>,  <33.449032, 32.637150, 45.172295>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497654, 33.391037, 45.054607> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.146927, 33.337723, 45.239399>,  <32.936489, 33.305733, 45.350273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.146927, 33.337723, 45.239399>,  <33.497654, 33.391037, 45.054607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146927, 33.337723, 45.239399> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274814, 0.649497, 0.708964,
		-0.394550, 0.748591, -0.532862,
		-0.876817, -0.133284, 0.461982,
		32.883881, 33.297737, 45.377995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250206, 34.006496, 45.266502>,  <33.497654, 33.391037, 45.054607>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250206, 34.006496, 45.266502> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.045849, 33.738960, 45.482517>,  <32.923233, 33.578438, 45.612125>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.045849, 33.738960, 45.482517>,  <33.250206, 34.006496, 45.266502>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045849, 33.738960, 45.482517> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096450, 0.579645, 0.809141,
		-0.854215, 0.465472, -0.231627,
		-0.510895, -0.668840, 0.540037,
		32.892582, 33.538307, 45.644527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.533638, 34.308746, 45.517056>,  <33.250206, 34.006496, 45.266502>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.533638, 34.308746, 45.517056> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.659580, 34.018814, 45.762165>,  <32.735146, 33.844856, 45.909229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.659580, 34.018814, 45.762165>,  <32.533638, 34.308746, 45.517056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659580, 34.018814, 45.762165> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177470, 0.589262, 0.788210,
		-0.932400, -0.356921, 0.056897,
		0.314856, -0.724830, 0.612771,
		32.754036, 33.801365, 45.945995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172073, 34.421379, 46.017799>,  <32.533638, 34.308746, 45.517056>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172073, 34.421379, 46.017799> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.423000, 34.173645, 46.206646>,  <32.573555, 34.025005, 46.319954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.423000, 34.173645, 46.206646>,  <32.172073, 34.421379, 46.017799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.423000, 34.173645, 46.206646> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080221, 0.551627, 0.830224,
		-0.774622, -0.558687, 0.296360,
		0.627316, -0.619336, 0.472121,
		32.611195, 33.987843, 46.348282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.991524, 34.265587, 46.669319>,  <32.172073, 34.421379, 46.017799>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.991524, 34.265587, 46.669319> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.372852, 34.179443, 46.753979>,  <32.601650, 34.127758, 46.804775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.372852, 34.179443, 46.753979>,  <31.991524, 34.265587, 46.669319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.372852, 34.179443, 46.753979> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083146, 0.486614, 0.869651,
		-0.290281, -0.846656, 0.445994,
		0.953323, -0.215360, 0.211651,
		32.658848, 34.114834, 46.817474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.977600, 34.087204, 47.377613>,  <31.991524, 34.265587, 46.669319>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.977600, 34.087204, 47.377613> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.370644, 34.140434, 47.325813>,  <32.606468, 34.172375, 47.294735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.370644, 34.140434, 47.325813>,  <31.977600, 34.087204, 47.377613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370644, 34.140434, 47.325813> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058210, 0.441483, 0.895380,
		0.176326, -0.887346, 0.426058,
		0.982609, 0.133078, -0.129497,
		32.665428, 34.180359, 47.286964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.341026, 33.829601, 47.944153>,  <31.977600, 34.087204, 47.377613>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.341026, 33.829601, 47.944153> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.628773, 34.063507, 47.794182>,  <32.801418, 34.203850, 47.704201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.628773, 34.063507, 47.794182>,  <32.341026, 33.829601, 47.944153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.628773, 34.063507, 47.794182> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194534, 0.348558, 0.916877,
		0.666840, -0.732502, 0.136983,
		0.719361, 0.584763, -0.374929,
		32.844582, 34.238937, 47.681702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.906288, 33.791817, 48.367897>,  <32.341026, 33.829601, 47.944153>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.906288, 33.791817, 48.367897> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.969776, 34.141239, 48.183849>,  <33.007870, 34.350891, 48.073421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.969776, 34.141239, 48.183849>,  <32.906288, 33.791817, 48.367897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.969776, 34.141239, 48.183849> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105710, 0.448313, 0.887604,
		0.981648, -0.189523, -0.021186,
		0.158724, 0.873554, -0.460120,
		33.017395, 34.403305, 48.045815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458355, 34.109779, 48.718987>,  <32.906288, 33.791817, 48.367897>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.458355, 34.109779, 48.718987> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.276497, 34.413586, 48.532894>,  <33.167381, 34.595867, 48.421238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.276497, 34.413586, 48.532894>,  <33.458355, 34.109779, 48.718987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.276497, 34.413586, 48.532894> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229078, 0.604477, 0.762975,
		0.860710, 0.240309, -0.448810,
		-0.454645, 0.759512, -0.465230,
		33.140102, 34.641438, 48.393326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952816, 34.621796, 48.740345>,  <33.458355, 34.109779, 48.718987>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952816, 34.621796, 48.740345> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.590008, 34.786434, 48.704803>,  <33.372322, 34.885220, 48.683479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.590008, 34.786434, 48.704803>,  <33.952816, 34.621796, 48.740345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590008, 34.786434, 48.704803> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249180, 0.694756, 0.674703,
		0.339438, 0.589831, -0.732722,
		-0.907023, 0.411599, -0.088853,
		33.317902, 34.909912, 48.678146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095825, 35.307774, 48.864143>,  <33.952816, 34.621796, 48.740345>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095825, 35.307774, 48.864143> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.699623, 35.311600, 48.919003>,  <33.461903, 35.313896, 48.951920>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.699623, 35.311600, 48.919003>,  <34.095825, 35.307774, 48.864143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699623, 35.311600, 48.919003> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113558, 0.619251, 0.776938,
		-0.077501, 0.785135, -0.614456,
		-0.990504, 0.009563, 0.137151,
		33.402473, 35.314468, 48.960148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851357, 36.025124, 48.944626>,  <34.095825, 35.307774, 48.864143>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851357, 36.025124, 48.944626> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.554306, 35.810604, 49.105072>,  <33.376076, 35.681892, 49.201340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.554306, 35.810604, 49.105072>,  <33.851357, 36.025124, 48.944626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.554306, 35.810604, 49.105072> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147894, 0.715479, 0.682800,
		-0.653177, 0.447740, -0.610646,
		-0.742622, -0.536301, 0.401117,
		33.331520, 35.649715, 49.225407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.246250, 36.505722, 48.908287>,  <33.851357, 36.025124, 48.944626>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.246250, 36.505722, 48.908287> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.204773, 36.229744, 49.194847>,  <33.179886, 36.064159, 49.366783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.204773, 36.229744, 49.194847>,  <33.246250, 36.505722, 48.908287>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204773, 36.229744, 49.194847> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131967, 0.723457, 0.677639,
		-0.985816, -0.024278, -0.166064,
		-0.103689, -0.689942, 0.716400,
		33.173668, 36.022762, 49.409767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.889732, 36.648746, 48.165928>,  <33.246250, 36.505722, 48.908287>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.889732, 36.648746, 48.165928> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.804783, 37.038719, 48.192486>,  <32.753815, 37.272701, 48.208420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.804783, 37.038719, 48.192486>,  <32.889732, 36.648746, 48.165928>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804783, 37.038719, 48.192486> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509417, -0.052477, -0.858918,
		-0.833902, -0.216229, 0.507791,
		-0.212370, 0.974931, 0.066390,
		32.741074, 37.331200, 48.212402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.198524, 36.661480, 48.233334>,  <32.889732, 36.648746, 48.165928>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.198524, 36.661480, 48.233334> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.343109, 36.997658, 48.071846>,  <32.429859, 37.199364, 47.974953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.343109, 36.997658, 48.071846>,  <32.198524, 36.661480, 48.233334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.343109, 36.997658, 48.071846> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506096, -0.186805, -0.842004,
		-0.783078, 0.508676, 0.357824,
		0.361463, 0.840448, -0.403722,
		32.451550, 37.249794, 47.950729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.696070, 36.904598, 47.785824>,  <32.198524, 36.661480, 48.233334>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.696070, 36.904598, 47.785824> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.014378, 37.106716, 47.652302>,  <32.205360, 37.227989, 47.572189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.014378, 37.106716, 47.652302>,  <31.696070, 36.904598, 47.785824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.014378, 37.106716, 47.652302> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344072, -0.076356, -0.935833,
		-0.498363, 0.859560, 0.113097,
		0.795769, 0.505298, -0.333804,
		32.253109, 37.258305, 47.552162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.366091, 37.469505, 47.418331>,  <31.696070, 36.904598, 47.785824>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.366091, 37.469505, 47.418331> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.740076, 37.417091, 47.286469>,  <31.964466, 37.385643, 47.207352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.740076, 37.417091, 47.286469>,  <31.366091, 37.469505, 47.418331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740076, 37.417091, 47.286469> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343362, -0.100732, -0.933786,
		0.089155, 0.986246, -0.139174,
		0.934962, -0.131038, -0.329659,
		32.020565, 37.377781, 47.187572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440620, 37.869194, 46.903088>,  <31.366091, 37.469505, 47.418331>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440620, 37.869194, 46.903088> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.705019, 37.577827, 46.830982>,  <31.863659, 37.403008, 46.787720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.705019, 37.577827, 46.830982>,  <31.440620, 37.869194, 46.903088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.705019, 37.577827, 46.830982> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315241, -0.051553, -0.947610,
		0.680961, 0.683193, -0.263702,
		0.660996, -0.728415, -0.180266,
		31.903318, 37.359303, 46.776901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851952, 38.077229, 46.314579>,  <31.440620, 37.869194, 46.903088>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851952, 38.077229, 46.314579> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.867807, 37.678078, 46.335278>,  <31.877321, 37.438587, 46.347698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.867807, 37.678078, 46.335278>,  <31.851952, 38.077229, 46.314579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867807, 37.678078, 46.335278> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227463, -0.059441, -0.971971,
		0.972980, 0.026760, -0.229336,
		0.039641, -0.997873, 0.051748,
		31.879700, 37.378716, 46.350803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322525, 37.920734, 45.702259>,  <31.851952, 38.077229, 46.314579>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322525, 37.920734, 45.702259> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.083843, 37.618217, 45.809563>,  <31.940636, 37.436707, 45.873947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.083843, 37.618217, 45.809563>,  <32.322525, 37.920734, 45.702259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083843, 37.618217, 45.809563> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162323, -0.213630, -0.963335,
		0.785874, -0.618369, 0.004709,
		-0.596702, -0.756295, 0.268261,
		31.904833, 37.391331, 45.890041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954666, 38.139935, 45.241566>,  <32.322525, 37.920734, 45.702259>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954666, 38.139935, 45.241566> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.945091, 38.534492, 45.176517>,  <32.939346, 38.771229, 45.137489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.945091, 38.534492, 45.176517>,  <32.954666, 38.139935, 45.241566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945091, 38.534492, 45.176517> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591370, 0.145122, 0.793234,
		0.806045, -0.077180, -0.586801,
		-0.023936, 0.986399, -0.162617,
		32.937912, 38.830414, 45.127731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550751, 38.325249, 45.242477>,  <32.954666, 38.139935, 45.241566>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550751, 38.325249, 45.242477> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.376972, 38.681396, 45.296879>,  <33.272705, 38.895084, 45.329521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.376972, 38.681396, 45.296879>,  <33.550751, 38.325249, 45.242477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.376972, 38.681396, 45.296879> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716758, 0.250313, 0.650847,
		0.545452, 0.380237, -0.746928,
		-0.434442, 0.890372, 0.136004,
		33.246639, 38.948509, 45.337681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070656, 38.792881, 45.231281>,  <33.550751, 38.325249, 45.242477>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070656, 38.792881, 45.231281> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.793629, 39.026333, 45.400860>,  <33.627411, 39.166405, 45.502605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.793629, 39.026333, 45.400860>,  <34.070656, 38.792881, 45.231281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793629, 39.026333, 45.400860> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685360, 0.349060, 0.639092,
		0.225010, 0.733169, -0.641743,
		-0.692569, 0.583627, 0.423943,
		33.585857, 39.201420, 45.528042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508419, 39.238873, 45.504807>,  <34.070656, 38.792881, 45.231281>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508419, 39.238873, 45.504807> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.154030, 39.298309, 45.680523>,  <33.941395, 39.333973, 45.785954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.154030, 39.298309, 45.680523>,  <34.508419, 39.238873, 45.504807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154030, 39.298309, 45.680523> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460944, 0.386035, 0.799067,
		-0.050846, 0.910438, -0.410508,
		-0.885971, 0.148592, 0.439289,
		33.888237, 39.342888, 45.812309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450356, 39.967186, 45.782623>,  <34.508419, 39.238873, 45.504807>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450356, 39.967186, 45.782623> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.232918, 39.727211, 46.017429>,  <34.102455, 39.583225, 46.158314>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.232918, 39.727211, 46.017429>,  <34.450356, 39.967186, 45.782623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232918, 39.727211, 46.017429> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558353, 0.263718, 0.786571,
		-0.626698, 0.755335, 0.191621,
		-0.543591, -0.599935, 0.587016,
		34.069839, 39.547230, 46.193535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476334, 40.297890, 46.376858>,  <34.450356, 39.967186, 45.782623>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476334, 40.297890, 46.376858> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.344185, 39.941727, 46.502094>,  <34.264896, 39.728027, 46.577236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.344185, 39.941727, 46.502094>,  <34.476334, 40.297890, 46.376858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344185, 39.941727, 46.502094> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525879, 0.101808, 0.844445,
		-0.783778, 0.443626, 0.434614,
		-0.330370, -0.890411, 0.313088,
		34.245075, 39.674603, 46.596020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341331, 40.460281, 47.078438>,  <34.476334, 40.297890, 46.376858>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341331, 40.460281, 47.078438> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.377399, 40.064388, 47.034061>,  <34.399040, 39.826855, 47.007435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.377399, 40.064388, 47.034061>,  <34.341331, 40.460281, 47.078438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377399, 40.064388, 47.034061> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628908, -0.029788, 0.776909,
		-0.772233, -0.139823, 0.619762,
		0.090168, -0.989728, -0.110939,
		34.404449, 39.767471, 47.000778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037659, 40.098583, 47.665176>,  <34.341331, 40.460281, 47.078438>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037659, 40.098583, 47.665176> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.326786, 39.863373, 47.519985>,  <34.500263, 39.722244, 47.432869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.326786, 39.863373, 47.519985>,  <34.037659, 40.098583, 47.665176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.326786, 39.863373, 47.519985> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407893, -0.060945, 0.910993,
		-0.557811, -0.806541, 0.195800,
		0.722820, -0.588028, -0.362979,
		34.543633, 39.686966, 47.411091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.113461, 39.600479, 48.163300>,  <34.037659, 40.098583, 47.665176>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.113461, 39.600479, 48.163300> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.469326, 39.581280, 47.981667>,  <34.682846, 39.569759, 47.872684>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.469326, 39.581280, 47.981667>,  <34.113461, 39.600479, 48.163300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.469326, 39.581280, 47.981667> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452907, -0.033693, 0.890921,
		-0.058063, -0.998279, -0.008236,
		0.889665, -0.048000, -0.454084,
		34.736225, 39.566879, 47.845440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<32.276134, 34.046841, 34.427200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661293, 34.085976, 34.326595>,  <32.892387, 34.109455, 34.266232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661293, 34.085976, 34.326595>,  <32.276134, 34.046841, 34.427200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661293, 34.085976, 34.326595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077726, 0.791948, 0.605621,
		0.258436, -0.602699, 0.754960,
		0.962896, 0.097834, -0.251513,
		32.950161, 34.115326, 34.251141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.639908, 34.029976, 35.095093>,  <32.276134, 34.046841, 34.427200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.639908, 34.029976, 35.095093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835743, 34.228046, 34.808010>,  <32.953243, 34.346889, 34.635761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835743, 34.228046, 34.808010>,  <32.639908, 34.029976, 35.095093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835743, 34.228046, 34.808010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022373, 0.815696, 0.578048,
		0.871670, -0.299060, 0.388272,
		0.489583, 0.495180, -0.717709,
		32.982620, 34.376598, 34.592697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.085190, 34.418461, 35.430099>,  <32.639908, 34.029976, 35.095093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.085190, 34.418461, 35.430099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064274, 34.588520, 35.068653>,  <33.051723, 34.690556, 34.851788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064274, 34.588520, 35.068653>,  <33.085190, 34.418461, 35.430099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.064274, 34.588520, 35.068653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079124, 0.900241, 0.428142,
		0.995493, 0.093883, -0.013431,
		-0.052286, 0.425150, -0.903612,
		33.048588, 34.716064, 34.797569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.569160, 34.909515, 35.463612>,  <33.085190, 34.418461, 35.430099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.569160, 34.909515, 35.463612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.338146, 35.035088, 35.162174>,  <33.199539, 35.110432, 34.981312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.338146, 35.035088, 35.162174>,  <33.569160, 34.909515, 35.463612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.338146, 35.035088, 35.162174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028884, 0.914672, 0.403164,
		0.815856, 0.254608, -0.519186,
		-0.577534, 0.313927, -0.753594,
		33.164886, 35.129265, 34.936096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808155, 35.537460, 35.235596>,  <33.569160, 34.909515, 35.463612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808155, 35.537460, 35.235596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.452206, 35.559620, 35.054466>,  <33.238636, 35.572914, 34.945789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.452206, 35.559620, 35.054466>,  <33.808155, 35.537460, 35.235596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452206, 35.559620, 35.054466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063752, 0.967759, 0.243676,
		0.451723, 0.245710, -0.857656,
		-0.889878, 0.055397, -0.452823,
		33.185242, 35.576241, 34.918621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.730381, 36.201195, 34.800705>,  <33.808155, 35.537460, 35.235596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.730381, 36.201195, 34.800705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.352066, 36.092560, 34.871956>,  <33.125076, 36.027378, 34.914707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.352066, 36.092560, 34.871956>,  <33.730381, 36.201195, 34.800705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352066, 36.092560, 34.871956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241895, 0.954991, 0.171693,
		-0.216737, 0.119298, -0.968913,
		-0.945786, -0.271587, 0.178125,
		33.068329, 36.011086, 34.925392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410500, 36.608475, 34.457180>,  <33.730381, 36.201195, 34.800705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410500, 36.608475, 34.457180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166027, 36.472374, 34.743027>,  <33.019344, 36.390713, 34.914536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166027, 36.472374, 34.743027>,  <33.410500, 36.608475, 34.457180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166027, 36.472374, 34.743027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176532, 0.938740, 0.295979,
		-0.771550, 0.054745, -0.633809,
		-0.611185, -0.340250, 0.714621,
		32.982670, 36.370300, 34.957413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.957382, 37.201195, 34.572834>,  <33.410500, 36.608475, 34.457180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.957382, 37.201195, 34.572834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866978, 36.968914, 34.885677>,  <32.812733, 36.829544, 35.073383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866978, 36.968914, 34.885677>,  <32.957382, 37.201195, 34.572834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.866978, 36.968914, 34.885677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167226, 0.814098, 0.556129,
		-0.959663, -0.005097, -0.281106,
		-0.226013, -0.580705, 0.782113,
		32.799175, 36.794704, 35.120312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322762, 37.498055, 34.882866>,  <32.957382, 37.201195, 34.572834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322762, 37.498055, 34.882866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510479, 37.287041, 35.166126>,  <32.623108, 37.160435, 35.336082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510479, 37.287041, 35.166126>,  <32.322762, 37.498055, 34.882866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510479, 37.287041, 35.166126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226883, 0.702986, 0.674044,
		-0.853397, -0.476992, 0.210220,
		0.469295, -0.527532, 0.708147,
		32.651268, 37.128780, 35.378571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.896095, 37.615280, 35.419025>,  <32.322762, 37.498055, 34.882866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.896095, 37.615280, 35.419025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.217995, 37.483345, 35.616444>,  <32.411133, 37.404182, 35.734894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.217995, 37.483345, 35.616444>,  <31.896095, 37.615280, 35.419025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.217995, 37.483345, 35.616444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187102, 0.648103, 0.738211,
		-0.563361, -0.686416, 0.459844,
		0.804747, -0.329842, 0.493546,
		32.459419, 37.384392, 35.764507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.679831, 37.390102, 36.181816>,  <31.896095, 37.615280, 35.419025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.679831, 37.390102, 36.181816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071568, 37.470985, 36.182304>,  <32.306610, 37.519516, 36.182598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071568, 37.470985, 36.182304>,  <31.679831, 37.390102, 36.181816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.071568, 37.470985, 36.182304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136965, 0.658898, 0.739658,
		0.148758, -0.724546, 0.672981,
		0.979343, 0.202205, 0.001221,
		32.365372, 37.531647, 36.182671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.986660, 37.195835, 36.815170>,  <31.679831, 37.390102, 36.181816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.986660, 37.195835, 36.815170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.220474, 37.482300, 36.662624>,  <32.360764, 37.654179, 36.571098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.220474, 37.482300, 36.662624>,  <31.986660, 37.195835, 36.815170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.220474, 37.482300, 36.662624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170362, 0.567875, 0.805292,
		0.793283, -0.405751, 0.453948,
		0.584534, 0.716159, -0.381361,
		32.395836, 37.697147, 36.548218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.743021, 36.460461, 36.968128>,  <31.986660, 37.195835, 36.815170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.743021, 36.460461, 36.968128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.432802, 36.392754, 37.211399>,  <31.246672, 36.352131, 37.357361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.432802, 36.392754, 37.211399>,  <31.743021, 36.460461, 36.968128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.432802, 36.392754, 37.211399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490755, -0.444343, -0.749479,
		0.397101, -0.879720, 0.261539,
		-0.775545, -0.169268, 0.608177,
		31.200138, 36.341972, 37.393852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.760839, 35.785969, 36.909172>,  <31.743021, 36.460461, 36.968128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.760839, 35.785969, 36.909172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.397970, 35.919735, 37.011307>,  <31.180248, 35.999996, 37.072590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.397970, 35.919735, 37.011307>,  <31.760839, 35.785969, 36.909172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.397970, 35.919735, 37.011307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411784, -0.581003, -0.702046,
		-0.086424, -0.742023, 0.664780,
		-0.907174, 0.334419, 0.255341,
		31.125818, 36.020061, 37.087910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.344021, 35.175297, 36.939728>,  <31.760839, 35.785969, 36.909172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.344021, 35.175297, 36.939728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.077976, 35.471092, 36.898190>,  <30.918350, 35.648571, 36.873264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.077976, 35.471092, 36.898190>,  <31.344021, 35.175297, 36.939728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.077976, 35.471092, 36.898190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506363, -0.548837, -0.665112,
		-0.548837, -0.389790, 0.739487,
		0.665112, -0.739487, 0.103847,
		30.878443, 35.692940, 36.867035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.773148, 34.780819, 36.877014>,  <31.344021, 35.175297, 36.939728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.773148, 34.780819, 36.877014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.647333, 35.145763, 36.772202>,  <30.571844, 35.364731, 36.709312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.647333, 35.145763, 36.772202>,  <30.773148, 34.780819, 36.877014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.647333, 35.145763, 36.772202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609291, -0.405719, -0.681290,
		-0.727895, -0.054637, 0.683509,
		-0.314537, 0.912364, -0.262031,
		30.552973, 35.419472, 36.693592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.012169, 34.843586, 36.900562>,  <30.773148, 34.780819, 36.877014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.012169, 34.843586, 36.900562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.106155, 35.122707, 36.629902>,  <30.162548, 35.290180, 36.467506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.106155, 35.122707, 36.629902>,  <30.012169, 34.843586, 36.900562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.106155, 35.122707, 36.629902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598468, -0.444685, -0.666402,
		-0.765916, 0.561537, 0.313129,
		0.234966, 0.697806, -0.676653,
		30.176645, 35.332050, 36.426907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.326044, 34.892673, 36.576691>,  <30.012169, 34.843586, 36.900562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.326044, 34.892673, 36.576691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.595779, 35.054138, 36.329361>,  <29.757622, 35.151016, 36.180965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.595779, 35.054138, 36.329361>,  <29.326044, 34.892673, 36.576691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.595779, 35.054138, 36.329361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485205, -0.388988, -0.783112,
		-0.556634, 0.828096, -0.066450,
		0.674340, 0.403665, -0.618320,
		29.798082, 35.175240, 36.143864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.040432, 35.439545, 36.018147>,  <29.326044, 34.892673, 36.576691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.040432, 35.439545, 36.018147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.383545, 35.278328, 35.890541>,  <29.589413, 35.181599, 35.813980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.383545, 35.278328, 35.890541>,  <29.040432, 35.439545, 36.018147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.383545, 35.278328, 35.890541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508972, -0.579278, -0.636699,
		0.071822, 0.708515, -0.702031,
		0.857782, -0.403043, -0.319009,
		29.640879, 35.157413, 35.794838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.021755, 35.385971, 35.346935>,  <29.040432, 35.439545, 36.018147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.021755, 35.385971, 35.346935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.306602, 35.112907, 35.412498>,  <29.477510, 34.949070, 35.451836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.306602, 35.112907, 35.412498>,  <29.021755, 35.385971, 35.346935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.306602, 35.112907, 35.412498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395099, -0.582673, -0.710203,
		0.580330, 0.440990, -0.684650,
		0.712119, -0.682657, 0.163908,
		29.520239, 34.908112, 35.461670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.134895, 35.119816, 34.718338>,  <29.021755, 35.385971, 35.346935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.134895, 35.119816, 34.718338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.320257, 34.835224, 34.929638>,  <29.431475, 34.664467, 35.056419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.320257, 34.835224, 34.929638>,  <29.134895, 35.119816, 34.718338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.320257, 34.835224, 34.929638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442566, -0.702274, -0.557626,
		0.767718, 0.024621, -0.640314,
		0.463405, -0.711481, 0.528252,
		29.459278, 34.621780, 35.088112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.347664, 34.688751, 34.257248>,  <29.134895, 35.119816, 34.718338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.347664, 34.688751, 34.257248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.384045, 34.462009, 34.584759>,  <29.405874, 34.325962, 34.781265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.384045, 34.462009, 34.584759>,  <29.347664, 34.688751, 34.257248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.384045, 34.462009, 34.584759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360235, -0.785237, -0.503620,
		0.928417, -0.249147, -0.275622,
		0.090954, -0.566858, 0.818779,
		29.411331, 34.291950, 34.830391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.581749, 34.117397, 33.982452>,  <29.347664, 34.688751, 34.257248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.581749, 34.117397, 33.982452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.431519, 33.998947, 34.333736>,  <29.341379, 33.927876, 34.544506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.431519, 33.998947, 34.333736>,  <29.581749, 34.117397, 33.982452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.431519, 33.998947, 34.333736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242639, -0.883111, -0.401548,
		0.894465, -0.363900, 0.259825,
		-0.375578, -0.296127, 0.878208,
		29.318846, 33.910110, 34.597198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.767302, 33.347771, 34.125687>,  <29.581749, 34.117397, 33.982452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.767302, 33.347771, 34.125687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.469978, 33.443783, 34.375446>,  <29.291584, 33.501389, 34.525303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.469978, 33.443783, 34.375446>,  <29.767302, 33.347771, 34.125687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.469978, 33.443783, 34.375446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440156, -0.878380, -0.186312,
		0.503742, -0.413322, 0.758557,
		-0.743308, 0.240030, 0.624403,
		29.246986, 33.515793, 34.562767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.749910, 32.881115, 34.699875>,  <29.767302, 33.347771, 34.125687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.749910, 32.881115, 34.699875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.375080, 33.014240, 34.657688>,  <29.150183, 33.094116, 34.632378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.375080, 33.014240, 34.657688>,  <29.749910, 32.881115, 34.699875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.375080, 33.014240, 34.657688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328390, -0.942797, -0.057395,
		-0.118536, -0.019149, 0.992765,
		-0.937075, 0.332817, -0.105467,
		29.093958, 33.114086, 34.626049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.351738, 32.360687, 34.828274>,  <29.749910, 32.881115, 34.699875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.351738, 32.360687, 34.828274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.074059, 32.574501, 34.635456>,  <28.907452, 32.702789, 34.519764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.074059, 32.574501, 34.635456>,  <29.351738, 32.360687, 34.828274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.074059, 32.574501, 34.635456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454718, -0.844824, -0.281965,
		-0.557962, 0.023456, 0.829535,
		-0.694197, 0.534530, -0.482046,
		28.865799, 32.734859, 34.490841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.621443, 32.023869, 34.732182>,  <29.351738, 32.360687, 34.828274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.621443, 32.023869, 34.732182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.297367, 32.210648, 34.873917>,  <28.102921, 32.322716, 34.958958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.297367, 32.210648, 34.873917>,  <28.621443, 32.023869, 34.732182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.297367, 32.210648, 34.873917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242880, -0.282737, 0.927938,
		0.533478, 0.837869, 0.115660,
		-0.810192, 0.466943, 0.354336,
		28.054310, 32.350731, 34.980217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.736853, 32.704243, 35.109505>,  <28.621443, 32.023869, 34.732182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.736853, 32.704243, 35.109505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.460028, 32.439262, 35.224194>,  <28.293932, 32.280273, 35.293007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.460028, 32.439262, 35.224194>,  <28.736853, 32.704243, 35.109505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.460028, 32.439262, 35.224194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374533, 0.010023, 0.927159,
		-0.617068, 0.749041, 0.241172,
		-0.692064, -0.662447, 0.286726,
		28.252409, 32.240528, 35.310211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.237411, 32.864788, 35.746929>,  <28.736853, 32.704243, 35.109505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.237411, 32.864788, 35.746929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.322676, 32.481045, 35.672962>,  <28.373835, 32.250797, 35.628582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.322676, 32.481045, 35.672962>,  <28.237411, 32.864788, 35.746929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.322676, 32.481045, 35.672962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294021, -0.117503, 0.948549,
		-0.931726, -0.256562, 0.257025,
		0.213161, -0.959359, -0.184915,
		28.386623, 32.193237, 35.617489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.888372, 32.419449, 36.239403>,  <28.237411, 32.864788, 35.746929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.888372, 32.419449, 36.239403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.239843, 32.269157, 36.121586>,  <28.450726, 32.178982, 36.050896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.239843, 32.269157, 36.121586>,  <27.888372, 32.419449, 36.239403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.239843, 32.269157, 36.121586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338754, 0.055949, 0.939210,
		-0.336412, -0.925038, 0.176442,
		0.878676, -0.375732, -0.294538,
		28.503447, 32.156437, 36.033226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.971092, 31.812838, 36.681583>,  <27.888372, 32.419449, 36.239403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.971092, 31.812838, 36.681583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.336180, 31.893166, 36.539249>,  <28.555233, 31.941362, 36.453850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.336180, 31.893166, 36.539249>,  <27.971092, 31.812838, 36.681583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.336180, 31.893166, 36.539249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362932, 0.001576, 0.931814,
		0.187687, -0.979627, -0.071445,
		0.912718, 0.200819, -0.355834,
		28.609995, 31.953411, 36.432499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.508581, 31.352346, 37.095688>,  <27.971092, 31.812838, 36.681583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.508581, 31.352346, 37.095688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.724403, 31.652609, 36.943161>,  <28.853897, 31.832766, 36.851646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.724403, 31.652609, 36.943161>,  <28.508581, 31.352346, 37.095688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.724403, 31.652609, 36.943161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501164, 0.077581, 0.861868,
		0.676548, -0.656124, -0.334342,
		0.539554, 0.750654, -0.381313,
		28.886271, 31.877806, 36.828766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.256819, 31.219204, 37.310070>,  <28.508581, 31.352346, 37.095688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.256819, 31.219204, 37.310070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.198536, 31.607025, 37.231342>,  <29.163567, 31.839718, 37.184105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.198536, 31.607025, 37.231342>,  <29.256819, 31.219204, 37.310070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.198536, 31.607025, 37.231342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455016, 0.242332, 0.856876,
		0.878481, 0.035297, -0.476471,
		-0.145709, 0.969551, -0.196823,
		29.154823, 31.897890, 37.172295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.894192, 31.514120, 37.401726>,  <29.256819, 31.219204, 37.310070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.894192, 31.514120, 37.401726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.608721, 31.793291, 37.425610>,  <29.437439, 31.960794, 37.439941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.608721, 31.793291, 37.425610>,  <29.894192, 31.514120, 37.401726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.608721, 31.793291, 37.425610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367198, 0.300165, 0.880379,
		0.596517, 0.650230, -0.470497,
		-0.713676, 0.697927, 0.059710,
		29.394619, 32.002670, 37.443523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.211077, 32.073360, 37.575901>,  <29.894192, 31.514120, 37.401726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.211077, 32.073360, 37.575901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.839010, 32.166897, 37.689114>,  <29.615770, 32.223019, 37.757042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.839010, 32.166897, 37.689114>,  <30.211077, 32.073360, 37.575901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.839010, 32.166897, 37.689114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342439, 0.274656, 0.898499,
		0.132371, 0.932675, -0.335553,
		-0.930168, 0.233842, 0.283028,
		29.559959, 32.237049, 37.774021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.282766, 32.750225, 37.950489>,  <30.211077, 32.073360, 37.575901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.282766, 32.750225, 37.950489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.921438, 32.609745, 38.049015>,  <29.704641, 32.525455, 38.108131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.921438, 32.609745, 38.049015>,  <30.282766, 32.750225, 37.950489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.921438, 32.609745, 38.049015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086111, 0.414061, 0.906167,
		-0.420240, 0.839768, -0.343786,
		-0.903318, -0.351204, 0.246318,
		29.650442, 32.504383, 38.122910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.975483, 33.267719, 38.432117>,  <30.282766, 32.750225, 37.950489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.975483, 33.267719, 38.432117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.762754, 32.936966, 38.505249>,  <29.635117, 32.738514, 38.549129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.762754, 32.936966, 38.505249>,  <29.975483, 33.267719, 38.432117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.762754, 32.936966, 38.505249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011201, 0.209004, 0.977851,
		-0.846782, 0.522091, -0.101892,
		-0.531823, -0.826885, 0.182829,
		29.603209, 32.688900, 38.560097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.421654, 33.491695, 38.856918>,  <29.975483, 33.267719, 38.432117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.421654, 33.491695, 38.856918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.450373, 33.095924, 38.907318>,  <29.467604, 32.858459, 38.937557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.450373, 33.095924, 38.907318>,  <29.421654, 33.491695, 38.856918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.450373, 33.095924, 38.907318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043150, 0.123121, 0.991453,
		-0.996486, -0.076619, -0.033854,
		0.071796, -0.989429, 0.125995,
		29.471912, 32.799095, 38.945118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.912640, 33.224583, 39.409122>,  <29.421654, 33.491695, 38.856918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.912640, 33.224583, 39.409122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.208366, 32.955418, 39.399349>,  <29.385803, 32.793919, 39.393486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.208366, 32.955418, 39.399349>,  <28.912640, 33.224583, 39.409122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.208366, 32.955418, 39.399349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137727, 0.115596, 0.983701,
		-0.659121, -0.730633, 0.178141,
		0.739318, -0.672913, -0.024436,
		29.430162, 32.753544, 39.392017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.845371, 32.832584, 40.012573>,  <28.912640, 33.224583, 39.409122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.845371, 32.832584, 40.012573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.226864, 32.764160, 39.913670>,  <29.455759, 32.723106, 39.854328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.226864, 32.764160, 39.913670>,  <28.845371, 32.832584, 40.012573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.226864, 32.764160, 39.913670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256282, 0.032484, 0.966056,
		-0.157225, -0.984724, 0.074822,
		0.953729, -0.171064, -0.247260,
		29.512983, 32.712841, 39.839493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.121565, 32.331909, 40.497314>,  <28.845371, 32.832584, 40.012573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.121565, 32.331909, 40.497314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.453552, 32.480793, 40.331127>,  <29.652744, 32.570122, 40.231415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.453552, 32.480793, 40.331127>,  <29.121565, 32.331909, 40.497314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.453552, 32.480793, 40.331127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480779, -0.099656, 0.871160,
		0.282851, -0.922783, -0.261662,
		0.829968, 0.372210, -0.415467,
		29.702543, 32.592457, 40.206486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.643795, 31.939753, 40.894871>,  <29.121565, 32.331909, 40.497314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.643795, 31.939753, 40.894871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.870380, 32.216118, 40.715202>,  <30.006332, 32.381935, 40.607399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.870380, 32.216118, 40.715202>,  <29.643795, 31.939753, 40.894871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.870380, 32.216118, 40.715202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691365, -0.101808, 0.715297,
		0.448478, -0.715735, -0.535342,
		0.566465, 0.690911, -0.449175,
		30.040319, 32.423389, 40.580448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.337908, 31.692436, 40.801655>,  <29.643795, 31.939753, 40.894871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.337908, 31.692436, 40.801655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.364380, 32.091434, 40.811615>,  <30.380262, 32.330833, 40.817593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.364380, 32.091434, 40.811615>,  <30.337908, 31.692436, 40.801655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.364380, 32.091434, 40.811615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746283, -0.066046, 0.662344,
		0.662331, -0.025249, -0.748786,
		0.066178, 0.997497, 0.024901,
		30.384233, 32.390682, 40.819084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.043470, 31.884460, 40.771004>,  <30.337908, 31.692436, 40.801655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.043470, 31.884460, 40.771004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849598, 32.179703, 40.958740>,  <30.733274, 32.356850, 41.071384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849598, 32.179703, 40.958740>,  <31.043470, 31.884460, 40.771004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.849598, 32.179703, 40.958740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724300, 0.037851, 0.688446,
		0.490381, 0.673623, -0.552955,
		-0.484682, 0.738106, 0.469343,
		30.704193, 32.401134, 41.099545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.608999, 32.449409, 40.999805>,  <31.043470, 31.884460, 40.771004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.608999, 32.449409, 40.999805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.275238, 32.489674, 41.216560>,  <31.074982, 32.513832, 41.346615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.275238, 32.489674, 41.216560>,  <31.608999, 32.449409, 40.999805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.275238, 32.489674, 41.216560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550137, 0.092280, 0.829960,
		0.033535, 0.990633, -0.132373,
		-0.834401, 0.100656, 0.541889,
		31.024918, 32.519871, 41.379128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.899647, 32.761528, 41.642708>,  <31.608999, 32.449409, 40.999805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.899647, 32.761528, 41.642708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.527300, 32.656090, 41.743904>,  <31.303892, 32.592827, 41.804623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.527300, 32.656090, 41.743904>,  <31.899647, 32.761528, 41.642708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.527300, 32.656090, 41.743904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165235, 0.313848, 0.934985,
		-0.325863, 0.912148, -0.248594,
		-0.930866, -0.263600, 0.252990,
		31.248039, 32.577011, 41.819801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.675213, 33.335712, 41.927494>,  <31.899647, 32.761528, 41.642708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.675213, 33.335712, 41.927494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.466621, 33.025814, 42.070507>,  <31.341467, 32.839874, 42.156315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.466621, 33.025814, 42.070507>,  <31.675213, 33.335712, 41.927494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.466621, 33.025814, 42.070507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159241, 0.323286, 0.932807,
		-0.838274, 0.543371, -0.045215,
		-0.521478, -0.774748, 0.357529,
		31.310179, 32.793388, 42.177765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.199543, 33.643501, 42.506748>,  <31.675213, 33.335712, 41.927494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.199543, 33.643501, 42.506748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262362, 33.253250, 42.568058>,  <31.300053, 33.019100, 42.604843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262362, 33.253250, 42.568058>,  <31.199543, 33.643501, 42.506748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262362, 33.253250, 42.568058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369213, 0.201951, 0.907137,
		-0.915979, -0.085873, 0.391929,
		0.157048, -0.975624, 0.153277,
		31.309477, 32.960564, 42.614040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.911573, 33.515163, 43.218960>,  <31.199543, 33.643501, 42.506748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.911573, 33.515163, 43.218960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.158958, 33.213543, 43.130501>,  <31.307390, 33.032570, 43.077427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.158958, 33.213543, 43.130501>,  <30.911573, 33.515163, 43.218960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.158958, 33.213543, 43.130501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404160, 0.063885, 0.912455,
		-0.673912, -0.653698, 0.344269,
		0.618463, -0.754054, -0.221146,
		31.344498, 32.987328, 43.064156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.918446, 33.187317, 43.881416>,  <30.911573, 33.515163, 43.218960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.918446, 33.187317, 43.881416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.220852, 33.044773, 43.661800>,  <31.402296, 32.959248, 43.530029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.220852, 33.044773, 43.661800>,  <30.918446, 33.187317, 43.881416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.220852, 33.044773, 43.661800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537584, -0.140479, 0.831426,
		-0.373417, -0.923727, 0.085370,
		0.756018, -0.356362, -0.549038,
		31.447657, 32.937866, 43.497089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.093750, 32.575340, 44.200413>,  <30.918446, 33.187317, 43.881416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.093750, 32.575340, 44.200413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.412939, 32.664295, 43.976345>,  <31.604452, 32.717670, 43.841904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.412939, 32.664295, 43.976345>,  <31.093750, 32.575340, 44.200413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.412939, 32.664295, 43.976345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598185, -0.178748, 0.781168,
		0.073596, -0.958432, -0.275666,
		0.797971, 0.222390, -0.560165,
		31.652330, 32.731010, 43.808296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.544077, 31.992432, 44.257088>,  <31.093750, 32.575340, 44.200413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.544077, 31.992432, 44.257088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.734871, 32.331821, 44.165371>,  <31.849348, 32.535454, 44.110340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.734871, 32.331821, 44.165371>,  <31.544077, 31.992432, 44.257088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.734871, 32.331821, 44.165371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502802, -0.049445, 0.862986,
		0.720884, -0.526923, -0.450199,
		0.476987, 0.848474, -0.229294,
		31.877968, 32.586365, 44.096584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.019279, 31.920240, 44.845058>,  <31.544077, 31.992432, 44.257088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.019279, 31.920240, 44.845058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074261, 32.277561, 44.673889>,  <32.107250, 32.491955, 44.571186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074261, 32.277561, 44.673889>,  <32.019279, 31.920240, 44.845058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.074261, 32.277561, 44.673889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502649, 0.309357, 0.807244,
		0.853493, -0.326055, -0.406494,
		0.137454, 0.893301, -0.427926,
		32.115498, 32.545551, 44.545513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690128, 32.047493, 44.869770>,  <32.019279, 31.920240, 44.845058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.690128, 32.047493, 44.869770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.512230, 32.405468, 44.855423>,  <32.405491, 32.620255, 44.846817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.512230, 32.405468, 44.855423>,  <32.690128, 32.047493, 44.869770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.512230, 32.405468, 44.855423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391749, 0.230378, 0.890763,
		0.805440, 0.382113, -0.453051,
		-0.444745, 0.894939, -0.035863,
		32.378807, 32.673950, 44.844666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.365536, 32.314945, 44.506374>,  <32.690128, 32.047493, 44.869770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.365536, 32.314945, 44.506374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747570, 32.252056, 44.405907>,  <33.976791, 32.214321, 44.345627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747570, 32.252056, 44.405907>,  <33.365536, 32.314945, 44.506374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747570, 32.252056, 44.405907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295913, -0.461408, -0.836384,
		0.015608, 0.873145, -0.487210,
		0.955087, -0.157226, -0.251173,
		34.034096, 32.204887, 44.330555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345547, 32.363129, 43.767891>,  <33.365536, 32.314945, 44.506374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345547, 32.363129, 43.767891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709240, 32.208321, 43.829231>,  <33.927456, 32.115437, 43.866035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709240, 32.208321, 43.829231>,  <33.345547, 32.363129, 43.767891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709240, 32.208321, 43.829231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017224, -0.333085, -0.942740,
		0.415938, 0.859808, -0.296185,
		0.909230, -0.387020, 0.153352,
		33.982010, 32.092216, 43.875237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903873, 32.685478, 43.310276>,  <33.345547, 32.363129, 43.767891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903873, 32.685478, 43.310276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.952316, 32.302292, 43.414310>,  <33.981380, 32.072380, 43.476730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.952316, 32.302292, 43.414310>,  <33.903873, 32.685478, 43.310276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.952316, 32.302292, 43.414310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051864, -0.267760, -0.962089,
		0.991283, 0.103028, -0.082112,
		0.121108, -0.957961, 0.260083,
		33.988647, 32.014904, 43.492336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418312, 32.486511, 42.830105>,  <33.903873, 32.685478, 43.310276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418312, 32.486511, 42.830105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220741, 32.171387, 42.977283>,  <34.102200, 31.982311, 43.065590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220741, 32.171387, 42.977283>,  <34.418312, 32.486511, 42.830105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220741, 32.171387, 42.977283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011214, -0.428908, -0.903278,
		0.869430, -0.442029, 0.220685,
		-0.493929, -0.787812, 0.367949,
		34.072563, 31.935043, 43.087669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714233, 31.943775, 42.559105>,  <34.418312, 32.486511, 42.830105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714233, 31.943775, 42.559105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373009, 31.780079, 42.688602>,  <34.168274, 31.681860, 42.766300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373009, 31.780079, 42.688602>,  <34.714233, 31.943775, 42.559105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373009, 31.780079, 42.688602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096662, -0.485753, -0.868735,
		0.512783, -0.772376, 0.374818,
		-0.853059, -0.409242, 0.323745,
		34.117092, 31.657307, 42.785725>
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
